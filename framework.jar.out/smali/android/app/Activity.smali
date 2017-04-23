.class public Landroid/app/Activity;
.super Landroid/view/ContextThemeWrapper;
.source "Activity.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/Window$OnWindowDismissedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Activity$ManagedDialog;,
        Landroid/app/Activity$NonConfigurationInstances;,
        Landroid/app/Activity$ManagedCursor;,
        Landroid/app/Activity$TranslucentConversionListener;,
        Landroid/app/Activity$HostCallbacks;
    }
.end annotation


# static fields
.field private static final DEBUG_LIFECYCLE:Z = false

.field public static final DEFAULT_KEYS_DIALER:I = 0x1

.field public static final DEFAULT_KEYS_DISABLE:I = 0x0

.field public static final DEFAULT_KEYS_SEARCH_GLOBAL:I = 0x4

.field public static final DEFAULT_KEYS_SEARCH_LOCAL:I = 0x3

.field public static final DEFAULT_KEYS_SHORTCUT:I = 0x2

.field protected static final FOCUSED_STATE_SET:[I

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:fragments"

.field private static final REQUEST_PERMISSIONS_WHO_PREFIX:Ljava/lang/String; = "@android:requestPermissions:"

.field public static final RESULT_CANCELED:I = 0x0

.field public static final RESULT_FIRST_USER:I = 0x1

.field public static final RESULT_OK:I = -0x1

.field private static final SAVED_DIALOGS_TAG:Ljava/lang/String; = "android:savedDialogs"

.field private static final SAVED_DIALOG_ARGS_KEY_PREFIX:Ljava/lang/String; = "android:dialog_args_"

.field private static final SAVED_DIALOG_IDS_KEY:Ljava/lang/String; = "android:savedDialogIds"

.field private static final SAVED_DIALOG_KEY_PREFIX:Ljava/lang/String; = "android:dialog_"

.field private static final SETTINGS_SET_ICON_THEME:Ljava/lang/String; = "systemui.set_icon_theme"

.field private static final SETTINGS_TINT_STATUS_BAR:Ljava/lang/String; = "systemui.tint_status_bar"

.field private static final STATUSBAR_TAG:Ljava/lang/String; = "lenovotintstatusbar"

.field private static final TAG:Ljava/lang/String; = "Activity"

.field private static final WINDOW_HIERARCHY_TAG:Ljava/lang/String; = "android:viewHierarchyState"


# instance fields
.field mActionBar:Landroid/app/ActionBar;

.field private mActionModeTypeStarting:I

.field mActivityInfo:Landroid/content/pm/ActivityInfo;

.field mActivityTransitionState:Landroid/app/ActivityTransitionState;

.field private mApplication:Landroid/app/Application;

.field mCalled:Z

.field private mChangeCanvasToTranslucent:Z

.field mChangingConfigurations:Z

.field private mComponent:Landroid/content/ComponentName;

.field mConfigChangeFlags:I

.field mCurrentConfig:Landroid/content/res/Configuration;

.field mDecor:Landroid/view/View;

.field private mDefaultKeyMode:I

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDestroyed:Z

.field private mDidTint:Z

.field private mDoReportFullyDrawn:Z

.field mEmbeddedID:Ljava/lang/String;

.field private mEnableDefaultActionBarUp:Z

.field mEnterTransitionListener:Landroid/app/SharedElementCallback;

.field mExitTransitionListener:Landroid/app/SharedElementCallback;

.field mFinished:Z

.field final mFragments:Landroid/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field private mIdent:I

.field private mInitialized:Z

.field private final mInstanceTracker:Ljava/lang/Object;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field mIntent:Landroid/content/Intent;

.field mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

.field mMainThread:Landroid/app/ActivityThread;

.field private final mManagedCursors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity$ManagedCursor;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedDialogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Activity$ManagedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuInflater:Landroid/view/MenuInflater;

.field private mOriginalFlags:I

.field mParent:Landroid/app/Activity;

.field private mPerfServiceWrapper:Lcom/mediatek/perfservice/IPerfServiceWrapper;

.field mReferrer:Ljava/lang/String;

.field mResultCode:I

.field mResultData:Landroid/content/Intent;

.field mResumed:Z

.field private mSearchEvent:Landroid/view/SearchEvent;

.field private mSearchManager:Landroid/app/SearchManager;

.field private mShouldSetStatusBarIconTheme:Z

.field private mShouldSetStatusBarTint:Z

.field mStartedActivity:Z

.field private mStatusBarBGColor:Ljava/lang/Integer;

.field private mStatusBarHeight:I

.field private mStatusBarTintColor:Ljava/lang/Integer;

.field private mStatusBarTintRunnable:Ljava/lang/Runnable;

.field private mStopped:Z

.field mTemporaryPause:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleReady:Z

.field private mToken:Landroid/os/IBinder;

.field private mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

.field private mUiThread:Ljava/lang/Thread;

.field mVisibleBehind:Z

.field mVisibleFromClient:Z

.field mVisibleFromServer:Z

.field private mVoiceInteractor:Landroid/app/VoiceInteractor;

.field private mWindow:Landroid/view/Window;

.field mWindowAdded:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mYOffset:I


# direct methods
.method static synthetic -get0(Landroid/app/Activity;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Activity;->mShouldSetStatusBarIconTheme:Z

    return v0
.end method

.method static synthetic -get1(Landroid/app/Activity;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Activity;->mShouldSetStatusBarTint:Z

    return v0
.end method

.method static synthetic -get2(Landroid/app/Activity;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/app/Activity;->mStatusBarBGColor:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic -get3(Landroid/app/Activity;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/app/Activity;->mStatusBarTintColor:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "color"    # I

    .prologue
    invoke-static {p0}, Landroid/app/Activity;->isWhiteColor(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;->getTintAndIconThemeColors()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "tint"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Activity;->setFlags(Z)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "light"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/app/Activity;->setLightStatusBar(Z)V

    return-void
.end method

.method static synthetic -wrap4(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/app/Activity;->tintLog(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 808
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009c

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/app/Activity;->FOCUSED_STATE_SET:[I

    .line 685
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 685
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;-><init>()V

    .line 734
    iput-boolean v0, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 736
    iput-boolean v1, p0, Landroid/app/Activity;->mTemporaryPause:Z

    .line 738
    iput-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    .line 756
    iput-object v2, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 757
    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 758
    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    .line 759
    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 760
    iput-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 766
    iput v1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 769
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    .line 770
    new-instance v0, Landroid/app/Activity$HostCallbacks;

    invoke-direct {v0, p0}, Landroid/app/Activity$HostCallbacks;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Landroid/app/FragmentController;->createController(Landroid/app/FragmentHostCallback;)Landroid/app/FragmentController;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    .line 776
    iput-object v2, p0, Landroid/app/Activity;->mPerfServiceWrapper:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    .line 791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 790
    iput-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    .line 794
    iput v1, p0, Landroid/app/Activity;->mResultCode:I

    .line 795
    iput-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    .line 802
    iput-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 803
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 805
    iput v1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 806
    iput-object v2, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 811
    invoke-static {p0}, Landroid/os/StrictMode;->trackActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Activity;->mInstanceTracker:Ljava/lang/Object;

    .line 815
    new-instance v0, Landroid/app/ActivityTransitionState;

    invoke-direct {v0}, Landroid/app/ActivityTransitionState;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    .line 816
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    .line 817
    sget-object v0, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    iput-object v0, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 4900
    iput-boolean v1, p0, Landroid/app/Activity;->mInitialized:Z

    .line 685
    return-void
.end method

.method private cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4037
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 4038
    :goto_0
    if-eqz v0, :cond_0

    .line 4039
    invoke-virtual {v0}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 4041
    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/app/Activity;->isTopOfTask()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4036
    :cond_1
    :goto_1
    return-void

    .line 4037
    :cond_2
    const/4 v0, 0x0

    .local v0, "decor":Landroid/view/View;
    goto :goto_0

    .line 4042
    .end local v0    # "decor":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v1, p0, p1}, Landroid/app/ActivityTransitionState;->startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # Ljava/lang/Integer;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 1089
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 1090
    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_0

    .line 1091
    return-object v2

    .line 1093
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 1094
    return-object v0
.end method

.method private dispatchRequestPermissionsResult(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 6965
    if-eqz p2, :cond_0

    .line 6966
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    .line 6965
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6967
    .local v1, "permissions":[Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    .line 6968
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    .line 6967
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 6969
    .local v0, "grantResults":[I
    :goto_1
    invoke-virtual {p0, p1, v1, v0}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 6963
    return-void

    .line 6966
    .end local v0    # "grantResults":[I
    .end local v1    # "permissions":[Ljava/lang/String;
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    .restart local v1    # "permissions":[Ljava/lang/String;
    goto :goto_0

    .line 6968
    :cond_1
    new-array v0, v3, [I

    .restart local v0    # "grantResults":[I
    goto :goto_1
.end method

.method private dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v3, 0x0

    .line 6975
    if-eqz p2, :cond_0

    .line 6976
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    .line 6975
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6977
    .local v1, "permissions":[Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    .line 6978
    const-string/jumbo v2, "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"

    .line 6977
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 6979
    .local v0, "grantResults":[I
    :goto_1
    invoke-virtual {p3, p1, v1, v0}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 6973
    return-void

    .line 6976
    .end local v0    # "grantResults":[I
    .end local v1    # "permissions":[Ljava/lang/String;
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    .restart local v1    # "permissions":[Ljava/lang/String;
    goto :goto_0

    .line 6978
    :cond_1
    new-array v0, v3, [I

    .restart local v0    # "grantResults":[I
    goto :goto_1
.end method

.method private ensureSearchManager()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5582
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v0, :cond_0

    .line 5583
    return-void

    .line 5586
    :cond_0
    new-instance v0, Landroid/app/SearchManager;

    invoke-direct {v0, p0, v1}, Landroid/app/SearchManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    .line 5581
    return-void
.end method

.method private finish(Z)V
    .locals 5
    .param p1, "finishTask"    # Z

    .prologue
    .line 5182
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v3, :cond_2

    .line 5185
    monitor-enter p0

    .line 5186
    :try_start_0
    iget v1, p0, Landroid/app/Activity;->mResultCode:I

    .line 5187
    .local v1, "resultCode":I
    iget-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "resultData":Landroid/content/Intent;
    monitor-exit p0

    .line 5191
    if-eqz v2, :cond_0

    .line 5192
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 5194
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 5195
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5194
    invoke-interface {v3, v4, v1, v2, p1}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5196
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/Activity;->mFinished:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5181
    .end local v1    # "resultCode":I
    .end local v2    # "resultData":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 5185
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 5202
    :cond_2
    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v3, p0}, Landroid/app/Activity;->finishFromChild(Landroid/app/Activity;)V

    goto :goto_0

    .line 5198
    .restart local v1    # "resultCode":I
    .restart local v2    # "resultData":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private getMainColorFromBitmap(Landroid/graphics/Bitmap;I)Ljava/lang/Integer;
    .locals 11
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "yOffset"    # I

    .prologue
    const/4 v10, 0x0

    .line 5082
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-lt p2, v9, :cond_1

    .line 5083
    :cond_0
    const-string/jumbo v9, "Error get color, return null"

    invoke-static {v9}, Landroid/app/Activity;->tintLog(Ljava/lang/String;)V

    .line 5084
    return-object v10

    .line 5087
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 5088
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v9, v10

    float-to-int v8, v9

    .line 5089
    .local v8, "step":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 5090
    invoke-virtual {p1, v3, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 5091
    .local v7, "pixelColor":Ljava/lang/Integer;
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 5092
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5089
    :goto_1
    add-int/2addr v3, v8

    goto :goto_0

    .line 5094
    :cond_2
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5098
    .end local v7    # "pixelColor":Ljava/lang/Integer;
    :cond_3
    const/4 v6, -0x1

    .line 5099
    .local v6, "max":I
    const/4 v4, 0x0

    .line 5100
    .local v4, "mainColor":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v4    # "mainColor":Ljava/lang/Integer;
    .local v2, "e$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5101
    .local v1, "e":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5102
    .local v0, "count":I
    if-le v0, v6, :cond_4

    .line 5103
    move v6, v0

    .line 5104
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .local v4, "mainColor":Ljava/lang/Integer;
    goto :goto_2

    .line 5107
    .end local v0    # "count":I
    .end local v1    # "e":Ljava/util/Map$Entry;
    .end local v4    # "mainColor":Ljava/lang/Integer;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getColor = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", yOffset = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/app/Activity;->tintLog(Ljava/lang/String;)V

    .line 5108
    return-object v4
.end method

.method private getTintAndIconThemeColors()V
    .locals 7

    .prologue
    .line 5037
    iget-boolean v4, p0, Landroid/app/Activity;->mShouldSetStatusBarTint:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/app/Activity;->mStatusBarBGColor:Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 5039
    return-void

    .line 5042
    :cond_0
    iget-object v4, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    if-nez v4, :cond_1

    .line 5043
    const-string/jumbo v4, "mDecor == null!!!"

    invoke-static {v4}, Landroid/app/Activity;->tintLog(Ljava/lang/String;)V

    .line 5044
    return-void

    .line 5048
    :cond_1
    iget-object v4, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v2

    .line 5049
    .local v2, "enabled":Z
    if-nez v2, :cond_2

    .line 5050
    iget-object v4, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 5052
    :cond_2
    const/4 v3, 0x0

    .line 5053
    .local v3, "shouldRecycle":Z
    iget-object v4, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5054
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5055
    :cond_3
    iget-object v4, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    const/16 v5, 0x64

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Landroid/app/Activity;->mStatusBarHeight:I

    add-int/lit8 v5, v5, 0xa

    .line 5056
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 5055
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5057
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5058
    .local v1, "c":Landroid/graphics/Canvas;
    iget-object v4, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5059
    iget-object v4, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 5060
    const/4 v3, 0x1

    .line 5063
    .end local v1    # "c":Landroid/graphics/Canvas;
    :cond_4
    iget-boolean v4, p0, Landroid/app/Activity;->mShouldSetStatusBarIconTheme:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/app/Activity;->mStatusBarBGColor:Ljava/lang/Integer;

    if-nez v4, :cond_5

    .line 5065
    iget v4, p0, Landroid/app/Activity;->mYOffset:I

    invoke-direct {p0, v0, v4}, Landroid/app/Activity;->getMainColorFromBitmap(Landroid/graphics/Bitmap;I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Landroid/app/Activity;->mStatusBarBGColor:Ljava/lang/Integer;

    .line 5067
    :cond_5
    iget-boolean v4, p0, Landroid/app/Activity;->mShouldSetStatusBarTint:Z

    if-eqz v4, :cond_6

    .line 5068
    iget v4, p0, Landroid/app/Activity;->mStatusBarHeight:I

    iget v5, p0, Landroid/app/Activity;->mYOffset:I

    add-int/2addr v4, v5

    invoke-direct {p0, v0, v4}, Landroid/app/Activity;->getMainColorFromBitmap(Landroid/graphics/Bitmap;I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Landroid/app/Activity;->mStatusBarTintColor:Ljava/lang/Integer;

    .line 5071
    :cond_6
    if-nez v2, :cond_7

    .line 5072
    iget-object v4, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 5075
    :cond_7
    if-eqz v3, :cond_8

    .line 5076
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5035
    :cond_8
    return-void
.end method

.method private hookMakeVisibleForTintAndIconTheme()V
    .locals 9

    .prologue
    const/high16 v8, 0x4000000

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4923
    iget-boolean v2, p0, Landroid/app/Activity;->mInitialized:Z

    if-nez v2, :cond_0

    .line 4924
    invoke-direct {p0}, Landroid/app/Activity;->initTintAndIconTheme()V

    .line 4925
    iput-boolean v3, p0, Landroid/app/Activity;->mInitialized:Z

    .line 4929
    :cond_0
    iget v2, p0, Landroid/app/Activity;->mOriginalFlags:I

    const/high16 v5, -0x80000000

    and-int/2addr v2, v5

    if-nez v2, :cond_7

    move v2, v3

    .line 4928
    :goto_0
    iput-boolean v2, p0, Landroid/app/Activity;->mShouldSetStatusBarTint:Z

    .line 4931
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4933
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-boolean v2, p0, Landroid/app/Activity;->mShouldSetStatusBarTint:Z

    if-eqz v2, :cond_2

    .line 4935
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v1, v2, v5

    .line 4936
    .local v1, "sysuiVis":I
    const-string/jumbo v2, "makeVisible, component = %s, flags = 0x%s, sysuiVis = 0x%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 4937
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    aput-object v6, v5, v4

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 4936
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/Activity;->tintLog(Ljava/lang/String;)V

    .line 4938
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v8

    if-nez v2, :cond_1

    .line 4939
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_8

    .line 4943
    :cond_1
    :goto_1
    iput-boolean v4, p0, Landroid/app/Activity;->mShouldSetStatusBarTint:Z

    .line 4947
    .end local v1    # "sysuiVis":I
    :cond_2
    iget-boolean v2, p0, Landroid/app/Activity;->mShouldSetStatusBarTint:Z

    if-eqz v2, :cond_3

    .line 4950
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "systemui.tint_status_bar"

    .line 4949
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_9

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Landroid/app/Activity;->mShouldSetStatusBarTint:Z

    .line 4953
    :cond_3
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v8

    if-eqz v2, :cond_b

    .line 4954
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4955
    const-string/jumbo v5, "systemui.set_icon_theme"

    .line 4954
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_a

    move v2, v3

    .line 4952
    :goto_3
    iput-boolean v2, p0, Landroid/app/Activity;->mShouldSetStatusBarIconTheme:Z

    .line 4956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Check tint and icon theme, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Landroid/app/Activity;->mShouldSetStatusBarIconTheme:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4957
    iget-boolean v5, p0, Landroid/app/Activity;->mShouldSetStatusBarTint:Z

    .line 4956
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/Activity;->tintLog(Ljava/lang/String;)V

    .line 4960
    iget-boolean v2, p0, Landroid/app/Activity;->mShouldSetStatusBarTint:Z

    if-eqz v2, :cond_c

    .line 4961
    invoke-direct {p0, v3}, Landroid/app/Activity;->setFlags(Z)V

    .line 4966
    :cond_4
    :goto_4
    iget-boolean v2, p0, Landroid/app/Activity;->mShouldSetStatusBarTint:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Landroid/app/Activity;->mShouldSetStatusBarIconTheme:Z

    if-eqz v2, :cond_6

    .line 4967
    :cond_5
    iget-object v2, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/app/Activity;->mStatusBarTintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4922
    :cond_6
    return-void

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_7
    move v2, v4

    .line 4929
    goto/16 :goto_0

    .line 4940
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "sysuiVis":I
    :cond_8
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_1

    .line 4941
    and-int/lit16 v2, v1, 0x400

    if-nez v2, :cond_1

    .line 4942
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    goto :goto_1

    .end local v1    # "sysuiVis":I
    :cond_9
    move v2, v4

    .line 4949
    goto :goto_2

    :cond_a
    move v2, v4

    .line 4954
    goto :goto_3

    :cond_b
    move v2, v4

    .line 4953
    goto :goto_3

    .line 4962
    :cond_c
    iget-boolean v2, p0, Landroid/app/Activity;->mDidTint:Z

    if-eqz v2, :cond_4

    .line 4963
    invoke-direct {p0, v4}, Landroid/app/Activity;->setFlags(Z)V

    goto :goto_4
.end method

.method private initTintAndIconTheme()V
    .locals 5

    .prologue
    .line 4991
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, p0, Landroid/app/Activity;->mOriginalFlags:I

    .line 4992
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Activity;->mDidTint:Z

    .line 4994
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    .line 4995
    const-string/jumbo v3, "dimen"

    const-string/jumbo v4, "android"

    .line 4994
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4996
    .local v0, "statusBarHeightID":I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/app/Activity;->mStatusBarHeight:I

    .line 4997
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/app/Activity;->mYOffset:I

    .line 4999
    new-instance v1, Landroid/app/Activity$1;

    invoke-direct {v1, p0}, Landroid/app/Activity$1;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Landroid/app/Activity;->mStatusBarTintRunnable:Ljava/lang/Runnable;

    .line 4990
    return-void
.end method

.method private initWindowDecorActionBar()V
    .locals 3

    .prologue
    .line 2183
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2187
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 2189
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    .line 2190
    :cond_0
    return-void

    .line 2193
    :cond_1
    new-instance v1, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v1, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 2194
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v2, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    .line 2196
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 2197
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getLogoResource()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 2182
    return-void
.end method

.method private isTopOfTask()Z
    .locals 3

    .prologue
    .line 5959
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isTopOfTask(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5960
    :catch_0
    move-exception v0

    .line 5961
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method private static isWhiteColor(I)Z
    .locals 5
    .param p0, "color"    # I

    .prologue
    .line 5118
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 5119
    .local v2, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 5120
    .local v1, "green":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 5121
    .local v0, "blue":I
    add-int v3, v2, v1

    add-int/2addr v3, v0

    const/16 v4, 0x258

    if-le v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private missingDialog(I)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 3546
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no dialog with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was ever "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3547
    const-string/jumbo v2, "shown via Activity#showDialog"

    .line 3546
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private restoreManagedDialogs(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 1062
    const-string/jumbo v7, "android:savedDialogs"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1063
    .local v0, "b":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 1064
    return-void

    .line 1067
    :cond_0
    const-string/jumbo v7, "android:savedDialogIds"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 1068
    .local v4, "ids":[I
    array-length v6, v4

    .line 1069
    .local v6, "numDialogs":I
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7, v6}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 1070
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_2

    .line 1071
    aget v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1072
    .local v1, "dialogId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1073
    .local v2, "dialogState":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 1076
    new-instance v5, Landroid/app/Activity$ManagedDialog;

    invoke-direct {v5, v10}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$ManagedDialog;)V

    .line 1077
    .local v5, "md":Landroid/app/Activity$ManagedDialog;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 1078
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-direct {p0, v1, v2, v7}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v7

    iput-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 1079
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_1

    .line 1080
    iget-object v7, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1081
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    iget-object v9, v5, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p0, v7, v8, v9}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 1082
    iget-object v7, v5, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7, v2}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1070
    .end local v5    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1061
    .end local v1    # "dialogId":Ljava/lang/Integer;
    .end local v2    # "dialogState":Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method private saveManagedDialogs(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1424
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v6, :cond_0

    .line 1425
    return-void

    .line 1428
    :cond_0
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1429
    .local v5, "numDialogs":I
    if-nez v5, :cond_1

    .line 1430
    return-void

    .line 1433
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1435
    .local v0, "dialogState":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    new-array v2, v6, [I

    .line 1438
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 1439
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1440
    .local v3, "key":I
    aput v3, v2, v1

    .line 1441
    iget-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity$ManagedDialog;

    .line 1442
    .local v4, "md":Landroid/app/Activity$ManagedDialog;
    invoke-static {v3}, Landroid/app/Activity;->savedDialogKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1443
    iget-object v6, v4, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    .line 1444
    invoke-static {v3}, Landroid/app/Activity;->savedDialogArgsKeyFor(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1438
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1448
    .end local v3    # "key":I
    .end local v4    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_3
    const-string/jumbo v6, "android:savedDialogIds"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1449
    const-string/jumbo v6, "android:savedDialogs"

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1423
    return-void
.end method

.method private static savedDialogArgsKeyFor(I)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # I

    .prologue
    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android:dialog_args_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static savedDialogKeyFor(I)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # I

    .prologue
    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android:dialog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setFlags(Z)V
    .locals 4
    .param p1, "tint"    # Z

    .prologue
    .line 4972
    iput-boolean p1, p0, Landroid/app/Activity;->mDidTint:Z

    .line 4973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/Activity;->tintLog(Ljava/lang/String;)V

    .line 4974
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4976
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 4977
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x7ffeff00

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4986
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4971
    return-void

    .line 4981
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p0, Landroid/app/Activity;->mOriginalFlags:I

    const v3, 0x7fffffff

    or-int/2addr v2, v3

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4982
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p0, Landroid/app/Activity;->mOriginalFlags:I

    const v3, -0x10001

    or-int/2addr v2, v3

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4983
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, p0, Landroid/app/Activity;->mOriginalFlags:I

    or-int/lit16 v2, v2, -0x101

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method private setLightStatusBar(Z)V
    .locals 4
    .param p1, "light"    # Z

    .prologue
    .line 5021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLightStatusBar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/Activity;->tintLog(Ljava/lang/String;)V

    .line 5022
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 5023
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5024
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 5025
    .local v1, "vis":I
    if-eqz p1, :cond_1

    .line 5026
    or-int/lit16 v1, v1, 0x2000

    .line 5030
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 5020
    .end local v1    # "vis":I
    :cond_0
    return-void

    .line 5028
    .restart local v1    # "vis":I
    :cond_1
    and-int/lit16 v1, v1, -0x2001

    goto :goto_0
.end method

.method private startIntentSenderForResultInner(Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/app/Activity;Landroid/os/Bundle;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "activity"    # Landroid/app/Activity;
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4217
    const/4 v5, 0x0

    .line 4218
    .local v5, "resolvedType":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 4219
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 4220
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 4221
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 4223
    .end local v5    # "resolvedType":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 4224
    iget-object v2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    .line 4225
    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object/from16 v0, p6

    iget-object v7, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    move-object v3, p1

    move-object/from16 v4, p3

    move/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p7

    .line 4223
    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v13

    .line 4227
    .local v13, "result":I
    const/4 v1, -0x6

    if-ne v13, v1, :cond_2

    .line 4228
    new-instance v1, Landroid/content/IntentSender$SendIntentException;

    invoke-direct {v1}, Landroid/content/IntentSender$SendIntentException;-><init>()V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4231
    .end local v13    # "result":I
    :catch_0
    move-exception v12

    .line 4233
    :goto_0
    if-ltz p2, :cond_1

    .line 4241
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 4215
    :cond_1
    return-void

    .line 4230
    .restart local v13    # "result":I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v13, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static tintLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 5113
    const-string/jumbo v0, "lenovotintstatusbar"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5112
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2258
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2259
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2257
    return-void
.end method

.method final attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;ILandroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aThread"    # Landroid/app/ActivityThread;
    .param p3, "instr"    # Landroid/app/Instrumentation;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "ident"    # I
    .param p6, "application"    # Landroid/app/Application;
    .param p7, "intent"    # Landroid/content/Intent;
    .param p8, "info"    # Landroid/content/pm/ActivityInfo;
    .param p9, "title"    # Ljava/lang/CharSequence;
    .param p10, "parent"    # Landroid/app/Activity;
    .param p11, "id"    # Ljava/lang/String;
    .param p12, "lastNonConfigurationInstances"    # Landroid/app/Activity$NonConfigurationInstances;
    .param p13, "config"    # Landroid/content/res/Configuration;
    .param p14, "referrer"    # Ljava/lang/String;
    .param p15, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    .line 6514
    invoke-virtual {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 6516
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentController;->attachHost(Landroid/app/Fragment;)V

    .line 6518
    new-instance v1, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 6519
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 6520
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    .line 6521
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 6522
    iget v1, p8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    if-eqz v1, :cond_0

    .line 6523
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v2, p8, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 6525
    :cond_0
    iget v1, p8, Landroid/content/pm/ActivityInfo;->uiOptions:I

    if-eqz v1, :cond_1

    .line 6526
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget v2, p8, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setUiOptions(I)V

    .line 6528
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    .line 6530
    iput-object p2, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 6531
    iput-object p3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 6532
    iput-object p4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6533
    iput p5, p0, Landroid/app/Activity;->mIdent:I

    .line 6534
    iput-object p6, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    .line 6535
    iput-object p7, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 6536
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    .line 6537
    invoke-virtual {p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    .line 6538
    iput-object p8, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 6539
    iput-object p9, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 6540
    move-object/from16 v0, p10

    iput-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 6541
    move-object/from16 v0, p11

    iput-object v0, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 6542
    move-object/from16 v0, p12

    iput-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 6543
    if-eqz p15, :cond_2

    .line 6544
    if-eqz p12, :cond_4

    .line 6545
    move-object/from16 v0, p12

    iget-object v1, v0, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    .line 6552
    :cond_2
    :goto_0
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    .line 6553
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 6554
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 6555
    iget v2, p8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    .line 6552
    :goto_1
    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 6556
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 6557
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 6559
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    .line 6560
    move-object/from16 v0, p13

    iput-object v0, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 6513
    return-void

    .line 6547
    :cond_4
    new-instance v1, Landroid/app/VoiceInteractor;

    .line 6548
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 6547
    move-object/from16 v0, p15

    invoke-direct {v1, v0, p0, p0, v2}, Landroid/app/VoiceInteractor;-><init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    goto :goto_0

    .line 6555
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public canStartActivityForResult()Z
    .locals 1

    .prologue
    .line 4663
    const/4 v0, 0x1

    return v0
.end method

.method public closeContextMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 3318
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3319
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 3317
    :cond_0
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3257
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3258
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 3256
    :cond_0
    return-void
.end method

.method public convertFromTranslucent()V
    .locals 4

    .prologue
    .line 5984
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 5985
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5986
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5982
    :cond_0
    :goto_0
    return-void

    .line 5988
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z
    .locals 6
    .param p1, "callback"    # Landroid/app/Activity$TranslucentConversionListener;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v5, 0x0

    .line 6023
    :try_start_0
    iput-object p1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 6025
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, p2}, Landroid/app/IActivityManager;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    move-result v2

    .line 6024
    iput-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    .line 6026
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6027
    const/4 v0, 0x1

    .line 6033
    .local v0, "drawComplete":Z
    :goto_0
    iget-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v2, :cond_0

    .line 6035
    iget-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    invoke-interface {v2, v0}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 6037
    :cond_0
    iget-boolean v2, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    return v2

    .line 6028
    .end local v0    # "drawComplete":Z
    :catch_0
    move-exception v1

    .line 6030
    .local v1, "e":Landroid/os/RemoteException;
    iput-boolean v5, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    .line 6031
    const/4 v0, 0x0

    .restart local v0    # "drawComplete":Z
    goto :goto_0
.end method

.method public createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 13
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .prologue
    .line 5417
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5419
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 5421
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5423
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5424
    :goto_0
    iget-object v4, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v6, v1, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p2, v6, v1

    .line 5425
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 5422
    const/4 v1, 0x3

    .line 5424
    const/4 v7, 0x0

    const/4 v9, 0x0

    move v5, p1

    move/from16 v8, p3

    .line 5421
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    .line 5426
    .local v12, "target":Landroid/content/IIntentSender;
    if-eqz v12, :cond_1

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v12}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    :goto_1
    return-object v0

    .line 5423
    .end local v12    # "target":Landroid/content/IIntentSender;
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    iget-object v3, v1, Landroid/app/Activity;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5426
    .restart local v12    # "target":Landroid/content/IIntentSender;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 5427
    .end local v12    # "target":Landroid/content/IIntentSender;
    :catch_0
    move-exception v11

    .line 5430
    .local v11, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public final dismissDialog(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3530
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 3531
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 3534
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 3535
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_1

    .line 3536
    invoke-direct {p0, p1}, Landroid/app/Activity;->missingDialog(I)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 3538
    :cond_1
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3529
    return-void
.end method

.method dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 6
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 6842
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 6843
    if-nez p1, :cond_1

    .line 6844
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 6838
    :cond_0
    :goto_0
    return-void

    .line 6845
    :cond_1
    const-string/jumbo v4, "@android:requestPermissions:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6846
    const-string/jumbo v4, "@android:requestPermissions:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 6847
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6848
    invoke-direct {p0, p2, p4}, Landroid/app/Activity;->dispatchRequestPermissionsResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 6850
    :cond_2
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 6851
    .local v0, "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 6852
    invoke-direct {p0, p2, p4, v0}, Landroid/app/Activity;->dispatchRequestPermissionsResultToFragment(ILandroid/content/Intent;Landroid/app/Fragment;)V

    goto :goto_0

    .line 6855
    .end local v0    # "frag":Landroid/app/Fragment;
    :cond_3
    const-string/jumbo v4, "@android:view:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6856
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v4

    .line 6857
    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    .line 6856
    invoke-virtual {v4, v5}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v3

    .line 6858
    .local v3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "viewRoot$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    .line 6859
    .local v1, "viewRoot":Landroid/view/ViewRootImpl;
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 6860
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3, p4}, Landroid/view/View;->dispatchActivityResult(Ljava/lang/String;IILandroid/content/Intent;)Z

    move-result v4

    .line 6859
    if-eqz v4, :cond_4

    .line 6862
    return-void

    .line 6866
    .end local v1    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v2    # "viewRoot$iterator":Ljava/util/Iterator;
    .end local v3    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl;>;"
    :cond_5
    iget-object v4, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v4, p1}, Landroid/app/FragmentController;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 6867
    .restart local v0    # "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 6868
    invoke-virtual {v0, p2, p3, p4}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public dispatchEnterAnimationComplete()V
    .locals 1

    .prologue
    .line 6191
    invoke-virtual {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 6192
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6193
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnEnterAnimationComplete()V

    .line 6190
    :cond_0
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2862
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2863
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2864
    const/4 v0, 0x1

    return v0

    .line 2866
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2768
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2772
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_0

    .line 2773
    iget-object v3, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, p1}, Landroid/app/ActionBar;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 2772
    if-eqz v3, :cond_0

    .line 2774
    return v5

    .line 2777
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2778
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2779
    return v5

    .line 2781
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2782
    .local v0, "decor":Landroid/view/View;
    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2783
    :cond_2
    if-eqz v0, :cond_3

    .line 2784
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    .line 2783
    :cond_3
    invoke-virtual {p1, p0, v2, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2797
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2798
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2799
    const/4 v0, 0x1

    return v0

    .line 2801
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v4, -0x1

    .line 2870
    invoke-virtual {p0}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2871
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2873
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2874
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_2

    .line 2875
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 2876
    .local v0, "isFullScreen":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 2878
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2879
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2880
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2883
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 2875
    .end local v0    # "isFullScreen":Z
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isFullScreen":Z
    goto :goto_0

    .line 2874
    .end local v0    # "isFullScreen":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isFullScreen":Z
    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2815
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2816
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2818
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2819
    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2820
    const-string/jumbo v0, "Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BMW] dispatchTouchEvent, moveActivityTaskToFront:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2821
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 2820
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->moveActivityTaskToFront(Landroid/os/IBinder;)V

    .line 2827
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2828
    const/4 v0, 0x1

    return v0

    .line 2830
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2844
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 2845
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2846
    const/4 v0, 0x1

    return v0

    .line 2848
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 5899
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5898
    return-void
.end method

.method dumpInner(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 5903
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "Local Activity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5904
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5905
    const-string/jumbo v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5907
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5908
    iget-boolean v1, p0, Landroid/app/Activity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5909
    iget-boolean v1, p0, Landroid/app/Activity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v1, " mFinished="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5910
    iget-boolean v1, p0, Landroid/app/Activity;->mFinished:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 5911
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mChangingConfigurations="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5912
    iget-boolean v1, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 5913
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCurrentConfig="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5914
    iget-object v1, p0, Landroid/app/Activity;->mCurrentConfig:Landroid/content/res/Configuration;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5916
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5917
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5918
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v1, :cond_0

    .line 5919
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/app/VoiceInteractor;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5922
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5923
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5924
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5925
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5928
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2, p1}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5902
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 2134
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 5212
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(Z)V

    .line 5211
    return-void
.end method

.method public finishActivity(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .prologue
    .line 5281
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 5283
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5284
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 5283
    invoke-interface {v1, v2, v3, p1}, Landroid/app/IActivityManager;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5280
    :goto_0
    return-void

    .line 5289
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p0, p1}, Landroid/app/Activity;->finishActivityFromChild(Landroid/app/Activity;I)V

    goto :goto_0

    .line 5285
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 4
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 5303
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5304
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 5303
    invoke-interface {v1, v2, v3, p2}, Landroid/app/IActivityManager;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5301
    :goto_0
    return-void

    .line 5305
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public finishAffinity()V
    .locals 3

    .prologue
    .line 5230
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 5231
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can not be called from an embedded activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5233
    :cond_0
    iget v1, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 5234
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can not be called to deliver a result"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5237
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5238
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mFinished:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5229
    :cond_3
    :goto_0
    return-void

    .line 5240
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public finishAfterTransition()V
    .locals 1

    .prologue
    .line 5266
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->startExitBackTransition(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5267
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5265
    :cond_0
    return-void
.end method

.method public finishAndRemoveTask()V
    .locals 1

    .prologue
    .line 5315
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/Activity;->finish(Z)V

    .line 5314
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 0
    .param p1, "child"    # Landroid/app/Activity;

    .prologue
    .line 5255
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5254
    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 2144
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2145
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method getActivityOptions()Landroid/app/ActivityOptions;
    .locals 3

    .prologue
    .line 6069
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 6070
    :catch_0
    move-exception v0

    .line 6072
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getActivityToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 6565
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public final getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Landroid/app/Activity;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getCallingActivity()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 4854
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4855
    :catch_0
    move-exception v0

    .line 4856
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4831
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4832
    :catch_0
    move-exception v0

    .line 4833
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 1784
    iget v0, p0, Landroid/app/Activity;->mConfigChangeFlags:I

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 5561
    iget-object v0, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    .prologue
    .line 2294
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContentScene()Landroid/transition/Scene;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    .prologue
    .line 2272
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getTransitionManager()Landroid/transition/TransitionManager;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 888
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 1945
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getLastNonConfigurationChildInstances()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1890
    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v1, :cond_0

    .line 1891
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    .line 1890
    :cond_0
    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1811
    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v1, :cond_0

    .line 1812
    iget-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v0, v0, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 1811
    :cond_0
    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 3753
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method public getLocalClassName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5544
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5545
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 5546
    .local v0, "cls":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 5547
    .local v1, "packageLen":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v1, :cond_1

    .line 5549
    :cond_0
    return-object v0

    .line 5548
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    .line 5551
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .prologue
    .line 5836
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 3762
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 3763
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3764
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 3765
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 3770
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0

    .line 3767
    :cond_1
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    goto :goto_0
.end method

.method public final getParent()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method public getParentActivityIntent()Landroid/content/Intent;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 6422
    iget-object v6, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 6423
    .local v4, "parentName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6424
    return-object v9

    .line 6428
    :cond_0
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6430
    .local v5, "target":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 6431
    .local v2, "parentInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 6432
    .local v1, "parentActivity":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 6433
    invoke-static {v5}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 6435
    .local v3, "parentIntent":Landroid/content/Intent;
    :goto_0
    return-object v3

    .line 6434
    .end local v3    # "parentIntent":Landroid/content/Intent;
    :cond_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3    # "parentIntent":Landroid/content/Intent;
    goto :goto_0

    .line 6436
    .end local v1    # "parentActivity":Ljava/lang/String;
    .end local v2    # "parentInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "parentIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 6437
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "Activity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getParentActivityIntent: bad parentActivityName \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 6438
    const-string/jumbo v8, "\' in manifest"

    .line 6437
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6439
    return-object v9
.end method

.method public getPreferences(I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 5578
    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getReferrer()Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4783
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4784
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 4785
    .local v1, "referrer":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 4786
    return-object v1

    .line 4788
    :cond_0
    const-string/jumbo v3, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4789
    .local v2, "referrerName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 4790
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 4792
    :cond_1
    iget-object v3, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 4793
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "android-app"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mReferrer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 4795
    :cond_2
    return-object v4
.end method

.method public getRequestedOrientation()I
    .locals 3

    .prologue
    .line 5467
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 5469
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5470
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5469
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getRequestedOrientation(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5475
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    return v1

    .line 5471
    :catch_0
    move-exception v0

    .line 5477
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public final getSearchEvent()Landroid/view/SearchEvent;
    .locals 1

    .prologue
    .line 3634
    iget-object v0, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 5591
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5592
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 5593
    const-string/jumbo v1, "System services not available to Activities before onCreate()"

    .line 5592
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5596
    :cond_0
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5597
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    .line 5598
    :cond_1
    const-string/jumbo v0, "search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5599
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 5600
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    return-object v0

    .line 5602
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTaskId()I
    .locals 4

    .prologue
    .line 5488
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5489
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    .line 5488
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5490
    :catch_0
    move-exception v0

    .line 5491
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 5647
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleColor()I
    .locals 1

    .prologue
    .line 5651
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    return v0
.end method

.method public getVoiceInteractor()Landroid/app/VoiceInteractor;
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    return-object v0
.end method

.method public final getVolumeControlStream()I
    .locals 1

    .prologue
    .line 5803
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Landroid/app/Activity;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public hasWindowFocus()Z
    .locals 3

    .prologue
    .line 2739
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2740
    .local v1, "w":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 2741
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2742
    .local v0, "d":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2743
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    return v2

    .line 2746
    .end local v0    # "d":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3033
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3034
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->invalidateOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3032
    :cond_0
    :goto_0
    return-void

    .line 3035
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    goto :goto_0
.end method

.method public isBackgroundVisibleBehind()Z
    .locals 3

    .prologue
    .line 6156
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 6157
    :catch_0
    move-exception v0

    .line 6159
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isChangingConfigurations()Z
    .locals 1

    .prologue
    .line 5158
    iget-boolean v0, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    return v0
.end method

.method public final isChild()Z
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 5145
    iget-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .prologue
    .line 5137
    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    return v0
.end method

.method public isImmersive()Z
    .locals 3

    .prologue
    .line 5944
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isImmersive(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5945
    :catch_0
    move-exception v0

    .line 5946
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public final isResumed()Z
    .locals 1

    .prologue
    .line 6834
    iget-boolean v0, p0, Landroid/app/Activity;->mResumed:Z

    return v0
.end method

.method public isTaskRoot()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5503
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 5504
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x1

    .line 5503
    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->getTaskForActivity(Landroid/os/IBinder;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ltz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 5505
    :catch_0
    move-exception v0

    .line 5506
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public isVoiceInteraction()Z
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoiceInteractionRoot()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1275
    :try_start_0
    iget-object v2, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v2, :cond_0

    .line 1276
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->isRootVoiceInteraction(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1275
    :cond_0
    return v1

    .line 1277
    :catch_0
    move-exception v0

    .line 1279
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method makeVisible()V
    .locals 3

    .prologue
    .line 4881
    iget-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    if-nez v1, :cond_0

    .line 4882
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 4883
    .local v0, "wm":Landroid/view/ViewManager;
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4884
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Activity;->mWindowAdded:Z

    .line 4888
    .end local v0    # "wm":Landroid/view/ViewManager;
    :cond_0
    invoke-direct {p0}, Landroid/app/Activity;->hookMakeVisibleForTintAndIconTheme()V

    .line 4891
    iget-object v1, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4880
    return-void
.end method

.method public final managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1989
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1990
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1992
    const-string/jumbo v0, "ManageCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "managedQuery, c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 1996
    :cond_0
    return-object v6
.end method

.method public final managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2032
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2033
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2035
    const-string/jumbo v0, "ManageCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "managedQuery, c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    invoke-virtual {p0, v6}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 2039
    :cond_0
    return-object v6
.end method

.method public moveTaskToBack(Z)Z
    .locals 4
    .param p1, "nonRoot"    # Z

    .prologue
    const/4 v3, 0x0

    .line 5523
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5524
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/multiwindow/MultiWindowProxy;->stickWindow(Landroid/os/IBinder;Z)V

    .line 5528
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5529
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5528
    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5530
    :catch_0
    move-exception v0

    .line 5533
    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method public navigateUpTo(Landroid/content/Intent;)Z
    .locals 8
    .param p1, "upIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 6362
    iget-object v5, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v5, :cond_3

    .line 6363
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 6364
    .local v0, "destInfo":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 6365
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 6366
    if-nez v0, :cond_0

    .line 6367
    return v7

    .line 6369
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6370
    .end local p1    # "upIntent":Landroid/content/Intent;
    .local v4, "upIntent":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object p1, v4

    .line 6374
    .end local v4    # "upIntent":Landroid/content/Intent;
    .restart local p1    # "upIntent":Landroid/content/Intent;
    :cond_1
    monitor-enter p0

    .line 6375
    :try_start_0
    iget v2, p0, Landroid/app/Activity;->mResultCode:I

    .line 6376
    .local v2, "resultCode":I
    iget-object v3, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "resultData":Landroid/content/Intent;
    monitor-exit p0

    .line 6378
    if-eqz v3, :cond_2

    .line 6379
    invoke-virtual {v3}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 6382
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 6383
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v5, v6, p1, v2, v3}, Landroid/app/IActivityManager;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    return v5

    .line 6374
    .end local v2    # "resultCode":I
    .end local v3    # "resultData":Landroid/content/Intent;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 6385
    .restart local v2    # "resultCode":I
    .restart local v3    # "resultData":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 6386
    .local v1, "e":Landroid/os/RemoteException;
    return v7

    .line 6389
    .end local v0    # "destInfo":Landroid/content/ComponentName;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "resultCode":I
    .end local v3    # "resultData":Landroid/content/Intent;
    :cond_3
    iget-object v5, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v5, p0, p1}, Landroid/app/Activity;->navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v5

    return v5
.end method

.method public navigateUpToFromChild(Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "upIntent"    # Landroid/content/Intent;

    .prologue
    .line 6406
    invoke-virtual {p0, p2}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 6303
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 6292
    return-void
.end method

.method public onActivityReenter(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 5385
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 5364
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 7
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3776
    iget-object v4, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v4, :cond_1

    .line 3777
    invoke-super {p0, p1, p2, p3}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 3788
    :goto_0
    if-eqz p1, :cond_0

    .line 3789
    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3790
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v4, 0xe3

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 3791
    .local v1, "colorPrimary":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3792
    if-eqz v1, :cond_0

    .line 3793
    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v3, v5, v5, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 3795
    .local v3, "v":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 3775
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "colorPrimary":I
    .end local v3    # "v":Landroid/app/ActivityManager$TaskDescription;
    :cond_0
    return-void

    .line 3780
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3784
    :goto_1
    invoke-virtual {p1, p2, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 3781
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 1953
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 2717
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2552
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->collapseActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2553
    return-void

    .line 2556
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2557
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    .line 2551
    :cond_1
    return-void
.end method

.method public onBackgroundVisibleBehindChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 6176
    return-void
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "childActivity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 5669
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1753
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1755
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1757
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1762
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 1765
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1751
    :cond_1
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 2677
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3341
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3342
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 3344
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3355
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3356
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 3354
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 921
    iget-object v2, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v2, :cond_0

    .line 922
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v3, v3, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/app/FragmentController;->restoreLoaderNonConfig(Landroid/util/ArrayMap;)V

    .line 924
    :cond_0
    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 925
    iget-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-nez v2, :cond_5

    .line 926
    iput-boolean v4, p0, Landroid/app/Activity;->mEnableDefaultActionBarUp:Z

    .line 931
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 932
    const-string/jumbo v2, "android:fragments"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 933
    .local v0, "p":Landroid/os/Parcelable;
    iget-object v2, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-object v3, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    if-eqz v3, :cond_2

    .line 934
    iget-object v1, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    iget-object v1, v1, Landroid/app/Activity$NonConfigurationInstances;->fragments:Ljava/util/List;

    .line 933
    :cond_2
    invoke-virtual {v2, v0, v1}, Landroid/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V

    .line 936
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->dispatchCreate()V

    .line 937
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 938
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v1, :cond_4

    .line 939
    iget-object v1, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v1, p0}, Landroid/app/VoiceInteractor;->attachActivity(Landroid/app/Activity;)V

    .line 941
    :cond_4
    iput-boolean v4, p0, Landroid/app/Activity;->mCalled:Z

    .line 919
    return-void

    .line 928
    :cond_5
    iget-object v2, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 966
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 965
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 3275
    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1559
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3365
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3404
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    .prologue
    .line 3210
    invoke-virtual {p1, p0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/app/TaskStackBuilder;

    .line 3209
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3068
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3069
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 3071
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 2907
    if-nez p1, :cond_0

    .line 2908
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 2909
    .local v0, "show":Z
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2910
    return v0

    .line 2912
    .end local v0    # "show":Z
    :cond_0
    return v1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 2895
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "outBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1537
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 5881
    const-string/jumbo v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5882
    invoke-virtual {p0, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 5885
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 5867
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1675
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/app/Activity;->mCalled:Z

    .line 1678
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v5, :cond_2

    .line 1679
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1680
    .local v4, "numDialogs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1681
    iget-object v5, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedDialog;

    .line 1682
    .local v2, "md":Landroid/app/Activity$ManagedDialog;
    iget-object v5, v2, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1683
    iget-object v5, v2, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 1680
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1686
    .end local v2    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_1
    iput-object v6, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 1690
    .end local v1    # "i":I
    .end local v4    # "numDialogs":I
    :cond_2
    iget-object v6, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1691
    :try_start_0
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1692
    .local v3, "numCursors":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1693
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedCursor;

    .line 1694
    .local v0, "c":Landroid/app/Activity$ManagedCursor;
    if-eqz v0, :cond_3

    .line 1696
    const-string/jumbo v5, "ManageCursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onDestroy() loop cursor="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/app/Activity$ManagedCursor;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    invoke-static {v0}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1692
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1701
    .end local v0    # "c":Landroid/app/Activity$ManagedCursor;
    :cond_4
    iget-object v5, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 1705
    iget-object v5, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    if-eqz v5, :cond_5

    .line 1706
    iget-object v5, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {v5}, Landroid/app/SearchManager;->stopSearch()V

    .line 1709
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/app/Application;->dispatchActivityDestroyed(Landroid/app/Activity;)V

    .line 1673
    return-void

    .line 1690
    .end local v1    # "i":I
    .end local v3    # "numCursors":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 2727
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 0

    .prologue
    .line 6184
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2640
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2432
    const/4 v5, 0x4

    if-ne p1, v5, :cond_2

    .line 2433
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2434
    const/4 v6, 0x5

    .line 2433
    if-lt v5, v6, :cond_0

    .line 2435
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 2448
    :goto_0
    return v7

    .line 2438
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2439
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 2441
    :cond_1
    const-string/jumbo v5, "Activity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Tracking Key Down, activity is resumed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    return v8

    .line 2451
    :cond_2
    iget v5, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    if-nez v5, :cond_3

    .line 2452
    return v8

    .line 2453
    :cond_3
    iget v5, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    if-ne v5, v6, :cond_5

    .line 2454
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 2455
    .local v4, "w":Landroid/view/Window;
    invoke-virtual {v4, v8}, Landroid/view/Window;->hasFeature(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2456
    invoke-virtual {v4, v8, p1, p2, v6}, Landroid/view/Window;->performPanelShortcut(IILandroid/view/KeyEvent;I)Z

    move-result v5

    .line 2455
    if-eqz v5, :cond_4

    .line 2458
    return v7

    .line 2460
    :cond_4
    return v8

    .line 2463
    .end local v4    # "w":Landroid/view/Window;
    :cond_5
    const/4 v0, 0x0

    .line 2465
    .local v0, "clearSpannable":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2466
    :cond_6
    const/4 v0, 0x1

    .line 2467
    const/4 v1, 0x0

    .line 2492
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 2493
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2494
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 2495
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v5, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2497
    :cond_8
    return v1

    .line 2469
    :cond_9
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    .line 2470
    iget-object v6, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 2469
    invoke-virtual {v5, v9, v6, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2471
    .local v1, "handled":Z
    if-eqz v1, :cond_7

    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 2474
    iget-object v5, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2475
    .local v3, "str":Ljava/lang/String;
    const/4 v0, 0x1

    .line 2477
    iget v5, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 2479
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.DIAL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2480
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2481
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2484
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p0, v3, v8, v9, v8}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_1

    .line 2487
    :pswitch_3
    invoke-virtual {p0, v3, v8, v9, v7}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_1

    .line 2477
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2507
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2543
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2573
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2574
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2526
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2527
    const/4 v1, 0x5

    .line 2526
    if-lt v0, v1, :cond_0

    .line 2528
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2529
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2534
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2530
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 2531
    const/4 v0, 0x1

    return v0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1930
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1931
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchLowMemory()V

    .line 1928
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const v5, 0xc350

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2960
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2962
    .local v0, "titleCondensed":Ljava/lang/CharSequence;
    sparse-switch p1, :sswitch_data_0

    .line 2996
    return v3

    .line 2967
    :sswitch_0
    if-eqz v0, :cond_0

    .line 2968
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2970
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2971
    return v4

    .line 2973
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2974
    return v4

    .line 2976
    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_4

    .line 2977
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 2978
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_3

    .line 2979
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v1

    return v1

    .line 2981
    :cond_3
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result v1

    return v1

    .line 2984
    :cond_4
    return v3

    .line 2987
    :sswitch_1
    if-eqz v0, :cond_5

    .line 2988
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2990
    :cond_5
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2991
    return v4

    .line 2993
    :cond_6
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p2}, Landroid/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 2962
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 2939
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 2940
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2941
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 2942
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 2947
    :cond_0
    :goto_0
    return v2

    .line 2944
    :cond_1
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "Tried to open action bar menu with no action bar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onNavigateUp()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3150
    invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3151
    .local v1, "upIntent":Landroid/content/Intent;
    if-eqz v1, :cond_4

    .line 3152
    iget-object v2, p0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3156
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3175
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 3157
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3158
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 3159
    .local v0, "b":Landroid/app/TaskStackBuilder;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->onCreateNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    .line 3160
    invoke-virtual {p0, v0}, Landroid/app/Activity;->onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V

    .line 3161
    invoke-virtual {v0}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 3165
    iget v2, p0, Landroid/app/Activity;->mResultCode:I

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 3167
    :cond_1
    const-string/jumbo v2, "Activity"

    const-string/jumbo v3, "onNavigateUp only finishing topmost activity to return a result"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3170
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_0

    .line 3173
    .end local v0    # "b":Landroid/app/TaskStackBuilder;
    :cond_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    goto :goto_0

    .line 3177
    :cond_4
    return v2
.end method

.method public onNavigateUpFromChild(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;

    .prologue
    .line 3187
    invoke-virtual {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    return v0
.end method

.method public onNewActivityOptions(Landroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .line 6053
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 6054
    iget-boolean v0, p0, Landroid/app/Activity;->mStopped:Z

    if-nez v0, :cond_0

    .line 6055
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    .line 6052
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1311
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3118
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3119
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 3121
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3236
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3237
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3235
    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3010
    sparse-switch p1, :sswitch_data_0

    .line 3009
    :goto_0
    return-void

    .line 3012
    :sswitch_0
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p2}, Landroid/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3013
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 3017
    :sswitch_1
    invoke-virtual {p0, p2}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 3021
    :sswitch_2
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 3022
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    goto :goto_0

    .line 3010
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1494
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityPaused(Landroid/app/Activity;)V

    .line 1495
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1492
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 1122
    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1123
    iput-boolean v2, p0, Landroid/app/Activity;->mTitleReady:Z

    .line 1124
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getTitleColor()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 1126
    :cond_0
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 1121
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1142
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1141
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1251
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1252
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->makeActive()V

    .line 1253
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 1254
    :cond_1
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 1250
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3413
    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 3412
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3442
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 3441
    return-void
.end method

.method public onPrepareNavigateUpTaskStack(Landroid/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/TaskStackBuilder;

    .prologue
    .line 3225
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3093
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3094
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 3096
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2925
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 2926
    invoke-virtual {p0, p3}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 2927
    .local v0, "goforit":Z
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1, p3}, Landroid/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2928
    return v0

    .line 2930
    .end local v0    # "goforit":Z
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onProvideAssistContent(Landroid/app/assist/AssistContent;)V
    .locals 0
    .param p1, "outContent"    # Landroid/app/assist/AssistContent;

    .prologue
    .line 1595
    return-void
.end method

.method public onProvideAssistData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1573
    return-void
.end method

.method public onProvideReferrer()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 4805
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 3898
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 1190
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1189
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1020
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    .line 1021
    const-string/jumbo v1, "android:viewHierarchyState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1022
    .local v0, "windowState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1023
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1019
    .end local v0    # "windowState":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1051
    if-eqz p1, :cond_0

    .line 1052
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1050
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 1226
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityResumed(Landroid/app/Activity;)V

    .line 1227
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->onResume()V

    .line 1228
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1232
    invoke-static {p0}, Lcom/lenovo/common/SecurityManagerUtils;->checkAppLockForTask(Landroid/app/Activity;)V

    .line 1224
    return-void
.end method

.method onRetainNonConfigurationChildInstances()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1903
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1868
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1391
    const-string/jumbo v1, "android:viewHierarchyState"

    iget-object v2, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1392
    iget-object v1, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v1}, Landroid/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1393
    .local v0, "p":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 1394
    const-string/jumbo v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1396
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Landroid/app/Application;->dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1390
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1415
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1414
    return-void
.end method

.method public onSearchRequested()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3617
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    .line 3618
    const/4 v1, 0x4

    .line 3617
    if-eq v0, v1, :cond_0

    .line 3619
    invoke-virtual {p0, v3, v2, v3, v2}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 3620
    const/4 v0, 0x1

    return v0

    .line 3622
    :cond_0
    return v2
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 2
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .prologue
    .line 3607
    iput-object p1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    .line 3608
    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    .line 3609
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mSearchEvent:Landroid/view/SearchEvent;

    .line 3610
    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 1161
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1163
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderStart()V

    .line 1165
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStarted(Landroid/app/Activity;)V

    .line 1159
    return-void
.end method

.method public onStateNotSaved()V
    .locals 0

    .prologue
    .line 1200
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1637
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 1638
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->onStop()V

    .line 1639
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->dispatchActivityStopped(Landroid/app/Activity;)V

    .line 1640
    iput-object v2, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 1641
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1635
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 5655
    iget-boolean v1, p0, Landroid/app/Activity;->mTitleReady:Z

    if-eqz v1, :cond_1

    .line 5656
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5657
    .local v0, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 5658
    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 5659
    if-eqz p2, :cond_0

    .line 5660
    invoke-virtual {v0, p2}, Landroid/view/Window;->setTitleColor(I)V

    .line 5663
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    .line 5664
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 5654
    .end local v0    # "win":Landroid/view/Window;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2588
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2589
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2590
    const/4 v0, 0x1

    return v0

    .line 2593
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2611
    const/4 v0, 0x0

    return v0
.end method

.method onTranslucentConversionComplete(Z)V
    .locals 3
    .param p1, "drawComplete"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6042
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    if-eqz v0, :cond_0

    .line 6043
    iget-object v0, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    invoke-interface {v0, p1}, Landroid/app/Activity$TranslucentConversionListener;->onTranslucentConversionComplete(Z)V

    .line 6044
    iput-object v1, p0, Landroid/app/Activity;->mTranslucentCallback:Landroid/app/Activity$TranslucentConversionListener;

    .line 6046
    :cond_0
    iget-boolean v0, p0, Landroid/app/Activity;->mChangeCanvasToTranslucent:Z

    if-eqz v0, :cond_1

    .line 6047
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 6041
    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1936
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 1937
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0, p1}, Landroid/app/FragmentController;->dispatchTrimMemory(I)V

    .line 1934
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 2662
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 1513
    return-void
.end method

.method public onVisibleBehindCanceled()V
    .locals 1

    .prologue
    .line 6138
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 6137
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2669
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 2670
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    .line 2671
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2672
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2665
    .end local v0    # "decor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onWindowDismissed()V
    .locals 0

    .prologue
    .line 2755
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2754
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 2707
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v1, 0x0

    .line 6261
    iget v0, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    if-nez v0, :cond_0

    .line 6262
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 6263
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 6264
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 6267
    :cond_0
    return-object v1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 6277
    :try_start_0
    iput p2, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 6278
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 6280
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 6278
    return-object v0

    .line 6279
    :catchall_0
    move-exception v0

    .line 6280
    iput v1, p0, Landroid/app/Activity;->mActionModeTypeStarting:I

    .line 6279
    throw v0
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3311
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 3310
    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3246
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3247
    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->openOptionsMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3245
    :cond_0
    :goto_0
    return-void

    .line 3248
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public overridePendingTransition(II)V
    .locals 4
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    .prologue
    .line 4711
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 4712
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4711
    invoke-interface {v1, v2, v3, p1, p2}, Landroid/app/IActivityManager;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4709
    :goto_0
    return-void

    .line 4713
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method final performCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 6578
    sget-boolean v0, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-eqz v0, :cond_0

    .line 6579
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "activity.onCreate +"

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 6582
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 6583
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    .line 6584
    invoke-virtual {p0}, Landroid/app/Activity;->performCreateCommon()V

    .line 6587
    sget-boolean v0, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-eqz v0, :cond_1

    .line 6588
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "activity.onCreate -"

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 6575
    :cond_1
    return-void
.end method

.method final performCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 6595
    sget-boolean v0, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-eqz v0, :cond_0

    .line 6596
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "activity.onCreate +"

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 6599
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 6600
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->readState(Landroid/os/Bundle;)V

    .line 6601
    invoke-virtual {p0}, Landroid/app/Activity;->performCreateCommon()V

    .line 6604
    sget-boolean v0, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-eqz v0, :cond_1

    .line 6605
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "activity.onCreate -"

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 6592
    :cond_1
    return-void
.end method

.method final performCreateCommon()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6569
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v1

    .line 6570
    const/16 v2, 0xa

    .line 6569
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 6571
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchActivityCreated()V

    .line 6572
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 6568
    return-void

    .line 6569
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final performDestroy()V
    .locals 2

    .prologue
    .line 6811
    sget-boolean v0, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-eqz v0, :cond_0

    .line 6812
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "activity.onDestroy +"

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 6815
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mDestroyed:Z

    .line 6816
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->destroy()V

    .line 6817
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchDestroy()V

    .line 6818
    invoke-virtual {p0}, Landroid/app/Activity;->onDestroy()V

    .line 6819
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->doLoaderDestroy()V

    .line 6820
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v0, :cond_1

    .line 6821
    iget-object v0, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v0}, Landroid/app/VoiceInteractor;->detachActivity()V

    .line 6825
    :cond_1
    sget-boolean v0, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-eqz v0, :cond_2

    .line 6826
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "activity.onDestroy -"

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 6808
    :cond_2
    return-void
.end method

.method final performPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6730
    sget-boolean v0, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-eqz v0, :cond_0

    .line 6731
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "activity.onPause +"

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 6734
    :cond_0
    iput-boolean v2, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 6735
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchPause()V

    .line 6736
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 6737
    invoke-virtual {p0}, Landroid/app/Activity;->onPause()V

    .line 6738
    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    .line 6739
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 6740
    const/16 v1, 0x9

    .line 6739
    if-lt v0, v1, :cond_1

    .line 6741
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 6742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6743
    const-string/jumbo v2, " did not call through to super.onPause()"

    .line 6742
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6741
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6745
    :cond_1
    iput-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    .line 6748
    sget-boolean v0, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-eqz v0, :cond_2

    .line 6749
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "activity.onPause -"

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 6727
    :cond_2
    return-void
.end method

.method final performRestart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 6637
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 6639
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    if-eqz v3, :cond_6

    .line 6640
    iput-boolean v6, p0, Landroid/app/Activity;->mStopped:Z

    .line 6641
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 6642
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 6645
    :cond_0
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v4

    .line 6646
    :try_start_0
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6647
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 6648
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 6649
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get1(Landroid/app/Activity$ManagedCursor;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get2(Landroid/app/Activity$ManagedCursor;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6650
    :cond_1
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6651
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 6652
    const/16 v5, 0xe

    .line 6651
    if-lt v3, v5, :cond_2

    .line 6653
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 6654
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trying to requery an already closed cursor  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6655
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v6

    .line 6654
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6653
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6645
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 6658
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->-set0(Landroid/app/Activity$ManagedCursor;Z)Z

    .line 6659
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->-set1(Landroid/app/Activity$ManagedCursor;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6647
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_4
    monitor-exit v4

    .line 6664
    iput-boolean v6, p0, Landroid/app/Activity;->mCalled:Z

    .line 6665
    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 6666
    iget-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_5

    .line 6667
    new-instance v3, Landroid/util/SuperNotCalledException;

    .line 6668
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6669
    const-string/jumbo v5, " did not call through to super.onRestart()"

    .line 6668
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6667
    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6671
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->performStart()V

    .line 6636
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_6
    return-void
.end method

.method final performRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 978
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 979
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 977
    return-void
.end method

.method final performRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "persistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 993
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 994
    if-eqz p1, :cond_0

    .line 995
    invoke-direct {p0, p1}, Landroid/app/Activity;->restoreManagedDialogs(Landroid/os/Bundle;)V

    .line 992
    :cond_0
    return-void
.end method

.method final performResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6678
    sget-boolean v0, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-eqz v0, :cond_0

    .line 6679
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "activity.onResume +"

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 6682
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->performRestart()V

    .line 6684
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 6686
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mLastNonConfigurationInstances:Landroid/app/Activity$NonConfigurationInstances;

    .line 6688
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 6690
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 6691
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_1

    .line 6692
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 6693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6694
    const-string/jumbo v2, " did not call through to super.onResume()"

    .line 6693
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6692
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6698
    :cond_1
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/app/Activity;->mFinished:Z

    if-eqz v0, :cond_3

    .line 6709
    :cond_2
    iput-boolean v2, p0, Landroid/app/Activity;->mCalled:Z

    .line 6711
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchResume()V

    .line 6712
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 6714
    invoke-virtual {p0}, Landroid/app/Activity;->onPostResume()V

    .line 6715
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_4

    .line 6716
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 6717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6718
    const-string/jumbo v2, " did not call through to super.onPostResume()"

    .line 6717
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6716
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6699
    :cond_3
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "An activity without a UI must call finish() before onResume() completes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6700
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 6701
    const/16 v1, 0x16

    .line 6700
    if-le v0, v1, :cond_2

    .line 6702
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6704
    const-string/jumbo v2, " did not call finish() prior to onResume() completing"

    .line 6703
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6702
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6722
    :cond_4
    sget-boolean v0, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-eqz v0, :cond_5

    .line 6723
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "activity.onResume -"

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 6675
    :cond_5
    return-void
.end method

.method final performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1323
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1324
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 1325
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p1}, Landroid/app/ActivityTransitionState;->saveState(Landroid/os/Bundle;)V

    .line 1322
    return-void
.end method

.method final performSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 1339
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 1340
    invoke-direct {p0, p1}, Landroid/app/Activity;->saveManagedDialogs(Landroid/os/Bundle;)V

    .line 1338
    return-void
.end method

.method final performStart()V
    .locals 3

    .prologue
    .line 6612
    sget-boolean v0, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-eqz v0, :cond_0

    .line 6613
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "activity.onStart +"

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 6616
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityTransitionState;->setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V

    .line 6617
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->noteStateNotSaved()V

    .line 6618
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    .line 6619
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->execPendingActions()Z

    .line 6620
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p0}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 6621
    iget-boolean v0, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v0, :cond_1

    .line 6622
    new-instance v0, Landroid/util/SuperNotCalledException;

    .line 6623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6624
    const-string/jumbo v2, " did not call through to super.onStart()"

    .line 6623
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6622
    invoke-direct {v0, v1}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6626
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->dispatchStart()V

    .line 6627
    iget-object v0, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v0}, Landroid/app/FragmentController;->reportLoaderStart()V

    .line 6628
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0, p0}, Landroid/app/ActivityTransitionState;->enterReady(Landroid/app/Activity;)V

    .line 6631
    sget-boolean v0, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-eqz v0, :cond_2

    .line 6632
    const-string/jumbo v0, "Activity"

    const-string/jumbo v1, "activity.onStart -"

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 6609
    :cond_2
    return-void
.end method

.method final performStop()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6761
    sget-boolean v3, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-eqz v3, :cond_0

    .line 6762
    const-string/jumbo v3, "Activity"

    const-string/jumbo v4, "activity.onStop +"

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 6765
    :cond_0
    iput-boolean v5, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 6766
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    iget-boolean v4, p0, Landroid/app/Activity;->mChangingConfigurations:Z

    invoke-virtual {v3, v4}, Landroid/app/FragmentController;->doLoaderStop(Z)V

    .line 6768
    iget-boolean v3, p0, Landroid/app/Activity;->mStopped:Z

    if-nez v3, :cond_6

    .line 6769
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    if-eqz v3, :cond_1

    .line 6770
    iget-object v3, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->closeAllPanels()V

    .line 6773
    :cond_1
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v3, :cond_2

    .line 6774
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v6}, Landroid/view/WindowManagerGlobal;->setStoppedState(Landroid/os/IBinder;Z)V

    .line 6777
    :cond_2
    iget-object v3, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v3}, Landroid/app/FragmentController;->dispatchStop()V

    .line 6779
    iput-boolean v5, p0, Landroid/app/Activity;->mCalled:Z

    .line 6780
    iget-object v3, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v3, p0}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 6781
    iget-boolean v3, p0, Landroid/app/Activity;->mCalled:Z

    if-nez v3, :cond_3

    .line 6782
    new-instance v3, Landroid/util/SuperNotCalledException;

    .line 6783
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6784
    const-string/jumbo v5, " did not call through to super.onStop()"

    .line 6783
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6782
    invoke-direct {v3, v4}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6787
    :cond_3
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v4

    .line 6788
    :try_start_0
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6789
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 6790
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 6791
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get1(Landroid/app/Activity$ManagedCursor;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 6792
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->deactivate()V

    .line 6793
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/app/Activity$ManagedCursor;->-set0(Landroid/app/Activity$ManagedCursor;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6789
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_5
    monitor-exit v4

    .line 6798
    iput-boolean v6, p0, Landroid/app/Activity;->mStopped:Z

    .line 6800
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_6
    iput-boolean v5, p0, Landroid/app/Activity;->mResumed:Z

    .line 6803
    sget-boolean v3, Landroid/app/ActivityThread;->mEnableAppLaunchLog:Z

    if-eqz v3, :cond_7

    .line 6804
    const-string/jumbo v3, "Activity"

    const-string/jumbo v4, "activity.onStop -"

    invoke-static {v3, v4}, Landroid/app/ActivityThread;->logAppLaunchTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 6758
    :cond_7
    return-void

    .line 6787
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method final performUserLeaving()V
    .locals 0

    .prologue
    .line 6754
    invoke-virtual {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 6755
    invoke-virtual {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 6753
    return-void
.end method

.method public postponeEnterTransition()V
    .locals 1

    .prologue
    .line 6490
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->postponeEnterTransition()V

    .line 6489
    return-void
.end method

.method public recreate()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 5168
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 5169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can only be called on top-level activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5171
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 5172
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called from main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5174
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v3, v2

    move v5, v4

    move-object v6, v2

    move-object v7, v2

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    .line 5167
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3289
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3288
    return-void
.end method

.method public releaseInstance()Z
    .locals 3

    .prologue
    .line 5331
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->releaseActivityInstance(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5332
    :catch_0
    move-exception v0

    .line 5335
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public final removeDialog(I)V
    .locals 2
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3574
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 3575
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 3576
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-eqz v0, :cond_0

    .line 3577
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3578
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3573
    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    :cond_0
    return-void
.end method

.method public reportFullyDrawn()V
    .locals 3

    .prologue
    .line 1726
    iget-boolean v1, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    if-eqz v1, :cond_0

    .line 1727
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Activity;->mDoReportFullyDrawn:Z

    .line 1729
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->reportActivityFullyDrawn(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1725
    :cond_0
    :goto_0
    return-void

    .line 1730
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 3876
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3877
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "@android:requestPermissions:"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p2, v2}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 3875
    return-void
.end method

.method public requestVisibleBehind(Z)Z
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6109
    iget-boolean v2, p0, Landroid/app/Activity;->mResumed:Z

    if-nez v2, :cond_0

    .line 6111
    const/4 p1, 0x0

    .line 6114
    .end local p1    # "visible":Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 6115
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 6114
    invoke-interface {v2, v3, p1}, Landroid/app/IActivityManager;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean p1, p0, Landroid/app/Activity;->mVisibleBehind:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6119
    :goto_1
    iget-boolean v1, p0, Landroid/app/Activity;->mVisibleBehind:Z

    return v1

    :cond_1
    move p1, v1

    .line 6114
    goto :goto_0

    .line 6116
    :catch_0
    move-exception v0

    .line 6117
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v1, p0, Landroid/app/Activity;->mVisibleBehind:Z

    goto :goto_1
.end method

.method public final requestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 3712
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method retainNonConfigurationInstances()Landroid/app/Activity$NonConfigurationInstances;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1907
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 1908
    .local v0, "activity":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/app/Activity;->onRetainNonConfigurationChildInstances()Ljava/util/HashMap;

    move-result-object v1

    .line 1909
    .local v1, "children":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v5}, Landroid/app/FragmentController;->retainNonConfig()Ljava/util/List;

    move-result-object v2

    .line 1910
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    iget-object v5, p0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v5}, Landroid/app/FragmentController;->retainLoaderNonConfig()Landroid/util/ArrayMap;

    move-result-object v3

    .line 1911
    .local v3, "loaders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/LoaderManager;>;"
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 1912
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-nez v5, :cond_0

    .line 1913
    return-object v6

    .line 1916
    :cond_0
    new-instance v4, Landroid/app/Activity$NonConfigurationInstances;

    invoke-direct {v4}, Landroid/app/Activity$NonConfigurationInstances;-><init>()V

    .line 1917
    .local v4, "nci":Landroid/app/Activity$NonConfigurationInstances;
    iput-object v0, v4, Landroid/app/Activity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    .line 1918
    iput-object v1, v4, Landroid/app/Activity$NonConfigurationInstances;->children:Ljava/util/HashMap;

    .line 1919
    iput-object v2, v4, Landroid/app/Activity$NonConfigurationInstances;->fragments:Ljava/util/List;

    .line 1920
    iput-object v3, v4, Landroid/app/Activity$NonConfigurationInstances;->loaders:Landroid/util/ArrayMap;

    .line 1921
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    if-eqz v5, :cond_1

    .line 1922
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    invoke-virtual {v5}, Landroid/app/VoiceInteractor;->retainInstance()V

    .line 1923
    iget-object v5, p0, Landroid/app/Activity;->mVoiceInteractor:Landroid/app/VoiceInteractor;

    iput-object v5, v4, Landroid/app/Activity$NonConfigurationInstances;->voiceInteractor:Landroid/app/VoiceInteractor;

    .line 1925
    :cond_1
    return-object v4
.end method

.method public final runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 5847
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 5848
    iget-object v0, p0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5846
    :goto_0
    return-void

    .line 5850
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public setActionBar(Landroid/widget/Toolbar;)V
    .locals 3
    .param p1, "toolbar"    # Landroid/widget/Toolbar;

    .prologue
    .line 2164
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/app/WindowDecorActionBar;

    if-eqz v1, :cond_0

    .line 2165
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set android:windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2170
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Activity;->mMenuInflater:Landroid/view/MenuInflater;

    .line 2172
    new-instance v0, Lcom/android/internal/app/ToolbarActionBar;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/internal/app/ToolbarActionBar;-><init>(Landroid/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 2173
    .local v0, "tbab":Lcom/android/internal/app/ToolbarActionBar;
    iput-object v0, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    .line 2174
    iget-object v1, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Lcom/android/internal/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 2175
    iget-object v1, p0, Landroid/app/Activity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->invalidateOptionsMenu()Z

    .line 2163
    return-void
.end method

.method public setContentTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 1
    .param p1, "tm"    # Landroid/transition/TransitionManager;

    .prologue
    .line 2282
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTransitionManager(Landroid/transition/TransitionManager;)V

    .line 2281
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 2210
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 2211
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2209
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2230
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 2231
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2229
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2246
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2247
    invoke-direct {p0}, Landroid/app/Activity;->initWindowDecorActionBar()V

    .line 2245
    return-void
.end method

.method public final setDefaultKeyMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 2385
    iput p1, p0, Landroid/app/Activity;->mDefaultKeyMode:I

    .line 2389
    packed-switch p1, :pswitch_data_0

    .line 2401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2392
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 2384
    :goto_0
    return-void

    .line 2397
    :pswitch_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 2398
    iget-object v0, p0, Landroid/app/Activity;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 2389
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 6452
    if-nez p1, :cond_0

    .line 6453
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 6455
    :cond_0
    iput-object p1, p0, Landroid/app/Activity;->mEnterTransitionListener:Landroid/app/SharedElementCallback;

    .line 6451
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 6468
    if-nez p1, :cond_0

    .line 6469
    sget-object p1, Landroid/app/SharedElementCallback;->NULL_CALLBACK:Landroid/app/SharedElementCallback;

    .line 6471
    :cond_0
    iput-object p1, p0, Landroid/app/Activity;->mExitTransitionListener:Landroid/app/SharedElementCallback;

    .line 6467
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3736
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 3735
    return-void
.end method

.method public final setFeatureDrawableAlpha(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 3744
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 3743
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 3720
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 3719
    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3728
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 3727
    return-void
.end method

.method public setFinishOnTouchOutside(Z)V
    .locals 1
    .param p1, "finish"    # Z

    .prologue
    .line 2302
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 2301
    return-void
.end method

.method public setImmersive(Z)V
    .locals 3
    .param p1, "i"    # Z

    .prologue
    .line 6213
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->setImmersive(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6211
    :goto_0
    return-void

    .line 6214
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 835
    iput-object p1, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    .line 834
    return-void
.end method

.method public final setMediaController(Landroid/media/session/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 5825
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setMediaController(Landroid/media/session/MediaController;)V

    .line 5824
    return-void
.end method

.method final setParent(Landroid/app/Activity;)V
    .locals 0
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    .line 6505
    iput-object p1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    .line 6504
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "isPersistent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2123
    return-void
.end method

.method public final setProgress(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 5753
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    add-int/lit8 v1, p1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5752
    return-void
.end method

.method public final setProgressBarIndeterminate(Z)V
    .locals 3
    .param p1, "indeterminate"    # Z

    .prologue
    .line 5737
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 5738
    if-eqz p1, :cond_0

    const/4 v0, -0x3

    .line 5737
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5736
    return-void

    .line 5739
    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public final setProgressBarIndeterminateVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 5723
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 5724
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 5723
    :goto_0
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5722
    return-void

    .line 5724
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public final setProgressBarVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 5710
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5709
    return-void

    .line 5711
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setRequestedOrientation(I)V
    .locals 3
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 5444
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 5446
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 5447
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 5446
    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->setRequestedOrientation(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5443
    :goto_0
    return-void

    .line 5452
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 5448
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final setResult(I)V
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    .line 4730
    monitor-enter p0

    .line 4731
    :try_start_0
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 4732
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 4729
    return-void

    .line 4730
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setResult(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 4759
    monitor-enter p0

    .line 4760
    :try_start_0
    iput p1, p0, Landroid/app/Activity;->mResultCode:I

    .line 4761
    iput-object p2, p0, Landroid/app/Activity;->mResultData:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 4758
    return-void

    .line 4759
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setSecondaryProgress(I)V
    .locals 3
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 5770
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5771
    add-int/lit16 v1, p1, 0x4e20

    .line 5770
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 5769
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 6
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .prologue
    .line 5687
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5688
    invoke-static {p0}, Landroid/app/ActivityManager;->getLauncherLargeIconSizeInner(Landroid/content/Context;)I

    move-result v2

    .line 5689
    .local v2, "size":I
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5690
    .local v1, "icon":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 5691
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v5

    .line 5690
    invoke-direct {v3, v4, v1, v5}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 5696
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    .end local v2    # "size":I
    .local v3, "td":Landroid/app/ActivityManager$TaskDescription;
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v4, v5, v3}, Landroid/app/IActivityManager;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5684
    :goto_1
    return-void

    .line 5693
    .end local v3    # "td":Landroid/app/ActivityManager$TaskDescription;
    :cond_0
    move-object v3, p1

    .restart local v3    # "td":Landroid/app/ActivityManager$TaskDescription;
    goto :goto_0

    .line 5697
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 5627
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 5626
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 5612
    iput-object p1, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    .line 5613
    iget v0, p0, Landroid/app/Activity;->mTitleColor:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 5615
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 5616
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1}, Landroid/app/Activity;->onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 5611
    :cond_0
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1
    .param p1, "textColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5642
    iput p1, p0, Landroid/app/Activity;->mTitleColor:I

    .line 5643
    iget-object v0, p0, Landroid/app/Activity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 5641
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 4871
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    if-eq v0, p1, :cond_0

    .line 4872
    iput-boolean p1, p0, Landroid/app/Activity;->mVisibleFromClient:Z

    .line 4873
    iget-boolean v0, p0, Landroid/app/Activity;->mVisibleFromServer:Z

    if-eqz v0, :cond_0

    .line 4874
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->makeVisible()V

    .line 4870
    :cond_0
    :goto_0
    return-void

    .line 4875
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mDecor:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setVolumeControlStream(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 5791
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 5790
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 3923
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 6321
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 6322
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 6323
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 6324
    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 6326
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 6327
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 6328
    return v8

    .line 6330
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 6331
    iget-object v6, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 6330
    invoke-interface {v5, v6, v7}, Landroid/app/IActivityManager;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    .line 6334
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 6335
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v8

    .line 6332
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 6333
    .local v2, "e":Landroid/os/RemoteException;
    return v8
.end method

.method public showAssist(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1610
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1611
    :catch_0
    move-exception v0

    .line 1613
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public final showDialog(I)V
    .locals 1
    .param p1, "id"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3456
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    .line 3455
    return-void
.end method

.method public final showDialog(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3492
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 3493
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    .line 3495
    :cond_0
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity$ManagedDialog;

    .line 3496
    .local v0, "md":Landroid/app/Activity$ManagedDialog;
    if-nez v0, :cond_2

    .line 3497
    new-instance v0, Landroid/app/Activity$ManagedDialog;

    .end local v0    # "md":Landroid/app/Activity$ManagedDialog;
    invoke-direct {v0, v2}, Landroid/app/Activity$ManagedDialog;-><init>(Landroid/app/Activity$ManagedDialog;)V

    .line 3498
    .restart local v0    # "md":Landroid/app/Activity$ManagedDialog;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1, v2, p2}, Landroid/app/Activity;->createDialog(Ljava/lang/Integer;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    .line 3499
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_1

    .line 3500
    const/4 v1, 0x0

    return v1

    .line 3502
    :cond_1
    iget-object v1, p0, Landroid/app/Activity;->mManagedDialogs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3505
    :cond_2
    iput-object p2, v0, Landroid/app/Activity$ManagedDialog;->mArgs:Landroid/os/Bundle;

    .line 3506
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0, p1, v1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 3507
    iget-object v1, v0, Landroid/app/Activity$ManagedDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 3508
    const/4 v1, 0x1

    return v1
.end method

.method public showLockTaskEscapeMessage()V
    .locals 3

    .prologue
    .line 6932
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6930
    :goto_0
    return-void

    .line 6933
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 6229
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 6243
    iget-object v0, p0, Landroid/app/Activity;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startActivities([Landroid/content/Intent;)V
    .locals 1
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 4307
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4306
    return-void
.end method

.method public startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4334
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    .line 4335
    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 4334
    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4333
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4257
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, -0x1

    .line 4285
    if-eqz p2, :cond_0

    .line 4286
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4284
    :goto_0
    return-void

    .line 4290
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "ignoreTargetSecurity"    # Z
    .param p4, "userId"    # I

    .prologue
    const/4 v6, -0x1

    .line 4126
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4127
    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4128
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingByAppToken(Landroid/os/IBinder;)Z

    move-result v0

    .line 4127
    if-eqz v0, :cond_1

    .line 4129
    :cond_0
    invoke-static {p1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->adjustFloatingIntent(Landroid/content/Intent;)V

    .line 4133
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 4134
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4137
    :cond_2
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4138
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v8, p3

    move v9, p4

    .line 4137
    invoke-virtual/range {v0 .. v9}, Landroid/app/Instrumentation;->execStartActivityAsCaller(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;ZI)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v10

    .line 4140
    .local v10, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v10, :cond_3

    .line 4141
    iget-object v3, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4142
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v7

    .line 4143
    invoke-virtual {v10}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v8

    .line 4141
    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4145
    :cond_3
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4124
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v6, -0x1

    .line 4093
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4094
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4097
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4098
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    .line 4097
    invoke-virtual/range {v0 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v9

    .line 4100
    .local v9, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v9, :cond_1

    .line 4101
    iget-object v3, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4102
    iget-object v4, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v7

    .line 4103
    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v8

    .line 4101
    invoke-virtual/range {v3 .. v8}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4105
    :cond_1
    invoke-direct {p0, p2}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4092
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 4086
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4085
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 3939
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 3938
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3978
    const-string/jumbo v0, "ro.lenovo.boost.acty"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3979
    iget-object v0, p0, Landroid/app/Activity;->mPerfServiceWrapper:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    if-nez v0, :cond_0

    .line 3980
    const-string/jumbo v0, "_boost_"

    const-string/jumbo v1, "new PerfServiceWrapper"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3981
    new-instance v0, Lcom/mediatek/perfservice/PerfServiceWrapper;

    invoke-direct {v0, v2}, Lcom/mediatek/perfservice/PerfServiceWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/Activity;->mPerfServiceWrapper:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    .line 3983
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mPerfServiceWrapper:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    if-eqz v0, :cond_1

    .line 3984
    const-string/jumbo v0, "_boost_"

    const-string/jumbo v1, "startActivityForResult boost 2500"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    iget-object v0, p0, Landroid/app/Activity;->mPerfServiceWrapper:Lcom/mediatek/perfservice/IPerfServiceWrapper;

    const/4 v1, 0x6

    const/16 v2, 0x9c4

    invoke-interface {v0, v1, v2}, Lcom/mediatek/perfservice/IPerfServiceWrapper;->boostEnableTimeoutMs(II)V

    .line 3990
    :cond_1
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3991
    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3992
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingByAppToken(Landroid/os/IBinder;)Z

    move-result v0

    .line 3991
    if-eqz v0, :cond_3

    .line 3993
    :cond_2
    invoke-static {p1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->adjustFloatingIntent(Landroid/content/Intent;)V

    .line 3997
    :cond_3
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_6

    .line 3999
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4000
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    .line 3999
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    .line 4002
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_4

    .line 4003
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4004
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    .line 4005
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move v3, p2

    .line 4003
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4007
    :cond_4
    if-ltz p2, :cond_5

    .line 4015
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 4018
    :cond_5
    invoke-direct {p0, p3}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 3976
    .end local v8    # "ar":Landroid/app/Instrumentation$ActivityResult;
    :goto_0
    return-void

    .line 4021
    :cond_6
    if-eqz p3, :cond_7

    .line 4022
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 4026
    :cond_7
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 10
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4635
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4636
    iget-object v0, p0, Landroid/app/Activity;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4637
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingByAppToken(Landroid/os/IBinder;)Z

    move-result v0

    .line 4636
    if-eqz v0, :cond_1

    .line 4638
    :cond_0
    invoke-static {p2}, Lcom/mediatek/multiwindow/MultiWindowProxy;->adjustFloatingIntent(Landroid/content/Intent;)V

    .line 4642
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v9

    .line 4643
    .local v9, "referrer":Landroid/net/Uri;
    if-eqz v9, :cond_2

    .line 4644
    const-string/jumbo v0, "android.intent.extra.REFERRER"

    invoke-virtual {p2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4647
    :cond_2
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4648
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    .line 4647
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    .line 4650
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_3

    .line 4651
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4652
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 4653
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move-object v2, p1

    move v3, p3

    .line 4651
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4655
    :cond_3
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4633
    return-void
.end method

.method public startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 4058
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 4059
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t be called from a child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4061
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4062
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 4061
    invoke-virtual/range {v0 .. v8}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v9

    .line 4064
    .local v9, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v9, :cond_1

    .line 4065
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4066
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move v3, p2

    .line 4065
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4068
    :cond_1
    if-ltz p2, :cond_2

    .line 4076
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 4079
    :cond_2
    invoke-direct {p0, p3}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4057
    return-void
.end method

.method public startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 4050
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4049
    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 4549
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4548
    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4574
    iget-object v0, p0, Landroid/app/Activity;->mInstrumentation:Landroid/app/Instrumentation;

    .line 4575
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    .line 4574
    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v8

    .line 4577
    .local v8, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v8, :cond_0

    .line 4578
    iget-object v0, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    .line 4579
    iget-object v1, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    iget-object v2, p1, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    .line 4580
    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultCode()I

    move-result v4

    invoke-virtual {v8}, Landroid/app/Instrumentation$ActivityResult;->getResultData()Landroid/content/Intent;

    move-result-object v5

    move v3, p3

    .line 4578
    invoke-virtual/range {v0 .. v5}, Landroid/app/ActivityThread;->sendActivityResult(Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4582
    :cond_0
    invoke-direct {p0, p4}, Landroid/app/Activity;->cancelInputsAndStartExitTransition(Landroid/os/Bundle;)V

    .line 4572
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 4600
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4599
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4625
    iget-object v0, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 4624
    return-void
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;I)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 4408
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public startActivityIfNeeded(Landroid/content/Intent;ILandroid/os/Bundle;)Z
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4443
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_3

    .line 4444
    const/4 v13, 0x1

    .line 4446
    .local v13, "result":I
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->onProvideReferrer()Landroid/net/Uri;

    move-result-object v12

    .line 4447
    .local v12, "referrer":Landroid/net/Uri;
    if-eqz v12, :cond_0

    .line 4448
    const-string/jumbo v0, "android.intent.extra.REFERRER"

    invoke-virtual {p1, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4450
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 4451
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 4452
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4453
    iget-object v1, p0, Landroid/app/Activity;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 4454
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 4455
    iget-object v6, p0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    const/4 v8, 0x1

    .line 4456
    const/4 v9, 0x0

    move-object v3, p1

    move/from16 v7, p2

    move-object/from16 v10, p3

    .line 4452
    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 4461
    .end local v12    # "referrer":Landroid/net/Uri;
    :goto_0
    invoke-static {v13, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V

    .line 4463
    if-ltz p2, :cond_1

    .line 4471
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Activity;->mStartedActivity:Z

    .line 4473
    :cond_1
    const/4 v0, 0x1

    if-eq v13, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 4476
    .end local v13    # "result":I
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 4477
    const-string/jumbo v1, "startActivityIfNeeded can only be called from a top-level activity"

    .line 4476
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4457
    .restart local v13    # "result":I
    :catch_0
    move-exception v11

    .local v11, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .locals 7
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4355
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 4354
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 4353
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flagsMask"    # I
    .param p4, "flagsValues"    # I
    .param p5, "extraFlags"    # I
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 4381
    if-eqz p6, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 4382
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 4380
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 4387
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 8
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4167
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 4166
    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 4165
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4198
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p0

    move-object/from16 v7, p7

    .line 4199
    invoke-direct/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/app/Activity;Landroid/os/Bundle;)V

    .line 4197
    :goto_0
    return-void

    .line 4201
    :cond_0
    if-eqz p7, :cond_1

    .line 4202
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    goto :goto_0

    .line 4207
    :cond_1
    iget-object v0, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 9
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 4675
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 4674
    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 4673
    return-void
.end method

.method public startIntentSenderFromChild(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p1

    move-object/from16 v7, p8

    .line 4688
    invoke-direct/range {v0 .. v7}, Landroid/app/Activity;->startIntentSenderForResultInner(Landroid/content/IntentSender;ILandroid/content/Intent;IILandroid/app/Activity;Landroid/os/Bundle;)V

    .line 4687
    return-void
.end method

.method public startLockTask()V
    .locals 3

    .prologue
    .line 6896
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->startLockTaskMode(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6894
    :goto_0
    return-void

    .line 6897
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startManagingCursor(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2071
    iget-object v1, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2073
    if-eqz p1, :cond_0

    .line 2074
    :try_start_0
    const-string/jumbo v0, "ManageCursor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startManagingCursor, c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    :cond_0
    iget-object v0, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    new-instance v2, Landroid/app/Activity$ManagedCursor;

    invoke-direct {v2, p1}, Landroid/app/Activity$ManagedCursor;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2070
    return-void

    .line 2071
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4495
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public startNextMatchingActivity(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 4518
    iget-object v1, p0, Landroid/app/Activity;->mParent:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 4520
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 4521
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 4522
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 4523
    iget-object v2, p0, Landroid/app/Activity;->mToken:Landroid/os/IBinder;

    .line 4522
    invoke-interface {v1, v2, p1, p2}, Landroid/app/IActivityManager;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4524
    :catch_0
    move-exception v0

    .line 4527
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1

    .line 4530
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 4531
    const-string/jumbo v2, "startNextMatchingActivity can only be called from a top-level activity"

    .line 4530
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startPostponedEnterTransition()V
    .locals 1

    .prologue
    .line 6499
    iget-object v0, p0, Landroid/app/Activity;->mActivityTransitionState:Landroid/app/ActivityTransitionState;

    invoke-virtual {v0}, Landroid/app/ActivityTransitionState;->startPostponedEnterTransition()V

    .line 6498
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    .line 3669
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 3670
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 3668
    return-void
.end method

.method public stopLockTask()V
    .locals 2

    .prologue
    .line 6920
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6918
    :goto_0
    return-void

    .line 6921
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public stopManagingCursor(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2100
    iget-object v4, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2102
    if-eqz p1, :cond_0

    .line 2103
    :try_start_0
    const-string/jumbo v3, "ManageCursor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopManagingCursor, c="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :cond_0
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2107
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2108
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity$ManagedCursor;

    .line 2109
    .local v2, "mc":Landroid/app/Activity$ManagedCursor;
    invoke-static {v2}, Landroid/app/Activity$ManagedCursor;->-get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 2110
    iget-object v3, p0, Landroid/app/Activity;->mManagedCursors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_1
    monitor-exit v4

    .line 2099
    return-void

    .line 2107
    .restart local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2100
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "mc":Landroid/app/Activity$ManagedCursor;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .prologue
    .line 3697
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 3696
    return-void
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 3685
    invoke-direct {p0}, Landroid/app/Activity;->ensureSearchManager()V

    .line 3686
    iget-object v0, p0, Landroid/app/Activity;->mSearchManager:Landroid/app/SearchManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/SearchManager;->triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V

    .line 3684
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3300
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 3299
    return-void
.end method
