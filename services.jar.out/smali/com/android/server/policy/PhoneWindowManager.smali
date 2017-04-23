.class public Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;,
        Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;,
        Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/server/policy/PhoneWindowManager$HdmiControl;,
        Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/server/policy/PhoneWindowManager$HandGloveSettingObserver;,
        Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;,
        Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;,
        Lcom/android/server/policy/PhoneWindowManager$SingleHandSettingObserver;,
        Lcom/android/server/policy/PhoneWindowManager$1;,
        Lcom/android/server/policy/PhoneWindowManager$2;,
        Lcom/android/server/policy/PhoneWindowManager$3;,
        Lcom/android/server/policy/PhoneWindowManager$4;,
        Lcom/android/server/policy/PhoneWindowManager$5;,
        Lcom/android/server/policy/PhoneWindowManager$6;,
        Lcom/android/server/policy/PhoneWindowManager$7;,
        Lcom/android/server/policy/PhoneWindowManager$8;,
        Lcom/android/server/policy/PhoneWindowManager$9;,
        Lcom/android/server/policy/PhoneWindowManager$10;,
        Lcom/android/server/policy/PhoneWindowManager$11;,
        Lcom/android/server/policy/PhoneWindowManager$12;,
        Lcom/android/server/policy/PhoneWindowManager$13;,
        Lcom/android/server/policy/PhoneWindowManager$14;,
        Lcom/android/server/policy/PhoneWindowManager$15;,
        Lcom/android/server/policy/PhoneWindowManager$16;,
        Lcom/android/server/policy/PhoneWindowManager$17;,
        Lcom/android/server/policy/PhoneWindowManager$18;,
        Lcom/android/server/policy/PhoneWindowManager$19;,
        Lcom/android/server/policy/PhoneWindowManager$20;,
        Lcom/android/server/policy/PhoneWindowManager$21;,
        Lcom/android/server/policy/PhoneWindowManager$22;,
        Lcom/android/server/policy/PhoneWindowManager$23;,
        Lcom/android/server/policy/PhoneWindowManager$24;,
        Lcom/android/server/policy/PhoneWindowManager$25;,
        Lcom/android/server/policy/PhoneWindowManager$26;,
        Lcom/android/server/policy/PhoneWindowManager$27;,
        Lcom/android/server/policy/PhoneWindowManager$28;
    }
.end annotation


# static fields
.field static final APPLICATION_ABOVE_SUB_PANEL_SUBLAYER:I = 0x3

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field private static final BRIGHTNESS_STEPS:I = 0xa

.field static DEBUG:Z = false

.field static DEBUG_INPUT:Z = false

.field static DEBUG_KEYGUARD:Z = false

.field static DEBUG_LAYOUT:Z = false

.field static DEBUG_ORIENTATION:Z = false

.field static DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_UNPIN:Z = true

.field static DEBUG_WAKEUP:Z = false

.field private static final DISMISS_KEYGUARD_CONTINUE:I = 0x2

.field private static final DISMISS_KEYGUARD_NONE:I = 0x0

.field private static final DISMISS_KEYGUARD_START:I = 0x1

.field private static final DISMISS_SCREEN_PINNING_KEY_CODE:I = 0x4

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final ENABLE_CAR_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field private static final ENTER_KEY_MASK:I = 0x1

.field public static final GLOBAL_SINGLE_HAND:Ljava/lang/String; = "global_single_hand"

.field public static final GLOBAL_SINGLE_HAND_ON:Ljava/lang/String; = "global_single_hand_on"

.field private static final GLOVE_PATH:Ljava/lang/String; = "sys/board_properties/tpd_glove_status"

.field public static final IPO_DISABLE:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field public static final IPO_ENABLE:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field static final IS_USER_BUILD:Z

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final KEY_DISPATCH_MODE_ALL_DISABLE:I = 0x1

.field static final KEY_DISPATCH_MODE_ALL_ENABLE:I = 0x0

.field static final KEY_DISPATCH_MODE_HOME_DISABLE:I = 0x2

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_LEVOICE:I = 0x3

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_DISPATCH_SHOW_GLOBAL_ACTIONS:I = 0xa

.field private static final MSG_DISPATCH_SHOW_RECENTS:I = 0x9

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final MSG_HIDE_BOOT_MESSAGE:I = 0xb

.field private static final MSG_KEYGUARD_DRAWN_COMPLETE:I = 0x5

.field private static final MSG_KEYGUARD_DRAWN_TIMEOUT:I = 0x6

.field private static final MSG_LAUNCH_VOICE_ASSIST_WITH_WAKE_LOCK:I = 0xc

.field private static final MSG_LENOVOBLACKGESTURE_ENABLE_CHANGED:I = 0x10

.field private static final MSG_POWER_DELAYED_PRESS:I = 0xd

.field private static final MSG_POWER_LONG_PRESS:I = 0xe

.field private static final MSG_UPDATE_DREAMING_SLEEP_TOKEN:I = 0xf

.field private static final MSG_WINDOW_MANAGER_DRAWN_COMPLETE:I = 0x7

.field static final MULTI_PRESS_POWER_BRIGHTNESS_BOOST:I = 0x2

.field static final MULTI_PRESS_POWER_NOTHING:I = 0x0

.field static final MULTI_PRESS_POWER_THEATER_MODE:I = 0x1

.field private static final NORMAL_BOOT_ACTION:Ljava/lang/String; = "android.intent.action.normal.boot"

.field private static final NORMAL_SHUTDOWN_ACTION:Ljava/lang/String; = "android.intent.action.normal.shutdown"

.field private static final PANIC_GESTURE_EXPIRATION:J = 0x7530L

.field static final PRINT_ANIM:Z = false

.field static final RATIO:F = 1.5f

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SHORT_PRESS_POWER_GO_HOME:I = 0x4

.field static final SHORT_PRESS_POWER_GO_TO_SLEEP:I = 0x1

.field static final SHORT_PRESS_POWER_NOTHING:I = 0x0

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP:I = 0x2

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME:I = 0x3

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP:I = 0x0

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME:I = 0x1

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field private static final SNAP_TAG:Ljava/lang/String; = "LenovoShot"

.field public static final STK_USERACTIVITY:Ljava/lang/String; = "android.intent.action.stk.USER_ACTIVITY"

.field public static final STK_USERACTIVITY_ENABLE:Ljava/lang/String; = "android.intent.action.stk.USER_ACTIVITY.enable"

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3fff7ffa

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final VOLUME_KEY_MASK:I = 0x2

.field static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x3e8

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static localLOGV:Z

.field static mGshModeEntered:Z

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDecorFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpOutsetFrame:Landroid/graphics/Rect;

.field static final mTmpOverscanFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpStableFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ENABLE_GSH_DEBUG:Z

.field private final GSH_DISTANCE_MAX:I

.field private final GSH_DISTANCE_MIN:I

.field private final GSH_GESTRUE_TIMEMIN:I

.field private final GSH_GESTRUE_TIMEOUT:I

.field private final GSH_LEFT_ENTRANCE:I

.field private final GSH_LEFT_LEAVE:I

.field private final GSH_MAX_Y_DISTANCE:I

.field private final GSH_MIN_Y_DISTANCE:I

.field private final GSH_RIGHT_ENTRANCE:I

.field private final GSH_RIGHT_LEAVE:I

.field private final GSH_TOP_ENTRANCE:I

.field private final GSH_X_B_MAX:I

.field private final GSH_X_B_MIN:I

.field isSinglehandSupport:Z

.field mAccelerometerDefault:Z

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field private mAllowTheaterModeWakeFromCameraLens:Z

.field private mAllowTheaterModeWakeFromKey:Z

.field private mAllowTheaterModeWakeFromLidSwitch:Z

.field private mAllowTheaterModeWakeFromMotion:Z

.field private mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

.field private mAllowTheaterModeWakeFromPowerKey:Z

.field private mAllowTheaterModeWakeFromWakeGesture:Z

.field mAppLaunchTimeEnabled:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAppSwitchLongPress:Z

.field mAppsThatDismissKeyguard:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAppsToBeHidden:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAssistKeyLongPressed:Z

.field mAwake:Z

.field volatile mBeganFromNonInteractive:Z

.field mBootMessageNeedsHiding:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field mCalendarDateVibePattern:[J

.field mCameraLensCoverState:I

.field private mCameraShotKeyLenovo:I

.field mCanHideNavigationBar:Z

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field private mClearCameraShotRunnableLM:Ljava/lang/Runnable;

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field mClockTickVibePattern:[J

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mContextClickVibePattern:[J

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field mCurrentInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mCurrentInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mCurrentUserId:I

.field private mDeferBindKeyguard:Z

.field mDemoHdmiRotation:I

.field mDemoHdmiRotationLock:Z

.field mDemoRotation:I

.field mDemoRotationLock:Z

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismissKeyguard:I

.field mDisplay:Landroid/view/Display;

.field private mDisplayRotation:I

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field mDoublePressOnPowerBehavior:I

.field private mDoubleTapOnHomeBehavior:I

.field mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field mDreamingLockscreen:Z

.field mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field mDreamingSleepTokenNeeded:Z

.field mEnableShiftMenuBugReports:Z

.field volatile mEndCallKeyHandled:Z

.field private final mEndCallLongPress:Ljava/lang/Runnable;

.field mEndcallBehavior:I

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field private mForceDefaultOrientation:Z

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field private mForceStatusBarTransparent:Z

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field private mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field private mGoToSleepOnButtonPressTheaterMode:Z

.field mGshCheckTimeout:Ljava/lang/Runnable;

.field private mGshDistanceMax:I

.field private mGshDown:Z

.field private mGshDownPosLeft:Z

.field private mGshDownTime:J

.field private mGshDownX:I

.field private mGshDownY:I

.field private mGshMoveMaxX:I

.field private final mGshScreenWidth:I

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHandGloveSettingObserver:Lcom/android/server/policy/PhoneWindowManager$HandGloveSettingObserver;

.field mHandler:Landroid/os/Handler;

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

.field mHdmiPlugged:Z

.field private final mHiddenNavPanic:Ljava/lang/Runnable;

.field mHideLockScreen:Z

.field final mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field mHomeConsumed:Z

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeIntent:Landroid/content/Intent;

.field mHomePressed:Z

.field mIPOUserRotation:I

.field private mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

.field mIncallPowerBehavior:I

.field mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

.field mIpoEventReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAlarmBoot:Z

.field mIsLenovoBlackGesturesEnabled:Z

.field mIsLenovoBlackGesturesSnapshotEnabled:Z

.field mIsLenovoBlackGesturesTPEnabled:Z

.field private mIsShutDown:Z

.field mIsStkUserActivityEnabled:Z

.field mKeyDispatcMode:I

.field final mKeyDispatchLock:Ljava/lang/Object;

.field private mKeyRemappingAppSwitchDownLongPress:Ljava/lang/Runnable;

.field private mKeyRemappingSendFakeKeyDownTime:J

.field private mKeyRemappingVolumeDownLongPress:Ljava/lang/Runnable;

.field private mKeyRemappingVolumeDownLongPress_Test:Ljava/lang/Runnable;

.field private mKeyRemappingVolumeDownLongPressed:Z

.field private mKeyRemappingVolumeUpLongPress:Ljava/lang/Runnable;

.field private mKeyRemappingVolumeUpLongPressed:Z

.field mKeyboardTapVibePattern:[J

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field mKeyguardDrawComplete:Z

.field final mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field private mKeyguardDrawnOnce:Z

.field private mKeyguardHidden:Z

.field volatile mKeyguardOccluded:Z

.field private mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardSecure:Z

.field mKeyguardSecureIncludingHidden:Z

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field mLastFocusNeedsMenu:Z

.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastSystemUiFlags:I

.field final mLenovoFrameworkDelegateCallback:Lcom/android/server/policy/LenovoFrameworkServiceDelegate$ShowListener;

.field mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field private final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private final mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/server/policy/BarController;

.field mNavigationBarHeightForRotation:[I

.field mNavigationBarOnBottom:Z

.field mNavigationBarWidthForRotation:[I

.field mNotifyStk:Ljava/lang/Runnable;

.field mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mOverscanBottom:I

.field mOverscanLeft:I

.field mOverscanRight:I

.field mOverscanScreenHeight:I

.field mOverscanScreenLeft:I

.field mOverscanScreenTop:I

.field mOverscanScreenWidth:I

.field mOverscanTop:I

.field mPendingMetaAction:Z

.field private mPendingPanicGestureUptime:J

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field volatile mPowerKeyPressCounter:I

.field volatile mPowerKeyRebootHandled:Z

.field mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPowerLongPressReboot:Ljava/lang/Runnable;

.field mPowerManager:Landroid/os/PowerManager;

.field mPoweroffAlarmReceiver:Landroid/content/BroadcastReceiver;

.field mPreloadedRecentApps:Z

.field mRecentAppsHeldModifiers:I

.field mRecentsVisible:Z

.field mResettingSystemUiFlags:I

.field mRestrictedOverscanScreenHeight:I

.field mRestrictedOverscanScreenLeft:I

.field mRestrictedOverscanScreenTop:I

.field mRestrictedOverscanScreenWidth:I

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

.field mScreenOffReason:I

.field mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

.field private mScreenshotChordEnabled:Z

.field private mScreenshotChordPowerKeyTime:J

.field private mScreenshotChordPowerKeyTriggered:Z

.field private mScreenshotChordVolumeDownKeyConsumed:Z

.field private mScreenshotChordVolumeDownKeyTime:J

.field private mScreenshotChordVolumeDownKeyTriggered:Z

.field private mScreenshotChordVolumeUpKeyTriggered:Z

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field private final mScreenshotRunnable:Ljava/lang/Runnable;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field private mSecureDismissingKeyguard:Z

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

.field mShortPressOnPowerBehavior:I

.field mShortPressOnSleepBehavior:I

.field mShortcutManager:Lcom/android/server/policy/ShortcutManager;

.field private final mShowRebootDialog:Z

.field mShowingDream:Z

.field mShowingLockscreen:Z

.field mSingleHandSettingObserver:Lcom/android/server/policy/PhoneWindowManager$SingleHandSettingObserver;

.field mStableBottom:I

.field mStableFullscreenBottom:I

.field mStableFullscreenLeft:I

.field mStableFullscreenRight:I

.field mStableFullscreenTop:I

.field mStableLeft:I

.field mStableRight:I

.field mStableTop:I

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private final mStatusBarController:Lcom/android/server/policy/StatusBarController;

.field mStatusBarEventReceiver:Landroid/content/BroadcastReceiver;

.field mStatusBarHeight:I

.field mStatusBarLayer:I

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mStkLock:Ljava/lang/Object;

.field mStkUserActivityEnReceiver:Landroid/content/BroadcastReceiver;

.field mSupportAutoRotation:Z

.field private mSupportLongPressPowerWhenNonInteractive:Z

.field mSystemBooted:Z

.field mSystemBottom:I

.field mSystemGestureEventListener:Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;

.field private mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

.field mSystemLeft:I

.field mSystemReady:Z

.field mSystemRight:I

.field mSystemTop:I

.field mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mTranslucentDecorEnabled:Z

.field mTriplePressOnPowerBehavior:I

.field mUiMode:I

.field mUiModeManager:Landroid/app/IUiModeManager;

.field mUndockedHdmiRotation:I

.field private mUnpinEventDetector:Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUseTvRouting:Z

.field mUserRotation:I

.field mUserRotationMode:I

.field private final mVDownFastCamera:Ljava/lang/Runnable;

.field private final mVUpFastCamera:Ljava/lang/Runnable;

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field mVoiceContentBottom:I

.field mVoiceContentLeft:I

.field mVoiceContentRight:I

.field mVoiceContentTop:I

.field private mVolumeDownFastCamera:Z

.field private mVolumeKeyFastCameraDownFlag:Z

.field private mVolumeKeyFuncation:I

.field private mVolumeUpFastCamera:Z

.field mWakeGestureEnabledSetting:Z

.field mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

.field private mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field private mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

.field mWindowManager:Landroid/view/IWindowManager;

.field final mWindowManagerDrawCallback:Ljava/lang/Runnable;

.field mWindowManagerDrawComplete:Z

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDown:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/BarController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStkLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/PhoneWindowManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraShotKeyLenovo:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDown:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownFastCamera:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpFastCamera:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/PhoneWindowManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownTime:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/policy/PhoneWindowManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownX:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/policy/PhoneWindowManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownY:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsAlarmBoot:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsShutDown:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyRemappingVolumeDownLongPressed:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyRemappingVolumeUpLongPressed:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/policy/PhoneWindowManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->OnPreventMisoperationMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/PhoneWindowManager;II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->gshValidDownPos(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/policy/PhoneWindowManager;II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->gshGestureCalculate(II)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/policy/PhoneWindowManager;II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->gshGestureCheck(II)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->ipoSystemBooted()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->ipoSystemShutdown()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/policy/PhoneWindowManager;II)V
    .locals 0
    .param p1, "action"    # I
    .param p2, "keyCode"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->keyRemappingSendFakeKeyEvent(II)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/policy/PhoneWindowManager;JZI)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "count"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0
    .param p1, "acquire"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateDreamingSleepToken(Z)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSingleHandSettings()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/PhoneWindowManager;JZLjava/lang/String;)Z
    .locals 1
    .param p1, "wakeTime"    # J
    .param p3, "wakeInTheaterMode"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->DisableLenovoBlackGestures()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->EnableLenovoBlackGestures()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 185
    sput-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    .line 186
    sput-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    .line 188
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 189
    sput-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    .line 190
    sput-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    .line 191
    sput-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_STARTING_WINDOW:Z

    .line 192
    sput-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 258
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 259
    const/4 v2, 0x4

    .line 258
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 260
    const/16 v2, 0xd

    .line 258
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 282
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 283
    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 284
    const-string/jumbo v2, "android.intent.category.APP_BROWSER"

    const/16 v3, 0x40

    .line 283
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 285
    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 286
    const-string/jumbo v2, "android.intent.category.APP_EMAIL"

    const/16 v3, 0x41

    .line 285
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 287
    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 288
    const-string/jumbo v2, "android.intent.category.APP_CONTACTS"

    const/16 v3, 0xcf

    .line 287
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 289
    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 290
    const-string/jumbo v2, "android.intent.category.APP_CALENDAR"

    const/16 v3, 0xd0

    .line 289
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 291
    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 292
    const-string/jumbo v2, "android.intent.category.APP_MUSIC"

    const/16 v3, 0xd1

    .line 291
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 293
    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 294
    const-string/jumbo v2, "android.intent.category.APP_CALCULATOR"

    const/16 v3, 0xd2

    .line 293
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 560
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 561
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 562
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 563
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 564
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 565
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 566
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    .line 567
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 568
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    .line 2956
    const/16 v1, 0x7d3

    .line 2957
    const/16 v2, 0x7da

    .line 2955
    filled-new-array {v1, v2}, [I

    move-result-object v1

    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 7946
    const-string/jumbo v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7947
    const-string/jumbo v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 7946
    :cond_0
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->IS_USER_BUILD:Z

    .line 7966
    sput-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ORIENTATION:Z

    .line 8709
    sput-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->mGshModeEntered:Z

    .line 182
    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v1, 0x4

    const/4 v7, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 316
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 348
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 351
    iput-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 353
    iput-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 354
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    .line 355
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 356
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 357
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 358
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    .line 359
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    .line 363
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    .line 370
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .line 380
    iput-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 381
    iput-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 401
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeKeyFuncation:I

    .line 406
    iput v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    .line 407
    iput v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 417
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    .line 432
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    .line 434
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    .line 435
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    .line 439
    iput v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    .line 456
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 457
    iput v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 458
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 459
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 462
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    .line 473
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsLenovoBlackGesturesSnapshotEnabled:Z

    .line 474
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsLenovoBlackGesturesTPEnabled:Z

    .line 475
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsLenovoBlackGesturesEnabled:Z

    .line 478
    const-string/jumbo v0, "ro.lenovo.single_hand"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->isSinglehandSupport:Z

    .line 485
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkDelegateCallback:Lcom/android/server/policy/LenovoFrameworkServiceDelegate$ShowListener;

    .line 495
    const-string/jumbo v0, "sys.powerkeyreboot.enable"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowRebootDialog:Z

    .line 549
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 551
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 554
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 558
    iput-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    .line 572
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    .line 573
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    .line 586
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    .line 640
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 641
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    .line 642
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 643
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    .line 645
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    .line 646
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    .line 647
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    .line 648
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    .line 700
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 699
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 703
    new-instance v0, Lcom/android/server/policy/LogDecelerateInterpolator;

    const/16 v1, 0x64

    invoke-direct {v0, v1, v8}, Lcom/android/server/policy/LogDecelerateInterpolator;-><init>(II)V

    .line 702
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    .line 786
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 896
    new-instance v0, Lcom/android/server/policy/StatusBarController;

    invoke-direct {v0}, Lcom/android/server/policy/StatusBarController;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    .line 898
    new-instance v0, Lcom/android/server/policy/BarController;

    const-string/jumbo v1, "NavigationBar"

    .line 899
    const/high16 v2, 0x8000000

    .line 900
    const/high16 v3, 0x20000000

    .line 901
    const/high16 v4, -0x80000000

    .line 902
    const/4 v5, 0x2

    .line 903
    const/high16 v6, 0x8000000

    .line 898
    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    .line 1003
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyRebootHandled:Z

    .line 1004
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerLongPressReboot:Ljava/lang/Runnable;

    .line 1349
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    .line 1360
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    .line 1507
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 1522
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;

    invoke-direct {v0, p0, v9}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnpinEventDetector:Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;

    .line 2963
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraShotKeyLenovo:I

    .line 3024
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$9;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearCameraShotRunnableLM:Ljava/lang/Runnable;

    .line 3901
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    .line 3969
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$11;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 3968
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 5421
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 5422
    iput-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 5424
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 6141
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 6162
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$14;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    .line 6177
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$15;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 6198
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$16;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    .line 6920
    iput-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 7046
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 7950
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isAlarmBoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsAlarmBoot:Z

    .line 7951
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsShutDown:Z

    .line 7958
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyDispatchLock:Ljava/lang/Object;

    .line 7960
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mIPOUserRotation:I

    .line 7974
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyDispatcMode:I

    .line 7982
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsStkUserActivityEnabled:Z

    .line 7984
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStkLock:Ljava/lang/Object;

    .line 7987
    iput v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffReason:I

    .line 8008
    const-string/jumbo v0, "ro.mtk_perf_response_time"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v7, v0, :cond_0

    move v0, v7

    .line 8007
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppLaunchTimeEnabled:Z

    .line 8010
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$17;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$17;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyRemappingVolumeDownLongPress_Test:Ljava/lang/Runnable;

    .line 8048
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$18;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$18;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyRemappingVolumeUpLongPress:Ljava/lang/Runnable;

    .line 8058
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$19;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$19;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyRemappingVolumeDownLongPress:Ljava/lang/Runnable;

    .line 8069
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$20;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$20;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIpoEventReceiver:Landroid/content/BroadcastReceiver;

    .line 8085
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$21;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$21;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVUpFastCamera:Ljava/lang/Runnable;

    .line 8094
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$22;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$22;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVDownFastCamera:Ljava/lang/Runnable;

    .line 8138
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$23;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$23;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyRemappingAppSwitchDownLongPress:Ljava/lang/Runnable;

    .line 8151
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$24;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$24;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPoweroffAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 8170
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$25;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$25;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStkUserActivityEnReceiver:Landroid/content/BroadcastReceiver;

    .line 8199
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$26;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$26;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarEventReceiver:Landroid/content/BroadcastReceiver;

    .line 8266
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$27;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$27;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyStk:Ljava/lang/Runnable;

    .line 8694
    iput-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 8695
    iput-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 8707
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->ENABLE_GSH_DEBUG:Z

    .line 8711
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->GSH_DISTANCE_MIN:I

    .line 8712
    const/16 v0, 0x2a8

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->GSH_DISTANCE_MAX:I

    .line 8714
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->GSH_X_B_MIN:I

    .line 8715
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->GSH_X_B_MAX:I

    .line 8716
    const/16 v0, -0x4e20

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->GSH_TOP_ENTRANCE:I

    .line 8717
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->GSH_LEFT_ENTRANCE:I

    .line 8718
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->GSH_RIGHT_ENTRANCE:I

    .line 8719
    const/16 v0, 0xaa

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->GSH_LEFT_LEAVE:I

    .line 8720
    const/16 v0, 0xaa

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->GSH_RIGHT_LEAVE:I

    .line 8722
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->GSH_MIN_Y_DISTANCE:I

    .line 8723
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->GSH_MAX_Y_DISTANCE:I

    .line 8725
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->GSH_GESTRUE_TIMEOUT:I

    .line 8726
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->GSH_GESTRUE_TIMEMIN:I

    .line 8728
    const/16 v0, 0x438

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshScreenWidth:I

    .line 8730
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownTime:J

    .line 8731
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDown:Z

    .line 8732
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownX:I

    .line 8733
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownY:I

    .line 8734
    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshMoveMaxX:I

    .line 8737
    const/16 v0, -0x7d0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDistanceMax:I

    .line 8738
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownPosLeft:Z

    .line 8740
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$28;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$28;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshCheckTimeout:Ljava/lang/Runnable;

    .line 182
    return-void

    :cond_0
    move v0, v8

    .line 8008
    goto/16 :goto_0
.end method

.method private DisableLenovoBlackGestures()V
    .locals 2

    .prologue
    .line 8353
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Lenovogesture DisableLenovoBlackGestures"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8354
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    if-eqz v0, :cond_0

    .line 8355
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->isReady()Z

    move-result v0

    .line 8354
    if-eqz v0, :cond_0

    .line 8356
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->disable()V

    .line 8352
    :cond_0
    return-void
.end method

.method private EnableLenovoBlackGestures()V
    .locals 2

    .prologue
    .line 8345
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Lenovogesture EnableLenovoBlackGestures"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8346
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    if-nez v0, :cond_0

    .line 8347
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v0, v1}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->getInstance(Landroid/content/Context;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    .line 8349
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->enable()V

    .line 8344
    return-void
.end method

.method private OnPreventMisoperationMode()Z
    .locals 5

    .prologue
    .line 1337
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1338
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Antimisoperation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1339
    const-string/jumbo v2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "attrs = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const-string/jumbo v1, " null"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "is OnPreventMisoperationMode"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    const/4 v1, 0x1

    return v1

    .line 1337
    :cond_0
    const/4 v0, 0x0

    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0

    .line 1339
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ".title ==null"

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ".title =="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1343
    :cond_3
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "no OnPreventMisoperationMode"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const/4 v1, 0x0

    return v1
.end method

.method private applyLidSwitchState()V
    .locals 5

    .prologue
    .line 7112
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_0

    .line 7113
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 7114
    const/4 v1, 0x3

    .line 7115
    const/4 v4, 0x1

    .line 7113
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 7118
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7119
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 7111
    return-void

    .line 7118
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "sysui"    # I
    .param p2, "fl"    # I
    .param p3, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 4406
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_3

    .line 4409
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_4

    .line 4410
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 4411
    :cond_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 4412
    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 4413
    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 4405
    :cond_3
    :goto_0
    return-void

    .line 4415
    :cond_4
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 4416
    :cond_5
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 4417
    :cond_6
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 4418
    :cond_7
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private areTranslucentBarsAllowed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 7634
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    if-eqz v1, :cond_0

    .line 7635
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7634
    :cond_0
    :goto_0
    return v0

    .line 7635
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static awakenDreams()V
    .locals 2

    .prologue
    .line 2923
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 2924
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_0

    .line 2926
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2922
    :cond_0
    :goto_0
    return-void

    .line 2927
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private canHideNavigationBar()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1959
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v1, :cond_0

    .line 1960
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1959
    :cond_0
    :goto_0
    return v0

    .line 1960
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v3, 0x0

    .line 4425
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 4427
    .local v1, "notFocusable":Z
    :goto_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 4428
    .local v0, "altFocusableIm":Z
    :goto_1
    xor-int v2, v1, v0

    .line 4429
    .local v2, "notFocusableForIm":Z
    if-eqz v2, :cond_2

    :goto_2
    return v3

    .line 4425
    .end local v0    # "altFocusableIm":Z
    .end local v1    # "notFocusable":Z
    .end local v2    # "notFocusableForIm":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "notFocusable":Z
    goto :goto_0

    .line 4427
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "altFocusableIm":Z
    goto :goto_1

    .line 4429
    .restart local v2    # "notFocusableForIm":Z
    :cond_2
    const/4 v3, 0x1

    goto :goto_2
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    .prologue
    .line 1165
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_0

    .line 1166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1167
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1164
    :cond_0
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1331
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3728
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v2, :cond_0

    .line 3729
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3731
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3732
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 3733
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3727
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 3735
    :catch_0
    move-exception v0

    .line 3736
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when cancelling recent apps preload"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3738
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private clearClearableFlagsLw()V
    .locals 2

    .prologue
    .line 7612
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v0, v1, 0x7

    .line 7613
    .local v0, "newVal":I
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v0, v1, :cond_0

    .line 7614
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 7615
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    .line 7611
    :cond_0
    return-void
.end method

.method private disablePointerLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2131
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_0

    .line 2132
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 2133
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2134
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2135
    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 2130
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6038
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 6039
    return-void

    .line 6041
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    .line 6042
    .local v7, "keyCode":I
    const/16 v3, 0x1005

    .line 6044
    .local v3, "flags":I
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 6045
    .local v4, "pkgName":Ljava/lang/String;
    sparse-switch v7, :sswitch_data_0

    .line 6037
    :cond_1
    :goto_0
    return-void

    .line 6048
    :sswitch_0
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6049
    const-string/jumbo v5, "WindowManager"

    .line 6048
    const/4 v1, 0x1

    .line 6049
    const/high16 v2, -0x80000000

    .line 6048
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6050
    :catch_0
    move-exception v6

    .line 6051
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Error dispatching volume up in dispatchTvAudioEvent."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 6056
    .end local v6    # "e":Landroid/os/RemoteException;
    :sswitch_1
    :try_start_1
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6057
    const-string/jumbo v5, "WindowManager"

    .line 6056
    const/4 v1, -0x1

    .line 6057
    const/high16 v2, -0x80000000

    .line 6056
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 6058
    :catch_1
    move-exception v6

    .line 6059
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Error dispatching volume down in dispatchTvAudioEvent."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 6064
    .end local v6    # "e":Landroid/os/RemoteException;
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 6065
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 6067
    const-string/jumbo v5, "WindowManager"

    .line 6066
    const/16 v1, 0x65

    .line 6067
    const/high16 v2, -0x80000000

    .line 6065
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 6069
    :catch_2
    move-exception v6

    .line 6070
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Error dispatching mute in dispatchTvAudioEvent."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 6045
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method private enableGshGestureDetection(Z)V
    .locals 4
    .param p1, "en"    # Z

    .prologue
    const/4 v3, 0x0

    .line 8963
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "in enableGshGestureDetection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8964
    if-eqz p1, :cond_1

    .line 8965
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestureEventListener:Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;

    if-nez v0, :cond_0

    .line 8966
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;

    invoke-direct {v0, p0, v3}, Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestureEventListener:Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;

    .line 8967
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestureEventListener:Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 8962
    :cond_0
    :goto_0
    return-void

    .line 8970
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestureEventListener:Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;

    if-eqz v0, :cond_2

    .line 8971
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 8972
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestureEventListener:Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;

    .line 8971
    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 8973
    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestureEventListener:Lcom/android/server/policy/PhoneWindowManager$SystemGestureEventListener;

    .line 8977
    :cond_2
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mGshModeEntered:Z

    if-eqz v0, :cond_0

    .line 8979
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleGsh(Z)V

    goto :goto_0
.end method

.method private enablePointerLocation()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 2104
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v2, :cond_1

    .line 2105
    new-instance v2, Lcom/android/internal/widget/PointerLocationView;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 2106
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 2107
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 2110
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2111
    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2115
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2116
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2117
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2120
    :cond_0
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2121
    const-string/jumbo v2, "PointerLocation"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2123
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2122
    check-cast v1, Landroid/view/WindowManager;

    .line 2124
    .local v1, "wm":Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 2125
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2126
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 2103
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method private finishKeyguardDrawn()V
    .locals 4

    .prologue
    .line 6326
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6327
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 6328
    return-void

    .line 6331
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 6332
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_2

    .line 6333
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6335
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 6340
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    .line 6341
    const-wide/16 v2, 0x3e8

    .line 6340
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V

    .line 6325
    return-void

    .line 6326
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private finishPowerKeyPress()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1157
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    .line 1158
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 1159
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1156
    :cond_0
    return-void
.end method

.method private finishScreenTurningOn()V
    .locals 7

    .prologue
    .line 6425
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 6428
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 6432
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 6433
    :try_start_1
    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WindowManager"

    .line 6434
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "finishScreenTurningOn: mAwake="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6435
    const-string/jumbo v6, ", mScreenOnEarly="

    .line 6434
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6435
    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    .line 6434
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6436
    const-string/jumbo v6, ", mScreenOnFully="

    .line 6434
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6436
    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 6434
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6437
    const-string/jumbo v6, ", mKeyguardDrawComplete="

    .line 6434
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6437
    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 6434
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6438
    const-string/jumbo v6, ", mWindowManagerDrawComplete="

    .line 6434
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6438
    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 6434
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6433
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6440
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-eqz v3, :cond_6

    .line 6441
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-eqz v3, :cond_6

    .line 6445
    :cond_1
    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WindowManager"

    const-string/jumbo v5, "Finished screen turning on..."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6446
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 6447
    .local v1, "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 6448
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 6452
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v3, :cond_7

    .line 6453
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    .line 6454
    const/4 v0, 0x1

    .line 6455
    .local v0, "enableScreen":Z
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    if-eqz v3, :cond_3

    .line 6456
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 6457
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hideBootMessages()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :goto_0
    monitor-exit v4

    .line 6464
    if-eqz v1, :cond_4

    .line 6465
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 6468
    :cond_4
    if-eqz v0, :cond_5

    .line 6470
    :try_start_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->enableScreenIfNeeded()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6424
    :cond_5
    :goto_1
    return-void

    .line 6425
    .end local v0    # "enableScreen":Z
    .end local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    :cond_6
    monitor-exit v4

    .line 6442
    return-void

    .line 6460
    .restart local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "enableScreen":Z
    goto :goto_0

    .line 6432
    .end local v0    # "enableScreen":Z
    .end local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 6471
    .restart local v0    # "enableScreen":Z
    .restart local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :catch_0
    move-exception v2

    .local v2, "unhandled":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private finishWindowsDrawn()V
    .locals 2

    .prologue
    .line 6413
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6414
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 6415
    return-void

    .line 6418
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 6421
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    .line 6412
    return-void

    .line 6413
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .prologue
    .line 2944
    const-string/jumbo v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2943
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2945
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 2946
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    :cond_0
    return-object v0
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    .prologue
    .line 2935
    const-string/jumbo v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2934
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method private getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1418
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    if-nez v2, :cond_1

    .line 1419
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1420
    const-string/jumbo v3, "hdmi_control"

    .line 1419
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiControlManager;

    .line 1421
    .local v1, "manager":Landroid/hardware/hdmi/HdmiControlManager;
    const/4 v0, 0x0

    .line 1422
    .local v0, "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    if-eqz v1, :cond_0

    .line 1423
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    .line 1425
    .end local v0    # "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    :cond_0
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    invoke-direct {v2, v0, v4}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager$HdmiControl;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    .line 1427
    .end local v1    # "manager":Landroid/hardware/hdmi/HdmiControlManager;
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    return-object v2
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .prologue
    const/4 v3, 0x0

    .line 6844
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 6845
    .local v0, "ar":[I
    if-nez v0, :cond_0

    .line 6846
    return-object v3

    .line 6848
    :cond_0
    array-length v3, v0

    new-array v2, v3, [J

    .line 6849
    .local v2, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 6850
    aget v3, v0, v1

    int-to-long v4, v3

    aput-wide v4, v2, v1

    .line 6849
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6852
    :cond_1
    return-object v2
.end method

.method private getMaxMultiPressPowerCount()I
    .locals 1

    .prologue
    .line 1247
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    if-eqz v0, :cond_0

    .line 1248
    const/4 v0, 0x3

    return v0

    .line 1250
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    if-eqz v0, :cond_1

    .line 1251
    const/4 v0, 0x2

    return v0

    .line 1253
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getResolvedLongPressOnPowerBehavior()I
    .locals 1

    .prologue
    .line 1296
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
    const/4 v0, 0x3

    return v0

    .line 1299
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    return v0
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 2

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    long-to-float v0, v0

    .line 1325
    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 3707
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 3708
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 3710
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method private getTopActivity(Ljava/lang/String;)Z
    .locals 6
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3622
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 3624
    .local v1, "manager":Landroid/app/ActivityManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3625
    :cond_0
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "ActivityManager is null..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    return v4

    .line 3629
    :cond_1
    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3630
    .local v0, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v2, :cond_3

    .line 3631
    :cond_2
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Top activity is null..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    return v4

    .line 3634
    :cond_3
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3635
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Top activity is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    return v5

    .line 3638
    :cond_4
    return v4
.end method

.method private gshGestureCalculate(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 8839
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownTime:J

    sub-long v2, v4, v6

    .line 8840
    .local v2, "diffTime":J
    const-wide/16 v4, 0xc8

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 8841
    const-string/jumbo v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in gshGestureCalculate min time fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8842
    return-void

    .line 8846
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownPosLeft:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshMoveMaxX:I

    const/16 v4, 0xb4

    if-lt v1, v4, :cond_1

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshMoveMaxX:I

    const/16 v4, 0x320

    if-le v1, v4, :cond_2

    .line 8847
    :cond_1
    const-string/jumbo v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in gshGestureCalculate mGshMoveMaxX fail : mGshDownPosLeft:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownPosLeft:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mGshMoveMaxX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshMoveMaxX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8848
    return-void

    .line 8851
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownPosLeft:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshMoveMaxX:I

    const/16 v4, 0x118

    if-lt v1, v4, :cond_3

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshMoveMaxX:I

    const/16 v4, 0x384

    if-le v1, v4, :cond_4

    .line 8852
    :cond_3
    const-string/jumbo v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in gshGestureCalculate mGshMoveMaxX fail : mGshDownPosLeft:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownPosLeft:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mGshMoveMaxX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshMoveMaxX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8853
    return-void

    .line 8857
    :cond_4
    const/16 v1, 0xaa

    if-le p1, v1, :cond_5

    const/16 v1, 0x38e

    if-ge p1, v1, :cond_5

    .line 8858
    const-string/jumbo v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in gshGestureCalculate leave point error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8859
    return-void

    .line 8863
    :cond_5
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownY:I

    if-ge p2, v1, :cond_6

    .line 8864
    const-string/jumbo v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in gshGestureCalculate down C : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8865
    return-void

    .line 8876
    :cond_6
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownY:I

    sub-int v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 8877
    .local v0, "diav":I
    const/16 v1, 0x50

    if-ge v0, v1, :cond_7

    .line 8879
    const-string/jumbo v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in gshGestureCalculate v dis fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8880
    return-void

    .line 8883
    :cond_7
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDistanceMax:I

    const/16 v4, 0x64

    if-ge v1, v4, :cond_8

    .line 8885
    const-string/jumbo v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in gshGestureCalculate min shape fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDistanceMax:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8886
    return-void

    .line 8889
    :cond_8
    const/16 v1, 0x3e8

    if-le v0, v1, :cond_9

    .line 8891
    const-string/jumbo v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in gshGestureCalculate v dis fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8892
    return-void

    .line 8895
    :cond_9
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDistanceMax:I

    const/16 v4, 0x2a8

    if-le v1, v4, :cond_a

    .line 8897
    const-string/jumbo v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in gshGestureCalculate max shape fail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDistanceMax:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8898
    return-void

    .line 8901
    :cond_a
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v4, "in gshGestureCalculate : valid gesture"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8903
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownPosLeft:Z

    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->toggleGsh(Z)V

    .line 8835
    return-void
.end method

.method private gshGestureCheck(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 8782
    const/16 v2, -0x4e20

    if-ge p2, v2, :cond_0

    .line 8783
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "in gshValidDownPos y error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8784
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDown:Z

    .line 8785
    return-void

    .line 8788
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownPosLeft:Z

    if-eqz v2, :cond_2

    .line 8790
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownX:I

    sub-int v0, p1, v2

    .line 8791
    .local v0, "distance":I
    move v1, p1

    .line 8821
    .local v1, "offset":I
    :goto_0
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDistanceMax:I

    if-le v0, v2, :cond_1

    .line 8822
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDistanceMax:I

    .line 8823
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshMoveMaxX:I

    .line 8769
    :cond_1
    return-void

    .line 8794
    .end local v0    # "distance":I
    .end local v1    # "offset":I
    :cond_2
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownX:I

    sub-int v0, v2, p1

    .line 8795
    .restart local v0    # "distance":I
    rsub-int v1, p1, 0x438

    .restart local v1    # "offset":I
    goto :goto_0
.end method

.method private gshValidDownPos(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 8748
    const/4 v0, 0x1

    .line 8749
    .local v0, "rv":Z
    const/16 v1, 0x78

    if-ge p1, v1, :cond_0

    .line 8750
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownPosLeft:Z

    .line 8757
    :goto_0
    const/16 v1, -0x4e20

    if-ge p2, v1, :cond_2

    .line 8758
    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "in gshValidDownPos y error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8759
    return v4

    .line 8751
    :cond_0
    const/16 v1, 0x3c0

    if-le p1, v1, :cond_1

    .line 8752
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDownPosLeft:Z

    goto :goto_0

    .line 8754
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 8763
    :cond_2
    const/16 v1, -0x7d0

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGshDistanceMax:I

    .line 8766
    return v0
.end method

.method private handleDoubleTapOnHome()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1496
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ne v0, v2, :cond_1

    .line 1499
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "doubletap home"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    .line 1503
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 1495
    :cond_1
    return-void
.end method

.method private handleGloveModeSettingChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8407
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "glove_mode_alert_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 8408
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 8409
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "sys/board_properties/tpd_glove_status"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->writeSysFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 8406
    :goto_1
    return-void

    .line 8407
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 8411
    :cond_1
    const-string/jumbo v1, "0"

    const-string/jumbo v2, "sys/board_properties/tpd_glove_status"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->writeSysFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleHideBootMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6477
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6478
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v0, :cond_0

    .line 6479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 6480
    return-void

    :cond_0
    monitor-exit v1

    .line 6484
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 6485
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "handleHideBootMessage: dismissing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6486
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 6487
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 6476
    :cond_2
    return-void

    .line 6477
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleLongPressOnHome(I)V
    .locals 10
    .param p1, "deviceId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1462
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v5, :cond_1

    .line 1465
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "long press home"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :cond_0
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    .line 1469
    invoke-virtual {p0, v9, v7, v7}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1471
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v5, v8, :cond_2

    .line 1472
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 1461
    :cond_1
    :goto_0
    return-void

    .line 1473
    :cond_2
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 1474
    invoke-direct {p0, v9, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_0

    .line 1477
    :cond_3
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 1478
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isInSupperClassicMode()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1479
    const-string/jumbo v4, "com.lenovo.menu_assistant"

    .line 1480
    .local v4, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "com.lenovo.menu_assistant.MainActivity"

    .line 1481
    .local v0, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1482
    .local v3, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1485
    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1486
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1488
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "It is in SupperClassicMode"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleShortPressOnHome()V
    .locals 2

    .prologue
    .line 1399
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    .line 1403
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 1405
    return-void

    .line 1409
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 1397
    return-void
.end method

.method private handleShotForSuperCamera(Landroid/view/KeyEvent;)I
    .locals 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v10, -0x1

    const/16 v9, 0x42

    const/16 v7, 0x19

    const/16 v6, 0x18

    const/4 v8, 0x0

    .line 2967
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 2969
    .local v2, "keyCode":I
    if-eq v2, v6, :cond_0

    .line 2970
    if-eq v2, v7, :cond_0

    .line 2971
    if-eq v2, v9, :cond_0

    .line 2972
    return v8

    .line 2975
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 2976
    .local v3, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 2980
    .local v0, "down":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v4, :cond_2

    .line 2981
    return v8

    .line 2976
    .end local v0    # "down":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "down":Z
    goto :goto_0

    .line 2983
    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2985
    .local v1, "focusWindowComponent":Ljava/lang/String;
    const-string/jumbo v4, "com.lenovo.scg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2986
    return v8

    .line 2991
    :cond_3
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraShotKeyLenovo:I

    if-nez v4, :cond_8

    if-eqz v0, :cond_8

    if-nez v3, :cond_8

    .line 2993
    if-eq v2, v6, :cond_4

    .line 2994
    if-ne v2, v7, :cond_7

    .line 2995
    :cond_4
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraShotKeyLenovo:I

    .line 2999
    :cond_5
    :goto_1
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraShotKeyLenovo:I

    if-eqz v4, :cond_6

    .line 3000
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearCameraShotRunnableLM:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3021
    :cond_6
    return v8

    .line 2996
    :cond_7
    if-ne v2, v9, :cond_5

    .line 2997
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraShotKeyLenovo:I

    goto :goto_1

    .line 3003
    :cond_8
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraShotKeyLenovo:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 3004
    if-ne v2, v9, :cond_6

    .line 3005
    return v10

    .line 3011
    :cond_9
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraShotKeyLenovo:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 3012
    if-eq v2, v6, :cond_a

    .line 3013
    if-ne v2, v7, :cond_6

    .line 3014
    :cond_a
    return v10
.end method

.method private hasLongPressOnPowerBehavior()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1303
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hideRecentApps(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHome"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3783
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3785
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3786
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 3787
    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->hideRecentApps(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3782
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 3789
    :catch_0
    move-exception v0

    .line 3790
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when closing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3792
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private interceptDismissPinningChord()V
    .locals 3

    .prologue
    .line 8377
    const-string/jumbo v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    .line 8379
    .local v0, "activityManager":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8380
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8375
    :cond_0
    :goto_0
    return-void

    .line 8382
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "fallbackEvent"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v6, 0x0

    .line 3609
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    .line 3610
    .local v0, "actions":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 3611
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    .line 3613
    .local v2, "delayMillis":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 3614
    const/4 v1, 0x1

    return v1

    .line 3617
    .end local v2    # "delayMillis":J
    :cond_0
    return v6
.end method

.method private interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .prologue
    const/16 v11, 0xe

    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 1029
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1030
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1034
    :cond_0
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-eqz v5, :cond_1

    .line 1035
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1040
    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 1041
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v7}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v7

    .line 1040
    invoke-virtual {v5, p2, v8, v9, v7}, Lcom/android/server/policy/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZ)Z

    move-result v3

    .line 1042
    .local v3, "panic":Z
    if-eqz v3, :cond_2

    .line 1043
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1047
    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v5, :cond_7

    .line 1055
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v4

    .line 1056
    .local v4, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v0, 0x0

    .line 1057
    .local v0, "hungUp":Z
    if-eqz v4, :cond_4

    .line 1058
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1061
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 1073
    .end local v0    # "hungUp":Z
    :cond_4
    :goto_1
    if-nez v0, :cond_9

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v5, :cond_9

    .line 1074
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 1073
    :goto_2
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1075
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v5, :cond_5

    .line 1076
    if-eqz p2, :cond_a

    .line 1079
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1080
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1081
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1082
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1083
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v6

    .line 1082
    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1106
    .end local v2    # "msg":Landroid/os/Message;
    :cond_5
    :goto_3
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowRebootDialog:Z

    if-eqz v5, :cond_6

    .line 1107
    iput-boolean v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyRebootHandled:Z

    .line 1108
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyRebootHandled:Z

    if-nez v5, :cond_6

    .line 1109
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerLongPressReboot:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1388

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1027
    :cond_6
    return-void

    .line 1048
    .end local v4    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_3

    .line 1049
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 1050
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    .line 1051
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    goto :goto_0

    .line 1062
    .restart local v0    # "hungUp":Z
    .restart local v4    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_8
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    .line 1064
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v5

    .line 1062
    if-eqz v5, :cond_4

    if-eqz p2, :cond_4

    .line 1067
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v0

    .local v0, "hungUp":Z
    goto :goto_1

    .end local v0    # "hungUp":Z
    :cond_9
    move v5, v6

    .line 1073
    goto :goto_2

    .line 1086
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1088
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    if-eqz v5, :cond_b

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1089
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1090
    .restart local v2    # "msg":Landroid/os/Message;
    invoke-virtual {v2, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1091
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1092
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v8

    .line 1091
    invoke-virtual {v5, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1093
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto :goto_3

    .line 1095
    .end local v2    # "msg":Landroid/os/Message;
    :cond_b
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v1

    .line 1097
    .local v1, "maxCount":I
    if-gt v1, v6, :cond_c

    .line 1098
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    goto :goto_3

    .line 1100
    :cond_c
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto :goto_3
.end method

.method private interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V
    .locals 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "canceled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1116
    if-nez p3, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1117
    :goto_0
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 1118
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 1119
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1122
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowRebootDialog:Z

    if-eqz v7, :cond_1

    .line 1123
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyRebootHandled:Z

    if-nez v7, :cond_0

    .line 1124
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerLongPressReboot:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1126
    :cond_0
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-eqz v7, :cond_1

    .line 1127
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v7}, Lcom/android/server/policy/GlobalActions;->cancelRebootDialog()V

    .line 1132
    :cond_1
    if-nez v2, :cond_5

    .line 1134
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 1136
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v3

    .line 1137
    .local v3, "maxCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    .line 1138
    .local v0, "eventTime":J
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-ge v7, v3, :cond_4

    .line 1141
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1142
    if-eqz p2, :cond_2

    move v5, v6

    :cond_2
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1141
    const/16 v10, 0xd

    invoke-virtual {v7, v10, v5, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1143
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {v4, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1144
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1145
    return-void

    .line 1116
    .end local v0    # "eventTime":J
    .end local v3    # "maxCount":I
    .end local v4    # "msg":Landroid/os/Message;
    :cond_3
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto :goto_0

    .line 1149
    .end local v2    # "handled":Z
    .restart local v0    # "eventTime":J
    .restart local v3    # "maxCount":I
    :cond_4
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-direct {p0, v0, v1, p2, v5}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    .line 1153
    .end local v0    # "eventTime":J
    .end local v3    # "maxCount":I
    :cond_5
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    .line 1115
    return-void
.end method

.method private interceptScreenshotChord()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 1307
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_0

    .line 1308
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 1307
    if-eqz v2, :cond_0

    .line 1308
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 1307
    if-eqz v2, :cond_0

    .line 1309
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_1

    .line 1306
    :cond_0
    :goto_0
    return-void

    .line 1310
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1311
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1312
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1314
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 1315
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1317
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private ipoSystemBooted()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 8219
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isAlarmBoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsAlarmBoot:Z

    .line 8220
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsShutDown:Z

    .line 8224
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    .line 8228
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 8229
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 8232
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyDispatchLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8233
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyDispatcMode:I

    .line 8234
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 8235
    const-string/jumbo v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIpoEventReceiver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyDispatcMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 8239
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIPOUserRotation:I

    if-eqz v0, :cond_1

    .line 8240
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIPOUserRotation:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    .line 8241
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mIPOUserRotation:I

    .line 8216
    :cond_1
    return-void

    .line 8232
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private ipoSystemShutdown()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8250
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyDispatchLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8251
    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyDispatcMode:I

    .line 8252
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 8253
    const-string/jumbo v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIpoEventReceiver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyDispatcMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 8257
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-ne v0, v5, :cond_1

    .line 8258
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    if-eqz v0, :cond_1

    .line 8259
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIPOUserRotation:I

    .line 8260
    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    .line 8248
    :cond_1
    return-void

    .line 8250
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isAlarmBoot()Z
    .locals 3

    .prologue
    .line 8365
    const-string/jumbo v2, "sys.boot.reason"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8366
    .local v0, "bootReason":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 8368
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 8367
    .end local v1    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method private isAnyPortrait(I)Z
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    const/4 v0, 0x1

    .line 6801
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCoverAppLock()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3799
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 3800
    const-string/jumbo v7, "cover_app_component"

    .line 3801
    const/4 v8, -0x2

    .line 3798
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 3803
    .local v5, "s":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 3804
    const-string/jumbo v7, "cover_app_lock"

    .line 3802
    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3806
    .local v2, "i":I
    if-ne v2, v10, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "disable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3824
    :cond_0
    return v9

    .line 3807
    :cond_1
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 3808
    .local v1, "c":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 3809
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3810
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 3811
    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 3812
    .local v4, "rtis":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 3813
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3814
    .local v3, "rti":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v3, :cond_0

    .line 3815
    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3816
    return v10
.end method

.method private isGlobalAccessibilityGestureEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7326
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 7327
    const-string/jumbo v3, "enable_accessibility_global_gesture_enabled"

    .line 7326
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isHidden(I)Z
    .locals 3
    .param p1, "accessibilityMode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2335
    packed-switch p1, :pswitch_data_0

    .line 2341
    return v1

    .line 2337
    :pswitch_0
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 2339
    :pswitch_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v2, v0, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 2335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isImmersiveMode(I)Z
    .locals 3
    .param p1, "vis"    # I

    .prologue
    const/4 v1, 0x0

    .line 7620
    const/16 v0, 0x1800

    .line 7621
    .local v0, "flags":I
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    .line 7622
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_0

    .line 7623
    and-int/lit16 v2, p1, 0x1800

    if-eqz v2, :cond_0

    .line 7624
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    .line 7621
    :cond_0
    return v1
.end method

.method private isInSupperClassicMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1454
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1455
    const-string/jumbo v2, "supperClassicMode"

    .line 1454
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1455
    const/4 v0, 0x0

    .line 1456
    .local v0, "isInSupperClassicMode":Z
    :goto_0
    return v0

    .line 1455
    .end local v0    # "isInSupperClassicMode":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "isInSupperClassicMode":Z
    goto :goto_0
.end method

.method private isKeyguardShowingAndNotOccluded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6513
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v1, :cond_0

    return v0

    .line 6514
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isLandscapeOrSeascape(I)Z
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    const/4 v0, 0x1

    .line 6797
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLockTaskMode()Z
    .locals 4

    .prologue
    .line 8315
    const/4 v1, 0x0

    .line 8317
    .local v1, "isLockTaskMode":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 8321
    .end local v1    # "isLockTaskMode":Z
    :goto_0
    return v1

    .line 8318
    .restart local v1    # "isLockTaskMode":Z
    :catch_0
    move-exception v0

    .line 8319
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Lenovogesture snapshotEnabled -->isInLockTaskMode() RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isProperToSnapshot()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 8305
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->phoneIsInUse()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isSupperClassicMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isRoundWindow()Z
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    return v0
.end method

.method private isSnapshotEnable()Z
    .locals 6

    .prologue
    .line 8327
    const/4 v1, 0x0

    .line 8328
    .local v1, "isLockTaskMode":Z
    const/4 v2, 0x0

    .line 8330
    .local v2, "isSnapShotEnabled":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 8335
    .end local v1    # "isLockTaskMode":Z
    :goto_0
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeKeyFuncation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 8338
    :goto_1
    const-string/jumbo v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Lenovogesture snapshotEnabled : mVolumeKeyFuncation =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeKeyFuncation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isInLockTaskMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 8339
    const-string/jumbo v5, " isSnapShotEnabled = "

    .line 8338
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8340
    return v2

    .line 8331
    .restart local v1    # "isLockTaskMode":Z
    :catch_0
    move-exception v0

    .line 8332
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "WindowManager"

    const-string/jumbo v4, "Lenovogesture snapshotEnabled -->isInLockTaskMode() RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8335
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "isLockTaskMode":Z
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isStatusBarKeyguard()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5308
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 5309
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 5308
    :cond_0
    return v0
.end method

.method private isSupperClassicMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8309
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 8310
    const-string/jumbo v2, "supperClassicMode"

    .line 8309
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 8310
    const/4 v0, 0x0

    .line 8311
    .local v0, "isInSupperClassicMode":Z
    :goto_0
    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LenovoGestures isInSupperClassicMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8312
    return v0

    .line 8310
    .end local v0    # "isInSupperClassicMode":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "isInSupperClassicMode":Z
    goto :goto_0
.end method

.method private isTheaterModeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7321
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 7322
    const-string/jumbo v3, "theater_mode_on"

    .line 7321
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isValidGlobalKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 5941
    sparse-switch p0, :sswitch_data_0

    .line 5947
    const/4 v0, 0x1

    return v0

    .line 5945
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 5941
    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0xdf -> :sswitch_0
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5959
    sparse-switch p1, :sswitch_data_0

    .line 5982
    return v0

    .line 5964
    :sswitch_0
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 5980
    :sswitch_1
    return v1

    .line 5959
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xde -> :sswitch_1
    .end sparse-switch
.end method

.method private keyRemappingSendFakeKeyEvent(II)V
    .locals 9
    .param p1, "action"    # I
    .param p2, "keyCode"    # I

    .prologue
    const/4 v8, 0x0

    .line 8035
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 8036
    .local v4, "eventTime":J
    if-nez p1, :cond_0

    .line 8037
    iput-wide v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyRemappingSendFakeKeyDownTime:J

    .line 8041
    :cond_0
    new-instance v1, Landroid/view/KeyEvent;

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyRemappingSendFakeKeyDownTime:J

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 8042
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "input"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 8043
    .local v0, "inputManager":Landroid/hardware/input/InputManager;
    invoke-virtual {v0, v1, v8}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 8034
    return-void
.end method

.method private launchAssistAction(Ljava/lang/String;I)V
    .locals 7
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "deviceId"    # I

    .prologue
    const/4 v6, 0x0

    .line 3663
    const-string/jumbo v4, "assist"

    invoke-virtual {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3664
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3666
    return-void

    .line 3668
    :cond_0
    const/4 v0, 0x0

    .line 3669
    .local v0, "args":Landroid/os/Bundle;
    const/high16 v4, -0x80000000

    if-le p2, v4, :cond_1

    .line 3670
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3671
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3673
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    .line 3674
    const/4 v5, 0x4

    .line 3673
    if-ne v4, v5, :cond_3

    .line 3676
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "search"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    .line 3677
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 3676
    invoke-virtual {v4, p1, v5, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 3662
    :cond_2
    :goto_0
    return-void

    .line 3680
    :cond_3
    if-eqz p1, :cond_5

    .line 3681
    if-nez v0, :cond_4

    .line 3682
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 3684
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_4
    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3686
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    .line 3687
    .local v3, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v3, :cond_2

    .line 3688
    invoke-interface {v3, v0}, Lcom/android/internal/statusbar/IStatusBarService;->startAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3690
    .end local v3    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v2

    .line 3691
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "RemoteException when starting assist"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3693
    iput-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private launchAssistLongPressAction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3643
    invoke-virtual {p0, v4, v3, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3644
    const-string/jumbo v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3647
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3648
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3652
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    .line 3653
    .local v2, "searchManager":Landroid/app/SearchManager;
    if-eqz v2, :cond_0

    .line 3654
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 3656
    :cond_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3642
    .end local v2    # "searchManager":Landroid/app/SearchManager;
    :goto_0
    return-void

    .line 3657
    :catch_0
    move-exception v0

    .line 3658
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "WindowManager"

    const-string/jumbo v4, "No activity to handle assist long press action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 4910
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4911
    .local v0, "top":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 4912
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    if-le v1, v0, :cond_0

    .line 4913
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    .line 4915
    :cond_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    if-le v1, v0, :cond_1

    .line 4916
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    .line 4918
    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 4919
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 4920
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    if-le v1, v0, :cond_2

    .line 4921
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    .line 4923
    :cond_2
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Input method: mDockBottom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4924
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    .line 4923
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4924
    const-string/jumbo v3, " mContentBottom="

    .line 4923
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4925
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    .line 4923
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4925
    const-string/jumbo v3, " mCurBottom="

    .line 4923
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4925
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    .line 4923
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4909
    :cond_3
    return-void
.end method

.method private offsetVoiceInputWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 4929
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4930
    .local v0, "top":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 4931
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    if-le v1, v0, :cond_0

    .line 4932
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    .line 4928
    :cond_0
    return-void
.end method

.method private performAuditoryFeedbackForAccessibilityIfNeed()V
    .locals 4

    .prologue
    .line 7306
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isGlobalAccessibilityGestureEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7307
    return-void

    .line 7309
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 7310
    const-string/jumbo v3, "audio"

    .line 7309
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 7311
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7312
    return-void

    .line 7314
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 7315
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 7314
    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 7316
    .local v1, "ringTone":Landroid/media/Ringtone;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 7317
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 7305
    return-void
.end method

.method private phoneIsInUse()Z
    .locals 3

    .prologue
    .line 8295
    const/4 v0, 0x0

    .line 8296
    .local v0, "phoneInUse":Z
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 8297
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_0

    .line 8298
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 8301
    :cond_0
    :goto_0
    return v0

    .line 8298
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private powerLongPress()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1257
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    .line 1258
    .local v0, "behavior":I
    packed-switch v0, :pswitch_data_0

    .line 1256
    :goto_0
    :pswitch_0
    return-void

    .line 1262
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1263
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1264
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    .line 1266
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_0

    .line 1270
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1271
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1272
    const-string/jumbo v3, "globalactions"

    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1273
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 1258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private powerMultiPressAction(JZI)V
    .locals 5
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "behavior"    # I

    .prologue
    const/4 v3, 0x0

    .line 1209
    packed-switch p4, :pswitch_data_0

    .line 1208
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1213
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1214
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Ignoring toggling theater mode - device not setup."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1218
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1219
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Toggling theater mode off."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1221
    const-string/jumbo v1, "theater_mode_on"

    .line 1220
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1222
    if-nez p3, :cond_0

    .line 1223
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    goto :goto_0

    .line 1226
    :cond_2
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Toggling theater mode on."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1228
    const-string/jumbo v1, "theater_mode_on"

    const/4 v2, 0x1

    .line 1227
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1230
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1232
    const/4 v1, 0x4

    .line 1231
    invoke-virtual {v0, p1, p2, v1, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    .line 1237
    :pswitch_2
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Starting brightness boost."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    if-nez p3, :cond_3

    .line 1239
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1241
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    goto :goto_0

    .line 1209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private powerPress(JZI)V
    .locals 5
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "count"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 1172
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-eqz v0, :cond_2

    .line 1178
    :cond_0
    const/4 v0, 0x2

    if-ne p4, v0, :cond_3

    .line 1179
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    .line 1171
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1173
    :cond_2
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Suppressed redundant power key press while already in the process of turning the screen on."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    return-void

    .line 1180
    :cond_3
    const/4 v0, 0x3

    if-ne p4, v0, :cond_4

    .line 1181
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_0

    .line 1182
    :cond_4
    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    if-nez v0, :cond_1

    .line 1183
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1187
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    .line 1191
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    .line 1196
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1199
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_0

    .line 1202
    :pswitch_4
    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    goto :goto_0

    .line 1183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private preloadRecentApps()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3714
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3716
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3717
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 3718
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3713
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 3720
    :catch_0
    move-exception v0

    .line 3721
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when preloading recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3723
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private readCameraLensCoverState()V
    .locals 1

    .prologue
    .line 2331
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 2330
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1836
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1837
    const v1, 0x10e0059

    .line 1836
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1839
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v0, :cond_0

    .line 1840
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 1841
    :cond_0
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1845
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1846
    const v1, 0x10e005a

    .line 1845
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1847
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v0, :cond_2

    .line 1848
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 1849
    :cond_2
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1835
    :cond_3
    return-void
.end method

.method private readRotation(I)I
    .locals 3
    .param p1, "resID"    # I

    .prologue
    .line 2141
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2142
    .local v1, "rotation":I
    sparse-switch v1, :sswitch_data_0

    .line 2155
    .end local v1    # "rotation":I
    :goto_0
    const/4 v2, -0x1

    return v2

    .line 2144
    .restart local v1    # "rotation":I
    :sswitch_0
    const/4 v2, 0x0

    return v2

    .line 2146
    :sswitch_1
    const/4 v2, 0x1

    return v2

    .line 2148
    :sswitch_2
    const/4 v2, 0x2

    return v2

    .line 2150
    :sswitch_3
    const/4 v2, 0x3

    return v2

    .line 2152
    .end local v1    # "rotation":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0

    .line 2142
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 5
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 6213
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 6214
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    .line 6216
    return-void

    .line 6218
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->checkShowTransientBarLw()Z

    move-result v1

    .line 6219
    .local v1, "sb":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->checkShowTransientBarLw()Z

    move-result v0

    .line 6220
    .local v0, "nb":Z
    if-nez v1, :cond_1

    if-eqz v0, :cond_6

    .line 6222
    :cond_1
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_3

    .line 6223
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v4, "Not showing transient bar, wrong swipe target"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v3

    .line 6224
    return-void

    .line 6226
    :cond_3
    if-eqz v1, :cond_4

    :try_start_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    .line 6227
    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->showTransient()V

    .line 6228
    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v2}, Lcom/android/server/policy/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    .line 6229
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    monitor-exit v3

    .line 6212
    return-void

    .line 6213
    .end local v0    # "nb":Z
    .end local v1    # "sb":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setKeyguardOccludedLw(Z)Z
    .locals 6
    .param p1, "isOccluded"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 5277
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 5278
    .local v1, "wasOccluded":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    .line 5279
    .local v0, "showing":Z
    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 5285
    :cond_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 5286
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 5287
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 5288
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 5289
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x100001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5290
    return v5

    .line 5279
    :cond_1
    if-eqz v0, :cond_0

    .line 5280
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 5281
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 5282
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 5283
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5284
    return v5

    .line 5294
    :cond_2
    if-eqz v1, :cond_3

    if-eqz p1, :cond_5

    .line 5297
    :cond_3
    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    if-eqz v0, :cond_6

    .line 5303
    :cond_4
    :goto_0
    return v3

    .line 5294
    :cond_5
    if-nez v0, :cond_3

    .line 5295
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 5296
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    goto :goto_0

    .line 5298
    :cond_6
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 5299
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    goto :goto_0
.end method

.method private shouldDispatchInputWhenNonInteractive()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 6012
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 6013
    :cond_0
    return v4

    .line 6016
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6017
    return v3

    .line 6022
    :cond_2
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 6025
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    .line 6026
    return v3

    .line 6028
    :catch_0
    move-exception v1

    .line 6029
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when checking if dreaming"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6034
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    return v4
.end method

.method private shouldEnableWakeGestureLp()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2098
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 2099
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-eqz v1, :cond_0

    .line 2100
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->isSupported()Z

    move-result v0

    goto :goto_0
.end method

.method private shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "fl"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4055
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-eq v2, v3, :cond_0

    const v2, 0x2000400

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private showRecentApps(Z)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3769
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3771
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3772
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 3773
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->showRecentApps(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3768
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 3775
    :catch_0
    move-exception v0

    .line 3776
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3778
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private sleepPress(J)V
    .locals 2
    .param p1, "eventTime"    # J

    .prologue
    const/4 v1, 0x1

    .line 1279
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    if-ne v0, v1, :cond_0

    .line 1280
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    .line 1278
    :cond_0
    return-void
.end method

.method private sleepRelease(J)V
    .locals 3
    .param p1, "eventTime"    # J

    .prologue
    .line 1285
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    packed-switch v0, :pswitch_data_0

    .line 1284
    :goto_0
    return-void

    .line 1288
    :pswitch_0
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1290
    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 1289
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    .line 1285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handle"    # Landroid/os/UserHandle;

    .prologue
    .line 3699
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3700
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3698
    :goto_0
    return-void

    .line 3702
    :cond_0
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not starting activity because user setup is in progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startCameraService(IIZ)V
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "startCount"    # I
    .param p3, "flag"    # Z

    .prologue
    .line 8123
    :try_start_0
    const-string/jumbo v2, "LenovoShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Start camera service begin,Keycode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8124
    const-string/jumbo v4, " , startCount="

    .line 8123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8124
    const-string/jumbo v4, " , flag="

    .line 8123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8125
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8126
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "start_count"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8127
    const-string/jumbo v2, "com.lenovo.scg"

    const-string/jumbo v3, "com.lenovo.scg.burstcapture.BurstCaptureService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8128
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 8129
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Start camera service end."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8121
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 8130
    :catch_0
    move-exception v0

    .line 8131
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "start camera service error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private takeScreenshot()V
    .locals 8

    .prologue
    .line 5437
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5438
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v4

    .line 5439
    return-void

    .line 5441
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.systemui"

    .line 5442
    const-string/jumbo v5, "com.android.systemui.screenshot.TakeScreenshotService"

    .line 5441
    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5443
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5444
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5445
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$33;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$33;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 5482
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 5483
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x1

    .line 5482
    invoke-virtual {v3, v2, v1, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5484
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 5485
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v4

    .line 5436
    return-void

    .line 5437
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private toggleGsh(Z)V
    .locals 9
    .param p1, "left"    # Z

    .prologue
    const/4 v8, 0x0

    .line 8985
    const-string/jumbo v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "in toggleGsh : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8986
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v3, v4, Landroid/content/res/Configuration;->orientation:I

    .line 8989
    .local v3, "orientation":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 8990
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "in toggleGsh landscape ori return"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8991
    return-void

    .line 8994
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v6, 0x1e

    invoke-virtual {v4, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 8996
    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->mGshModeEntered:Z

    if-eqz v4, :cond_2

    .line 8997
    const-string/jumbo v0, "com.lenovo.frameworks.START_GLOBAL_SH_MODE"

    .line 8998
    .local v0, "action":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8999
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "mode"

    const-string/jumbo v5, "leave"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9001
    if-eqz p1, :cond_1

    .line 9002
    const-string/jumbo v4, "position"

    const-string/jumbo v5, "left"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9006
    :goto_0
    const-string/jumbo v4, "com.lenovo.frameworks.singlehand"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9008
    :try_start_0
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "leave global single hand mode service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9009
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 9010
    const-string/jumbo v5, "global_single_hand_on"

    const/4 v6, 0x0

    .line 9009
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 9011
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9015
    :goto_1
    sput-boolean v8, Lcom/android/server/policy/PhoneWindowManager;->mGshModeEntered:Z

    .line 9016
    return-void

    .line 9004
    :cond_1
    const-string/jumbo v4, "position"

    const-string/jumbo v5, "right"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 9012
    :catch_0
    move-exception v1

    .line 9013
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "Exception occured here:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 9018
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v0, "com.lenovo.frameworks.START_GLOBAL_SH_MODE"

    .line 9019
    .restart local v0    # "action":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9020
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "mode"

    const-string/jumbo v5, "enter"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9021
    if-eqz p1, :cond_3

    .line 9022
    const-string/jumbo v4, "position"

    const-string/jumbo v5, "left"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9027
    :goto_2
    const-string/jumbo v4, "com.lenovo.frameworks.singlehand"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9029
    :try_start_1
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "enter global single hand mode service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9030
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 9034
    :goto_3
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->mGshModeEntered:Z

    .line 8984
    return-void

    .line 9024
    :cond_3
    const-string/jumbo v4, "position"

    const-string/jumbo v5, "right"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 9031
    :catch_1
    move-exception v1

    .line 9032
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "Exception occured here:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private toggleRecentApps()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3744
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3747
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "toggleRecentApps"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3752
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 3753
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3743
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 3755
    :catch_0
    move-exception v0

    .line 3756
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when toggling recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3758
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private updateDreamingSleepToken(Z)V
    .locals 2
    .param p1, "acquire"    # Z

    .prologue
    const/4 v1, 0x0

    .line 7078
    if-eqz p1, :cond_1

    .line 7079
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v0, :cond_0

    .line 7080
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v1, "Dream"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 7077
    :cond_0
    :goto_0
    return-void

    .line 7083
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_0

    .line 7084
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 7085
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_0
.end method

.method private updateLightStatusBarLw(I)I
    .locals 3
    .param p1, "vis"    # I

    .prologue
    const/4 v2, 0x0

    .line 7485
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v1, :cond_2

    .line 7487
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 7489
    .local v0, "statusColorWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-eqz v0, :cond_1

    .line 7490
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, v1, :cond_3

    .line 7493
    and-int/lit16 p1, p1, -0x2001

    .line 7494
    invoke-static {v0, v2}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    or-int/2addr p1, v1

    .line 7501
    :cond_1
    :goto_1
    return p1

    .line 7486
    .end local v0    # "statusColorWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .restart local v0    # "statusColorWin":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_0

    .line 7496
    :cond_3
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7498
    and-int/lit16 p1, p1, -0x2001

    goto :goto_1
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    .prologue
    .line 7061
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v2

    .line 7062
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_2

    .line 7063
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    .line 7064
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v1, v0, :cond_1

    .line 7065
    if-eqz v0, :cond_3

    .line 7066
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v3, "setting lockscreen timer"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7067
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7072
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 7060
    return-void

    .line 7062
    :cond_2
    const/4 v0, 0x0

    .local v0, "enable":Z
    goto :goto_0

    .line 7069
    .end local v0    # "enable":Z
    :cond_3
    :try_start_1
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v3, "clearing lockscreen timer"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7070
    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 7061
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateScreenOffSleepToken(Z)V
    .locals 2
    .param p1, "acquire"    # Z

    .prologue
    const/4 v1, 0x0

    .line 7091
    if-eqz p1, :cond_1

    .line 7092
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v0, :cond_0

    .line 7093
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v1, "ScreenOff"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 7090
    :cond_0
    :goto_0
    return-void

    .line 7096
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_0

    .line 7097
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 7098
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_0
.end method

.method private updateSingleHandSettings()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9058
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->isSinglehandSupport:Z

    if-eqz v2, :cond_0

    .line 9059
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 9060
    const-string/jumbo v3, "global_single_hand"

    .line 9059
    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 9064
    .local v0, "gshEnabled":I
    if-ne v0, v5, :cond_1

    .line 9065
    invoke-direct {p0, v5}, Lcom/android/server/policy/PhoneWindowManager;->enableGshGestureDetection(Z)V

    .line 9070
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 9071
    const-string/jumbo v3, "global_single_hand_on"

    .line 9070
    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 9075
    .local v1, "gshModeOn":I
    if-ne v1, v5, :cond_2

    .line 9076
    sput-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->mGshModeEntered:Z

    .line 9057
    .end local v0    # "gshEnabled":I
    .end local v1    # "gshModeOn":I
    :cond_0
    :goto_1
    return-void

    .line 9067
    .restart local v0    # "gshEnabled":I
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->enableGshGestureDetection(Z)V

    goto :goto_0

    .line 9078
    .restart local v1    # "gshModeOn":I
    :cond_2
    sput-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->mGshModeEntered:Z

    goto :goto_1
.end method

.method private updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 28
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    .line 7506
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v24

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 7508
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v20, v0

    .line 7509
    .local v20, "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, p3

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/StatusBarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 7510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, p3

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 7513
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v23, v0

    .line 7514
    .local v23, "type":I
    const/16 v24, 0x7d0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    const/16 v19, 0x1

    .line 7515
    .local v19, "statusBarHasFocus":Z
    :goto_1
    if-eqz v19, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 7527
    :cond_1
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v24

    if-nez v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 7528
    const v24, 0x3fff7fff

    and-int p3, p3, v24

    .line 7534
    :cond_2
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x1000

    move/from16 v24, v0

    if-eqz v24, :cond_e

    const/4 v11, 0x1

    .line 7536
    .local v11, "immersiveSticky":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    .line 7537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x400

    move/from16 v24, v0

    if-eqz v24, :cond_f

    const/4 v9, 0x1

    .line 7540
    .local v9, "hideStatusBarWM":Z
    :goto_4
    and-int/lit8 v24, p3, 0x4

    if-eqz v24, :cond_11

    const/4 v8, 0x1

    .line 7542
    .local v8, "hideStatusBarSysui":Z
    :goto_5
    and-int/lit8 v24, p3, 0x2

    if-eqz v24, :cond_12

    const/4 v7, 0x1

    .line 7545
    .local v7, "hideNavBarSysui":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v24, v0

    if-eqz v24, :cond_14

    .line 7546
    if-nez v9, :cond_13

    .line 7547
    if-eqz v8, :cond_3

    .line 7546
    if-nez v11, :cond_13

    .line 7548
    :cond_3
    move/from16 v22, v19

    .line 7551
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v24, v0

    if-eqz v24, :cond_15

    if-eqz v7, :cond_15

    .line 7552
    move/from16 v21, v11

    .line 7554
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 7555
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_17

    .line 7556
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    move-wide/from16 v24, v0

    sub-long v24, v14, v24

    const-wide/16 v26, 0x7530

    cmp-long v24, v24, v26

    if-gtz v24, :cond_16

    const/16 v17, 0x1

    .line 7557
    .local v17, "pendingPanic":Z
    :goto_9
    if-eqz v17, :cond_4

    if-eqz v7, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v24

    if-eqz v24, :cond_18

    .line 7565
    :cond_4
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/StatusBarController;->isTransientShowRequested()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 7566
    if-eqz v22, :cond_19

    .line 7565
    :cond_5
    const/4 v5, 0x0

    .line 7567
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 7568
    if-eqz v21, :cond_1a

    const/4 v4, 0x0

    .line 7569
    .local v4, "denyTransientNav":Z
    :goto_c
    if-nez v5, :cond_6

    if-eqz v4, :cond_7

    .line 7571
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->clearClearableFlagsLw()V

    .line 7572
    and-int/lit8 p3, p3, -0x8

    .line 7575
    :cond_7
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x800

    move/from16 v24, v0

    if-eqz v24, :cond_1c

    const/4 v10, 0x1

    .line 7576
    .local v10, "immersive":Z
    :goto_d
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x1000

    move/from16 v24, v0

    if-eqz v24, :cond_1d

    const/4 v11, 0x1

    .line 7577
    :goto_e
    if-nez v10, :cond_1e

    move v12, v11

    .line 7579
    :goto_f
    if-eqz v7, :cond_8

    if-eqz v12, :cond_1f

    .line 7586
    :cond_8
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    move-result p3

    .line 7589
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v16

    .line 7590
    .local v16, "oldImmersiveMode":Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v13

    .line 7591
    .local v13, "newImmersiveMode":Z
    if-eqz p1, :cond_9

    move/from16 v0, v16

    if-eq v0, v13, :cond_9

    .line 7593
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x4000

    move/from16 v24, v0

    if-nez v24, :cond_9

    .line 7595
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v18

    .line 7596
    .local v18, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    move-object/from16 v24, v0

    .line 7597
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v25

    .line 7596
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation;->immersiveModeChanged(Ljava/lang/String;ZZ)V

    .line 7600
    .end local v18    # "pkg":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v21

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/BarController;->updateVisibilityLw(ZII)I

    move-result p3

    .line 7604
    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 7608
    return p3

    .line 7507
    .end local v4    # "denyTransientNav":Z
    .end local v7    # "hideNavBarSysui":Z
    .end local v8    # "hideStatusBarSysui":Z
    .end local v9    # "hideStatusBarWM":Z
    .end local v10    # "immersive":Z
    .end local v11    # "immersiveSticky":Z
    .end local v13    # "newImmersiveMode":Z
    .end local v14    # "now":J
    .end local v16    # "oldImmersiveMode":Z
    .end local v17    # "pendingPanic":Z
    .end local v19    # "statusBarHasFocus":Z
    .end local v20    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v23    # "type":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v20, v0

    .restart local v20    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    goto/16 :goto_0

    .line 7514
    .restart local v23    # "type":I
    :cond_b
    const/16 v19, 0x0

    .restart local v19    # "statusBarHasFocus":Z
    goto/16 :goto_1

    .line 7516
    :cond_c
    const/16 v6, 0x3806

    .line 7521
    .local v6, "flags":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    move/from16 v24, v0

    if-eqz v24, :cond_d

    .line 7522
    const v6, -0x3fffc7fa

    .line 7524
    :cond_d
    not-int v0, v6

    move/from16 v24, v0

    and-int v24, v24, p3

    and-int v25, p2, v6

    or-int p3, v24, v25

    goto/16 :goto_2

    .line 7534
    .end local v6    # "flags":I
    :cond_e
    const/4 v11, 0x0

    .restart local v11    # "immersiveSticky":Z
    goto/16 :goto_3

    .line 7537
    :cond_f
    const/4 v9, 0x0

    .restart local v9    # "hideStatusBarWM":Z
    goto/16 :goto_4

    .line 7536
    .end local v9    # "hideStatusBarWM":Z
    :cond_10
    const/4 v9, 0x0

    .restart local v9    # "hideStatusBarWM":Z
    goto/16 :goto_4

    .line 7540
    :cond_11
    const/4 v8, 0x0

    .restart local v8    # "hideStatusBarSysui":Z
    goto/16 :goto_5

    .line 7542
    :cond_12
    const/4 v7, 0x0

    .restart local v7    # "hideNavBarSysui":Z
    goto/16 :goto_6

    .line 7545
    :cond_13
    const/16 v22, 0x1

    .local v22, "transientStatusBarAllowed":Z
    goto/16 :goto_7

    .end local v22    # "transientStatusBarAllowed":Z
    :cond_14
    const/16 v22, 0x0

    .restart local v22    # "transientStatusBarAllowed":Z
    goto/16 :goto_7

    .line 7551
    .end local v22    # "transientStatusBarAllowed":Z
    :cond_15
    const/16 v21, 0x0

    .local v21, "transientNavBarAllowed":Z
    goto/16 :goto_8

    .line 7556
    .end local v21    # "transientNavBarAllowed":Z
    .restart local v14    # "now":J
    :cond_16
    const/16 v17, 0x0

    .restart local v17    # "pendingPanic":Z
    goto/16 :goto_9

    .line 7555
    .end local v17    # "pendingPanic":Z
    :cond_17
    const/16 v17, 0x0

    .restart local v17    # "pendingPanic":Z
    goto/16 :goto_9

    .line 7557
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 7560
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    .line 7561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    .line 7562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/BarController;->showTransient()V

    goto/16 :goto_a

    .line 7566
    :cond_19
    move v5, v8

    .local v5, "denyTransientStatus":Z
    goto/16 :goto_b

    .line 7568
    .end local v5    # "denyTransientStatus":Z
    :cond_1a
    const/4 v4, 0x1

    .restart local v4    # "denyTransientNav":Z
    goto/16 :goto_c

    .line 7567
    .end local v4    # "denyTransientNav":Z
    :cond_1b
    const/4 v4, 0x0

    .restart local v4    # "denyTransientNav":Z
    goto/16 :goto_c

    .line 7575
    :cond_1c
    const/4 v10, 0x0

    .restart local v10    # "immersive":Z
    goto/16 :goto_d

    .line 7576
    :cond_1d
    const/4 v11, 0x0

    goto/16 :goto_e

    .line 7577
    :cond_1e
    const/4 v12, 0x1

    .local v12, "navAllowedHidden":Z
    goto/16 :goto_f

    .line 7579
    .end local v12    # "navAllowedHidden":Z
    :cond_1f
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v24

    .line 7580
    const/16 v25, 0x7e6

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v25

    .line 7579
    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_8

    .line 7583
    and-int/lit8 p3, p3, -0x3

    goto/16 :goto_10
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 7402
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 7404
    .local v6, "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-nez v6, :cond_1

    .line 7405
    return v10

    .line 7403
    .end local v6    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .restart local v6    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_0

    .line 7407
    :cond_1
    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v7, :cond_2

    .line 7414
    return v10

    .line 7417
    :cond_2
    invoke-static {v6, v8}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v7

    .line 7418
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    not-int v8, v8

    .line 7417
    and-int/2addr v7, v8

    .line 7419
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    not-int v8, v8

    .line 7417
    and-int v4, v7, v8

    .line 7420
    .local v4, "tmpVisibility":I
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v7, :cond_3

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v7

    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-ge v7, v8, :cond_3

    .line 7421
    const/4 v7, 0x7

    invoke-static {v6, v7}, Lcom/android/server/policy/PolicyControl;->adjustClearableFlags(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v7

    not-int v7, v7

    and-int/2addr v4, v7

    .line 7423
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(I)I

    move-result v4

    .line 7426
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 7427
    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 7428
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v7

    .line 7429
    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 7428
    invoke-virtual {v7, v8}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingByAppToken(Landroid/os/IBinder;)Z

    move-result v7

    .line 7426
    if-eqz v7, :cond_4

    .line 7430
    and-int/lit8 v7, v4, -0x3

    and-int/lit8 v7, v7, -0x2

    and-int/lit8 v4, v7, -0x5

    .line 7438
    :cond_4
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "full_screen_expand_statusbar"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_7

    .line 7439
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v6, v7, v4}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v3

    .line 7454
    .local v3, "tmp":I
    :cond_5
    :goto_1
    move v5, v3

    .line 7455
    .local v5, "visibility":I
    sget-boolean v7, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string/jumbo v7, "[rick debug]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PhoneWindowManager : updateSystemUiVisibilityLw : vis new = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7457
    :cond_6
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v0, v5, v7

    .line 7458
    .local v0, "diff":I
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    .line 7459
    .local v2, "needsMenu":Z
    if-nez v0, :cond_a

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v7, v2, :cond_a

    .line 7460
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v8

    if-ne v7, v8, :cond_a

    .line 7461
    return v10

    .line 7441
    .end local v0    # "diff":I
    .end local v2    # "needsMenu":Z
    .end local v3    # "tmp":I
    .end local v5    # "visibility":I
    :cond_7
    move v3, v4

    .line 7442
    .restart local v3    # "tmp":I
    sget-boolean v7, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    if-eqz v7, :cond_8

    const-string/jumbo v7, "[rick debug]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PhoneWindowManager : updateSystemUiVisibilityLw : vis old = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7443
    :cond_8
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_5

    .line 7444
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7445
    .local v1, "focusWindowComponent":Ljava/lang/String;
    const-string/jumbo v7, "com.lenovo.factorymode"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 7446
    sget-boolean v7, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string/jumbo v7, "[rick debug]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ERROR; Top Activity is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7447
    :cond_9
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "full_screen_expand_statusbar"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7448
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v6, v7, v4}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v3

    .line 7449
    sget-boolean v7, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string/jumbo v7, "[rick debug]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PhoneWindowManager : updateSystemUiVisibilityLw : change vis old = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7463
    .end local v1    # "focusWindowComponent":Ljava/lang/String;
    .restart local v0    # "diff":I
    .restart local v2    # "needsMenu":Z
    .restart local v5    # "visibility":I
    :cond_a
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 7464
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 7465
    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 7466
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/policy/PhoneWindowManager$38;

    invoke-direct {v8, p0, v5, v6, v2}, Lcom/android/server/policy/PhoneWindowManager$38;-><init>(Lcom/android/server/policy/PhoneWindowManager;ILandroid/view/WindowManagerPolicy$WindowState;Z)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7481
    return v0
.end method

.method private updateWakeGestureListenerLp()V
    .locals 1

    .prologue
    .line 2090
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2091
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->requestWakeUpTrigger()V

    .line 2089
    :goto_0
    return-void

    .line 2093
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->cancelWakeUpTrigger()V

    goto :goto_0
.end method

.method private wakeUp(JZLjava/lang/String;)Z
    .locals 5
    .param p1, "wakeTime"    # J
    .param p3, "wakeInTheaterMode"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 6311
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    .line 6312
    .local v0, "theaterModeEnabled":Z
    if-nez p3, :cond_0

    if-eqz v0, :cond_0

    .line 6313
    return v3

    .line 6316
    :cond_0
    if-eqz v0, :cond_1

    .line 6317
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 6318
    const-string/jumbo v2, "theater_mode_on"

    .line 6317
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6321
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, p2, p4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 6322
    const/4 v1, 0x1

    return v1
.end method

.method private wakeUpFromPowerKey(J)V
    .locals 3
    .param p1, "eventTime"    # J

    .prologue
    .line 6307
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    const-string/jumbo v1, "android.policy:POWER"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 6306
    return-void
.end method


# virtual methods
.method public addFastStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/graphics/Bitmap;)Landroid/view/View;
    .locals 10
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I
    .param p10, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 8612
    if-nez p2, :cond_0

    .line 8613
    const/4 v7, 0x0

    return-object v7

    .line 8616
    :cond_0
    const/4 v6, 0x0

    .line 8619
    .local v6, "wm":Landroid/view/WindowManager;
    new-instance v5, Landroid/view/View;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8622
    .local v5, "view":Landroid/view/View;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 8623
    .local v1, "context":Landroid/content/Context;
    sget-boolean v7, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_STARTING_WINDOW:Z

    if-eqz v7, :cond_1

    .line 8624
    const-string/jumbo v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addFastStartingWindow "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 8625
    const-string/jumbo v9, ": nonLocalizedLabel="

    .line 8624
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 8625
    const-string/jumbo v9, " theme="

    .line 8624
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 8626
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    .line 8624
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8629
    :cond_1
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    .line 8630
    const/4 v7, -0x1

    .line 8631
    const/4 v8, -0x1

    .line 8629
    invoke-direct {v4, v7, v8}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 8633
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v7, 0x3

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 8634
    or-int/lit8 v7, p9, 0x10

    or-int/lit8 v7, v7, 0x8

    .line 8637
    const/high16 v8, 0x20000

    .line 8634
    or-int/2addr v7, v8

    .line 8638
    const/high16 v8, -0x80000000

    .line 8634
    or-int/2addr v7, v8

    or-int/lit16 v7, v7, 0x100

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 8642
    iput-object p1, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 8643
    iput-object p2, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 8644
    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 8646
    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 8648
    invoke-virtual {p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v7

    if-nez v7, :cond_2

    .line 8649
    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v7, v7, 0x80

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 8652
    :cond_2
    const-string/jumbo v7, "FastStarting"

    invoke-virtual {v4, v7}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 8653
    const-string/jumbo v7, "window"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/view/WindowManager;

    move-object v6, v0

    .line 8655
    .local v6, "wm":Landroid/view/WindowManager;
    sget-boolean v7, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_STARTING_WINDOW:Z

    if-eqz v7, :cond_3

    .line 8657
    const-string/jumbo v8, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Adding starting window for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 8658
    const-string/jumbo v9, " / "

    .line 8657
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 8658
    const-string/jumbo v9, ": "

    .line 8657
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 8659
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_6

    move-object v7, v5

    .line 8657
    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 8656
    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8663
    :cond_3
    invoke-interface {v6, v5, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8665
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppLaunchTimeEnabled:Z

    if-eqz v7, :cond_4

    .line 8667
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v8}, Landroid/view/WindowManagerGlobal;->doTraversal(Landroid/view/View;Z)V

    .line 8672
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_7

    move-object v7, v5

    .line 8683
    :goto_1
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_5

    .line 8684
    const-string/jumbo v8, "WindowManager"

    const-string/jumbo v9, "view not successfully added to wm, removing view"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8685
    invoke-interface {v6, v5}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 8672
    :cond_5
    return-object v7

    .line 8659
    :cond_6
    const/4 v7, 0x0

    goto :goto_0

    .line 8672
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 8677
    .end local v1    # "context":Landroid/content/Context;
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v3

    .line 8681
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " failed creating starting window"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8683
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_8

    .line 8684
    const-string/jumbo v7, "WindowManager"

    const-string/jumbo v8, "view not successfully added to wm, removing view"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8685
    invoke-interface {v6, v5}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 8690
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_8
    :goto_2
    const/4 v7, 0x0

    return-object v7

    .line 8673
    :catch_1
    move-exception v2

    .line 8675
    .local v2, "e":Landroid/view/WindowManager$BadTokenException;
    :try_start_2
    const-string/jumbo v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " already running, starting window not displayed. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 8676
    invoke-virtual {v2}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 8675
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8683
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_8

    .line 8684
    const-string/jumbo v7, "WindowManager"

    const-string/jumbo v8, "view not successfully added to wm, removing view"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8685
    invoke-interface {v6, v5}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_2

    .line 8682
    .end local v2    # "e":Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v7

    .line 8683
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_9

    .line 8684
    const-string/jumbo v8, "WindowManager"

    const-string/jumbo v9, "view not successfully added to wm, removing view"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8685
    invoke-interface {v6, v5}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 8682
    :cond_9
    throw v7
.end method

.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIII)Landroid/view/View;
    .locals 15
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I

    .prologue
    .line 2574
    if-nez p2, :cond_0

    .line 2575
    const/4 v12, 0x0

    return-object v12

    .line 2578
    :cond_0
    const/4 v11, 0x0

    .line 2579
    .local v11, "wm":Landroid/view/WindowManager;
    const/4 v9, 0x0

    .line 2582
    .local v9, "view":Landroid/view/View;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2583
    .local v2, "context":Landroid/content/Context;
    sget-boolean v12, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_STARTING_WINDOW:Z

    if-eqz v12, :cond_1

    const-string/jumbo v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "addStartingWindow "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2584
    const-string/jumbo v14, ": nonLocalizedLabel="

    .line 2583
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2584
    const-string/jumbo v14, " theme="

    .line 2583
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2585
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    .line 2583
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v12

    move/from16 v0, p3

    if-ne v0, v12, :cond_2

    if-eqz p6, :cond_3

    .line 2588
    :cond_2
    const/4 v12, 0x0

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 2589
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2595
    :cond_3
    :goto_0
    :try_start_2
    new-instance v10, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v10, v2}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 2596
    .local v10, "win":Lcom/android/internal/policy/PhoneWindow;
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/android/internal/policy/PhoneWindow;->setIsStartingWindow(Z)V

    .line 2597
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v8

    .line 2599
    .local v8, "ta":Landroid/content/res/TypedArray;
    const/16 v12, 0xc

    const/4 v13, 0x0

    .line 2598
    invoke-virtual {v8, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-nez v12, :cond_4

    .line 2601
    const/16 v12, 0xe

    const/4 v13, 0x0

    .line 2600
    invoke-virtual {v8, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 2598
    if-eqz v12, :cond_5

    .line 2602
    :cond_4
    const/4 v12, 0x0

    return-object v12

    .line 2605
    :cond_5
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2606
    .local v7, "r":Landroid/content/res/Resources;
    move/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 2609
    const/4 v12, 0x3

    .line 2608
    invoke-virtual {v10, v12}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 2611
    iget-object v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2615
    :try_start_3
    iget-boolean v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v13, :cond_6

    .line 2616
    const/high16 v13, 0x80000

    or-int p9, p9, v13

    :cond_6
    :try_start_4
    monitor-exit v12

    .line 2625
    or-int/lit8 v12, p9, 0x10

    or-int/lit8 v12, v12, 0x8

    .line 2628
    const/high16 v13, 0x20000

    .line 2625
    or-int/2addr v12, v13

    .line 2629
    or-int/lit8 v13, p9, 0x10

    or-int/lit8 v13, v13, 0x8

    .line 2632
    const/high16 v14, 0x20000

    .line 2629
    or-int/2addr v13, v14

    .line 2624
    invoke-virtual {v10, v12, v13}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2634
    move/from16 v0, p7

    invoke-virtual {v10, v0}, Lcom/android/internal/policy/PhoneWindow;->setDefaultIcon(I)V

    .line 2635
    move/from16 v0, p8

    invoke-virtual {v10, v0}, Lcom/android/internal/policy/PhoneWindow;->setDefaultLogo(I)V

    .line 2637
    const/4 v12, -0x1

    .line 2638
    const/4 v13, -0x1

    .line 2637
    invoke-virtual {v10, v12, v13}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    .line 2640
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 2641
    .local v6, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2642
    move-object/from16 v0, p2

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2643
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v12

    .line 2644
    const/16 v13, 0x8

    const/4 v14, 0x0

    .line 2643
    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2645
    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2647
    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2649
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v12

    if-nez v12, :cond_7

    .line 2650
    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v12, v12, 0x80

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2653
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Starting "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2655
    const-string/jumbo v12, "window"

    invoke-virtual {v2, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/view/WindowManager;

    move-object v11, v0

    .line 2656
    .local v11, "wm":Landroid/view/WindowManager;
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 2658
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z
    :try_end_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v12

    if-eqz v12, :cond_a

    .line 2665
    const/4 v12, 0x0

    .line 2693
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_8

    .line 2694
    const-string/jumbo v13, "WindowManager"

    const-string/jumbo v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2665
    :cond_8
    return-object v12

    .line 2611
    .end local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v9, "view":Landroid/view/View;
    .local v11, "wm":Landroid/view/WindowManager;
    :catchall_0
    move-exception v13

    :try_start_5
    monitor-exit v12

    throw v13
    :try_end_5
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2683
    .end local v2    # "context":Landroid/content/Context;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "ta":Landroid/content/res/TypedArray;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v11    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v4

    .line 2685
    .local v4, "e":Landroid/view/WindowManager$BadTokenException;
    :try_start_6
    const-string/jumbo v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " already running, starting window not displayed. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2686
    invoke-virtual {v4}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 2685
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2693
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-nez v12, :cond_9

    .line 2694
    const-string/jumbo v12, "WindowManager"

    const-string/jumbo v13, "view not successfully added to wm, removing view"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2699
    .end local v4    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_9
    :goto_1
    const/4 v12, 0x0

    return-object v12

    .line 2668
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "r":Landroid/content/res/Resources;
    .restart local v8    # "ta":Landroid/content/res/TypedArray;
    .local v9, "view":Landroid/view/View;
    .restart local v10    # "win":Lcom/android/internal/policy/PhoneWindow;
    .local v11, "wm":Landroid/view/WindowManager;
    :cond_a
    :try_start_7
    sget-boolean v12, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_STARTING_WINDOW:Z

    if-eqz v12, :cond_b

    .line 2669
    const-string/jumbo v13, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Adding starting window for "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2670
    const-string/jumbo v14, " / "

    .line 2669
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2670
    const-string/jumbo v14, ": "

    .line 2669
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 2671
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-eqz v12, :cond_e

    move-object v12, v9

    .line 2669
    :goto_2
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2668
    invoke-static {v13, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    :cond_b
    invoke-interface {v11, v9, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2675
    iget-boolean v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppLaunchTimeEnabled:Z

    if-eqz v12, :cond_c

    .line 2677
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v9, v13}, Landroid/view/WindowManagerGlobal;->doTraversal(Landroid/view/View;Z)V

    .line 2682
    :cond_c
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v12

    if-eqz v12, :cond_f

    move-object v12, v9

    .line 2693
    :goto_3
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_d

    .line 2694
    const-string/jumbo v13, "WindowManager"

    const-string/jumbo v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2682
    :cond_d
    return-object v12

    .line 2671
    :cond_e
    const/4 v12, 0x0

    goto :goto_2

    .line 2682
    :cond_f
    const/4 v12, 0x0

    goto :goto_3

    .line 2687
    .end local v2    # "context":Landroid/content/Context;
    .end local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "ta":Landroid/content/res/TypedArray;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v11    # "wm":Landroid/view/WindowManager;
    :catch_1
    move-exception v5

    .line 2691
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_8
    const-string/jumbo v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " failed creating starting window"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2693
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-nez v12, :cond_9

    .line 2694
    const-string/jumbo v12, "WindowManager"

    const-string/jumbo v13, "view not successfully added to wm, removing view"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2692
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v12

    .line 2693
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_10

    .line 2694
    const-string/jumbo v13, "WindowManager"

    const-string/jumbo v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2692
    :cond_10
    throw v12

    .line 2590
    .restart local v2    # "context":Landroid/content/Context;
    .local v9, "view":Landroid/view/View;
    .local v11, "wm":Landroid/view/WindowManager;
    :catch_2
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "keyboardPresence"    # I
    .param p3, "navigationPresence"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 2349
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 2351
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 2352
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 2353
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 2355
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_1

    .line 2356
    if-ne p2, v1, :cond_2

    .line 2357
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    .line 2355
    if-eqz v0, :cond_2

    .line 2358
    :cond_1
    iput v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2359
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_2

    .line 2360
    iput v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2364
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_3

    .line 2365
    if-ne p3, v1, :cond_4

    .line 2366
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    .line 2364
    if-eqz v0, :cond_4

    .line 2367
    :cond_3
    iput v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2348
    :cond_4
    return-void
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 3979
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/policy/StatusBarController;->adjustSystemUiVisibilityLw(II)V

    .line 3980
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/policy/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 3981
    and-int/lit16 v1, p1, 0x4000

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    .line 3985
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 3988
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    not-int v0, v0

    and-int/2addr v0, p1

    .line 3989
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    not-int v1, v1

    .line 3988
    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2293
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 2314
    :cond_0
    :goto_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    .line 2316
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2319
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2320
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 2321
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x600

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 2292
    :cond_2
    return-void

    .line 2297
    :sswitch_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2299
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 2307
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    if-eqz v0, :cond_0

    .line 2308
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2309
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 2293
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_1
        0x7d6 -> :sswitch_0
        0x7df -> :sswitch_0
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    .prologue
    .line 5314
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    if-eqz v0, :cond_1

    .line 5316
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 5318
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 12
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/16 v11, 0x7d0

    const/4 v10, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4970
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Win "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": isVisibleOrBehindKeyguardLw="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4971
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v9

    .line 4970
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4972
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3

    .line 4973
    .local v3, "fl":I
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_1

    .line 4974
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    .line 4973
    if-eqz v5, :cond_1

    .line 4974
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7db

    if-ne v5, v8, :cond_1

    .line 4975
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 4976
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 4978
    :cond_1
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v11, :cond_3

    .line 4979
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_2

    .line 4980
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 4981
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    .line 4983
    :cond_2
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_3

    .line 4984
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    .line 4988
    :cond_3
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v5, v6, :cond_8

    .line 4989
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ge v5, v11, :cond_7

    const/4 v1, 0x1

    .line 4990
    .local v1, "appWindow":Z
    :goto_0
    const/high16 v5, 0x80000

    and-int/2addr v5, v3

    if-eqz v5, :cond_9

    const/4 v4, 0x1

    .line 4991
    .local v4, "showWhenLocked":Z
    :goto_1
    const/high16 v5, 0x400000

    and-int/2addr v5, v3

    if-eqz v5, :cond_a

    const/4 v2, 0x1

    .line 4993
    .local v2, "dismissKeyguard":Z
    :goto_2
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_4

    .line 4994
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v5

    .line 4993
    if-eqz v5, :cond_4

    .line 4994
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 5076
    :cond_4
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_5

    .line 5081
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    if-eqz v5, :cond_5

    .line 5082
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    .line 5083
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5086
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_6

    .line 5087
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v5

    .line 5086
    if-eqz v5, :cond_6

    .line 5087
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 4969
    :cond_6
    :goto_4
    return-void

    .line 4989
    .end local v1    # "appWindow":Z
    .end local v2    # "dismissKeyguard":Z
    .end local v4    # "showWhenLocked":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "appWindow":Z
    goto :goto_0

    .line 4988
    .end local v1    # "appWindow":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "appWindow":Z
    goto :goto_0

    .line 4990
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "showWhenLocked":Z
    goto :goto_1

    .line 4991
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "dismissKeyguard":Z
    goto :goto_2

    .line 4995
    :cond_b
    and-int/lit16 v5, v3, 0x800

    if-eqz v5, :cond_c

    .line 4996
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_16

    .line 4997
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5002
    :cond_c
    :goto_5
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7e7

    if-ne v5, v8, :cond_e

    .line 5005
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v5, :cond_d

    .line 5006
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v5

    .line 5005
    if-eqz v5, :cond_e

    .line 5007
    :cond_d
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    .line 5008
    const/4 v1, 0x1

    .line 5012
    :cond_e
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    .line 5017
    .local v0, "appToken":Landroid/view/IApplicationToken;
    if-eqz v1, :cond_5

    if-nez p3, :cond_5

    .line 5018
    if-eqz v4, :cond_18

    .line 5020
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5021
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 5022
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 5023
    if-eqz v2, :cond_f

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-eqz v5, :cond_17

    .line 5026
    :cond_f
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5027
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    .line 5028
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5041
    :cond_10
    :goto_6
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v5, :cond_15

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v5, :cond_15

    .line 5042
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v5, v10, :cond_15

    .line 5043
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v5, v10, :cond_15

    .line 5044
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_11

    const-string/jumbo v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Fullscreen window: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5045
    :cond_11
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5046
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_12

    .line 5047
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5049
    :cond_12
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 5050
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    if-nez v5, :cond_1d

    .line 5051
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_13

    const-string/jumbo v5, "WindowManager"

    .line 5052
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Setting mDismissKeyguard true by win "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5051
    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5053
    :cond_13
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v5, p1, :cond_1b

    .line 5054
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-ne v5, v8, :cond_1b

    .line 5055
    const/4 v5, 0x2

    .line 5053
    :goto_7
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    .line 5056
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5057
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    .line 5058
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    if-eqz v5, :cond_1c

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    :goto_8
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5065
    :cond_14
    :goto_9
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_15

    .line 5066
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 5070
    :cond_15
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_5

    .line 5071
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    if-eq v5, v6, :cond_5

    .line 5072
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-nez v5, :cond_5

    .line 5073
    invoke-interface {p1, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto/16 :goto_3

    .line 4999
    .end local v0    # "appToken":Landroid/view/IApplicationToken;
    :cond_16
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    goto/16 :goto_5

    .line 5024
    .restart local v0    # "appToken":Landroid/view/IApplicationToken;
    :cond_17
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 5031
    :cond_18
    if-eqz v2, :cond_1a

    .line 5032
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-eqz v5, :cond_19

    .line 5033
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5037
    :goto_a
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 5035
    :cond_19
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 5039
    :cond_1a
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_1b
    move v5, v6

    .line 5055
    goto :goto_7

    :cond_1c
    move v5, v7

    .line 5058
    goto :goto_8

    .line 5059
    :cond_1d
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_14

    if-eqz v4, :cond_14

    .line 5060
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_1e

    const-string/jumbo v5, "WindowManager"

    .line 5061
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Setting mHideLockScreen to true by win "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5060
    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5062
    :cond_1e
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    .line 5063
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    goto :goto_9

    .line 5088
    .end local v0    # "appToken":Landroid/view/IApplicationToken;
    :cond_1f
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v5

    .line 5086
    if-eqz v5, :cond_6

    .line 5089
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_4
.end method

.method public beginLayoutLw(ZIII)V
    .locals 33
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I

    .prologue
    .line 4063
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    .line 4065
    if-eqz p1, :cond_f

    .line 4066
    packed-switch p4, :pswitch_data_0

    .line 4086
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v22, v0

    .line 4087
    .local v22, "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move/from16 v24, v0

    .line 4088
    .local v24, "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move/from16 v23, v0

    .line 4089
    .local v23, "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v21, v0

    .line 4098
    .local v21, "overscanBottom":I
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    .line 4099
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    .line 4100
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    .line 4101
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    .line 4102
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    .line 4103
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    .line 4104
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    .line 4105
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    .line 4106
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 4107
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 4108
    sub-int v2, p2, v22

    sub-int v2, v2, v23

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 4109
    sub-int v2, p3, v24

    sub-int v2, v2, v21

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 4110
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 4111
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 4112
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iput v2, v3, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 4113
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iput v2, v3, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 4115
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    .line 4114
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    .line 4117
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    .line 4116
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    .line 4119
    sub-int v2, p2, v23

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    .line 4118
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    .line 4121
    sub-int v2, p3, v21

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    .line 4120
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    .line 4122
    const/high16 v2, 0x10000000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    .line 4123
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    .line 4126
    sget-object v25, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 4127
    .local v25, "pf":Landroid/graphics/Rect;
    sget-object v11, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 4128
    .local v11, "df":Landroid/graphics/Rect;
    sget-object v19, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 4129
    .local v19, "of":Landroid/graphics/Rect;
    sget-object v32, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 4130
    .local v32, "vf":Landroid/graphics/Rect;
    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 4131
    .local v8, "dcf":Landroid/graphics/Rect;
    sget-object v20, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    .line 4132
    .local v20, "osf":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 4133
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 4134
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 4135
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 4136
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 4138
    if-eqz p1, :cond_e

    .line 4141
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    move/from16 v28, v0

    .line 4142
    .local v28, "sysui":I
    and-int/lit8 v2, v28, 0x2

    if-nez v2, :cond_10

    const/16 v18, 0x1

    .line 4144
    .local v18, "navVisible":Z
    :goto_1
    const v2, -0x7fff8000

    .line 4143
    and-int v2, v2, v28

    if-eqz v2, :cond_11

    const/16 v17, 0x1

    .line 4145
    .local v17, "navTranslucent":Z
    :goto_2
    move/from16 v0, v28

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_12

    const/4 v12, 0x1

    .line 4146
    .local v12, "immersive":Z
    :goto_3
    move/from16 v0, v28

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_13

    const/4 v13, 0x1

    .line 4147
    .local v13, "immersiveSticky":Z
    :goto_4
    if-nez v12, :cond_14

    move/from16 v16, v13

    .line 4148
    :goto_5
    if-eqz v13, :cond_15

    const/4 v2, 0x0

    :goto_6
    and-int v17, v17, v2

    .line 4149
    .local v17, "navTranslucent":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v2, :cond_16

    :cond_0
    const/4 v14, 0x0

    .line 4150
    .local v14, "isKeyguardShowing":Z
    :goto_7
    if-nez v14, :cond_1

    .line 4151
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int v17, v17, v2

    .line 4158
    :cond_1
    if-nez v18, :cond_2

    if-eqz v16, :cond_17

    .line 4159
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    if-eqz v2, :cond_3

    .line 4160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$InputConsumer;->dismiss()V

    .line 4161
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    .line 4171
    :cond_3
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    :goto_9
    or-int v18, v18, v2

    .line 4173
    .local v18, "navVisible":Z
    const/16 v31, 0x0

    .line 4174
    .local v31, "updateSysUiVisibility":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_8

    .line 4175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v30

    .line 4180
    .local v30, "transientNavBarShowing":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v2, :cond_4

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_19

    :cond_4
    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 4181
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_1d

    .line 4183
    sub-int v2, p3, v21

    .line 4184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v3, v3, p4

    .line 4183
    sub-int v29, v2, v3

    .line 4185
    .local v29, "top":I
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sub-int v3, p3, v21

    const/4 v4, 0x0

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4186
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    .line 4187
    if-eqz v30, :cond_1a

    .line 4188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 4202
    :cond_5
    :goto_b
    if-eqz v18, :cond_6

    if-eqz v17, :cond_1c

    .line 4242
    .end local v29    # "top":I
    :cond_6
    :goto_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    .line 4243
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    .line 4244
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    .line 4245
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    .line 4246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    .line 4248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 4249
    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 4250
    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 4248
    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4251
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mNavigationBar frame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4252
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4253
    const/16 v31, 0x1

    .line 4256
    .end local v30    # "transientNavBarShowing":Z
    :cond_8
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_9

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "mDock rect: (%d,%d - %d,%d)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 4257
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 4256
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4260
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_d

    .line 4262
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 4263
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 4264
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int/2addr v2, v3

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 4265
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 4266
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 4265
    add-int/2addr v2, v3

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 4267
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 4268
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 4269
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 4270
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 4272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    .line 4275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v3, v25

    move-object v4, v11

    move-object/from16 v5, v32

    move-object/from16 v6, v32

    move-object/from16 v7, v32

    move-object/from16 v9, v32

    move-object/from16 v10, v32

    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4280
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    .line 4282
    const/high16 v2, 0x4000000

    and-int v2, v2, v28

    if-eqz v2, :cond_21

    const/16 v26, 0x1

    .line 4284
    .local v26, "statusBarTransient":Z
    :goto_d
    const v2, 0x40008000    # 2.0078125f

    .line 4283
    and-int v2, v2, v28

    if-eqz v2, :cond_22

    const/16 v27, 0x1

    .line 4285
    .local v27, "statusBarTranslucent":Z
    :goto_e
    if-nez v14, :cond_a

    .line 4286
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int v27, v27, v2

    .line 4291
    .end local v27    # "statusBarTranslucent":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v26, :cond_23

    .line 4309
    :cond_b
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 4317
    :cond_c
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4318
    const/16 v31, 0x1

    .line 4321
    .end local v26    # "statusBarTransient":Z
    :cond_d
    if-eqz v31, :cond_e

    .line 4322
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    .line 4062
    .end local v12    # "immersive":Z
    .end local v13    # "immersiveSticky":Z
    .end local v14    # "isKeyguardShowing":Z
    .end local v17    # "navTranslucent":Z
    .end local v18    # "navVisible":Z
    .end local v28    # "sysui":I
    .end local v31    # "updateSysUiVisibility":Z
    :cond_e
    return-void

    .line 4068
    .end local v8    # "dcf":Landroid/graphics/Rect;
    .end local v11    # "df":Landroid/graphics/Rect;
    .end local v19    # "of":Landroid/graphics/Rect;
    .end local v20    # "osf":Landroid/graphics/Rect;
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    .end local v25    # "pf":Landroid/graphics/Rect;
    .end local v32    # "vf":Landroid/graphics/Rect;
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move/from16 v22, v0

    .line 4069
    .restart local v22    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move/from16 v24, v0

    .line 4070
    .restart local v24    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v23, v0

    .line 4071
    .restart local v23    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v21, v0

    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    .line 4074
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move/from16 v22, v0

    .line 4075
    .restart local v22    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v24, v0

    .line 4076
    .restart local v24    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v23, v0

    .line 4077
    .restart local v23    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move/from16 v21, v0

    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    .line 4080
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v22, v0

    .line 4081
    .restart local v22    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v24, v0

    .line 4082
    .restart local v24    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move/from16 v23, v0

    .line 4083
    .restart local v23    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move/from16 v21, v0

    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    .line 4093
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    :cond_f
    const/16 v22, 0x0

    .line 4094
    .restart local v22    # "overscanLeft":I
    const/16 v24, 0x0

    .line 4095
    .restart local v24    # "overscanTop":I
    const/16 v23, 0x0

    .line 4096
    .restart local v23    # "overscanRight":I
    const/16 v21, 0x0

    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    .line 4142
    .restart local v8    # "dcf":Landroid/graphics/Rect;
    .restart local v11    # "df":Landroid/graphics/Rect;
    .restart local v19    # "of":Landroid/graphics/Rect;
    .restart local v20    # "osf":Landroid/graphics/Rect;
    .restart local v25    # "pf":Landroid/graphics/Rect;
    .restart local v28    # "sysui":I
    .restart local v32    # "vf":Landroid/graphics/Rect;
    :cond_10
    const/16 v18, 0x0

    .local v18, "navVisible":Z
    goto/16 :goto_1

    .line 4143
    :cond_11
    const/16 v17, 0x0

    .local v17, "navTranslucent":Z
    goto/16 :goto_2

    .line 4145
    :cond_12
    const/4 v12, 0x0

    .restart local v12    # "immersive":Z
    goto/16 :goto_3

    .line 4146
    :cond_13
    const/4 v13, 0x0

    .restart local v13    # "immersiveSticky":Z
    goto/16 :goto_4

    .line 4147
    :cond_14
    const/16 v16, 0x1

    .local v16, "navAllowedHidden":Z
    goto/16 :goto_5

    .line 4148
    .end local v16    # "navAllowedHidden":Z
    :cond_15
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 4149
    .local v17, "navTranslucent":Z
    :cond_16
    const/4 v14, 0x1

    .restart local v14    # "isKeyguardShowing":Z
    goto/16 :goto_7

    .line 4163
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    if-nez v2, :cond_3

    .line 4164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 4165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 4164
    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addInputConsumer(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;)Landroid/view/WindowManagerPolicy$InputConsumer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    goto/16 :goto_8

    .line 4171
    :cond_18
    const/4 v2, 0x1

    goto/16 :goto_9

    .line 4180
    .local v18, "navVisible":Z
    .restart local v30    # "transientNavBarShowing":Z
    .restart local v31    # "updateSysUiVisibility":Z
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 4189
    .restart local v29    # "top":I
    :cond_1a
    if-eqz v18, :cond_1b

    .line 4191
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsAlarmBoot:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsShutDown:Z

    if-nez v2, :cond_5

    .line 4192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 4193
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    .line 4194
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 4196
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int/2addr v2, v3

    .line 4195
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    goto/16 :goto_b

    .line 4200
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto/16 :goto_b

    .line 4202
    :cond_1c
    if-nez v16, :cond_6

    .line 4203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_6

    .line 4204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_6

    .line 4208
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    goto/16 :goto_c

    .line 4212
    .end local v29    # "top":I
    :cond_1d
    sub-int v2, p2, v23

    .line 4213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v3, v3, p4

    .line 4212
    sub-int v15, v2, v3

    .line 4214
    .local v15, "left":I
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sub-int v3, p2, v23

    const/4 v4, 0x0

    move/from16 v0, p3

    invoke-virtual {v2, v15, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 4215
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    .line 4216
    if-eqz v30, :cond_1f

    .line 4217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 4231
    :cond_1e
    :goto_11
    if-eqz v18, :cond_6

    if-nez v17, :cond_6

    if-nez v16, :cond_6

    .line 4232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_6

    .line 4233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_6

    .line 4237
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    goto/16 :goto_c

    .line 4218
    :cond_1f
    if-eqz v18, :cond_20

    .line 4220
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsAlarmBoot:Z

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsShutDown:Z

    if-nez v2, :cond_1e

    .line 4221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 4222
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    .line 4223
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 4225
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v2, v3

    .line 4224
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto :goto_11

    .line 4229
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_11

    .line 4282
    .end local v15    # "left":I
    .end local v30    # "transientNavBarShowing":Z
    :cond_21
    const/16 v26, 0x0

    .restart local v26    # "statusBarTransient":Z
    goto/16 :goto_d

    .line 4283
    :cond_22
    const/16 v27, 0x0

    .restart local v27    # "statusBarTranslucent":Z
    goto/16 :goto_e

    .line 4295
    .end local v27    # "statusBarTranslucent":Z
    :cond_23
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    .line 4297
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    .line 4298
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    .line 4299
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    .line 4300
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    .line 4302
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Status bar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4304
    const-string/jumbo v4, "dock=[%d,%d][%d,%d] content=[%d,%d][%d,%d] cur=[%d,%d][%d,%d]"

    .line 4303
    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    .line 4305
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 4306
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v5, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x6

    aput-object v6, v5, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x7

    aput-object v6, v5, v7

    .line 4307
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x8

    aput-object v6, v5, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x9

    aput-object v6, v5, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xa

    aput-object v6, v5, v7

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xb

    aput-object v6, v5, v7

    .line 4303
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4302
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 4310
    :cond_24
    if-nez v26, :cond_c

    if-nez v27, :cond_c

    .line 4311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_c

    .line 4315
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    goto/16 :goto_10

    .line 4066
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 3
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 4945
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4946
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4947
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 4948
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 4949
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    .line 4950
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 4951
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    .line 4952
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 4953
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 4955
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    .line 4956
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 4957
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    .line 4958
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    .line 4959
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    .line 4960
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4961
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    .line 4962
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-eqz v1, :cond_0

    .line 4963
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    .line 4962
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecureIncludingHidden:Z

    .line 4944
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x0

    .line 2547
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 2556
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v1

    .line 2557
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v2

    .line 2556
    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 2553
    :sswitch_0
    return v0

    .line 2547
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7ed -> :sswitch_0
    .end sparse-switch
.end method

.method public canMagnifyWindow(I)Z
    .locals 1
    .param p1, "windowType"    # I

    .prologue
    .line 7674
    sparse-switch p1, :sswitch_data_0

    .line 7682
    const/4 v0, 0x1

    return v0

    .line 7679
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 7674
    nop

    :sswitch_data_0
    .sparse-switch
        0x7db -> :sswitch_0
        0x7dc -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7eb -> :sswitch_0
    .end sparse-switch
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .locals 10
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "outAppOp"    # [I

    .prologue
    const/16 v9, 0xbb7

    const/16 v6, 0x7d0

    const/16 v5, 0x3e8

    const/4 v8, -0x8

    const/4 v7, 0x0

    .line 2161
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2163
    .local v3, "type":I
    const/4 v4, -0x1

    aput v4, p2, v7

    .line 2165
    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    const/16 v4, 0x63

    if-le v3, v4, :cond_3

    .line 2166
    :cond_0
    if-lt v3, v5, :cond_1

    const/16 v4, 0x7cf

    if-le v3, v4, :cond_3

    .line 2167
    :cond_1
    if-lt v3, v6, :cond_2

    if-le v3, v9, :cond_3

    .line 2168
    :cond_2
    const/16 v4, -0xa

    return v4

    .line 2171
    :cond_3
    if-lt v3, v6, :cond_4

    if-le v3, v9, :cond_5

    .line 2173
    :cond_4
    return v7

    .line 2175
    :cond_5
    const/4 v2, 0x0

    .line 2176
    .local v2, "permission":Ljava/lang/String;
    sparse-switch v3, :sswitch_data_0

    .line 2202
    const-string/jumbo v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 2204
    .end local v2    # "permission":Ljava/lang/String;
    :goto_0
    :sswitch_0
    if-eqz v2, :cond_9

    .line 2205
    const-string/jumbo v4, "android.permission.SYSTEM_ALERT_WINDOW"

    if-ne v2, v4, :cond_8

    .line 2206
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2208
    .local v0, "callingUid":I
    if-ne v0, v5, :cond_6

    .line 2209
    return v7

    .line 2181
    .end local v0    # "callingUid":I
    .restart local v2    # "permission":Ljava/lang/String;
    :sswitch_1
    const/16 v4, 0x2d

    aput v4, p2, v7

    goto :goto_0

    .line 2198
    :sswitch_2
    const-string/jumbo v2, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 2199
    .local v2, "permission":Ljava/lang/String;
    const/16 v4, 0x18

    aput v4, p2, v7

    goto :goto_0

    .line 2214
    .end local v2    # "permission":Ljava/lang/String;
    .restart local v0    # "callingUid":I
    :cond_6
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    aget v5, p2, v7

    .line 2215
    iget-object v6, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2214
    invoke-virtual {v4, v5, v0, v6}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    .line 2216
    .local v1, "mode":I
    packed-switch v1, :pswitch_data_0

    .line 2227
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7

    .line 2229
    return v8

    .line 2221
    :pswitch_0
    return v7

    .line 2223
    :pswitch_1
    return v8

    .line 2231
    :cond_7
    return v7

    .line 2236
    .end local v0    # "callingUid":I
    .end local v1    # "mode":I
    :cond_8
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_9

    .line 2238
    return v8

    .line 2241
    :cond_9
    return v7

    .line 2176
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_2
        0x7d5 -> :sswitch_1
        0x7d6 -> :sswitch_2
        0x7d7 -> :sswitch_2
        0x7da -> :sswitch_2
        0x7db -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7ee -> :sswitch_0
        0x7ef -> :sswitch_0
        0x7f0 -> :sswitch_0
        0x7f2 -> :sswitch_0
    .end sparse-switch

    .line 2216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2249
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v2, :sswitch_data_0

    .line 2256
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    .line 2257
    return v0

    .line 2286
    :cond_0
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2287
    const-string/jumbo v3, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 2286
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 2249
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7d0 -> :sswitch_0
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_0
        0x7d9 -> :sswitch_0
        0x7de -> :sswitch_0
        0x7e1 -> :sswitch_0
        0x7e2 -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e5 -> :sswitch_0
        0x7e6 -> :sswitch_0
        0x7e8 -> :sswitch_0
        0x7ea -> :sswitch_0
        0x7eb -> :sswitch_0
        0x7ed -> :sswitch_0
        0x7ee -> :sswitch_0
    .end sparse-switch
.end method

.method public createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToNotificationShade"    # Z

    .prologue
    .line 2895
    if-eqz p2, :cond_0

    .line 2896
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v4, 0x10a0033

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 2899
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 2900
    const v3, 0x10a0034

    .line 2899
    :goto_0
    invoke-static {v4, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    check-cast v2, Landroid/view/animation/AnimationSet;

    .line 2904
    .local v2, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    .line 2905
    .local v0, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 2906
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2905
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2901
    .end local v0    # "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .end local v1    # "i":I
    .end local v2    # "set":Landroid/view/animation/AnimationSet;
    :cond_1
    const v3, 0x10a0032

    goto :goto_0

    .line 2909
    .restart local v0    # "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .restart local v1    # "i":I
    .restart local v2    # "set":Landroid/view/animation/AnimationSet;
    :cond_2
    return-object v2
.end method

.method public createForceHideWallpaperExitAnimation(Z)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "goingToNotificationShade"    # Z

    .prologue
    .line 2915
    if-eqz p1, :cond_0

    .line 2916
    const/4 v0, 0x0

    return-object v0

    .line 2918
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a0037

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 7166
    const/4 v2, 0x0

    .line 7171
    .local v2, "intent":Landroid/content/Intent;
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    if-ne v4, v6, :cond_0

    .line 7173
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v2

    .line 7187
    .end local v2    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_0
    if-nez v3, :cond_5

    .line 7188
    return-object v7

    .line 7175
    .end local v3    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :cond_0
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move-object v3, v2

    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 7179
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    .line 7180
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 7181
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 7184
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 7182
    .end local v3    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :cond_3
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v4, v6, :cond_2

    :cond_4
    move-object v3, v2

    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 7191
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v0, 0x0

    .line 7192
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 7195
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 7194
    const v6, 0x10080

    .line 7192
    invoke-virtual {v4, v3, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 7196
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_6

    .line 7197
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 7199
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_6
    if-eqz v0, :cond_7

    .line 7200
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_7

    .line 7201
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "android.dock_home"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 7199
    if-eqz v4, :cond_7

    .line 7202
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 7203
    .end local v3    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7204
    return-object v2

    .line 7207
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_7
    return-object v7
.end method

.method public dismissKeyguardLw()V
    .locals 2

    .prologue
    .line 6545
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6546
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "PWM.dismissKeyguardLw"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6547
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$34;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$34;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6544
    :cond_1
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 6110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    const/4 v4, 0x1

    .line 6109
    invoke-static {p1, v2, v3, v4, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    .line 6111
    .local v0, "repeatEvent":Landroid/view/KeyEvent;
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_0

    .line 6112
    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatchMediaKeyRepeatWithWakeLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6115
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 6116
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6106
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6077
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_0

    .line 6078
    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatchMediaKeyWithWakeLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6081
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    if-eqz v1, :cond_2

    .line 6082
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_1

    .line 6083
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "dispatchMediaKeyWithWakeLock: canceled repeat"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6086
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 6087
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 6088
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6091
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 6093
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 6094
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 6095
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 6097
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6099
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 6100
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6076
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 6102
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 6120
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6121
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 6119
    :cond_0
    return-void
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 23
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 3544
    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_0

    .line 3545
    const-string/jumbo v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unhandled key: win="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3546
    const-string/jumbo v6, ", flags="

    .line 3545
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3546
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    .line 3545
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3547
    const-string/jumbo v6, ", keyCode="

    .line 3545
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3547
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 3545
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3548
    const-string/jumbo v6, ", scanCode="

    .line 3545
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3548
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v6

    .line 3545
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3549
    const-string/jumbo v6, ", metaState="

    .line 3545
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3549
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    .line 3545
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3550
    const-string/jumbo v6, ", repeatCount="

    .line 3545
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3550
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    .line 3545
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3551
    const-string/jumbo v6, ", policyFlags="

    .line 3545
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    :cond_0
    const/16 v18, 0x0

    .line 3555
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_3

    .line 3556
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v20

    .line 3557
    .local v20, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    .line 3558
    .local v21, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v22

    .line 3559
    .local v22, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_6

    .line 3560
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_5

    const/16 v19, 0x1

    .line 3564
    .local v19, "initialDown":Z
    :goto_0
    if-eqz v19, :cond_7

    .line 3565
    invoke-virtual/range {v20 .. v22}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v17

    .line 3570
    .local v17, "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_1
    if-eqz v17, :cond_3

    .line 3571
    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_1

    .line 3572
    const-string/jumbo v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Fallback: keyCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3573
    const-string/jumbo v6, " metaState="

    .line 3572
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3573
    move-object/from16 v0, v17

    iget v6, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 3572
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v14, v4, 0x400

    .line 3578
    .local v14, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    .line 3579
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move-object/from16 v0, v17

    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    .line 3580
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object/from16 v0, v17

    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 3581
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    .line 3582
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v15

    const/16 v16, 0x0

    .line 3577
    invoke-static/range {v4 .. v16}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v18

    .line 3584
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3585
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    .line 3586
    const/16 v18, 0x0

    .line 3589
    .end local v18    # "fallbackEvent":Landroid/view/KeyEvent;
    :cond_2
    if-eqz v19, :cond_8

    .line 3590
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3598
    .end local v14    # "flags":I
    .end local v17    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v19    # "initialDown":Z
    .end local v20    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v21    # "keyCode":I
    .end local v22    # "metaState":I
    :cond_3
    :goto_2
    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_4

    .line 3599
    if-nez v18, :cond_9

    .line 3600
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "No fallback."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3605
    :cond_4
    :goto_3
    return-object v18

    .line 3560
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v20    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v21    # "keyCode":I
    .restart local v22    # "metaState":I
    :cond_5
    const/16 v19, 0x0

    .restart local v19    # "initialDown":Z
    goto/16 :goto_0

    .line 3559
    .end local v19    # "initialDown":Z
    :cond_6
    const/16 v19, 0x0

    .restart local v19    # "initialDown":Z
    goto/16 :goto_0

    .line 3567
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/KeyCharacterMap$FallbackAction;

    .restart local v17    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    goto/16 :goto_1

    .line 3591
    .end local v18    # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v14    # "flags":I
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 3592
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 3593
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_2

    .line 3602
    .end local v14    # "flags":I
    .end local v17    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v19    # "initialDown":Z
    .end local v20    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v21    # "keyCode":I
    .end local v22    # "metaState":I
    :cond_9
    const-string/jumbo v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Performing fallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7697
    array-length v0, p3

    if-lez v0, :cond_a

    aget-object v0, p3, v2

    const-string/jumbo v1, "-d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7698
    const-string/jumbo v0, "-d enable 0"

    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7699
    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    .line 7700
    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    .line 7737
    :cond_0
    :goto_0
    return-void

    .line 7701
    :cond_1
    const-string/jumbo v0, "-d enable 3"

    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7702
    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    goto :goto_0

    .line 7703
    :cond_2
    const-string/jumbo v0, "-d enable 6"

    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7704
    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    goto :goto_0

    .line 7705
    :cond_3
    const-string/jumbo v0, "-d enable 10"

    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7706
    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ORIENTATION:Z

    goto :goto_0

    .line 7708
    :cond_4
    const-string/jumbo v0, "-d disable 0"

    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7709
    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    .line 7710
    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    goto :goto_0

    .line 7711
    :cond_5
    const-string/jumbo v0, "-d disable 3"

    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7712
    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    goto :goto_0

    .line 7713
    :cond_6
    const-string/jumbo v0, "-d disable 6"

    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7714
    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    goto :goto_0

    .line 7715
    :cond_7
    const-string/jumbo v0, "-d disable 10"

    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 7716
    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ORIENTATION:Z

    goto :goto_0

    .line 7718
    :cond_8
    const-string/jumbo v0, "-d enable a"

    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7719
    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    .line 7720
    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    .line 7721
    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    .line 7722
    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 7723
    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ORIENTATION:Z

    .line 7724
    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    .line 7725
    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_STARTING_WINDOW:Z

    .line 7726
    sput-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    goto :goto_0

    .line 7727
    :cond_9
    const-string/jumbo v0, "-d disable a"

    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7728
    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    .line 7729
    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    .line 7730
    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    .line 7731
    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    .line 7732
    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ORIENTATION:Z

    .line 7733
    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    .line 7734
    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_STARTING_WINDOW:Z

    .line 7735
    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    goto/16 :goto_0

    .line 7740
    :cond_a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7741
    const-string/jumbo v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7742
    const-string/jumbo v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7743
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7744
    const-string/jumbo v0, " mLidOpenRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7745
    const-string/jumbo v0, " mCameraLensCoverState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7746
    const-string/jumbo v0, " mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7747
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eqz v0, :cond_1f

    .line 7749
    :cond_b
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7750
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7751
    const-string/jumbo v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7752
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7753
    const-string/jumbo v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7754
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7756
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_d

    .line 7757
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7758
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7760
    :cond_d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakeGestureEnabledSetting="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7761
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7763
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSupportAutoRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7764
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7765
    const-string/jumbo v0, " mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7766
    const-string/jumbo v0, " mCarDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7767
    const-string/jumbo v0, " mDeskDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7768
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUserRotationMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7769
    const-string/jumbo v0, " mUserRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7770
    const-string/jumbo v0, " mAllowAllRotations="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7771
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurrentAppOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7772
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7773
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7774
    const-string/jumbo v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7775
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7776
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7777
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7778
    const-string/jumbo v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7779
    const-string/jumbo v0, " mLidControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7780
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7781
    const-string/jumbo v0, "mShortPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7782
    const-string/jumbo v0, " mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7783
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7784
    const-string/jumbo v0, "mDoublePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7785
    const-string/jumbo v0, " mTriplePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7786
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7787
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAwake="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7788
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7789
    const-string/jumbo v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7790
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyguardDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7791
    const-string/jumbo v0, " mWindowManagerDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7792
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOrientationSensorEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7793
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7794
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7795
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7796
    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7797
    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7798
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    if-eqz v0, :cond_20

    .line 7800
    :cond_e
    :goto_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOverscan left="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7801
    const-string/jumbo v0, " top="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7802
    const-string/jumbo v0, " right="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7803
    const-string/jumbo v0, " bottom="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7805
    :cond_f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRestrictedOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7806
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7807
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7808
    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7809
    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7810
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7811
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7812
    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7813
    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7814
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7815
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7816
    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7817
    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7818
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7819
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7820
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7821
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7822
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7823
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7824
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7825
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7826
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7827
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7828
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7829
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7830
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCur=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7831
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7832
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7833
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7834
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7835
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7836
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7837
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7838
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVoiceContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7839
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7840
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7841
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7842
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7843
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7844
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7845
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7846
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDockLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7847
    const-string/jumbo v0, " mStatusBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7848
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShowingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7849
    const-string/jumbo v0, " mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7850
    const-string/jumbo v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7851
    const-string/jumbo v0, " mDreamingSleepToken="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7852
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_10

    .line 7853
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastInputMethodWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7854
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7856
    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_11

    .line 7857
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastInputMethodTargetWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7858
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7860
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_12

    .line 7861
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7862
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " isStatusBarKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7863
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7865
    :cond_12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_13

    .line 7866
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7867
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7869
    :cond_13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_14

    .line 7870
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7871
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7873
    :cond_14
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_15

    .line 7874
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFocusedApp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7875
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7877
    :cond_15
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_16

    .line 7878
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7879
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7881
    :cond_16
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_17

    .line 7882
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7883
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7885
    :cond_17
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_18

    .line 7886
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7887
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7889
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v0, :cond_19

    .line 7890
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7891
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7892
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7894
    :cond_19
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7895
    const-string/jumbo v0, " mHideLockScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7896
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7897
    const-string/jumbo v0, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7898
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7899
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDismissKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7900
    const-string/jumbo v0, " mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7901
    const-string/jumbo v0, " mHomePressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7902
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7903
    const-string/jumbo v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7904
    const-string/jumbo v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7905
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7906
    const-string/jumbo v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7907
    const-string/jumbo v0, " mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7908
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLandscapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7909
    const-string/jumbo v0, " mSeascapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7910
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPortraitRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7911
    const-string/jumbo v0, " mUpsideDownRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7912
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDemoHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7913
    const-string/jumbo v0, " mDemoHdmiRotationLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7914
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUndockedHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7916
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7917
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/StatusBarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7918
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7919
    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7921
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    if-eqz v0, :cond_1a

    .line 7922
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7924
    :cond_1a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    if-eqz v0, :cond_1b

    .line 7925
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7927
    :cond_1b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    if-eqz v0, :cond_1c

    .line 7928
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/BurnInProtectionHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7932
    :cond_1c
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 7933
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1d

    .line 7934
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurrentInputMethodWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7935
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7937
    :cond_1d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1e

    .line 7938
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurrentInputMethodTargetWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7939
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 7695
    :cond_1e
    return-void

    .line 7748
    :cond_1f
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_c

    goto/16 :goto_1

    .line 7799
    :cond_20
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    if-nez v0, :cond_e

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    if-eqz v0, :cond_f

    goto/16 :goto_2
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 6499
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 6500
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    .line 6498
    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    .prologue
    .line 7106
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 7107
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 7108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 7105
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .prologue
    .line 6507
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 6508
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 6506
    :cond_0
    return-void
.end method

.method public finishLayoutLw()V
    .locals 0

    .prologue
    .line 4939
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 12

    .prologue
    const/16 v11, 0xf

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5096
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_1

    .line 5097
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 5098
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v5

    .line 5096
    if-eqz v5, :cond_1

    .line 5102
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x100000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5104
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_0

    .line 5105
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v8}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 5107
    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5110
    :cond_1
    const/4 v0, 0x0

    .line 5111
    .local v0, "changes":I
    const/4 v4, 0x0

    .line 5113
    .local v4, "topIsFullscreen":Z
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_10

    .line 5114
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 5121
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    if-nez v5, :cond_11

    .line 5122
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    .line 5123
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    if-eqz v5, :cond_2

    .line 5124
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    .line 5125
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 5134
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_9

    .line 5135
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "force="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5136
    const-string/jumbo v7, " forcefkg="

    .line 5135
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5136
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 5135
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5137
    const-string/jumbo v7, " top="

    .line 5135
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5137
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5135
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5138
    :cond_3
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    if-eqz v5, :cond_4

    .line 5139
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    if-eqz v5, :cond_12

    .line 5138
    :cond_4
    const/4 v3, 0x0

    .line 5141
    .local v3, "shouldBeTransparent":Z
    :goto_2
    if-nez v3, :cond_14

    .line 5142
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v8}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    .line 5146
    :cond_5
    :goto_3
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    if-eqz v5, :cond_16

    .line 5147
    :cond_6
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_7

    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "Showing status bar: forced"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5148
    :cond_7
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 5149
    const/4 v0, 0x1

    .line 5152
    :cond_8
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v4

    .line 5154
    .end local v4    # "topIsFullscreen":Z
    :goto_4
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5155
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    .line 5156
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 5155
    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    .line 5192
    .end local v3    # "shouldBeTransparent":Z
    :cond_9
    :goto_5
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eq v5, v4, :cond_b

    .line 5193
    if-nez v4, :cond_a

    .line 5195
    or-int/lit8 v0, v0, 0x1

    .line 5197
    :cond_a
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    .line 5202
    :cond_b
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_e

    .line 5203
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v5, :cond_c

    const-string/jumbo v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "finishPostLayoutPolicyLw: mHideKeyguard="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5204
    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    .line 5203
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5206
    const-string/jumbo v7, " mDismissKeyguard="

    .line 5203
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5206
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    .line 5203
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5207
    const-string/jumbo v7, " mKeyguardDelegate.isSecure()= "

    .line 5203
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5207
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v7

    .line 5203
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5209
    :cond_c
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-eqz v5, :cond_1f

    .line 5224
    :cond_d
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v5, :cond_21

    .line 5225
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    .line 5226
    iput-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5227
    invoke-direct {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 5228
    or-int/lit8 v0, v0, 0x7

    .line 5260
    :cond_e
    :goto_6
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v5

    const v6, -0x3fff7ffa

    and-int/2addr v5, v6

    if-eqz v5, :cond_f

    .line 5263
    or-int/lit8 v0, v0, 0x1

    .line 5267
    :cond_f
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 5268
    return v0

    .line 5115
    .restart local v4    # "topIsFullscreen":Z
    :cond_10
    const/4 v2, 0x0

    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_0

    .line 5128
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_11
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    if-nez v5, :cond_2

    .line 5129
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    .line 5130
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11, v9, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 5140
    :cond_12
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v5, :cond_13

    const/4 v3, 0x0

    .restart local v3    # "shouldBeTransparent":Z
    goto/16 :goto_2

    .end local v3    # "shouldBeTransparent":Z
    :cond_13
    const/4 v3, 0x1

    .restart local v3    # "shouldBeTransparent":Z
    goto/16 :goto_2

    .line 5143
    :cond_14
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-nez v5, :cond_5

    .line 5144
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v9}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    goto/16 :goto_3

    .line 5152
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 5158
    :cond_16
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_9

    .line 5159
    invoke-static {v10, v2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    .line 5160
    .local v1, "fl":I
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v5, :cond_17

    .line 5161
    const-string/jumbo v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "frame: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5162
    const-string/jumbo v7, " shown frame: "

    .line 5161
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5162
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getShownFrameLw()Landroid/graphics/RectF;

    move-result-object v7

    .line 5161
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5163
    const-string/jumbo v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "attr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5164
    const-string/jumbo v7, " lp.flags=0x"

    .line 5163
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5164
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 5163
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5166
    :cond_17
    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_18

    .line 5167
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_19

    const/4 v4, 0x1

    .line 5172
    :goto_7
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 5173
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5174
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 5166
    :cond_18
    const/4 v4, 0x1

    goto :goto_7

    .line 5167
    :cond_19
    const/4 v4, 0x0

    goto :goto_7

    .line 5176
    :cond_1a
    if-eqz v4, :cond_1d

    .line 5177
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_1b

    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "** HIDING status bar"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5178
    :cond_1b
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v8}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 5179
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 5181
    :cond_1c
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_9

    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "Status bar already hiding"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 5184
    :cond_1d
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_1e

    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "** SHOWING status bar: top is not fullscreen"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5185
    :cond_1e
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 5186
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 5210
    .end local v1    # "fl":I
    .end local v3    # "shouldBeTransparent":Z
    .end local v4    # "topIsFullscreen":Z
    :cond_1f
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    .line 5211
    invoke-direct {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 5212
    or-int/lit8 v0, v0, 0x7

    .line 5216
    :cond_20
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 5217
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/policy/PhoneWindowManager$31;

    invoke-direct {v6, p0}, Lcom/android/server/policy/PhoneWindowManager$31;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 5232
    :cond_21
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v5, :cond_23

    .line 5233
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    .line 5234
    invoke-direct {p0, v8}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 5235
    or-int/lit8 v0, v0, 0x7

    .line 5239
    :cond_22
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    if-ne v5, v9, :cond_e

    .line 5241
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/policy/PhoneWindowManager$32;

    invoke-direct {v6, p0}, Lcom/android/server/policy/PhoneWindowManager$32;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 5249
    :cond_23
    iput-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5250
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    .line 5251
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    .line 5252
    invoke-direct {p0, v8}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 5253
    or-int/lit8 v0, v0, 0x7

    goto/16 :goto_6
.end method

.method public finishedGoingToSleep(I)V
    .locals 3
    .param p1, "why"    # I

    .prologue
    const/4 v1, 0x0

    .line 6246
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 6247
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finished going to sleep... (why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6248
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "screen_timeout"

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6252
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6253
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    .line 6254
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 6255
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 6256
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 6258
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    .line 6259
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(I)V

    .line 6262
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    if-eqz v0, :cond_2

    .line 6263
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->isReady()Z

    move-result v0

    .line 6262
    if-eqz v0, :cond_2

    .line 6264
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->onScreenTurnedOff(I)V

    .line 6245
    :cond_2
    return-void

    .line 6252
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public finishedWakingUp()V
    .locals 2

    .prologue
    .line 6303
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Finished waking up..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6302
    :cond_0
    return-void
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 3
    .param p1, "lastFocus"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v2, 0x0

    .line 5323
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 5324
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    const v1, -0x3fff7ffa

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 5327
    const/4 v0, 0x1

    return v0

    .line 5329
    :cond_0
    return v2
.end method

.method public getConfigDisplayHeight(III)I
    .locals 2
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2529
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getConfigDisplayWidth(III)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2520
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayWidth(III)I

    move-result v0

    return v0
.end method

.method public getContentRectLw(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 4343
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4342
    return-void
.end method

.method public getInputMethodWindowVisibleHeightLw()I
    .locals 2

    .prologue
    .line 7653
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getInsetHintLw(Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "displayRotation"    # I
    .param p3, "outContentInsets"    # Landroid/graphics/Rect;
    .param p4, "outStableInsets"    # Landroid/graphics/Rect;
    .param p5, "outOutsets"    # Landroid/graphics/Rect;

    .prologue
    .line 3995
    const/4 v8, 0x0

    invoke-static {v8, p1}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3

    .line 3996
    .local v3, "fl":I
    const/4 v8, 0x0

    invoke-static {v8, p1}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    .line 3997
    .local v6, "sysuiVis":I
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v5, v6, v8

    .line 3999
    .local v5, "systemUiVisibility":I
    if-eqz p5, :cond_1

    invoke-direct {p0, p1, v3}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v7

    .line 4000
    :goto_0
    if-eqz v7, :cond_0

    .line 4001
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    move-result v4

    .line 4002
    .local v4, "outset":I
    if-lez v4, :cond_0

    .line 4003
    if-nez p2, :cond_2

    .line 4004
    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v4

    move-object/from16 v0, p5

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 4015
    .end local v4    # "outset":I
    :cond_0
    :goto_1
    const v8, 0x10100

    and-int/2addr v8, v3

    .line 4016
    const v9, 0x10100

    .line 4015
    if-ne v8, v9, :cond_b

    .line 4018
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4019
    and-int/lit16 v8, v5, 0x200

    if-eqz v8, :cond_5

    .line 4020
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int v2, v8, v9

    .line 4021
    .local v2, "availRight":I
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int v1, v8, v9

    .line 4026
    .local v1, "availBottom":I
    :goto_2
    and-int/lit16 v8, v5, 0x100

    if-eqz v8, :cond_7

    .line 4027
    and-int/lit16 v8, v3, 0x400

    if-eqz v8, :cond_6

    .line 4028
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    .line 4029
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    sub-int v10, v2, v10

    .line 4030
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    sub-int v11, v1, v11

    .line 4028
    invoke-virtual {p3, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 4046
    :goto_3
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    .line 4047
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    sub-int v10, v2, v10

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    sub-int v11, v1, v11

    .line 4046
    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 4048
    return-void

    .line 3999
    .end local v1    # "availBottom":I
    .end local v2    # "availRight":I
    :cond_1
    const/4 v7, 0x0

    .local v7, "useOutsets":Z
    goto :goto_0

    .line 4005
    .end local v7    # "useOutsets":Z
    .restart local v4    # "outset":I
    :cond_2
    const/4 v8, 0x1

    if-ne p2, v8, :cond_3

    .line 4006
    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v4

    move-object/from16 v0, p5

    iput v8, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 4007
    :cond_3
    const/4 v8, 0x2

    if-ne p2, v8, :cond_4

    .line 4008
    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v4

    move-object/from16 v0, p5

    iput v8, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 4009
    :cond_4
    const/4 v8, 0x3

    if-ne p2, v8, :cond_0

    .line 4010
    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v4

    move-object/from16 v0, p5

    iput v8, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 4023
    .end local v4    # "outset":I
    :cond_5
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int v2, v8, v9

    .line 4024
    .restart local v2    # "availRight":I
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int v1, v8, v9

    .restart local v1    # "availBottom":I
    goto :goto_2

    .line 4032
    :cond_6
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    .line 4033
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    sub-int v10, v2, v10

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    sub-int v11, v1, v11

    .line 4032
    invoke-virtual {p3, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 4035
    :cond_7
    and-int/lit16 v8, v3, 0x400

    if-nez v8, :cond_8

    const/high16 v8, 0x2000000

    and-int/2addr v8, v3

    if-eqz v8, :cond_9

    .line 4036
    :cond_8
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3

    .line 4037
    :cond_9
    and-int/lit16 v8, v5, 0x404

    if-nez v8, :cond_a

    .line 4039
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    .line 4040
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    sub-int v10, v2, v10

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    sub-int v11, v1, v11

    .line 4039
    invoke-virtual {p3, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 4042
    :cond_a
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    .line 4043
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    sub-int v10, v2, v10

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    sub-int v11, v1, v11

    .line 4042
    invoke-virtual {p3, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3

    .line 4050
    .end local v1    # "availBottom":I
    .end local v2    # "availRight":I
    :cond_b
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 4051
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 3994
    return-void
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    .prologue
    .line 2491
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2508
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_1

    .line 2511
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-ge p1, p2, :cond_1

    .line 2512
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int v0, p2, v0

    return v0

    .line 2515
    :cond_1
    return p2
.end method

.method public getNonDecorDisplayWidth(III)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2496
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 2499
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-le p1, p2, :cond_0

    .line 2500
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v0, v0, p3

    sub-int v0, p1, v0

    return v0

    .line 2503
    :cond_0
    return p1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 910
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 911
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 913
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 912
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 910
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSystemDecorLayerLw()I
    .locals 1

    .prologue
    .line 4330
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4331
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    return v0

    .line 4334
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4335
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    return v0

    .line 4338
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getUserRotationMode()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 6806
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 6807
    const-string/jumbo v2, "accelerometer_rotation"

    const/4 v3, -0x2

    .line 6806
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    .line 6809
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method goHome()Z
    .locals 19

    .prologue
    .line 7244
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7245
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Not going home because user setup is in progress."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7246
    const/4 v1, 0x0

    return v1

    .line 7260
    :cond_0
    :try_start_0
    const-string/jumbo v1, "persist.sys.uts-test-mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 7262
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "UTS-TEST-MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7279
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 7280
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 7281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    .line 7280
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7282
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 7283
    const/4 v13, 0x1

    .line 7284
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x2

    .line 7279
    invoke-interface/range {v5 .. v16}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v18

    .line 7285
    .local v18, "result":I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_3

    .line 7286
    const/4 v1, 0x0

    return v1

    .line 7264
    .end local v18    # "result":I
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 7265
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 7266
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v4

    .line 7267
    .local v4, "dock":Landroid/content/Intent;
    if-eqz v4, :cond_1

    .line 7268
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 7270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 7269
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 7271
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 7272
    const/4 v9, 0x1

    .line 7273
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x2

    .line 7268
    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 7274
    .restart local v18    # "result":I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_1

    .line 7275
    const/4 v1, 0x0

    return v1

    .line 7288
    .end local v4    # "dock":Landroid/content/Intent;
    .end local v18    # "result":I
    :catch_0
    move-exception v17

    .line 7292
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public hasNavigationBar()Z
    .locals 1

    .prologue
    .line 7642
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public hideBootMessages()V
    .locals 2

    .prologue
    .line 6989
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6988
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .prologue
    .line 6539
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 6540
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 1529
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1530
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 1531
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 1532
    const-class v3, Landroid/view/WindowManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManagerInternal;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 1533
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1534
    const-class v3, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/dreams/DreamManagerInternal;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 1535
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1538
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1539
    const v4, 0x1120098

    .line 1538
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 1542
    .local v11, "burnInProtectionEnabled":Z
    const-string/jumbo v3, "persist.debug.force_burn_in"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 1543
    .local v10, "burnInProtectionDevMode":Z
    if-nez v11, :cond_0

    if-eqz v10, :cond_1

    .line 1549
    :cond_0
    if-eqz v10, :cond_6

    .line 1550
    const/4 v5, -0x8

    .line 1551
    .local v5, "minHorizontal":I
    const/16 v6, 0x8

    .line 1552
    .local v6, "maxHorizontal":I
    const/4 v7, -0x8

    .line 1553
    .local v7, "minVertical":I
    const/4 v8, -0x4

    .line 1554
    .local v8, "maxVertical":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v9, 0x6

    .line 1568
    .local v9, "maxRadius":I
    :goto_0
    new-instance v3, Lcom/android/server/policy/BurnInProtectionHelper;

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    .line 1572
    .end local v5    # "minHorizontal":I
    .end local v6    # "maxHorizontal":I
    .end local v7    # "minVertical":I
    .end local v8    # "maxVertical":I
    .end local v9    # "maxRadius":I
    :cond_1
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1573
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v4, v1}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 1574
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v4, v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    .line 1576
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindowManager;->getRotation()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1578
    :goto_1
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    .line 1579
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->observe()V

    .line 1580
    new-instance v3, Lcom/android/server/policy/ShortcutManager;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/server/policy/ShortcutManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    .line 1581
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1582
    const v4, 0x10e0046

    .line 1581
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    .line 1583
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 1584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v4, 0x10200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1587
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 1588
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.category.CAR_DOCK"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1589
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const/high16 v4, 0x10200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1591
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 1592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.category.DESK_DOCK"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1593
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const/high16 v4, 0x10200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1596
    const-string/jumbo v3, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1598
    const-string/jumbo v4, "PhoneWindowManager.mBroadcastWakeLock"

    .line 1597
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1600
    const-string/jumbo v4, "PhoneWindowManager.mPowerKeyWakeLock"

    .line 1599
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1601
    const-string/jumbo v3, "1"

    const-string/jumbo v4, "ro.debuggable"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 1602
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1603
    const v4, 0x1120033

    .line 1602
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    .line 1605
    const v3, 0x10e003e

    .line 1604
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    .line 1607
    const v3, 0x10e0043

    .line 1606
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    .line 1609
    const v3, 0x10e0041

    .line 1608
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    .line 1611
    const v3, 0x10e0045

    .line 1610
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    .line 1612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1613
    const v4, 0x1120038

    .line 1612
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 1614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1615
    const v4, 0x1120037

    .line 1614
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 1616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1617
    const v4, 0x10e003f

    .line 1616
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 1618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1619
    const v4, 0x10e0040

    .line 1618
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 1620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1621
    const v4, 0x1120036

    .line 1620
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    .line 1622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1623
    const v4, 0x1120041

    .line 1622
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 1625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1626
    const v4, 0x112002b

    .line 1625
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    .line 1627
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    if-nez v3, :cond_7

    .line 1628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1629
    const v4, 0x112002a

    .line 1628
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 1627
    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    .line 1630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1631
    const v4, 0x112002c

    .line 1630
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    .line 1632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1633
    const v4, 0x112002d

    .line 1632
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    .line 1634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1635
    const v4, 0x1120029

    .line 1634
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    .line 1636
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1637
    const v4, 0x112002e

    .line 1636
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    .line 1638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1639
    const v4, 0x1120028

    .line 1638
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    .line 1641
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1642
    const v4, 0x1120031

    .line 1641
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    .line 1644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1645
    const v4, 0x1120032

    .line 1644
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    .line 1647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1648
    const v4, 0x10e0049

    .line 1647
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 1649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1650
    const v4, 0x10e0048

    .line 1649
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 1651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1652
    const v4, 0x10e004a

    .line 1651
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 1653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1654
    const v4, 0x10e004b

    .line 1653
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 1655
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1656
    const v4, 0x10e004c

    .line 1655
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 1658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 1660
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 1663
    const-string/jumbo v3, "accessibility"

    .line 1662
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1666
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 1667
    .local v13, "filter":Landroid/content/IntentFilter;
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v13, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1668
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v13, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1669
    sget-object v3, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v13, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1670
    sget-object v3, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v13, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1671
    const-string/jumbo v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v13, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v14

    .line 1673
    .local v14, "intent":Landroid/content/Intent;
    if-eqz v14, :cond_2

    .line 1675
    const-string/jumbo v3, "android.intent.extra.DOCK_STATE"

    .line 1676
    const/4 v4, 0x0

    .line 1675
    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    .line 1680
    :cond_2
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 1681
    .local v15, "ipoEventFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1682
    const-string/jumbo v3, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v15, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mIpoEventReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1687
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 1688
    .local v16, "poweroffAlarmFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.normal.shutdown"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1689
    const-string/jumbo v3, "android.intent.action.normal.boot"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPoweroffAlarmReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1694
    new-instance v18, Landroid/content/IntentFilter;

    invoke-direct/range {v18 .. v18}, Landroid/content/IntentFilter;-><init>()V

    .line 1695
    .local v18, "statusbarEventFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.mediatek.action.REQUEST_TRANSIENT_STATUSBAR"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarEventReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1700
    new-instance v19, Landroid/content/IntentFilter;

    invoke-direct/range {v19 .. v19}, Landroid/content/IntentFilter;-><init>()V

    .line 1701
    .local v19, "stkUserActivityFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.stk.USER_ACTIVITY.enable"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1702
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStkUserActivityEnReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1706
    new-instance v13, Landroid/content/IntentFilter;

    .end local v13    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 1707
    .restart local v13    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v13, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1708
    const-string/jumbo v3, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v13, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1712
    new-instance v13, Landroid/content/IntentFilter;

    .end local v13    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v13, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1713
    .restart local v13    # "filter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1716
    new-instance v3, Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .line 1717
    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$29;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/policy/PhoneWindowManager$29;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1716
    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Lcom/android/server/policy/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .line 1771
    new-instance v3, Lcom/android/server/policy/ImmersiveModeConfirmation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/policy/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 1772
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-interface {v3, v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1774
    const-string/jumbo v3, "vibrator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 1775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1776
    const v4, 0x107001c

    .line 1775
    invoke-static {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 1777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1778
    const v4, 0x107001d

    .line 1777
    invoke-static {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 1779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1780
    const v4, 0x107001e

    .line 1779
    invoke-static {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 1781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1782
    const v4, 0x107001f

    .line 1781
    invoke-static {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mClockTickVibePattern:[J

    .line 1783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1784
    const v4, 0x1070020

    .line 1783
    invoke-static {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .line 1785
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1786
    const v4, 0x1070021

    .line 1785
    invoke-static {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 1787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1788
    const v4, 0x1070022

    .line 1787
    invoke-static {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 1789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1790
    const v4, 0x1070024

    .line 1789
    invoke-static {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContextClickVibePattern:[J

    .line 1792
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1793
    const v4, 0x1120026

    .line 1792
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 1795
    new-instance v3, Lcom/android/server/policy/GlobalKeyManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 1798
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiState()V

    .line 1801
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1802
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    .line 1803
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    .line 1806
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 1807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v4}, Lcom/android/server/policy/StatusBarController;->getAppTransitionListener()Landroid/view/WindowManagerInternal$AppTransitionListener;

    move-result-object v4

    .line 1806
    invoke-virtual {v3, v4}, Landroid/view/WindowManagerInternal;->registerAppTransitionListener(Landroid/view/WindowManagerInternal$AppTransitionListener;)V

    .line 1810
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$HandGloveSettingObserver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/policy/PhoneWindowManager$HandGloveSettingObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandGloveSettingObserver:Lcom/android/server/policy/PhoneWindowManager$HandGloveSettingObserver;

    .line 1811
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1812
    const-string/jumbo v4, "glove_mode_alert_enabled"

    .line 1811
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandGloveSettingObserver:Lcom/android/server/policy/PhoneWindowManager$HandGloveSettingObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, -0x1

    .line 1811
    move/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1815
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->isSinglehandSupport:Z

    if-eqz v3, :cond_4

    .line 1816
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$SingleHandSettingObserver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/policy/PhoneWindowManager$SingleHandSettingObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleHandSettingObserver:Lcom/android/server/policy/PhoneWindowManager$SingleHandSettingObserver;

    .line 1817
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1818
    const-string/jumbo v4, "global_single_hand"

    .line 1817
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleHandSettingObserver:Lcom/android/server/policy/PhoneWindowManager$SingleHandSettingObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 1819
    const/16 v22, -0x1

    .line 1817
    move/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1820
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1821
    const-string/jumbo v4, "global_single_hand_on"

    const/16 v20, 0x0

    .line 1820
    move/from16 v0, v20

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1822
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1823
    const-string/jumbo v4, "global_single_hand_on"

    .line 1822
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSingleHandSettingObserver:Lcom/android/server/policy/PhoneWindowManager$SingleHandSettingObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 1824
    const/16 v22, -0x1

    .line 1822
    move/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1825
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSingleHandSettings()V

    .line 1528
    :cond_4
    return-void

    .line 1554
    .end local v13    # "filter":Landroid/content/IntentFilter;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "ipoEventFilter":Landroid/content/IntentFilter;
    .end local v16    # "poweroffAlarmFilter":Landroid/content/IntentFilter;
    .end local v18    # "statusbarEventFilter":Landroid/content/IntentFilter;
    .end local v19    # "stkUserActivityFilter":Landroid/content/IntentFilter;
    .restart local v5    # "minHorizontal":I
    .restart local v6    # "maxHorizontal":I
    .restart local v7    # "minVertical":I
    .restart local v8    # "maxVertical":I
    :cond_5
    const/4 v9, -0x1

    .restart local v9    # "maxRadius":I
    goto/16 :goto_0

    .line 1556
    .end local v5    # "minHorizontal":I
    .end local v6    # "maxHorizontal":I
    .end local v7    # "minVertical":I
    .end local v8    # "maxVertical":I
    .end local v9    # "maxRadius":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 1558
    .local v17, "resources":Landroid/content/res/Resources;
    const v3, 0x10e0093

    .line 1557
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 1560
    .restart local v5    # "minHorizontal":I
    const v3, 0x10e0094

    .line 1559
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1562
    .restart local v6    # "maxHorizontal":I
    const v3, 0x10e0095

    .line 1561
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1564
    .restart local v7    # "minVertical":I
    const v3, 0x10e0096

    .line 1563
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 1566
    .restart local v8    # "maxVertical":I
    const v3, 0x10e0092

    .line 1565
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .restart local v9    # "maxRadius":I
    goto/16 :goto_0

    .line 1627
    .end local v5    # "minHorizontal":I
    .end local v6    # "maxHorizontal":I
    .end local v7    # "minVertical":I
    .end local v8    # "maxVertical":I
    .end local v9    # "maxRadius":I
    .end local v17    # "resources":Landroid/content/res/Resources;
    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1658
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1577
    :catch_0
    move-exception v12

    .local v12, "ex":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method

.method initializeHdmiState()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5388
    const/4 v5, 0x0

    .line 5390
    .local v5, "plugged":Z
    new-instance v8, Ljava/io/File;

    const-string/jumbo v11, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5391
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string/jumbo v11, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v8, v11}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 5393
    const-string/jumbo v3, "/sys/class/switch/hdmi/state"

    .line 5394
    .local v3, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    .line 5396
    .local v6, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    const-string/jumbo v8, "/sys/class/switch/hdmi/state"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5397
    .end local v6    # "reader":Ljava/io/FileReader;
    .local v7, "reader":Ljava/io/FileReader;
    const/16 v8, 0xf

    :try_start_1
    new-array v0, v8, [C

    .line 5398
    .local v0, "buf":[C
    invoke-virtual {v7, v0}, Ljava/io/FileReader;->read([C)I

    move-result v4

    .line 5399
    .local v4, "n":I
    if-le v4, v10, :cond_0

    .line 5400
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v11, v4, -0x1

    const/4 v12, 0x0

    invoke-direct {v8, v0, v12, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-eqz v8, :cond_2

    const/4 v5, 0x1

    .line 5407
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 5409
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5417
    .end local v0    # "buf":[C
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "n":I
    .end local v7    # "reader":Ljava/io/FileReader;
    :cond_1
    :goto_1
    if-eqz v5, :cond_4

    move v8, v9

    :goto_2
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    .line 5418
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v8, :cond_5

    :goto_3
    invoke-virtual {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setHdmiPlugged(Z)V

    .line 5387
    return-void

    .line 5400
    .restart local v0    # "buf":[C
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "n":I
    .restart local v7    # "reader":Ljava/io/FileReader;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 5410
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    goto :goto_1

    .line 5404
    .end local v0    # "buf":[C
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "n":I
    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 5405
    .end local v6    # "reader":Ljava/io/FileReader;
    .local v2, "ex":Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_3
    const-string/jumbo v8, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5407
    if-eqz v6, :cond_1

    .line 5409
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 5410
    :catch_2
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 5402
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_3
    move-exception v1

    .line 5403
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v1    # "ex":Ljava/io/IOException;
    :goto_5
    :try_start_5
    const-string/jumbo v8, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5407
    if-eqz v6, :cond_1

    .line 5409
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 5410
    :catch_4
    move-exception v1

    goto :goto_1

    .line 5406
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 5407
    :goto_6
    if-eqz v6, :cond_3

    .line 5409
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 5406
    :cond_3
    :goto_7
    throw v8

    .line 5410
    :catch_5
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_7

    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "filename":Ljava/lang/String;
    :cond_4
    move v8, v10

    .line 5417
    goto :goto_2

    :cond_5
    move v9, v10

    .line 5418
    goto :goto_3

    .line 5406
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/FileReader;
    goto :goto_6

    .line 5402
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_6
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_5

    .line 5404
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_4
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 49
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 3035
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v29

    .line 3036
    .local v29, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v28

    .line 3037
    .local v28, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v33

    .line 3038
    .local v33, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v31

    .line 3039
    .local v31, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v24

    .line 3040
    .local v24, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    const/16 v21, 0x1

    .line 3041
    .local v21, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v16

    .line 3046
    .local v16, "canceled":Z
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "interceptKeyTi keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " down="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " repeatCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3047
    const-string/jumbo v7, " keyguardOn="

    .line 3046
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3047
    const-string/jumbo v7, " mHomePressed="

    .line 3046
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3047
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    .line 3046
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3048
    const-string/jumbo v7, " canceled="

    .line 3046
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3048
    const-string/jumbo v7, " metaState:"

    .line 3046
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    const-string/jumbo v4, "ro.mtk_hw_key_remapping"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3054
    const/16 v4, 0x18

    move/from16 v0, v28

    if-eq v0, v4, :cond_0

    .line 3055
    const/16 v4, 0x19

    move/from16 v0, v28

    if-ne v0, v4, :cond_2

    .line 3057
    :cond_0
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3040
    .end local v16    # "canceled":Z
    .end local v21    # "down":Z
    :cond_1
    const/16 v21, 0x0

    .restart local v21    # "down":Z
    goto/16 :goto_0

    .line 3064
    .restart local v16    # "canceled":Z
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v4, :cond_6

    move/from16 v0, v24

    and-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_6

    .line 3065
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v4, :cond_5

    .line 3073
    :cond_3
    const/16 v4, 0x19

    move/from16 v0, v28

    if-ne v0, v4, :cond_6

    .line 3074
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 3073
    if-eqz v4, :cond_6

    .line 3075
    if-nez v21, :cond_4

    .line 3076
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 3078
    :cond_4
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3066
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    .line 3067
    .local v34, "now":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    .line 3068
    const-wide/16 v8, 0x96

    .line 3067
    add-long v42, v6, v8

    .line 3069
    .local v42, "timeoutTime":J
    cmp-long v4, v34, v42

    if-gez v4, :cond_3

    .line 3070
    sub-long v6, v42, v34

    return-wide v6

    .line 3083
    .end local v34    # "now":J
    .end local v42    # "timeoutTime":J
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->handleShotForSuperCamera(Landroid/view/KeyEvent;)I

    move-result v4

    if-gez v4, :cond_7

    .line 3084
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "interceptKeyTi ignore key for camera shot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3090
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-nez v4, :cond_8

    .line 3091
    move/from16 v0, v24

    and-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_8

    .line 3092
    const/4 v4, 0x4

    move/from16 v0, v28

    if-ne v0, v4, :cond_8

    .line 3093
    if-eqz v21, :cond_8

    const/4 v4, 0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_8

    .line 3094
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptDismissPinningChord()V

    .line 3099
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnpinEventDetector:Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->interceptKeyBeforeDispatching(Landroid/view/KeyEvent;I)J

    move-result-wide v46

    .line 3100
    .local v46, "unpinResult":J
    const-wide/16 v6, 0x0

    cmp-long v4, v46, v6

    if-eqz v4, :cond_9

    .line 3101
    return-wide v46

    .line 3107
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v4, :cond_a

    invoke-static/range {v28 .. v28}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3115
    :cond_a
    :goto_1
    const/4 v4, 0x3

    move/from16 v0, v28

    if-ne v0, v4, :cond_21

    .line 3120
    const-string/jumbo v4, "com.lenovo.factorymode.key.KeyActivity"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->getTopActivity(Ljava/lang/String;)Z

    move-result v41

    .line 3121
    .local v41, "topActivity":Z
    if-nez v16, :cond_c

    if-eqz v41, :cond_c

    .line 3122
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Ignoring HOME; Top Activity is KeypadTestActivity."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3108
    .end local v41    # "topActivity":Z
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    goto :goto_1

    .line 3126
    .restart local v41    # "topActivity":Z
    :cond_c
    if-nez v21, :cond_15

    .line 3130
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_d

    .line 3131
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_e

    .line 3132
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 3136
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    .line 3137
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    if-eqz v4, :cond_10

    .line 3138
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    .line 3140
    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_f

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "home consumed return"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    :cond_f
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3145
    :cond_10
    if-eqz v16, :cond_11

    .line 3146
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Ignoring HOME; event canceled."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3153
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v40

    .line 3154
    .local v40, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v40, :cond_12

    invoke-virtual/range {v40 .. v40}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3155
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3160
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v4, :cond_14

    .line 3161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3162
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 3163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 3164
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v8, v7

    .line 3163
    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3167
    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_13

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "doubleTapOnHomeBehavior return"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    :cond_13
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3173
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    .line 3174
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3179
    .end local v40    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_15
    if-eqz p1, :cond_18

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 3180
    :goto_2
    if-eqz v13, :cond_1c

    .line 3181
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v44, v0

    .line 3182
    .local v44, "type":I
    const/16 v4, 0x7ed

    move/from16 v0, v44

    if-eq v0, v4, :cond_16

    .line 3183
    const/16 v4, 0x7d9

    move/from16 v0, v44

    if-ne v0, v4, :cond_19

    .line 3188
    :cond_16
    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_17

    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "keyguard  return"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    :cond_17
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3179
    .end local v44    # "type":I
    :cond_18
    const/4 v13, 0x0

    .local v13, "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_2

    .line 3184
    .end local v13    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v44    # "type":I
    :cond_19
    iget v4, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_16

    .line 3193
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v0, v4

    move/from16 v45, v0

    .line 3194
    .local v45, "typeCount":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_3
    move/from16 v0, v26

    move/from16 v1, v45

    if-ge v0, v1, :cond_1c

    .line 3195
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v4, v4, v26

    move/from16 v0, v44

    if-ne v0, v4, :cond_1b

    .line 3199
    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_1a

    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "window type return:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3202
    :cond_1a
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3194
    :cond_1b
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 3208
    .end local v26    # "i":I
    .end local v44    # "type":I
    .end local v45    # "typeCount":I
    :cond_1c
    if-nez v33, :cond_20

    .line 3209
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    .line 3210
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v4, :cond_1e

    .line 3211
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 3212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3213
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleDoubleTapOnHome()V

    .line 3223
    :cond_1d
    :goto_4
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3214
    :cond_1e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1f

    .line 3215
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1d

    .line 3216
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_4

    .line 3218
    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1d

    .line 3219
    if-nez v29, :cond_1d

    .line 3220
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->handleLongPressOnHome(I)V

    goto :goto_4

    .line 3224
    .end local v41    # "topActivity":Z
    :cond_21
    const/16 v4, 0x52

    move/from16 v0, v28

    if-ne v0, v4, :cond_22

    .line 3226
    const/16 v18, 0x1

    .line 3228
    .local v18, "chordBug":I
    if-eqz v21, :cond_2d

    if-nez v33, :cond_2d

    .line 3229
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v4, :cond_2d

    and-int/lit8 v4, v31, 0x1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2d

    .line 3230
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.BUG_REPORT"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3231
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 3232
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 3231
    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3233
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3251
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v18    # "chordBug":I
    :cond_22
    const/16 v4, 0x54

    move/from16 v0, v28

    if-ne v0, v4, :cond_25

    .line 3252
    if-eqz v21, :cond_24

    .line 3253
    if-nez v33, :cond_23

    .line 3254
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3255
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3264
    :cond_23
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3258
    :cond_24
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3259
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v4, :cond_23

    .line 3260
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3261
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3265
    :cond_25
    const/16 v4, 0xbb

    move/from16 v0, v28

    if-ne v0, v4, :cond_2c

    .line 3268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_26

    .line 3269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    .line 3270
    .local v25, "focusWindowComponent":Ljava/lang/String;
    const-string/jumbo v4, "com.lenovo.factorymode.key.KeyActivity"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3271
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring HOME; Top Activity is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3277
    .end local v25    # "focusWindowComponent":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_27

    .line 3278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    .line 3279
    .restart local v25    # "focusWindowComponent":Ljava/lang/String;
    const-string/jumbo v4, "com.lenovo.activityo.QCTestActivity"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 3280
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring HOME; Top Activity is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3281
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3295
    .end local v25    # "focusWindowComponent":Ljava/lang/String;
    :cond_27
    if-eqz v21, :cond_29

    .line 3296
    if-nez v33, :cond_28

    .line 3297
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPress:Z

    .line 3298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyRemappingAppSwitchDownLongPress:Ljava/lang/Runnable;

    .line 3299
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v7

    int-to-long v8, v7

    .line 3298
    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3300
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    .line 3323
    :cond_28
    :goto_5
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3304
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyRemappingAppSwitchDownLongPress:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3306
    if-eqz v16, :cond_2a

    .line 3307
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPress:Z

    .line 3308
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 3309
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3312
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPress:Z

    if-nez v4, :cond_2b

    .line 3313
    if-nez v29, :cond_2b

    .line 3314
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 3315
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3319
    :cond_2b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppSwitchLongPress:Z

    .line 3320
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    goto :goto_5

    .line 3324
    :cond_2c
    const/16 v4, 0x2a

    move/from16 v0, v28

    if-ne v0, v4, :cond_2f

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 3325
    if-eqz v21, :cond_2d

    .line 3326
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v36

    .line 3327
    .local v36, "service":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v36, :cond_2d

    .line 3329
    :try_start_0
    invoke-interface/range {v36 .. v36}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3430
    .end local v36    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2d
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v4, :cond_43

    .line 3431
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v27

    .line 3432
    .local v27, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v27 .. v28}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 3433
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 3434
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 3435
    if-eqz v21, :cond_2e

    if-nez v33, :cond_2e

    if-eqz v29, :cond_41

    .line 3451
    :cond_2e
    :goto_7
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3330
    .end local v27    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v36    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v22

    .local v22, "e":Landroid/os/RemoteException;
    goto :goto_6

    .line 3335
    .end local v22    # "e":Landroid/os/RemoteException;
    .end local v36    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2f
    const/16 v4, 0xdb

    move/from16 v0, v28

    if-ne v0, v4, :cond_34

    .line 3336
    if-eqz v21, :cond_32

    .line 3337
    if-nez v33, :cond_31

    .line 3338
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 3354
    :cond_30
    :goto_8
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3339
    :cond_31
    const/4 v4, 0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_30

    .line 3340
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 3341
    if-nez v29, :cond_30

    .line 3342
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_8

    .line 3346
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    if-eqz v4, :cond_33

    .line 3347
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto :goto_8

    .line 3349
    :cond_33
    if-nez v29, :cond_30

    .line 3350
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_8

    .line 3355
    :cond_34
    const/16 v4, 0xe7

    move/from16 v0, v28

    if-ne v0, v4, :cond_37

    .line 3356
    if-nez v21, :cond_2d

    .line 3358
    if-nez v29, :cond_35

    .line 3359
    new-instance v48, Landroid/content/Intent;

    const-string/jumbo v4, "android.speech.action.WEB_SEARCH"

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3372
    .local v48, "voiceIntent":Landroid/content/Intent;
    :goto_9
    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_6

    .line 3362
    .end local v48    # "voiceIntent":Landroid/content/Intent;
    :cond_35
    const-string/jumbo v4, "deviceidle"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 3361
    invoke-static {v4}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v19

    .line 3363
    .local v19, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v19, :cond_36

    .line 3365
    :try_start_1
    const-string/jumbo v4, "voice-search"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 3369
    :cond_36
    :goto_a
    new-instance v48, Landroid/content/Intent;

    const-string/jumbo v4, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3370
    .restart local v48    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.speech.extras.EXTRA_SECURE"

    const/4 v6, 0x1

    move-object/from16 v0, v48

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_9

    .line 3374
    .end local v19    # "dic":Landroid/os/IDeviceIdleController;
    .end local v48    # "voiceIntent":Landroid/content/Intent;
    :cond_37
    const/16 v4, 0x78

    move/from16 v0, v28

    if-ne v0, v4, :cond_39

    .line 3375
    if-eqz v21, :cond_38

    if-nez v33, :cond_38

    .line 3376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3378
    :cond_38
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3379
    :cond_39
    const/16 v4, 0xdd

    move/from16 v0, v28

    if-eq v0, v4, :cond_3a

    .line 3380
    const/16 v4, 0xdc

    move/from16 v0, v28

    if-ne v0, v4, :cond_3e

    .line 3381
    :cond_3a
    if-eqz v21, :cond_3c

    .line 3382
    const/16 v4, 0xdd

    move/from16 v0, v28

    if-ne v0, v4, :cond_3d

    const/16 v20, 0x1

    .line 3386
    .local v20, "direction":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3387
    const-string/jumbo v6, "screen_brightness_mode"

    .line 3388
    const/4 v7, 0x0

    .line 3389
    const/4 v8, -0x3

    .line 3385
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 3390
    .local v14, "auto":I
    if-eqz v14, :cond_3b

    .line 3391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3392
    const-string/jumbo v6, "screen_brightness_mode"

    .line 3393
    const/4 v7, 0x0

    .line 3394
    const/4 v8, -0x3

    .line 3391
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3397
    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v32

    .line 3398
    .local v32, "min":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v30

    .line 3399
    .local v30, "max":I
    sub-int v4, v30, v32

    add-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0xa

    mul-int v39, v4, v20

    .line 3400
    .local v39, "step":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3401
    const-string/jumbo v6, "screen_brightness"

    .line 3402
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v7

    .line 3403
    const/4 v8, -0x3

    .line 3400
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 3404
    .local v15, "brightness":I
    add-int v15, v15, v39

    .line 3406
    move/from16 v0, v30

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 3407
    move/from16 v0, v32

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 3409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3410
    const-string/jumbo v6, "screen_brightness"

    .line 3411
    const/4 v7, -0x3

    .line 3409
    invoke-static {v4, v6, v15, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3412
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3413
    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 3412
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3415
    .end local v14    # "auto":I
    .end local v15    # "brightness":I
    .end local v20    # "direction":I
    .end local v30    # "max":I
    .end local v32    # "min":I
    .end local v39    # "step":I
    :cond_3c
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3382
    :cond_3d
    const/16 v20, -0x1

    .restart local v20    # "direction":I
    goto/16 :goto_b

    .line 3416
    .end local v20    # "direction":I
    :cond_3e
    invoke-static/range {v28 .. v28}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 3417
    if-eqz v21, :cond_40

    .line 3418
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 3422
    :cond_3f
    :goto_c
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3419
    :cond_40
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v4, :cond_3f

    .line 3420
    const-string/jumbo v4, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_c

    .line 3436
    .restart local v27    # "kcm":Landroid/view/KeyCharacterMap;
    :cond_41
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v31

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v38

    .line 3437
    .local v38, "shortcutIntent":Landroid/content/Intent;
    if-eqz v38, :cond_42

    .line 3438
    const/high16 v4, 0x10000000

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3440
    :try_start_2
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    .line 3441
    :catch_1
    move-exception v23

    .line 3442
    .local v23, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3444
    invoke-static/range {v28 .. v28}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    .line 3442
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 3447
    .end local v23    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_42
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3448
    invoke-static/range {v28 .. v28}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    .line 3447
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3456
    .end local v27    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v38    # "shortcutIntent":Landroid/content/Intent;
    :cond_43
    if-eqz v21, :cond_44

    if-nez v33, :cond_44

    if-eqz v29, :cond_48

    .line 3478
    :cond_44
    if-eqz v21, :cond_45

    if-nez v33, :cond_45

    if-eqz v29, :cond_49

    .line 3495
    :cond_45
    if-eqz v21, :cond_4b

    if-nez v33, :cond_4b

    const/16 v4, 0x3d

    move/from16 v0, v28

    if-ne v0, v4, :cond_4b

    .line 3496
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-nez v4, :cond_46

    if-eqz v29, :cond_4a

    .line 3511
    :cond_46
    :goto_d
    if-eqz v21, :cond_4d

    if-nez v33, :cond_4d

    .line 3512
    const/16 v4, 0xcc

    move/from16 v0, v28

    if-eq v0, v4, :cond_47

    .line 3513
    const/16 v4, 0x3e

    move/from16 v0, v28

    if-ne v0, v4, :cond_4d

    .line 3514
    move/from16 v0, v31

    and-int/lit16 v4, v0, 0x7000

    if-eqz v4, :cond_4d

    .line 3515
    :cond_47
    move/from16 v0, v31

    and-int/lit16 v4, v0, 0xc1

    if-eqz v4, :cond_4c

    const/16 v20, -0x1

    .line 3516
    .restart local v20    # "direction":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    move/from16 v0, v20

    invoke-interface {v4, v6, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 3517
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3457
    .end local v20    # "direction":I
    :cond_48
    const/high16 v4, 0x10000

    and-int v4, v4, v31

    if-eqz v4, :cond_44

    .line 3458
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v27

    .line 3459
    .restart local v27    # "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v27 .. v28}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 3460
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    .line 3461
    const v6, -0x70001

    and-int v6, v6, v31

    .line 3460
    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v38

    .line 3463
    .restart local v38    # "shortcutIntent":Landroid/content/Intent;
    if-eqz v38, :cond_44

    .line 3464
    const/high16 v4, 0x10000000

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3466
    :try_start_3
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3472
    :goto_f
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3467
    :catch_2
    move-exception v23

    .line 3468
    .restart local v23    # "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3470
    invoke-static/range {v28 .. v28}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    .line 3468
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 3479
    .end local v23    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v27    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v38    # "shortcutIntent":Landroid/content/Intent;
    :cond_49
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 3480
    .local v17, "category":Ljava/lang/String;
    if-eqz v17, :cond_45

    .line 3481
    const-string/jumbo v4, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 3482
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3484
    :try_start_4
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3490
    :goto_10
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3485
    :catch_3
    move-exception v23

    .line 3486
    .restart local v23    # "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3488
    const-string/jumbo v7, ", category="

    .line 3486
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 3496
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v17    # "category":Ljava/lang/String;
    .end local v23    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 3497
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v4

    and-int/lit16 v0, v4, -0xc2

    move/from16 v37, v0

    .line 3498
    .local v37, "shiftlessModifiers":I
    const/4 v4, 0x2

    move/from16 v0, v37

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 3499
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 3500
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    .line 3501
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3504
    .end local v37    # "shiftlessModifiers":I
    :cond_4b
    if-nez v21, :cond_46

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-eqz v4, :cond_46

    .line 3505
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    and-int v4, v4, v31

    if-nez v4, :cond_46

    .line 3506
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 3507
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    goto/16 :goto_d

    .line 3515
    :cond_4c
    const/16 v20, 0x1

    .restart local v20    # "direction":I
    goto/16 :goto_e

    .line 3519
    .end local v20    # "direction":I
    :cond_4d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v4, :cond_4e

    if-eqz v21, :cond_4f

    .line 3526
    :cond_4e
    invoke-static/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 3527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move/from16 v0, v28

    move-object/from16 v1, p2

    invoke-virtual {v4, v6, v0, v1}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v4

    .line 3526
    if-eqz v4, :cond_51

    .line 3528
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3520
    :cond_4f
    const/16 v4, 0xcc

    move/from16 v0, v28

    if-eq v0, v4, :cond_50

    .line 3521
    const/16 v4, 0x3e

    move/from16 v0, v28

    if-ne v0, v4, :cond_4e

    .line 3522
    :cond_50
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 3523
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3532
    :cond_51
    const/high16 v4, 0x10000

    and-int v4, v4, v31

    if-eqz v4, :cond_52

    .line 3533
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3537
    :cond_52
    const-wide/16 v6, 0x0

    return-wide v6

    .line 3366
    .restart local v19    # "dic":Landroid/os/IDeviceIdleController;
    :catch_4
    move-exception v22

    .restart local v22    # "e":Landroid/os/RemoteException;
    goto/16 :goto_a
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 24
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 5496
    const-string/jumbo v19, "WindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "interceptKeyTq "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5497
    const-string/jumbo v21, " policyFlags="

    .line 5496
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5497
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    .line 5496
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5498
    const-string/jumbo v21, " mSystemBooted ="

    .line 5496
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5498
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v21, v0

    .line 5496
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5498
    const-string/jumbo v21, " mIsAlarmBoot = "

    .line 5496
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5498
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsAlarmBoot:Z

    move/from16 v21, v0

    .line 5496
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5502
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 5504
    const/16 v19, 0x0

    return v19

    .line 5508
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v19

    const/16 v20, 0x1a

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsAlarmBoot:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 5509
    const/16 v19, 0x0

    return v19

    .line 5514
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyDispatchLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 5515
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyDispatcMode:I

    move/from16 v20, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v21, 0x1

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 5516
    const/16 v20, 0x0

    monitor-exit v19

    return v20

    :cond_2
    monitor-exit v19

    .line 5520
    const/high16 v19, 0x20000000

    and-int v19, v19, p2

    if-eqz v19, :cond_6

    const/4 v10, 0x1

    .line 5521
    .local v10, "interactive":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v19

    if-nez v19, :cond_7

    const/4 v8, 0x1

    .line 5522
    .local v8, "down":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .line 5523
    .local v6, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    .line 5525
    .local v13, "keyCode":I
    const/high16 v19, 0x1000000

    and-int v19, v19, p2

    if-eqz v19, :cond_8

    const/4 v11, 0x1

    .line 5531
    .local v11, "isInjected":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move-object/from16 v19, v0

    if-nez v19, :cond_9

    const/4 v14, 0x0

    .line 5544
    :goto_3
    and-int/lit8 v19, p2, 0x1

    if-nez v19, :cond_b

    .line 5545
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v12

    .line 5546
    :goto_4
    if-nez v10, :cond_c

    if-eqz v11, :cond_3

    if-eqz v12, :cond_c

    .line 5551
    :cond_3
    if-nez v10, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 5556
    const/16 v16, 0x1

    .line 5568
    .local v16, "result":I
    :cond_4
    :goto_5
    invoke-static {v13}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 5569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v19

    .line 5568
    if-eqz v19, :cond_f

    .line 5570
    if-eqz v12, :cond_5

    .line 5571
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    move/from16 v19, v0

    const-string/jumbo v22, "android.policy:KEY"

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v19

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 5573
    :cond_5
    return v16

    .line 5514
    .end local v6    # "canceled":Z
    .end local v8    # "down":Z
    .end local v10    # "interactive":Z
    .end local v11    # "isInjected":Z
    .end local v13    # "keyCode":I
    .end local v16    # "result":I
    :catchall_0
    move-exception v20

    monitor-exit v19

    throw v20

    .line 5520
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "interactive":Z
    goto :goto_0

    .line 5521
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "down":Z
    goto :goto_1

    .line 5525
    .restart local v6    # "canceled":Z
    .restart local v13    # "keyCode":I
    :cond_8
    const/4 v11, 0x0

    .restart local v11    # "isInjected":Z
    goto :goto_2

    .line 5532
    :cond_9
    if-eqz v10, :cond_a

    .line 5533
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v14

    .local v14, "keyguardActive":Z
    goto :goto_3

    .line 5534
    .end local v14    # "keyguardActive":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v14

    .restart local v14    # "keyguardActive":Z
    goto :goto_3

    .line 5544
    .end local v14    # "keyguardActive":Z
    :cond_b
    const/4 v12, 0x1

    .local v12, "isWakeKey":Z
    goto :goto_4

    .line 5549
    .end local v12    # "isWakeKey":Z
    :cond_c
    const/16 v16, 0x1

    .line 5550
    .restart local v16    # "result":I
    const/4 v12, 0x0

    .line 5546
    .restart local v12    # "isWakeKey":Z
    goto :goto_5

    .line 5560
    .end local v12    # "isWakeKey":Z
    .end local v16    # "result":I
    :cond_d
    const/16 v16, 0x0

    .line 5561
    .restart local v16    # "result":I
    if-eqz v12, :cond_4

    if-eqz v8, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v19

    if-nez v19, :cond_4

    .line 5562
    :cond_e
    const/4 v12, 0x0

    .restart local v12    # "isWakeKey":Z
    goto :goto_5

    .line 5576
    .end local v12    # "isWakeKey":Z
    :cond_f
    if-eqz v8, :cond_15

    .line 5577
    and-int/lit8 v19, p2, 0x2

    if-eqz v19, :cond_15

    .line 5578
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v19

    if-nez v19, :cond_14

    const/16 v18, 0x1

    .line 5581
    .local v18, "useHapticFeedback":Z
    :goto_6
    sget-boolean v19, Lcom/android/server/policy/PhoneWindowManager;->IS_USER_BUILD:Z

    if-nez v19, :cond_10

    .line 5582
    const-string/jumbo v19, "WindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "interceptKeyTq keycode="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5583
    const-string/jumbo v21, " interactive="

    .line 5582
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5583
    const-string/jumbo v21, " keyguardActive="

    .line 5582
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5584
    const-string/jumbo v21, " policyFlags="

    .line 5582
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5584
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    .line 5582
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5585
    const-string/jumbo v21, " down ="

    .line 5582
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5585
    const-string/jumbo v21, " canceled = "

    .line 5582
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5586
    const-string/jumbo v21, " isWakeKey="

    .line 5582
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5587
    const-string/jumbo v21, " mVolumeDownKeyTriggered ="

    .line 5582
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5587
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    move/from16 v21, v0

    .line 5582
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5588
    const-string/jumbo v21, " mVolumeUpKeyTriggered ="

    .line 5582
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5588
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    move/from16 v21, v0

    .line 5582
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5589
    const-string/jumbo v21, " result = "

    .line 5582
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5590
    const-string/jumbo v21, " useHapticFeedback = "

    .line 5582
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5591
    const-string/jumbo v21, " isInjected = "

    .line 5582
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5596
    :cond_10
    const-string/jumbo v19, "WindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "interceptKeyTq  keyguardActive="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5598
    const-string/jumbo v21, " isWakeKey ="

    .line 5596
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 5598
    const-string/jumbo v21, " isInjected = "

    .line 5596
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5603
    sparse-switch v13, :sswitch_data_0

    .line 5924
    :cond_11
    :goto_7
    if-eqz v18, :cond_12

    .line 5925
    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 5928
    :cond_12
    if-eqz v12, :cond_13

    .line 5929
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    move/from16 v19, v0

    const-string/jumbo v22, "android.policy:KEY"

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v19

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 5932
    :cond_13
    return v16

    .line 5578
    .end local v18    # "useHapticFeedback":Z
    :cond_14
    const/16 v18, 0x0

    .restart local v18    # "useHapticFeedback":Z
    goto/16 :goto_6

    .line 5576
    .end local v18    # "useHapticFeedback":Z
    :cond_15
    const/16 v18, 0x0

    .restart local v18    # "useHapticFeedback":Z
    goto/16 :goto_6

    .line 5607
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    move/from16 v19, v0

    if-eqz v19, :cond_16

    .line 5609
    and-int/lit8 v16, v16, -0x2

    .line 5611
    :cond_16
    const/16 v19, 0x19

    move/from16 v0, v19

    if-ne v13, v0, :cond_1b

    .line 5612
    if-eqz v8, :cond_1a

    .line 5613
    if-eqz v10, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    move/from16 v19, v0

    if-eqz v19, :cond_19

    .line 5643
    :cond_17
    :goto_8
    if-eqz v8, :cond_27

    .line 5646
    const-string/jumbo v19, "sisley2OFPL"

    const-string/jumbo v20, "ro.build.product"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_18

    .line 5647
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v19

    if-nez v19, :cond_18

    .line 5648
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isSnapshotEnable()Z

    move-result v19

    .line 5646
    if-eqz v19, :cond_18

    .line 5649
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isProperToSnapshot()Z

    move-result v19

    .line 5646
    if-eqz v19, :cond_18

    .line 5650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    .line 5651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->triggerSnapshot(I)V

    .line 5654
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v17

    .line 5655
    .local v17, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v17, :cond_1f

    .line 5656
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 5663
    const-string/jumbo v19, "WindowManager"

    const-string/jumbo v20, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5668
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 5672
    and-int/lit8 v16, v16, -0x2

    .line 5673
    goto/16 :goto_7

    .line 5614
    .end local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-nez v19, :cond_17

    .line 5615
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 5616
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    .line 5617
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 5618
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 5619
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    goto :goto_8

    .line 5622
    :cond_1a
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 5623
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto/16 :goto_8

    .line 5625
    :cond_1b
    const/16 v19, 0x18

    move/from16 v0, v19

    if-ne v13, v0, :cond_17

    .line 5627
    sget-boolean v19, Lcom/android/server/policy/PhoneWindowManager;->IS_USER_BUILD:Z

    if-nez v19, :cond_1c

    .line 5628
    const-string/jumbo v19, "persist.sys.anr_sys_key"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 5627
    if-eqz v19, :cond_1c

    .line 5629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyRemappingVolumeDownLongPress_Test:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5631
    :cond_1c
    if-eqz v8, :cond_1d

    .line 5632
    if-eqz v10, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    move/from16 v19, v0

    if-nez v19, :cond_17

    .line 5633
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    if-nez v19, :cond_17

    .line 5634
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 5635
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 5636
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto/16 :goto_8

    .line 5639
    :cond_1d
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 5640
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto/16 :goto_8

    .line 5675
    .restart local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1e
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 5676
    and-int/lit8 v19, v16, 0x1

    if-nez v19, :cond_1f

    .line 5680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v19

    .line 5681
    const/16 v20, 0x0

    .line 5680
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_7

    .line 5687
    :cond_1f
    and-int/lit8 v19, v16, 0x1

    if-nez v19, :cond_20

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isProperToSnapshot()Z

    move-result v19

    if-eqz v19, :cond_22

    .line 5702
    :cond_20
    const-string/jumbo v19, "sisley2OFPL"

    const-string/jumbo v20, "ro.build.product"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v19

    if-nez v19, :cond_11

    .line 5703
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeKeyFuncation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 5704
    const/16 v19, 0x19

    move/from16 v0, v19

    if-eq v13, v0, :cond_21

    .line 5705
    const/16 v19, 0x18

    move/from16 v0, v19

    if-ne v13, v0, :cond_11

    .line 5706
    :cond_21
    const/16 v19, 0x18

    move/from16 v0, v19

    if-ne v13, v0, :cond_25

    .line 5707
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpFastCamera:Z

    move/from16 v19, v0

    if-nez v19, :cond_24

    .line 5708
    const-string/jumbo v19, "LenovoShot"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "mScreenOnFully: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " ,Volume key snapshot. keycode= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5709
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    move/from16 v19, v0

    if-nez v19, :cond_11

    .line 5710
    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startCameraService(IIZ)V

    .line 5711
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpFastCamera:Z

    .line 5712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mVUpFastCamera:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x1f4

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_7

    .line 5689
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    move/from16 v19, v0

    if-eqz v19, :cond_23

    .line 5690
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_7

    .line 5695
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v19

    .line 5696
    const/16 v20, 0x1

    .line 5695
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_7

    .line 5714
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpFastCamera:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11

    .line 5715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mVUpFastCamera:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5716
    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startCameraService(IIZ)V

    .line 5717
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpFastCamera:Z

    .line 5718
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolumeKeyFastCameraDownFlag:Z

    .line 5719
    and-int/lit8 v16, v16, -0x2

    .line 5720
    goto/16 :goto_7

    .line 5722
    :cond_25
    const/16 v19, 0x19

    move/from16 v0, v19

    if-ne v13, v0, :cond_11

    .line 5723
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownFastCamera:Z

    move/from16 v19, v0

    if-nez v19, :cond_26

    .line 5724
    const-string/jumbo v19, "LenovoShot"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "mScreenOnFully: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " ,Volume key snapshot. keycode= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5725
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    move/from16 v19, v0

    if-nez v19, :cond_11

    .line 5726
    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startCameraService(IIZ)V

    .line 5727
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownFastCamera:Z

    .line 5728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mVDownFastCamera:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x1f4

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_7

    .line 5730
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownFastCamera:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11

    .line 5731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mVDownFastCamera:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5732
    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v13, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startCameraService(IIZ)V

    .line 5733
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownFastCamera:Z

    .line 5734
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolumeKeyFastCameraDownFlag:Z

    .line 5735
    and-int/lit8 v16, v16, -0x2

    .line 5736
    goto/16 :goto_7

    .line 5745
    .end local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    .line 5746
    .local v7, "deviceName":Ljava/lang/String;
    if-eqz v7, :cond_28

    const-string/jumbo v19, "ACCDET"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_28

    .line 5747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v19

    .line 5748
    const/16 v20, 0x1

    .line 5747
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 5751
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeKeyFastCameraDownFlag:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11

    .line 5752
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVolumeKeyFastCameraDownFlag:Z

    .line 5753
    and-int/lit8 v16, v16, -0x2

    .line 5754
    goto/16 :goto_7

    .line 5763
    .end local v7    # "deviceName":Ljava/lang/String;
    :sswitch_1
    and-int/lit8 v16, v16, -0x2

    .line 5764
    if-eqz v8, :cond_2c

    .line 5765
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v17

    .line 5766
    .restart local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v9, 0x0

    .line 5767
    .local v9, "hungUp":Z
    if-eqz v17, :cond_29

    .line 5768
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v9

    .line 5770
    .end local v9    # "hungUp":Z
    :cond_29
    if-eqz v10, :cond_2a

    if-eqz v9, :cond_2b

    .line 5775
    :cond_2a
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    goto/16 :goto_7

    .line 5771
    :cond_2b
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 5772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    .line 5773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v22

    .line 5772
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_7

    .line 5778
    .end local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    move/from16 v19, v0

    if-nez v19, :cond_11

    .line 5779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5780
    if-nez v6, :cond_11

    .line 5781
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_2d

    .line 5783
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    move-result v19

    if-nez v19, :cond_11

    .line 5787
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_11

    .line 5789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v20

    .line 5790
    const/16 v22, 0x4

    const/16 v23, 0x0

    .line 5789
    invoke-virtual/range {v19 .. v23}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 5791
    const/4 v12, 0x0

    .restart local v12    # "isWakeKey":Z
    goto/16 :goto_7

    .line 5800
    .end local v12    # "isWakeKey":Z
    :sswitch_2
    and-int/lit8 v16, v16, -0x2

    .line 5801
    const/4 v12, 0x0

    .line 5802
    .restart local v12    # "isWakeKey":Z
    if-eqz v8, :cond_2e

    .line 5803
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_7

    .line 5805
    :cond_2e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v6}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_7

    .line 5811
    .end local v12    # "isWakeKey":Z
    :sswitch_3
    and-int/lit8 v16, v16, -0x2

    .line 5812
    const/4 v12, 0x0

    .line 5813
    .restart local v12    # "isWakeKey":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v19

    if-nez v19, :cond_2f

    .line 5814
    const/16 v18, 0x0

    .line 5816
    :cond_2f
    if-eqz v8, :cond_30

    .line 5817
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress(J)V

    goto/16 :goto_7

    .line 5819
    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    goto/16 :goto_7

    .line 5825
    .end local v12    # "isWakeKey":Z
    :sswitch_4
    and-int/lit8 v16, v16, -0x2

    .line 5826
    const/4 v12, 0x1

    .line 5827
    .restart local v12    # "isWakeKey":Z
    goto/16 :goto_7

    .line 5842
    .end local v12    # "isWakeKey":Z
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    move-result v19

    if-eqz v19, :cond_31

    .line 5845
    and-int/lit8 v16, v16, -0x2

    .line 5847
    :cond_31
    and-int/lit8 v19, v16, 0x1

    if-nez v19, :cond_11

    .line 5853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    .line 5855
    new-instance v20, Landroid/view/KeyEvent;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 5854
    const/16 v21, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 5856
    .local v15, "msg":Landroid/os/Message;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5857
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7

    .line 5863
    .end local v15    # "msg":Landroid/os/Message;
    :sswitch_6
    if-eqz v8, :cond_11

    .line 5864
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v17

    .line 5865
    .restart local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v17, :cond_11

    .line 5866
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v19

    if-eqz v19, :cond_11

    .line 5867
    const-string/jumbo v19, "WindowManager"

    const-string/jumbo v20, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5869
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 5873
    and-int/lit8 v16, v16, -0x2

    goto/16 :goto_7

    .line 5882
    .end local v17    # "telecomManager":Landroid/telecom/TelecomManager;
    :sswitch_7
    and-int/lit8 v16, v16, -0x2

    .line 5883
    const/16 v18, 0x0

    .line 5885
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->phoneIsInUse()Z

    move-result v19

    if-eqz v19, :cond_32

    .line 5886
    const-string/jumbo v19, "WindowManager"

    const-string/jumbo v20, "phoneIsInUse !ignore KEYCODE_SLIDE."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 5890
    :cond_32
    if-eqz v8, :cond_11

    .line 5891
    const-string/jumbo v19, "WindowManager"

    const-string/jumbo v20, "LenovoGesture keycode == KEYCODE_SLIDE."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    .line 5894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->isReady()Z

    move-result v19

    .line 5893
    if-eqz v19, :cond_11

    .line 5895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->showGestureUnlockScreen()V

    goto/16 :goto_7

    .line 5905
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnpinEventDetector:Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager$UnpinEventDetector;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)V

    goto/16 :goto_7

    .line 5914
    :sswitch_9
    and-int/lit8 v19, v16, 0x1

    if-nez v19, :cond_11

    if-nez v8, :cond_11

    .line 5915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    .line 5917
    if-eqz v14, :cond_33

    const/16 v19, 0x1

    .line 5916
    :goto_9
    const/16 v21, 0xc

    .line 5917
    const/16 v22, 0x0

    .line 5916
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v15

    .line 5918
    .restart local v15    # "msg":Landroid/os/Message;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5919
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7

    .line 5917
    .end local v15    # "msg":Landroid/os/Message;
    :cond_33
    const/16 v19, 0x0

    goto :goto_9

    .line 5603
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_8
        0x5 -> :sswitch_6
        0x6 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_2
        0x4f -> :sswitch_5
        0x55 -> :sswitch_5
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_5
        0x7e -> :sswitch_5
        0x7f -> :sswitch_5
        0x82 -> :sswitch_5
        0xa4 -> :sswitch_0
        0xde -> :sswitch_5
        0xdf -> :sswitch_3
        0xe0 -> :sswitch_4
        0xe7 -> :sswitch_9
        0x115 -> :sswitch_7
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 9
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .prologue
    const-wide/32 v6, 0xf4240

    const/4 v4, 0x0

    .line 5989
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 5990
    div-long v0, p1, v6

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    .line 5991
    const-string/jumbo v3, "android.policy:MOTION"

    .line 5990
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5992
    return v4

    .line 5996
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5997
    const/4 v0, 0x1

    return v0

    .line 6003
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    .line 6004
    div-long v0, p1, v6

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    .line 6005
    const-string/jumbo v3, "android.policy:MOTION"

    .line 6004
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 6008
    :cond_2
    return v4
.end method

.method public isDefaultOrientationForced()Z
    .locals 1

    .prologue
    .line 1965
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    return v0
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1389
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    .line 1388
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2534
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_1

    .line 2536
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    .line 2534
    if-nez v2, :cond_1

    .line 2537
    :cond_0
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7ed

    if-ne v2, v3, :cond_2

    .line 2534
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 2537
    goto :goto_0
.end method

.method public isKeyguardDrawnLw()Z
    .locals 2

    .prologue
    .line 6570
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6571
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 6570
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2542
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 6520
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 6526
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 6527
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowingOrOccluded()Z
    .locals 1

    .prologue
    .line 6533
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method isMusicActive()Z
    .locals 3

    .prologue
    .line 8283
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 8284
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 8285
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8286
    const/4 v1, 0x0

    return v1

    .line 8288
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActiveRemotely()Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 6493
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    return v0
.end method

.method public isSystemInSingleHandMode()Z
    .locals 1

    .prologue
    .line 9040
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mGshModeEntered:Z

    return v0
.end method

.method public isTopLevelWindow(I)Z
    .locals 2
    .param p1, "windowType"    # I

    .prologue
    const/4 v0, 0x1

    .line 7687
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_1

    .line 7688
    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_1

    .line 7689
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 7691
    :cond_1
    return v0
.end method

.method isUserSetupComplete()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1393
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1394
    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    .line 1393
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public keepScreenOnStartedLw()V
    .locals 0

    .prologue
    .line 7389
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .locals 4

    .prologue
    .line 7394
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7395
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 7393
    :cond_0
    return-void
.end method

.method keyguardOn()Z
    .locals 1

    .prologue
    .line 2952
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method launchHomeFromHotKey()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 3829
    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    .line 3828
    return-void
.end method

.method launchHomeFromHotKey(ZZ)V
    .locals 5
    .param p1, "awakenFromDreams"    # Z
    .param p2, "respectKeyguard"    # Z

    .prologue
    const/4 v4, 0x1

    .line 3839
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3840
    .local v0, "app":Landroid/app/Application;
    if-eqz v0, :cond_0

    .line 3841
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/keyguard/KeyguardCoverAppUtils;->isCoverAppLock(Landroid/content/Context;)Z

    move-result v2

    .line 3840
    if-eqz v2, :cond_0

    .line 3842
    return-void

    .line 3847
    :cond_0
    if-eqz p2, :cond_2

    .line 3848
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3850
    return-void

    .line 3853
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3856
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$30;

    invoke-direct {v3, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$30;-><init>(Lcom/android/server/policy/PhoneWindowManager;Z)V

    invoke-virtual {v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 3869
    return-void

    .line 3875
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3878
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    if-eqz v2, :cond_5

    .line 3880
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "launchHomeFromHotKey hide recentapps"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3884
    :cond_3
    if-eqz p1, :cond_4

    .line 3885
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 3887
    :cond_4
    const-string/jumbo v2, "homekey"

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3888
    const/4 v2, 0x0

    invoke-direct {p0, v2, v4}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    .line 3836
    :goto_1
    return-void

    .line 3892
    :cond_5
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "launchHomeFromHotKey show recentapps"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3896
    :cond_6
    const-string/jumbo v2, "homekey"

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3897
    invoke-virtual {p0, v4, p1}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(ZZ)V

    goto :goto_1

    .line 3876
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method launchVoiceAssistWithWakeLock(Z)V
    .locals 4
    .param p1, "keyguardActive"    # Z

    .prologue
    .line 6127
    const-string/jumbo v3, "deviceidle"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 6126
    invoke-static {v3}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    .line 6128
    .local v0, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v0, :cond_0

    .line 6130
    :try_start_0
    const-string/jumbo v3, "voice-search"

    invoke-interface {v0, v3}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6135
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6136
    .local v2, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.speech.extras.EXTRA_SECURE"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6137
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6138
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6125
    return-void

    .line 6131
    .end local v2    # "voiceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 30
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 4437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 4438
    :cond_1
    return-void

    .line 4440
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 4441
    .local v16, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v20

    .line 4442
    .local v20, "isDefaultDisplay":Z
    if-eqz v20, :cond_c

    .line 4443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_b

    const/16 v21, 0x1

    .line 4444
    .local v21, "needsToOffsetInputMethodTarget":Z
    :goto_0
    if-eqz v21, :cond_4

    .line 4445
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "Offset ime target window by the last ime window state"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4446
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 4449
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    .line 4450
    .local v4, "fl":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v24, v0

    .line 4451
    .local v24, "sim":I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v25

    .line 4453
    .local v25, "sysUiFl":I
    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 4454
    .local v8, "pf":Landroid/graphics/Rect;
    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 4455
    .local v9, "df":Landroid/graphics/Rect;
    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 4456
    .local v10, "of":Landroid/graphics/Rect;
    sget-object v11, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 4457
    .local v11, "cf":Landroid/graphics/Rect;
    sget-object v12, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 4458
    .local v12, "vf":Landroid/graphics/Rect;
    sget-object v13, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 4459
    .local v13, "dcf":Landroid/graphics/Rect;
    sget-object v14, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    .line 4460
    .local v14, "sf":Landroid/graphics/Rect;
    const/4 v15, 0x0

    .line 4461
    .local v15, "osf":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 4463
    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v2, :cond_d

    .line 4464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v17

    .line 4466
    :goto_1
    move/from16 v0, v24

    and-int/lit16 v5, v0, 0xf0

    .line 4468
    .local v5, "adjust":I
    if-eqz v20, :cond_e

    .line 4469
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {v14, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4474
    :goto_2
    if-nez v20, :cond_10

    .line 4475
    if-eqz p2, :cond_f

    .line 4478
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4849
    :goto_3
    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_5

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7da

    if-eq v2, v3, :cond_5

    .line 4850
    const/16 v2, -0x2710

    iput v2, v9, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 4851
    const/16 v2, 0x2710

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 4852
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-eq v2, v3, :cond_5

    .line 4853
    const/16 v2, -0x2710

    iput v2, v12, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v12, Landroid/graphics/Rect;->left:I

    const/16 v2, -0x2710

    iput v2, v11, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v11, Landroid/graphics/Rect;->left:I

    const/16 v2, -0x2710

    iput v2, v10, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 4854
    const/16 v2, 0x2710

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v12, Landroid/graphics/Rect;->right:I

    const/16 v2, 0x2710

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v11, Landroid/graphics/Rect;->right:I

    const/16 v2, 0x2710

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 4862
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v27

    .line 4863
    .local v27, "useOutsets":Z
    if-eqz v20, :cond_7

    if-eqz v27, :cond_7

    .line 4864
    sget-object v15, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    .line 4865
    .local v15, "osf":Landroid/graphics/Rect;
    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->top:I

    iget v6, v11, Landroid/graphics/Rect;->right:I

    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v15, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    move-result v22

    .line 4867
    .local v22, "outset":I
    if-lez v22, :cond_7

    .line 4868
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    move/from16 v23, v0

    .line 4869
    .local v23, "rotation":I
    if-nez v23, :cond_4a

    .line 4870
    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    add-int v2, v2, v22

    iput v2, v15, Landroid/graphics/Rect;->bottom:I

    .line 4878
    :cond_6
    :goto_4
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "applying bottom outset of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4879
    const-string/jumbo v6, " with rotation "

    .line 4878
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4879
    const-string/jumbo v6, ", result: "

    .line 4878
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4883
    .end local v15    # "osf":Landroid/graphics/Rect;
    .end local v22    # "outset":I
    .end local v23    # "rotation":I
    :cond_7
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_8

    const-string/jumbo v3, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Compute frame "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4884
    const-string/jumbo v6, ": sim=#"

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4884
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4885
    const-string/jumbo v6, " attach="

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4885
    const-string/jumbo v6, " type="

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4885
    move-object/from16 v0, v16

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4886
    const-string/jumbo v6, " flags=0x%08x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v7, v29

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4887
    const-string/jumbo v6, " pf="

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4887
    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4887
    const-string/jumbo v6, " df="

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4887
    invoke-virtual {v9}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4888
    const-string/jumbo v6, " of="

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4888
    invoke-virtual {v10}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4889
    const-string/jumbo v6, " cf="

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4889
    invoke-virtual {v11}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4889
    const-string/jumbo v6, " vf="

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4889
    invoke-virtual {v12}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4890
    const-string/jumbo v6, " dcf="

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4890
    invoke-virtual {v13}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4891
    const-string/jumbo v6, " sf="

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4891
    invoke-virtual {v14}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4892
    const-string/jumbo v6, " osf="

    .line 4883
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4892
    if-nez v15, :cond_4d

    const-string/jumbo v2, "null"

    .line 4883
    :goto_5
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v7, p1

    .line 4894
    invoke-interface/range {v7 .. v15}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4898
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_9

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4899
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 4903
    :cond_9
    :goto_6
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7ef

    if-ne v2, v3, :cond_a

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4904
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 4434
    :cond_a
    :goto_7
    return-void

    .line 4443
    .end local v4    # "fl":I
    .end local v5    # "adjust":I
    .end local v8    # "pf":Landroid/graphics/Rect;
    .end local v9    # "df":Landroid/graphics/Rect;
    .end local v10    # "of":Landroid/graphics/Rect;
    .end local v11    # "cf":Landroid/graphics/Rect;
    .end local v12    # "vf":Landroid/graphics/Rect;
    .end local v13    # "dcf":Landroid/graphics/Rect;
    .end local v14    # "sf":Landroid/graphics/Rect;
    .end local v21    # "needsToOffsetInputMethodTarget":Z
    .end local v24    # "sim":I
    .end local v25    # "sysUiFl":I
    .end local v27    # "useOutsets":Z
    :cond_b
    const/16 v21, 0x0

    .restart local v21    # "needsToOffsetInputMethodTarget":Z
    goto/16 :goto_0

    .line 4442
    .end local v21    # "needsToOffsetInputMethodTarget":Z
    :cond_c
    const/16 v21, 0x0

    .restart local v21    # "needsToOffsetInputMethodTarget":Z
    goto/16 :goto_0

    .line 4463
    .restart local v4    # "fl":I
    .restart local v8    # "pf":Landroid/graphics/Rect;
    .restart local v9    # "df":Landroid/graphics/Rect;
    .restart local v10    # "of":Landroid/graphics/Rect;
    .restart local v11    # "cf":Landroid/graphics/Rect;
    .restart local v12    # "vf":Landroid/graphics/Rect;
    .restart local v13    # "dcf":Landroid/graphics/Rect;
    .restart local v14    # "sf":Landroid/graphics/Rect;
    .local v15, "osf":Landroid/graphics/Rect;
    .restart local v24    # "sim":I
    .restart local v25    # "sysUiFl":I
    :cond_d
    const/16 v17, 0x0

    .local v17, "hasNavBar":Z
    goto/16 :goto_1

    .line 4471
    .end local v17    # "hasNavBar":Z
    .restart local v5    # "adjust":I
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    invoke-virtual {v14, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    .line 4481
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4482
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4484
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    .line 4483
    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4486
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    .line 4485
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 4488
    :cond_10
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_11

    .line 4489
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4490
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4491
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4493
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4495
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 4497
    const/16 v2, 0x50

    move-object/from16 v0, v16

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 4498
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    goto/16 :goto_3

    .line 4499
    :cond_11
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7ef

    if-ne v2, v3, :cond_12

    .line 4500
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4501
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4502
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4503
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4504
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 4506
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4507
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4508
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    goto/16 :goto_3

    .line 4509
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_13

    .line 4510
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4511
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4512
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4513
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4514
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4515
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4516
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4517
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    .line 4518
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 4522
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    iput v2, v13, Landroid/graphics/Rect;->left:I

    .line 4523
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    .line 4524
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    .line 4525
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    .line 4526
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_17

    const/16 v18, 0x1

    .line 4529
    .local v18, "inheritTranslucentDecor":Z
    :goto_8
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_19

    .line 4530
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v2, v3, :cond_18

    const/16 v19, 0x1

    .line 4532
    .local v19, "isAppWindow":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_14

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_14
    const/16 v26, 0x0

    .line 4533
    .local v26, "topAtRest":Z
    :goto_a
    if-eqz v19, :cond_15

    if-eqz v18, :cond_1b

    .line 4552
    :cond_15
    :goto_b
    const v2, 0x10100

    and-int/2addr v2, v4

    .line 4553
    const v3, 0x10100

    .line 4552
    if-ne v2, v3, :cond_2b

    .line 4555
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_16

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "layoutWindowLw("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4556
    const-string/jumbo v6, "): IN_SCREEN, INSET_DECOR, sim = #"

    .line 4555
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4556
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 4555
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4561
    :cond_16
    if-eqz p2, :cond_1d

    .line 4564
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 4526
    .end local v18    # "inheritTranslucentDecor":Z
    .end local v19    # "isAppWindow":Z
    .end local v26    # "topAtRest":Z
    :cond_17
    const/16 v18, 0x0

    .restart local v18    # "inheritTranslucentDecor":Z
    goto :goto_8

    .line 4530
    :cond_18
    const/16 v19, 0x0

    .restart local v19    # "isAppWindow":Z
    goto :goto_9

    .line 4529
    .end local v19    # "isAppWindow":Z
    :cond_19
    const/16 v19, 0x0

    .restart local v19    # "isAppWindow":Z
    goto :goto_9

    .line 4532
    :cond_1a
    const/16 v26, 0x1

    .restart local v26    # "topAtRest":Z
    goto :goto_a

    .line 4533
    :cond_1b
    if-nez v26, :cond_15

    .line 4534
    and-int/lit8 v2, v25, 0x4

    if-nez v2, :cond_1c

    .line 4535
    and-int/lit16 v2, v4, 0x400

    if-nez v2, :cond_1c

    .line 4536
    const/high16 v2, 0x4000000

    and-int/2addr v2, v4

    if-nez v2, :cond_1c

    .line 4537
    const/high16 v2, -0x80000000

    and-int/2addr v2, v4

    if-nez v2, :cond_1c

    .line 4540
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    .line 4542
    :cond_1c
    const/high16 v2, 0x8000000

    and-int/2addr v2, v4

    if-nez v2, :cond_15

    .line 4543
    and-int/lit8 v2, v25, 0x2

    if-nez v2, :cond_15

    .line 4544
    const/high16 v2, -0x80000000

    and-int/2addr v2, v4

    if-nez v2, :cond_15

    .line 4547
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    .line 4548
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    goto/16 :goto_b

    .line 4566
    :cond_1d
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_1e

    .line 4567
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_23

    .line 4575
    :cond_1e
    if-eqz v17, :cond_20

    .line 4576
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    .line 4575
    :goto_c
    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4577
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4578
    if-eqz v17, :cond_21

    .line 4579
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    .line 4578
    :goto_d
    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4581
    if-eqz v17, :cond_22

    .line 4582
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    .line 4581
    :goto_e
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4585
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_1f

    const-string/jumbo v2, "WindowManager"

    .line 4586
    const-string/jumbo v3, "Laying out status bar window: (%d,%d - %d,%d)"

    .line 4585
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 4587
    iget v7, v8, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v28, 0x0

    aput-object v7, v6, v28

    iget v7, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v28, 0x1

    aput-object v7, v6, v28

    iget v7, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v28, 0x2

    aput-object v7, v6, v28

    iget v7, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v28, 0x3

    aput-object v7, v6, v28

    .line 4585
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4635
    :cond_1f
    :goto_f
    and-int/lit16 v2, v4, 0x400

    if-nez v2, :cond_29

    .line 4636
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 4637
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4638
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4639
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4640
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 4664
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v4, v11}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 4665
    const/16 v2, 0x30

    if-eq v5, v2, :cond_2a

    .line 4666
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 4667
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 4668
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 4669
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 4576
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto/16 :goto_c

    .line 4580
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto/16 :goto_d

    .line 4583
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto/16 :goto_e

    .line 4588
    :cond_23
    const/high16 v2, 0x2000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_24

    .line 4589
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_24

    .line 4590
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_24

    .line 4593
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4594
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4595
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4596
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    .line 4597
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    .line 4596
    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 4598
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 4599
    move/from16 v0, v25

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_26

    .line 4601
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f2

    if-eq v2, v3, :cond_25

    .line 4602
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_26

    .line 4603
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_26

    .line 4608
    :cond_25
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4609
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4610
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4611
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4615
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 4616
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 4617
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 4618
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 4620
    :cond_26
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4621
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4622
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    .line 4623
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    .line 4622
    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4624
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    .line 4625
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    .line 4624
    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4629
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 4630
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 4631
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 4632
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 4642
    :cond_27
    const/16 v2, 0x10

    if-eq v5, v2, :cond_28

    .line 4643
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4644
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4645
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4646
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_10

    .line 4648
    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4649
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4650
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4651
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_10

    .line 4659
    :cond_29
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4660
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4661
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4662
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_10

    .line 4671
    :cond_2a
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 4674
    :cond_2b
    and-int/lit16 v2, v4, 0x100

    if-nez v2, :cond_2c

    move/from16 v0, v25

    and-int/lit16 v2, v0, 0x600

    if-eqz v2, :cond_3f

    .line 4677
    :cond_2c
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_2d

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "layoutWindowLw("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4678
    const-string/jumbo v6, "): IN_SCREEN"

    .line 4677
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4681
    :cond_2d
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_2e

    .line 4682
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_30

    .line 4684
    :cond_2e
    if-eqz v17, :cond_32

    .line 4685
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    .line 4684
    :goto_11
    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4686
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4687
    if-eqz v17, :cond_33

    .line 4688
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    .line 4687
    :goto_12
    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4690
    if-eqz v17, :cond_34

    .line 4691
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    .line 4690
    :goto_13
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4693
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_2f

    const-string/jumbo v2, "WindowManager"

    .line 4694
    const-string/jumbo v3, "Laying out IN_SCREEN status bar window: (%d,%d - %d,%d)"

    .line 4693
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 4695
    iget v7, v8, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v28, 0x0

    aput-object v7, v6, v28

    iget v7, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v28, 0x1

    aput-object v7, v6, v28

    iget v7, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v28, 0x2

    aput-object v7, v6, v28

    iget v7, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v28, 0x3

    aput-object v7, v6, v28

    .line 4693
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4777
    :cond_2f
    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v4, v11}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 4779
    const/16 v2, 0x30

    if-eq v5, v2, :cond_3e

    .line 4780
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 4781
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 4782
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 4783
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 4683
    :cond_30
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e4

    if-eq v2, v3, :cond_2e

    .line 4696
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_31

    .line 4697
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e8

    if-ne v2, v3, :cond_35

    .line 4699
    :cond_31
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4700
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4701
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 4702
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 4701
    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4703
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 4704
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 4703
    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4705
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_2f

    const-string/jumbo v2, "WindowManager"

    .line 4706
    const-string/jumbo v3, "Laying out navigation bar window: (%d,%d - %d,%d)"

    .line 4705
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 4707
    iget v7, v8, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v28, 0x0

    aput-object v7, v6, v28

    iget v7, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v28, 0x1

    aput-object v7, v6, v28

    iget v7, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v28, 0x2

    aput-object v7, v6, v28

    iget v7, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v28, 0x3

    aput-object v7, v6, v28

    .line 4705
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 4685
    :cond_32
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto/16 :goto_11

    .line 4689
    :cond_33
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto/16 :goto_12

    .line 4692
    :cond_34
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto/16 :goto_13

    .line 4708
    :cond_35
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7df

    if-eq v2, v3, :cond_36

    .line 4709
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-ne v2, v3, :cond_37

    .line 4710
    :cond_36
    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_37

    .line 4712
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4713
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4714
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    .line 4715
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    .line 4714
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4716
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    .line 4717
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    .line 4716
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_14

    .line 4718
    :cond_37
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-ne v2, v3, :cond_38

    .line 4720
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4721
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4722
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    .line 4723
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    .line 4722
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4724
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    .line 4725
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    .line 4724
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_14

    .line 4726
    :cond_38
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v2, v3, :cond_39

    .line 4729
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4730
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4731
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4732
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4733
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 4734
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 4735
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 4736
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_14

    .line 4737
    :cond_39
    const/high16 v2, 0x2000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_3a

    .line 4738
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3a

    .line 4739
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_3a

    .line 4742
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4743
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4745
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    .line 4744
    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4747
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    .line 4746
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_14

    .line 4748
    :cond_3a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 4749
    move/from16 v0, v25

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_3d

    .line 4750
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_3b

    .line 4751
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_3c

    .line 4762
    :cond_3b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4763
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4764
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 4765
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 4764
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4766
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 4767
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 4766
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_14

    .line 4752
    :cond_3c
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f1

    if-eq v2, v3, :cond_3b

    .line 4753
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3d

    .line 4754
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-le v2, v3, :cond_3b

    .line 4769
    :cond_3d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4770
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4771
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 4772
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 4771
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4773
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 4774
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 4773
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_14

    .line 4785
    :cond_3e
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 4787
    :cond_3f
    if-eqz p2, :cond_41

    .line 4788
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_40

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "layoutWindowLw("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4789
    const-string/jumbo v6, "): attached to "

    .line 4788
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4792
    :cond_40
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 4794
    :cond_41
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_42

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "layoutWindowLw("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4795
    const-string/jumbo v6, "): normal window"

    .line 4794
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4798
    :cond_42
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_43

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e4

    if-ne v2, v3, :cond_44

    .line 4803
    :cond_43
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4804
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4805
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 4806
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 4805
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4807
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 4808
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 4807
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 4809
    :cond_44
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-eq v2, v3, :cond_45

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d3

    if-ne v2, v3, :cond_46

    .line 4811
    :cond_45
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4812
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4813
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4814
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 4816
    :cond_46
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4817
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4818
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4819
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4820
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 4821
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 4822
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 4823
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 4824
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 4836
    :goto_15
    const/16 v2, 0x30

    if-eq v5, v2, :cond_49

    .line 4837
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 4838
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 4839
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 4840
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 4825
    :cond_47
    const/16 v2, 0x10

    if-eq v5, v2, :cond_48

    .line 4826
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 4827
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 4828
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 4829
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_15

    .line 4831
    :cond_48
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 4832
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 4833
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 4834
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_15

    .line 4842
    :cond_49
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 4871
    .end local v18    # "inheritTranslucentDecor":Z
    .end local v19    # "isAppWindow":Z
    .end local v26    # "topAtRest":Z
    .local v15, "osf":Landroid/graphics/Rect;
    .restart local v22    # "outset":I
    .restart local v23    # "rotation":I
    .restart local v27    # "useOutsets":Z
    :cond_4a
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_4b

    .line 4872
    iget v2, v15, Landroid/graphics/Rect;->right:I

    add-int v2, v2, v22

    iput v2, v15, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    .line 4873
    :cond_4b
    const/4 v2, 0x2

    move/from16 v0, v23

    if-ne v0, v2, :cond_4c

    .line 4874
    iget v2, v15, Landroid/graphics/Rect;->top:I

    sub-int v2, v2, v22

    iput v2, v15, Landroid/graphics/Rect;->top:I

    goto/16 :goto_4

    .line 4875
    :cond_4c
    const/4 v2, 0x3

    move/from16 v0, v23

    if-ne v0, v2, :cond_6

    .line 4876
    iget v2, v15, Landroid/graphics/Rect;->left:I

    sub-int v2, v2, v22

    iput v2, v15, Landroid/graphics/Rect;->left:I

    goto/16 :goto_4

    .line 4892
    .end local v15    # "osf":Landroid/graphics/Rect;
    .end local v22    # "outset":I
    .end local v23    # "rotation":I
    :cond_4d
    invoke-virtual {v15}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 4900
    :cond_4e
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 4901
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_6

    .line 4905
    :cond_4f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->offsetVoiceInputWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_7
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 7050
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7051
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7052
    if-eqz p1, :cond_0

    .line 7055
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 7057
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7049
    return-void
.end method

.method needSensorRunningLp()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 925
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    if-eqz v0, :cond_2

    .line 926
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v0, v3, :cond_0

    .line 927
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 932
    :cond_0
    return v2

    .line 928
    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 929
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 935
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 941
    :cond_3
    return v2

    .line 936
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v0, v2, :cond_3

    .line 937
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 938
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v0, v3, :cond_3

    .line 943
    :cond_5
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-ne v0, v2, :cond_6

    .line 952
    const/4 v0, 0x0

    return v0

    .line 954
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    return v0
.end method

.method public notifyActivityDrawnForKeyguardLw()V
    .locals 2

    .prologue
    .line 6558
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 6559
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$35;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$35;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6557
    :cond_0
    return-void
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 7
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    .prologue
    .line 5355
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    .line 5356
    .local v2, "lensCoverState":I
    :goto_0
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    if-ne v3, v2, :cond_1

    .line 5357
    return-void

    .line 5355
    .end local v2    # "lensCoverState":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "lensCoverState":I
    goto :goto_0

    .line 5359
    :cond_1
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 5360
    if-nez v2, :cond_2

    .line 5362
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v3, :cond_3

    const/4 v1, 0x0

    .line 5364
    :goto_1
    if-eqz v1, :cond_4

    .line 5365
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5369
    .local v0, "intent":Landroid/content/Intent;
    :goto_2
    const-wide/32 v4, 0xf4240

    div-long v4, p1, v4

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    .line 5370
    const-string/jumbo v6, "android.policy:CAMERA_COVER"

    .line 5369
    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 5371
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5373
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 5354
    return-void

    .line 5363
    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    .local v1, "keyguardActive":Z
    goto :goto_1

    .line 5367
    .end local v1    # "keyguardActive":Z
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_2
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 5336
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 5337
    .local v0, "newLidState":I
    :goto_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v0, v1, :cond_1

    .line 5338
    return-void

    .line 5336
    .end local v0    # "newLidState":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "newLidState":I
    goto :goto_0

    .line 5341
    :cond_1
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    .line 5342
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 5343
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 5345
    if-eqz p3, :cond_3

    .line 5346
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    .line 5347
    const-string/jumbo v4, "android.policy:LID"

    .line 5346
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 5334
    :cond_2
    :goto_1
    return-void

    .line 5348
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v1, :cond_2

    .line 5349
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_1
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 7332
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7333
    return v7

    .line 7335
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 7336
    const-string/jumbo v5, "haptic_feedback_enabled"

    const/4 v6, -0x2

    .line 7335
    invoke-static {v1, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 7337
    .local v0, "hapticsDisabled":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p3, :cond_3

    .line 7340
    :cond_1
    const/4 v4, 0x0

    .line 7341
    .local v4, "pattern":[J
    sparse-switch p2, :sswitch_data_0

    .line 7367
    return v7

    .line 7335
    .end local v0    # "hapticsDisabled":Z
    .end local v4    # "pattern":[J
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hapticsDisabled":Z
    goto :goto_0

    .line 7338
    :cond_3
    return v7

    .line 7343
    .restart local v4    # "pattern":[J
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 7371
    .local v4, "pattern":[J
    :goto_1
    if-eqz p1, :cond_4

    .line 7372
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    .line 7373
    .local v2, "owningUid":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    .line 7378
    .local v3, "owningPackage":Ljava/lang/String;
    :goto_2
    array-length v1, v4

    if-ne v1, v8, :cond_5

    .line 7380
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v4, v4, v7

    .end local v4    # "pattern":[J
    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V

    .line 7385
    :goto_3
    return v8

    .line 7346
    .end local v2    # "owningUid":I
    .end local v3    # "owningPackage":Ljava/lang/String;
    .local v4, "pattern":[J
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 7349
    .local v4, "pattern":[J
    :sswitch_2
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 7352
    .local v4, "pattern":[J
    :sswitch_3
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mClockTickVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 7355
    .local v4, "pattern":[J
    :sswitch_4
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 7358
    .local v4, "pattern":[J
    :sswitch_5
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 7361
    .local v4, "pattern":[J
    :sswitch_6
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 7364
    .local v4, "pattern":[J
    :sswitch_7
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContextClickVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 7375
    :cond_4
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 7376
    .restart local v2    # "owningUid":I
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "owningPackage":Ljava/lang/String;
    goto :goto_2

    .line 7383
    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/4 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    goto :goto_3

    .line 7341
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_7
        0x2710 -> :sswitch_5
        0x2711 -> :sswitch_6
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, -0x7

    .line 2731
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 2772
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2733
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2734
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    .line 2735
    const-string/jumbo v2, "PhoneWindowManager"

    .line 2733
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    .line 2737
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2738
    return v3

    .line 2741
    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2742
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/StatusBarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    .line 2745
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2746
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    .line 2747
    const-string/jumbo v2, "PhoneWindowManager"

    .line 2745
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    .line 2749
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2750
    return v3

    .line 2753
    :cond_2
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2754
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2755
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NAVIGATION BAR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2761
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2762
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    .line 2763
    const-string/jumbo v2, "PhoneWindowManager"

    .line 2761
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2766
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3

    .line 2767
    return v3

    .line 2769
    :cond_3
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2731
    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7de -> :sswitch_2
        0x7e1 -> :sswitch_2
        0x7e3 -> :sswitch_1
        0x7e8 -> :sswitch_2
        0x7ed -> :sswitch_3
        0x7f1 -> :sswitch_2
    .end sparse-switch
.end method

.method readLidState()V
    .locals 1

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    .line 2326
    return-void
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .locals 4
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "window"    # Landroid/view/View;

    .prologue
    .line 2705
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removing starting window for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2706
    const-string/jumbo v3, " Callers="

    .line 2705
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2706
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 2705
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    :cond_0
    if-eqz p2, :cond_1

    .line 2709
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2710
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2704
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v2, 0x0

    .line 2778
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    .line 2779
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2780
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/StatusBarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2781
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showScrim()V

    .line 2785
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    .line 2786
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2787
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2777
    :cond_1
    return-void

    .line 2782
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 2783
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Removing keyguard scrim"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method public rotationForOrientationLw(II)I
    .locals 10
    .param p1, "orientation"    # I
    .param p2, "lastRotation"    # I

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 6602
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    if-eqz v2, :cond_0

    .line 6603
    return v4

    .line 6606
    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 6607
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    .line 6608
    .local v1, "sensorRotation":I
    if-gez v1, :cond_1

    .line 6609
    move v1, p2

    .line 6613
    :cond_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v2, :cond_3

    .line 6615
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    .line 6695
    .local v0, "preferredRotation":I
    :goto_0
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_2

    .line 6696
    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rotationForOrientationLw(appReqQrientation = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6697
    const-string/jumbo v6, ", lastOrientation = "

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6698
    const-string/jumbo v6, ", sensorRotation = "

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6699
    const-string/jumbo v6, ", UserRotation = "

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6699
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6700
    const-string/jumbo v6, ", LidState = "

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6700
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6701
    const-string/jumbo v6, ", DockMode = "

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6701
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6702
    const-string/jumbo v6, ", DeskDockEnable = "

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6702
    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6703
    const-string/jumbo v6, ", CarDockEnable = "

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6703
    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6704
    const-string/jumbo v6, ", HdmiPlugged = "

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6704
    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6705
    const-string/jumbo v6, ", Accelerometer = "

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6705
    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccelerometerDefault:Z

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6706
    const-string/jumbo v6, ", AllowAllRotations = "

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6706
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 6707
    const-string/jumbo v6, ")"

    .line 6696
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6711
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 6765
    :pswitch_0
    if-ltz v0, :cond_21

    monitor-exit v5

    .line 6766
    return v0

    .line 6616
    .end local v0    # "preferredRotation":I
    :cond_3
    :try_start_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-ne v2, v7, :cond_6

    .line 6617
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v2, :cond_6

    .line 6621
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v2, :cond_5

    .line 6622
    move v0, v1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .end local v0    # "preferredRotation":I
    :cond_5
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .line 6623
    .end local v0    # "preferredRotation":I
    :cond_6
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v2, v3, :cond_7

    .line 6624
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_9

    .line 6626
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v2, :cond_8

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v2, :cond_a

    .line 6630
    :cond_8
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v2, :cond_b

    .line 6631
    move v0, v1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .line 6625
    .end local v0    # "preferredRotation":I
    :cond_9
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v2, v8, :cond_7

    .line 6632
    :cond_a
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    if-eqz v2, :cond_c

    .line 6635
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .line 6631
    .end local v0    # "preferredRotation":I
    :cond_b
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .line 6636
    .end local v0    # "preferredRotation":I
    :cond_c
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v2, :cond_d

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-nez v2, :cond_d

    .line 6637
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    if-ltz v2, :cond_d

    .line 6642
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .line 6643
    .end local v0    # "preferredRotation":I
    :cond_d
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    if-eqz v2, :cond_e

    .line 6646
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .line 6647
    .end local v0    # "preferredRotation":I
    :cond_e
    const/16 v2, 0xe

    if-ne p1, v2, :cond_f

    .line 6649
    move v0, p2

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .line 6650
    .end local v0    # "preferredRotation":I
    :cond_f
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    if-nez v2, :cond_10

    .line 6653
    const/4 v0, -0x1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .line 6654
    .end local v0    # "preferredRotation":I
    :cond_10
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-nez v2, :cond_15

    .line 6655
    if-eq p1, v7, :cond_11

    .line 6656
    const/4 v2, -0x1

    if-ne p1, v2, :cond_14

    .line 6666
    :cond_11
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v2, :cond_12

    .line 6670
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 6671
    const v6, 0x1120034

    .line 6670
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v3

    :goto_1
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    .line 6673
    :cond_12
    if-ne v1, v7, :cond_13

    .line 6674
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    if-ne v2, v3, :cond_17

    .line 6677
    :cond_13
    move v0, v1

    .line 6676
    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .line 6657
    .end local v0    # "preferredRotation":I
    :cond_14
    const/16 v2, 0xb

    if-eq p1, v2, :cond_11

    .line 6658
    const/16 v2, 0xc

    if-eq p1, v2, :cond_11

    .line 6659
    const/16 v2, 0xd

    if-eq p1, v2, :cond_11

    .line 6660
    :cond_15
    if-eq p1, v8, :cond_11

    .line 6661
    if-eq p1, v9, :cond_11

    .line 6662
    const/4 v2, 0x6

    if-eq p1, v2, :cond_11

    .line 6663
    const/4 v2, 0x7

    if-eq p1, v2, :cond_11

    .line 6681
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v3, :cond_18

    .line 6682
    const/4 v2, 0x5

    if-eq p1, v2, :cond_18

    .line 6687
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .end local v0    # "preferredRotation":I
    :cond_16
    move v2, v4

    .line 6671
    goto :goto_1

    .line 6675
    :cond_17
    if-eq p1, v9, :cond_13

    .line 6676
    const/16 v2, 0xd

    if-eq p1, v2, :cond_13

    .line 6679
    move v0, p2

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .line 6691
    .end local v0    # "preferredRotation":I
    :cond_18
    const/4 v0, -0x1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .line 6714
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_19

    monitor-exit v5

    .line 6715
    return v0

    .line 6717
    :cond_19
    :try_start_2
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return v2

    .line 6721
    :pswitch_2
    :try_start_3
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_1a

    monitor-exit v5

    .line 6722
    return v0

    .line 6724
    :cond_1a
    :try_start_4
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v5

    return v2

    .line 6728
    :pswitch_3
    :try_start_5
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-eqz v2, :cond_1b

    monitor-exit v5

    .line 6729
    return v0

    .line 6731
    :cond_1b
    :try_start_6
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v5

    return v2

    .line 6735
    :pswitch_4
    :try_start_7
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    if-eqz v2, :cond_1c

    monitor-exit v5

    .line 6736
    return v0

    .line 6738
    :cond_1c
    :try_start_8
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v5

    return v2

    .line 6743
    :pswitch_5
    :try_start_9
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v2

    if-eqz v2, :cond_1d

    monitor-exit v5

    .line 6744
    return v0

    .line 6746
    :cond_1d
    :try_start_a
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v2

    if-eqz v2, :cond_1e

    monitor-exit v5

    .line 6747
    return p2

    .line 6749
    :cond_1e
    :try_start_b
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit v5

    return v2

    .line 6754
    :pswitch_6
    :try_start_c
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v2

    if-eqz v2, :cond_1f

    monitor-exit v5

    .line 6755
    return v0

    .line 6757
    :cond_1f
    :try_start_d
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v2

    if-eqz v2, :cond_20

    monitor-exit v5

    .line 6758
    return p2

    .line 6760
    :cond_20
    :try_start_e
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit v5

    return v2

    :cond_21
    monitor-exit v5

    .line 6768
    return v4

    .line 6606
    .end local v0    # "preferredRotation":I
    .end local v1    # "sensorRotation":I
    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2

    .line 6711
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "rotation"    # I

    .prologue
    .line 6775
    packed-switch p1, :pswitch_data_0

    .line 6787
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 6779
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    return v0

    .line 6784
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    return v0

    .line 6775
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 6347
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Screen turned off..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6349
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 6350
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6351
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    .line 6352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 6353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 6354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 6355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 6356
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 6358
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    .line 6359
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 6346
    return-void

    .line 6350
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public screenTurnedOn()V
    .locals 4

    .prologue
    .line 6392
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6393
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 6394
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 6398
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    .line 6399
    const-wide/16 v2, 0x3e8

    .line 6398
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V

    .line 6403
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    .line 6404
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    .line 6391
    :goto_0
    return-void

    .line 6392
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 6406
    :cond_1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WindowManager"

    .line 6407
    const-string/jumbo v1, "null mKeyguardDelegate: setting mKeyguardDrawComplete."

    .line 6406
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6408
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    goto :goto_0
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 5
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    const/4 v2, 0x0

    .line 6367
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Screen turning on..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6369
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 6370
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6371
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    .line 6372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 6373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 6374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 6375
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 6377
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    .line 6378
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6379
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6380
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 6366
    return-void

    .line 6382
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WindowManager"

    .line 6383
    const-string/jumbo v2, "null mKeyguardDelegate: setting mKeyguardDrawComplete."

    .line 6382
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6384
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6370
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v1, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2798
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_6

    .line 2799
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 2800
    .local v0, "isKeyguard":Z
    :goto_0
    if-eq p2, v3, :cond_0

    .line 2801
    const/4 v2, 0x4

    if-ne p2, v2, :cond_3

    .line 2802
    :cond_0
    if-eqz v0, :cond_2

    :goto_1
    return v1

    .line 2799
    .end local v0    # "isKeyguard":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isKeyguard":Z
    goto :goto_0

    .line 2802
    :cond_2
    const v1, 0x10a001e

    goto :goto_1

    .line 2803
    :cond_3
    if-eq p2, v5, :cond_4

    .line 2804
    if-ne p2, v6, :cond_f

    .line 2805
    :cond_4
    if-eqz v0, :cond_5

    :goto_2
    return v1

    :cond_5
    const v1, 0x10a001d

    goto :goto_2

    .line 2807
    .end local v0    # "isKeyguard":Z
    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_f

    .line 2808
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_7

    .line 2809
    return v4

    .line 2812
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_b

    .line 2813
    if-eq p2, v3, :cond_8

    .line 2814
    const/4 v2, 0x4

    if-ne p2, v2, :cond_9

    .line 2815
    :cond_8
    const v1, 0x10a0018

    return v1

    .line 2816
    :cond_9
    if-eq p2, v5, :cond_a

    .line 2817
    if-ne p2, v6, :cond_f

    .line 2818
    :cond_a
    const v1, 0x10a0017

    return v1

    .line 2821
    :cond_b
    if-eq p2, v3, :cond_c

    .line 2822
    const/4 v2, 0x4

    if-ne p2, v2, :cond_d

    .line 2823
    :cond_c
    const v1, 0x10a001c

    return v1

    .line 2824
    :cond_d
    if-eq p2, v5, :cond_e

    .line 2825
    if-ne p2, v6, :cond_f

    .line 2826
    :cond_e
    const v1, 0x10a001b

    return v1

    .line 2831
    :cond_f
    const/4 v2, 0x5

    if-ne p2, v2, :cond_10

    .line 2832
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2834
    const v1, 0x10a0011

    return v1

    .line 2836
    :cond_10
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e7

    if-ne v2, v3, :cond_11

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v2, :cond_11

    .line 2837
    if-ne p2, v5, :cond_11

    .line 2842
    return v1

    .line 2845
    :cond_11
    return v4
.end method

.method public selectRotationAnimationLw([I)V
    .locals 4
    .param p1, "anim"    # [I

    .prologue
    const v3, 0x10a004a

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2854
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 2855
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    packed-switch v0, :pswitch_data_0

    .line 2866
    aput v1, p1, v2

    aput v1, p1, v1

    .line 2849
    :goto_0
    return-void

    .line 2857
    :pswitch_0
    const v0, 0x10a004c

    aput v0, p1, v1

    .line 2858
    aput v3, p1, v2

    goto :goto_0

    .line 2861
    :pswitch_1
    const v0, 0x10a004b

    aput v0, p1, v1

    .line 2862
    aput v3, p1, v2

    goto :goto_0

    .line 2870
    :cond_0
    aput v1, p1, v2

    aput v1, p1, v1

    goto :goto_0

    .line 2855
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 6584
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 6583
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 6588
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 6587
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "fl"    # I
    .param p3, "adjust"    # I
    .param p4, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p5, "insetDecors"    # Z
    .param p6, "pf"    # Landroid/graphics/Rect;
    .param p7, "df"    # Landroid/graphics/Rect;
    .param p8, "of"    # Landroid/graphics/Rect;
    .param p9, "cf"    # Landroid/graphics/Rect;
    .param p10, "vf"    # Landroid/graphics/Rect;

    .prologue
    .line 4348
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_1

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_1

    .line 4356
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v0, p10, Landroid/graphics/Rect;->left:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 4357
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v0, p10, Landroid/graphics/Rect;->top:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 4358
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v0, p10, Landroid/graphics/Rect;->right:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 4359
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v0, p10, Landroid/graphics/Rect;->bottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 4401
    .end local p9    # "cf":Landroid/graphics/Rect;
    :goto_0
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_0

    .line 4402
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object p7

    .line 4401
    .end local p7    # "df":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4347
    return-void

    .line 4367
    .restart local p7    # "df":Landroid/graphics/Rect;
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_1
    const/16 v0, 0x10

    if-eq p3, v0, :cond_5

    .line 4372
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_4

    .line 4373
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    .line 4372
    :goto_1
    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4394
    :cond_2
    :goto_2
    if-eqz p5, :cond_d

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_3
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4395
    if-eqz p5, :cond_3

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object p9

    .end local p9    # "cf":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {p8, p9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4396
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 4373
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_4
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1

    .line 4381
    :cond_5
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4382
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4383
    iget v0, p9, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    .line 4384
    :cond_6
    iget v0, p9, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    .line 4385
    :cond_7
    iget v0, p9, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    if-le v0, v1, :cond_8

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    .line 4386
    :cond_8
    iget v0, p9, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 4387
    :cond_9
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_2

    .line 4388
    iget v0, p9, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_a

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    .line 4389
    :cond_a
    iget v0, p9, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_b

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    .line 4390
    :cond_b
    iget v0, p9, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_c

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    .line 4391
    :cond_c
    iget v0, p9, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_d
    move-object v0, p9

    .line 4394
    goto/16 :goto_3
.end method

.method public setCurrentInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "ime"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "target"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 8699
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 8700
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 8698
    return-void
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2
    .param p1, "newOrientation"    # I

    .prologue
    .line 7297
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7298
    :try_start_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_0

    .line 7299
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 7300
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 7296
    return-void

    .line 7297
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCurrentUserLw(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .prologue
    const/4 v2, 0x0

    .line 7658
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 7659
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    .line 7660
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    .line 7662
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_1

    .line 7664
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setCurrentUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7669
    :cond_1
    :goto_0
    invoke-virtual {p0, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 7657
    return-void

    .line 7665
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDisplayOverscan(Landroid/view/Display;IIII)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1970
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    .line 1971
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    .line 1972
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    .line 1973
    iput p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    .line 1974
    iput p5, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    .line 1969
    :cond_0
    return-void
.end method

.method setHdmiPlugged(Z)V
    .locals 3
    .param p1, "plugged"    # Z

    .prologue
    const/4 v2, 0x1

    .line 5377
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v1, p1, :cond_0

    .line 5378
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    .line 5379
    invoke-virtual {p0, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(ZZ)V

    .line 5380
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5381
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5382
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5383
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5376
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 11
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 1857
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    if-eqz v6, :cond_1

    .line 1858
    :cond_0
    return-void

    .line 1860
    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    .line 1862
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1864
    .local v3, "res":Landroid/content/res/Resources;
    if-le p2, p3, :cond_4

    .line 1865
    move v4, p3

    .line 1866
    .local v4, "shortSize":I
    move v0, p2

    .line 1867
    .local v0, "longSize":I
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 1868
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    .line 1869
    const v6, 0x1120035

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1870
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 1871
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1891
    :goto_0
    const v6, 0x1050017

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1890
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    .line 1894
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 1896
    const v8, 0x1050018

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1895
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v8, v9, v10

    .line 1894
    aput v8, v6, v7

    .line 1897
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 1899
    const v8, 0x1050019

    .line 1898
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v8, v9, v10

    .line 1897
    aput v8, v6, v7

    .line 1902
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 1906
    const v8, 0x105001a

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1905
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v8, v9, v10

    .line 1904
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    aput v8, v9, v10

    .line 1903
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v8, v9, v10

    .line 1902
    aput v8, v6, v7

    .line 1909
    mul-int/lit16 v6, v4, 0xa0

    div-int v5, v6, p4

    .line 1910
    .local v5, "shortSizeDp":I
    mul-int/lit16 v6, v0, 0xa0

    div-int v1, v6, p4

    .line 1913
    .local v1, "longSizeDp":I
    if-eq p2, p3, :cond_6

    const/16 v6, 0x258

    if-ge v5, v6, :cond_6

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 1915
    const v6, 0x1120060

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1918
    const-string/jumbo v6, "qemu.hw.mainkeys"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1919
    .local v2, "navBarOverride":Ljava/lang/String;
    const-string/jumbo v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1920
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1927
    :cond_2
    :goto_2
    const-string/jumbo v6, "portrait"

    const-string/jumbo v7, "persist.demo.hdmirotation"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1928
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    .line 1932
    :goto_3
    const-string/jumbo v6, "persist.demo.hdmirotationlock"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    .line 1936
    const-string/jumbo v6, "portrait"

    const-string/jumbo v7, "persist.demo.remoterotation"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1937
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    .line 1942
    :goto_4
    const-string/jumbo v6, "persist.demo.rotationlock"

    const/4 v7, 0x0

    .line 1941
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    .line 1946
    const/16 v6, 0x3c0

    if-lt v1, v6, :cond_b

    const/16 v6, 0x2d0

    if-lt v5, v6, :cond_b

    .line 1947
    const v6, 0x112007a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 1946
    if-eqz v6, :cond_b

    .line 1951
    const-string/jumbo v6, "true"

    const-string/jumbo v7, "config.override_forced_orient"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    .line 1946
    :goto_5
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    .line 1854
    return-void

    .line 1873
    .end local v1    # "longSizeDp":I
    .end local v2    # "navBarOverride":Ljava/lang/String;
    .end local v5    # "shortSizeDp":I
    :cond_3
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 1874
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    goto/16 :goto_0

    .line 1877
    .end local v0    # "longSize":I
    .end local v4    # "shortSize":I
    :cond_4
    move v4, p2

    .line 1878
    .restart local v4    # "shortSize":I
    move v0, p3

    .line 1879
    .restart local v0    # "longSize":I
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 1880
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1881
    const v6, 0x1120035

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1882
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 1883
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    .line 1885
    :cond_5
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 1886
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    .line 1913
    .restart local v1    # "longSizeDp":I
    .restart local v5    # "shortSizeDp":I
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1921
    .restart local v2    # "navBarOverride":Ljava/lang/String;
    :cond_7
    const-string/jumbo v6, "0"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1922
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_2

    .line 1930
    :cond_8
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    goto/16 :goto_3

    .line 1939
    :cond_9
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    goto :goto_4

    .line 1951
    :cond_a
    const/4 v6, 0x1

    goto :goto_5

    .line 1946
    :cond_b
    const/4 v6, 0x0

    goto :goto_5
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "ime"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "target"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 7647
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 7648
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 7646
    return-void
.end method

.method public setRotationLw(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 6793
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    .line 6792
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 3
    .param p1, "safeMode"    # Z

    .prologue
    .line 6837
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    .line 6838
    if-eqz p1, :cond_0

    .line 6839
    const/16 v0, 0x2711

    .line 6838
    :goto_0
    const/4 v1, 0x0

    .line 6840
    const/4 v2, 0x1

    .line 6838
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 6836
    return-void

    .line 6840
    :cond_0
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method public setUserRotationMode(II)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "rot"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x2

    .line 6815
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6818
    .local v0, "res":Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_0

    .line 6820
    const-string/jumbo v1, "user_rotation"

    .line 6819
    invoke-static {v0, v1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6824
    const-string/jumbo v1, "accelerometer_rotation"

    .line 6825
    const/4 v2, 0x0

    .line 6823
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6814
    :goto_0
    return-void

    .line 6829
    :cond_0
    const-string/jumbo v1, "accelerometer_rotation"

    .line 6828
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .prologue
    .line 6925
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$37;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$37;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6924
    return-void
.end method

.method public showGlobalActions()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 1369
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1370
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1368
    return-void
.end method

.method showGlobalActionsInternal()V
    .locals 5

    .prologue
    .line 1374
    const-string/jumbo v1, "globalactions"

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1375
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-nez v1, :cond_0

    .line 1376
    new-instance v1, Lcom/android/server/policy/GlobalActions;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/server/policy/GlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 1378
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    .line 1379
    .local v0, "keyguardShowing":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/GlobalActions;->showDialog(ZZ)V

    .line 1380
    if-eqz v0, :cond_1

    .line 1383
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1373
    :cond_1
    return-void
.end method

.method public showRecentApps()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 3764
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3765
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3763
    return-void
.end method

.method startDockOrHome(ZZ)V
    .locals 4
    .param p1, "fromHomeKey"    # Z
    .param p2, "awakenFromDreams"    # Z

    .prologue
    .line 7211
    if-eqz p2, :cond_0

    .line 7212
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 7215
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 7216
    .local v0, "dock":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 7218
    if-eqz p1, :cond_1

    .line 7219
    :try_start_0
    const-string/jumbo v3, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7221
    :cond_1
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7222
    return-void

    .line 7223
    :catch_0
    move-exception v1

    .line 7229
    :cond_2
    if-eqz p1, :cond_3

    .line 7230
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 7231
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7236
    :goto_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7210
    return-void

    .line 7233
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 3
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 6577
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    .line 6578
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "PWM.startKeyguardExitAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6579
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(JJ)V

    .line 6576
    :cond_1
    return-void
.end method

.method public startedGoingToSleep(I)V
    .locals 3
    .param p1, "why"    # I

    .prologue
    .line 6237
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Started going to sleep... (why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6238
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    .line 6239
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedGoingToSleep(I)V

    .line 6236
    :cond_1
    return-void
.end method

.method public startedWakingUp()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6271
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 6272
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Started waking up..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6278
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6279
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    .line 6281
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 6282
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 6283
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 6286
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    .line 6287
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp()V

    .line 6291
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    if-eqz v0, :cond_2

    .line 6292
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->isReady()Z

    move-result v0

    .line 6291
    if-eqz v0, :cond_2

    .line 6294
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkDelegateCallback:Lcom/android/server/policy/LenovoFrameworkServiceDelegate$ShowListener;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->onScreenTurnedOn(Lcom/android/server/policy/LenovoFrameworkServiceDelegate$ShowListener;)V

    .line 6270
    :cond_2
    return-void

    .line 6278
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public subWindowTypeToLayerLw(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 2472
    packed-switch p1, :pswitch_data_0

    .line 2485
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    const/4 v0, 0x0

    return v0

    .line 2475
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2477
    :pswitch_1
    const/4 v0, -0x2

    return v0

    .line 2479
    :pswitch_2
    const/4 v0, -0x1

    return v0

    .line 2481
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2483
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 2472
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public systemBooted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6897
    const/4 v0, 0x0

    .line 6898
    .local v0, "bindKeyguardNow":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6901
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 6902
    const/4 v0, 0x1

    :goto_0
    monitor-exit v2

    .line 6909
    if-eqz v0, :cond_0

    .line 6910
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 6911
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 6913
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6914
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 6916
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    .line 6917
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 6896
    return-void

    .line 6906
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6898
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 6913
    :catchall_1
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 6858
    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 6859
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    .line 6862
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleGloveModeSettingChanged()V

    .line 6866
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v1, v2}, Lcom/android/server/policy/LenovoFrameworkServiceDelegate;->getInstance(Landroid/content/Context;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLenovoFrameworkServiceDelegate:Lcom/android/server/policy/LenovoFrameworkServiceDelegate;

    .line 6868
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    .line 6869
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    .line 6871
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6872
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 6873
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    .line 6874
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$36;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$36;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6881
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z

    .line 6882
    .local v0, "bindKeyguardNow":Z
    if-eqz v0, :cond_0

    .line 6884
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 6888
    if-eqz v0, :cond_1

    .line 6889
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 6890
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 6857
    :cond_1
    return-void

    .line 6871
    .end local v0    # "bindKeyguardNow":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method updateOrientationListenerLp()V
    .locals 4

    .prologue
    .line 968
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 970
    return-void

    .line 974
    :cond_0
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mScreenOnEarly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 975
    const-string/jumbo v3, ", mAwake="

    .line 974
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 975
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    .line 974
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 975
    const-string/jumbo v3, ", mCurrentAppOrientation="

    .line 974
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 975
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 974
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 976
    const-string/jumbo v3, ", mOrientationSensorEnabled="

    .line 974
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 976
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 974
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 977
    const-string/jumbo v3, ", mKeyguardDrawComplete="

    .line 974
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 977
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 974
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 978
    const-string/jumbo v3, ", mWindowManagerDrawComplete="

    .line 974
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 978
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 974
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_1
    const/4 v0, 0x1

    .line 982
    .local v0, "disable":Z
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_3

    .line 983
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 982
    if-eqz v1, :cond_3

    .line 983
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 982
    if-eqz v1, :cond_3

    .line 984
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 985
    const/4 v0, 0x0

    .line 987
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_3

    .line 988
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 989
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Enabling listeners"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 995
    :cond_3
    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_5

    .line 996
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 997
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Disabling listeners"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 967
    :cond_5
    return-void
.end method

.method updateRotation(Z)V
    .locals 3
    .param p1, "alwaysSendConfiguration"    # Z

    .prologue
    .line 7137
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7134
    :goto_0
    return-void

    .line 7138
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method updateRotation(ZZ)V
    .locals 2
    .param p1, "alwaysSendConfiguration"    # Z
    .param p2, "forceRelayout"    # Z

    .prologue
    .line 7146
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7143
    :goto_0
    return-void

    .line 7147
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public updateSettings()V
    .locals 17

    .prologue
    .line 1979
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1980
    .local v8, "resolver":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 1981
    .local v9, "updateRotation":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1983
    :try_start_0
    const-string/jumbo v13, "end_button_behavior"

    .line 1984
    const/4 v15, 0x2

    .line 1985
    const/16 v16, -0x2

    .line 1982
    move/from16 v0, v16

    invoke-static {v8, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 1987
    const-string/jumbo v13, "incall_power_button_behavior"

    .line 1988
    const/4 v15, 0x1

    .line 1989
    const/16 v16, -0x2

    .line 1986
    move/from16 v0, v16

    invoke-static {v8, v13, v15, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 1993
    const-string/jumbo v13, "wake_gesture_enabled"

    const/4 v15, 0x0

    .line 1994
    const/16 v16, -0x2

    .line 1992
    move/from16 v0, v16

    invoke-static {v8, v13, v15, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-eqz v13, :cond_a

    const/4 v12, 0x1

    .line 1995
    .local v12, "wakeGestureEnabledSetting":Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eq v13, v12, :cond_0

    .line 1996
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 1997
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 2001
    :cond_0
    const-string/jumbo v13, "slide_unlock_enabled"

    const/4 v15, 0x0

    invoke-static {v8, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_1

    .line 2002
    const-string/jumbo v13, "black_gesture_light_up_enable"

    const/4 v15, 0x0

    invoke-static {v8, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_b

    .line 2001
    :cond_1
    const/4 v5, 0x1

    .line 2009
    .local v5, "isLenovoBlackGesturesTPEnabled":Z
    :goto_1
    const-string/jumbo v13, "black_screen_snap_shot"

    const/4 v15, 0x0

    invoke-static {v8, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsLenovoBlackGesturesSnapshotEnabled:Z

    .line 2010
    if-nez v5, :cond_e

    .line 2011
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsLenovoBlackGesturesSnapshotEnabled:Z

    .line 2014
    :goto_3
    const-string/jumbo v13, "WindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "LenovoGestures blackGestureEnabled old="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsLenovoBlackGesturesEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ",new="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2015
    const-string/jumbo v16, ";tp old="

    .line 2014
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2015
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsLenovoBlackGesturesTPEnabled:Z

    move/from16 v16, v0

    .line 2014
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2015
    const-string/jumbo v16, ",new="

    .line 2014
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2016
    const-string/jumbo v16, ";snapShot="

    .line 2014
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 2016
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsLenovoBlackGesturesSnapshotEnabled:Z

    move/from16 v16, v0

    .line 2014
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsLenovoBlackGesturesEnabled:Z

    if-eq v13, v4, :cond_2

    .line 2019
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsLenovoBlackGesturesEnabled:Z

    .line 2020
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x10

    invoke-virtual {v13, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 2021
    .local v6, "msg":Landroid/os/Message;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iput-object v13, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2022
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2025
    .end local v6    # "msg":Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsLenovoBlackGesturesTPEnabled:Z

    if-eq v13, v5, :cond_3

    .line 2026
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsLenovoBlackGesturesTPEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2028
    :try_start_1
    invoke-static {v5}, Lcom/android/server/policy/LenovoFrameworkGestureConfig;->setTpdStatus(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2037
    :cond_3
    :goto_4
    :try_start_2
    const-string/jumbo v13, "user_rotation"

    const/4 v15, 0x0

    .line 2038
    const/16 v16, -0x2

    .line 2036
    move/from16 v0, v16

    invoke-static {v8, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .line 2039
    .local v10, "userRotation":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    if-eq v13, v10, :cond_4

    .line 2040
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    .line 2041
    const/4 v9, 0x1

    .line 2044
    :cond_4
    const-string/jumbo v13, "accelerometer_rotation"

    const/4 v15, 0x0

    const/16 v16, -0x2

    .line 2043
    move/from16 v0, v16

    invoke-static {v8, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-eqz v13, :cond_f

    .line 2045
    const/4 v11, 0x0

    .line 2047
    .local v11, "userRotationMode":I
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-eq v13, v11, :cond_5

    .line 2048
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    .line 2049
    const/4 v9, 0x1

    .line 2050
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2054
    :cond_5
    const-string/jumbo v13, "black_screen_snap_shot"

    const/4 v15, 0x0

    .line 2055
    const/16 v16, -0x2

    .line 2053
    move/from16 v0, v16

    invoke-static {v8, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeKeyFuncation:I

    .line 2056
    const-string/jumbo v13, "LenovoShot"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mVolumeKeyFuncation: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeKeyFuncation:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v13, :cond_6

    .line 2060
    const-string/jumbo v13, "pointer_location"

    const/4 v15, 0x0

    const/16 v16, -0x2

    .line 2059
    move/from16 v0, v16

    invoke-static {v8, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 2061
    .local v7, "pointerLocation":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v13, v7, :cond_6

    .line 2062
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    .line 2063
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v7, :cond_10

    .line 2064
    const/4 v13, 0x1

    .line 2063
    :goto_6
    invoke-virtual {v15, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2069
    .end local v7    # "pointerLocation":I
    :cond_6
    const-string/jumbo v13, "screen_off_timeout"

    const/4 v15, 0x0

    const/16 v16, -0x2

    .line 2068
    move/from16 v0, v16

    invoke-static {v8, v13, v15, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 2071
    const-string/jumbo v13, "default_input_method"

    const/4 v15, -0x2

    .line 2070
    invoke-static {v8, v13, v15}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2072
    .local v3, "imId":Ljava/lang/String;
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_11

    const/4 v2, 0x1

    .line 2073
    .local v2, "hasSoftInput":Z
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v13, v2, :cond_7

    .line 2074
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 2075
    const/4 v9, 0x1

    .line 2077
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    if-eqz v13, :cond_8

    .line 2078
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v13, v15}, Lcom/android/server/policy/ImmersiveModeConfirmation;->loadSetting(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    monitor-exit v14

    .line 2081
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v13}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 2082
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/server/policy/PolicyControl;->reloadFromSetting(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v14

    .line 2084
    if-eqz v9, :cond_9

    .line 2085
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 1978
    :cond_9
    return-void

    .line 1992
    .end local v2    # "hasSoftInput":Z
    .end local v3    # "imId":Ljava/lang/String;
    .end local v5    # "isLenovoBlackGesturesTPEnabled":Z
    .end local v10    # "userRotation":I
    .end local v11    # "userRotationMode":I
    .end local v12    # "wakeGestureEnabledSetting":Z
    :cond_a
    const/4 v12, 0x0

    .restart local v12    # "wakeGestureEnabledSetting":Z
    goto/16 :goto_0

    .line 2003
    :cond_b
    :try_start_4
    const-string/jumbo v13, "black_gesture_wakeup_e_enable"

    const/4 v15, 0x0

    invoke-static {v8, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_1

    .line 2004
    const-string/jumbo v13, "black_gesture_wakeup_c_enable"

    const/4 v15, 0x0

    invoke-static {v8, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_1

    .line 2005
    const-string/jumbo v13, "black_gesture_wakeup_m_enable"

    const/4 v15, 0x0

    invoke-static {v8, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_1

    .line 2006
    const-string/jumbo v13, "black_gesture_wakeup_v_enable"

    const/4 v15, 0x0

    invoke-static {v8, v13, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_c

    const/4 v5, 0x1

    .restart local v5    # "isLenovoBlackGesturesTPEnabled":Z
    goto/16 :goto_1

    .end local v5    # "isLenovoBlackGesturesTPEnabled":Z
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "isLenovoBlackGesturesTPEnabled":Z
    goto/16 :goto_1

    .line 2009
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 2010
    :cond_e
    const/4 v4, 0x1

    .local v4, "isEnableLenovoBlackGestures":Z
    goto/16 :goto_3

    .line 2029
    .end local v4    # "isEnableLenovoBlackGestures":Z
    :catch_0
    move-exception v1

    .line 2030
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "WindowManager"

    const-string/jumbo v15, "lenovogesture set tpd file failed"

    invoke-static {v13, v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    .line 1981
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "isLenovoBlackGesturesTPEnabled":Z
    .end local v12    # "wakeGestureEnabledSetting":Z
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 2046
    .restart local v5    # "isLenovoBlackGesturesTPEnabled":Z
    .restart local v10    # "userRotation":I
    .restart local v12    # "wakeGestureEnabledSetting":Z
    :cond_f
    const/4 v11, 0x1

    .restart local v11    # "userRotationMode":I
    goto/16 :goto_5

    .line 2064
    .restart local v7    # "pointerLocation":I
    :cond_10
    const/4 v13, 0x2

    goto/16 :goto_6

    .line 2072
    .end local v7    # "pointerLocation":I
    .restart local v3    # "imId":Ljava/lang/String;
    :cond_11
    const/4 v2, 0x0

    .restart local v2    # "hasSoftInput":Z
    goto/16 :goto_7

    .line 2081
    :catchall_1
    move-exception v13

    monitor-exit v14

    throw v13
.end method

.method updateUiMode()V
    .locals 2

    .prologue
    .line 7124
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    if-nez v1, :cond_0

    .line 7126
    const-string/jumbo v1, "uimode"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 7125
    invoke-static {v1}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 7129
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7123
    :goto_0
    return-void

    .line 7130
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public userActivity()V
    .locals 6

    .prologue
    .line 7009
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStkLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7010
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsStkUserActivityEnabled:Z

    if-eqz v0, :cond_0

    .line 7012
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyStk:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 7017
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v1

    .line 7018
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v0, :cond_1

    .line 7020
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7021
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    monitor-exit v1

    .line 6994
    return-void

    .line 7009
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 7017
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public validateRotationAnimationLw(IIZ)Z
    .locals 4
    .param p1, "exitAnimId"    # I
    .param p2, "enterAnimId"    # I
    .param p3, "forceDefault"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2877
    packed-switch p1, :pswitch_data_0

    .line 2888
    return v1

    .line 2881
    :pswitch_0
    if-eqz p3, :cond_0

    .line 2882
    return v2

    .line 2884
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 2885
    .local v0, "anim":[I
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->selectRotationAnimationLw([I)V

    .line 2886
    aget v3, v0, v2

    if-ne p1, v3, :cond_1

    aget v3, v0, v1

    if-ne p2, v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 2877
    :pswitch_data_0
    .packed-switch 0x10a004b
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public windowTypeToLayerLw(I)I
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x2

    .line 2374
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x63

    if-gt p1, v0, :cond_0

    .line 2375
    return v3

    .line 2377
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2465
    :pswitch_0
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    return v3

    .line 2379
    :pswitch_1
    return v3

    .line 2382
    :pswitch_2
    return v3

    .line 2384
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 2387
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 2390
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 2392
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 2394
    :pswitch_7
    const/4 v0, 0x7

    return v0

    .line 2397
    :pswitch_8
    const/16 v0, 0x8

    return v0

    .line 2400
    :pswitch_9
    const/16 v0, 0x9

    return v0

    .line 2403
    :pswitch_a
    const/16 v0, 0xa

    return v0

    .line 2406
    :pswitch_b
    const/16 v0, 0xb

    return v0

    .line 2409
    :pswitch_c
    const/16 v0, 0xc

    return v0

    .line 2412
    :pswitch_d
    const/16 v0, 0xd

    return v0

    .line 2415
    :pswitch_e
    const/16 v0, 0xe

    return v0

    .line 2417
    :pswitch_f
    const/16 v0, 0xf

    return v0

    .line 2419
    :pswitch_10
    const/16 v0, 0x10

    return v0

    .line 2421
    :pswitch_11
    const/16 v0, 0x11

    return v0

    .line 2423
    :pswitch_12
    const/16 v0, 0x12

    return v0

    .line 2427
    :pswitch_13
    const/16 v0, 0x13

    return v0

    .line 2431
    :pswitch_14
    const/16 v0, 0x14

    return v0

    .line 2434
    :pswitch_15
    const/16 v0, 0x15

    return v0

    .line 2437
    :pswitch_16
    const/16 v0, 0x16

    return v0

    .line 2440
    :pswitch_17
    const/16 v0, 0x17

    return v0

    .line 2443
    :pswitch_18
    const/16 v0, 0x18

    return v0

    .line 2446
    :pswitch_19
    const/16 v0, 0x19

    return v0

    .line 2450
    :pswitch_1a
    const/16 v0, 0x1a

    return v0

    .line 2453
    :pswitch_1b
    const/16 v0, 0x1b

    return v0

    .line 2455
    :pswitch_1c
    const/16 v0, 0x1c

    return v0

    .line 2457
    :pswitch_1d
    const/16 v0, 0x1d

    return v0

    .line 2460
    :pswitch_1e
    const/16 v0, 0x1e

    return v0

    .line 2463
    :pswitch_1f
    const/16 v0, 0x1f

    return v0

    .line 2377
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_10
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_0
        :pswitch_8
        :pswitch_14
        :pswitch_9
        :pswitch_7
        :pswitch_12
        :pswitch_17
        :pswitch_c
        :pswitch_d
        :pswitch_2
        :pswitch_11
        :pswitch_1c
        :pswitch_1a
        :pswitch_f
        :pswitch_1e
        :pswitch_15
        :pswitch_13
        :pswitch_1d
        :pswitch_6
        :pswitch_a
        :pswitch_16
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_e
        :pswitch_1
        :pswitch_5
        :pswitch_1b
        :pswitch_4
        :pswitch_1f
    .end packed-switch
.end method

.method writeSysFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "values"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 8416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8417
    :cond_0
    return-void

    .line 8419
    :cond_1
    const-string/jumbo v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Write Sys File,FilePath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Values: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8420
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8421
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 8423
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8424
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 8425
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8431
    if-eqz v4, :cond_2

    .line 8433
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v3, v4

    .line 8415
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    return-void

    .line 8434
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 8436
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 8428
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 8429
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8431
    if-eqz v3, :cond_3

    .line 8433
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 8434
    :catch_2
    move-exception v1

    .line 8436
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 8426
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 8427
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 8431
    if-eqz v3, :cond_3

    .line 8433
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 8434
    :catch_4
    move-exception v1

    .line 8436
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 8430
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 8431
    :goto_4
    if-eqz v3, :cond_4

    .line 8433
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 8430
    :cond_4
    :goto_5
    throw v5

    .line 8434
    :catch_5
    move-exception v1

    .line 8436
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 8430
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 8426
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 8428
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
