.class public Lcom/android/server/statusbar/StatusBarManagerService;
.super Lcom/android/internal/statusbar/IStatusBarService$Stub;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;,
        Lcom/android/server/statusbar/StatusBarManagerService$1;,
        Lcom/android/server/statusbar/StatusBarManagerService$2;
    }
.end annotation


# static fields
.field private static final SPEW:Z = false

.field private static final TAG:Ljava/lang/String; = "StatusBarManagerService"


# instance fields
.field private volatile mBar:Lcom/android/internal/statusbar/IStatusBar;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field mDMToken:Landroid/os/IBinder;

.field private final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabled1:I

.field private mDisabled2:I

.field private mHandler:Landroid/os/Handler;

.field private mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

.field private mImeBackDisposition:I

.field private mImeToken:Landroid/os/IBinder;

.field private mImeWindowVis:I

.field private final mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private mLock:Ljava/lang/Object;

.field private mMenuVisible:Z

.field private mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field private final mPPLReceiver:Landroid/content/BroadcastReceiver;

.field private mShowImeSwitcher:Z

.field private mSysUiVisToken:Landroid/os/IBinder;

.field private mSystemUiVisibility:I

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/notification/NotificationDelegate;
    .locals 1

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/notification/NotificationDelegate;)Lcom/android/server/notification/NotificationDelegate;
    .locals 0

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/statusbar/StatusBarManagerService;Z)I
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->dmEnable(Z)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    .line 68
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v1, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v1}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 75
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    .line 76
    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    .line 77
    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    .line 79
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 81
    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    .line 82
    iput-boolean v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisible:Z

    .line 83
    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    .line 123
    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/statusbar/StatusBarManagerService$1;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 876
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDMToken:Landroid/os/IBinder;

    .line 897
    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/statusbar/StatusBarManagerService$2;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPPLReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    const v2, 0x107000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->defineSlots([Ljava/lang/String;)V

    .line 114
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 117
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->registerDMLock()V

    .line 107
    return-void
.end method

.method private disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "whichFlag"    # I

    .prologue
    .line 293
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/statusbar/StatusBarManagerService;->manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 296
    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v1

    .line 297
    .local v1, "net1":I
    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v2

    .line 298
    .local v2, "net2":I
    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    if-eq v2, v3, :cond_1

    .line 299
    :cond_0
    iput v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    .line 300
    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    .line 301
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/statusbar/StatusBarManagerService$3;

    invoke-direct {v4, p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService$3;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v3, :cond_1

    .line 309
    :try_start_0
    const-string/jumbo v3, "StatusBarManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disable statusbar calling PID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v3, v1, v2}, Lcom/android/internal/statusbar/IStatusBar;->disable(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_1
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dmEnable(Z)I
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 913
    const-string/jumbo v1, "StatusBarManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " enable state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const/4 v0, 0x0

    .line 915
    .local v0, "net":I
    if-nez p1, :cond_0

    .line 916
    const/high16 v0, 0xf0000

    .line 920
    :cond_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDMToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 921
    const/4 v1, 0x0

    return v1
.end method

.method private enforceExpandStatusBar()V
    .locals 3

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.EXPAND_STATUS_BAR"

    .line 586
    const-string/jumbo v2, "StatusBarManagerService"

    .line 585
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method private enforceStatusBar()V
    .locals 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.STATUS_BAR"

    .line 581
    const-string/jumbo v2, "StatusBarManagerService"

    .line 580
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    return-void
.end method

.method private enforceStatusBarService()V
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    .line 591
    const-string/jumbo v2, "StatusBarManagerService"

    .line 590
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    return-void
.end method

.method private registerDMLock()V
    .locals 7

    .prologue
    .line 879
    :try_start_0
    const-string/jumbo v5, "DmAgent"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 880
    .local v1, "binder":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 881
    invoke-static {v1}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v0

    .line 882
    .local v0, "agent":Lcom/mediatek/common/dm/DmAgent;
    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z

    move-result v4

    .line 883
    .local v4, "locked":Z
    if-eqz v4, :cond_1

    const/4 v5, 0x0

    :goto_0
    invoke-direct {p0, v5}, Lcom/android/server/statusbar/StatusBarManagerService;->dmEnable(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    .end local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v4    # "locked":Z
    :cond_0
    :goto_1
    const-string/jumbo v5, "StatusBarManagerService"

    const-string/jumbo v6, "registerDMLock"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 890
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v5, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 891
    const-string/jumbo v5, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 892
    const-string/jumbo v5, "com.mediatek.dm.LAWMO_LOCK"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 893
    const-string/jumbo v5, "com.mediatek.dm.LAWMO_UNLOCK"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 894
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mPPLReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 877
    return-void

    .line 883
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .restart local v1    # "binder":Landroid/os/IBinder;
    .restart local v4    # "locked":Z
    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    .line 885
    .end local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v4    # "locked":Z
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private updateUiVisibilityLocked(II)V
    .locals 2
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 466
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    if-eq v0, p1, :cond_0

    .line 467
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    .line 468
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/statusbar/StatusBarManagerService$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService$6;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 465
    :cond_0
    return-void
.end method


# virtual methods
.method public appTransitionCancelled()V
    .locals 2

    .prologue
    .line 552
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public appTransitionPending()V
    .locals 2

    .prologue
    .line 543
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 545
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionPending()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public appTransitionStarting(JJ)V
    .locals 3
    .param p1, "statusBarAnimationsStartTime"    # J
    .param p3, "statusBarAnimationsDuration"    # J

    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 564
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBar;->appTransitionStarting(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 566
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public clearNotificationEffects()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 637
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 639
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->clearEffects()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 635
    return-void

    .line 640
    :catchall_0
    move-exception v2

    .line 641
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 640
    throw v2
.end method

.method public collapsePanels()V
    .locals 2

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 215
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 250
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 249
    return-void
.end method

.method public disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 270
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 269
    return-void
.end method

.method public disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 283
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 284
    const/4 v5, 0x2

    move-object v0, p0

    move v1, p4

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 280
    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 257
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 258
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p4

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 254
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 819
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 821
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 822
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 821
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 823
    const-string/jumbo v4, ", uid="

    .line 821
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 823
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 821
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    return-void

    .line 827
    :cond_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v4

    .line 828
    :try_start_0
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v3, p2}, Lcom/android/internal/statusbar/StatusBarIconList;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 831
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 832
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mDisabled1=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mDisabled2=0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 835
    .local v0, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mDisableRecords.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 837
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 838
    .local v2, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "] userId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 839
    const-string/jumbo v5, " what1=0x"

    .line 838
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 839
    iget v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 838
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 840
    const-string/jumbo v5, " what2=0x"

    .line 838
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 840
    iget v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 838
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 841
    const-string/jumbo v5, " pkg="

    .line 838
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 841
    iget-object v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    .line 838
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 842
    const-string/jumbo v5, " token="

    .line 838
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 842
    iget-object v5, v2, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 838
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 836
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 827
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_1
    monitor-exit v4

    .line 818
    return-void

    .line 831
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public expandNotificationsPanel()V
    .locals 2

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 203
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public expandOrCollapsePanels(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 227
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->expandOrCollapsePanels(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public expandSettingsPanel()V
    .locals 2

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 240
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method gatherDisableActionsLocked(II)I
    .locals 5
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .prologue
    .line 802
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 804
    .local v0, "N":I
    const/4 v2, 0x0

    .line 805
    .local v2, "net":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 806
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 807
    .local v3, "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v4, p1, :cond_0

    .line 808
    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    :goto_1
    or-int/2addr v2, v4

    .line 805
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 808
    :cond_1
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    goto :goto_1

    .line 811
    .end local v3    # "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_2
    return v2
.end method

.method public hideDefaultAccountStatus()V
    .locals 3

    .prologue
    .line 865
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 867
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->hideDefaultAccountStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBarManagerService"

    const-string/jumbo v2, "unable to hideSimIndicator: Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public hideRecentApps(ZZ)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 519
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "which"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 763
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 764
    .local v0, "N":I
    const/4 v4, 0x0

    .line 766
    .local v4, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 767
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 768
    .local v3, "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget-object v5, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v5, p3, :cond_3

    iget v5, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v5, p1, :cond_3

    .line 769
    move-object v4, v3

    .line 773
    .end local v3    # "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    .end local v4    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_0
    if-eqz p2, :cond_4

    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 779
    if-nez v4, :cond_1

    .line 780
    new-instance v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    invoke-direct {v4, p0, v7}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;)V

    .line 781
    .local v4, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iput p1, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    .line 783
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    .end local v4    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_1
    const/4 v5, 0x1

    if-ne p5, v5, :cond_5

    .line 791
    iput p2, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    .line 795
    :goto_1
    iput-object p3, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 796
    iput-object p4, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    .line 757
    :cond_2
    :goto_2
    return-void

    .line 766
    .restart local v3    # "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    .local v4, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 774
    .end local v3    # "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    .end local v4    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_4
    if-eqz v4, :cond_2

    .line 775
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 776
    iget-object v5, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v5, v4, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_2

    .line 785
    .local v4, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :catch_0
    move-exception v1

    .line 786
    .local v1, "ex":Landroid/os/RemoteException;
    return-void

    .line 793
    .end local v1    # "ex":Landroid/os/RemoteException;
    .end local v4    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_5
    iput p2, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    goto :goto_1
.end method

.method public onClearAllNotifications(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 741
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 742
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 743
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 744
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 746
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v1, v0, p1}, Lcom/android/server/notification/NotificationDelegate;->onClearAll(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 740
    return-void

    .line 747
    :catchall_0
    move-exception v4

    .line 748
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 747
    throw v4
.end method

.method public onNotificationActionClick(Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "actionIndex"    # I

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 672
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 673
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 674
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 676
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v1, v0, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationActionClick(IILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 670
    return-void

    .line 678
    :catchall_0
    move-exception v4

    .line 679
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 678
    throw v4
.end method

.method public onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    .line 701
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 702
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 703
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 704
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 706
    .local v8, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClear(IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 700
    return-void

    .line 707
    :catchall_0
    move-exception v0

    .line 708
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 707
    throw v0
.end method

.method public onNotificationClick(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 659
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 660
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 661
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 663
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v1, v0, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClick(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 657
    return-void

    .line 664
    :catchall_0
    move-exception v4

    .line 665
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    throw v4
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "uid"    # I
    .param p5, "initialPid"    # I
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .prologue
    .line 686
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 687
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 688
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 689
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 692
    .local v10, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v0 .. v9}, Lcom/android/server/notification/NotificationDelegate;->onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 685
    return-void

    .line 694
    :catchall_0
    move-exception v0

    .line 695
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 694
    throw v0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 729
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 730
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 732
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/server/notification/NotificationDelegate;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 728
    return-void

    .line 734
    :catchall_0
    move-exception v2

    .line 735
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 734
    throw v2
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 3
    .param p1, "newlyVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p2, "noLongerVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 717
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 719
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 715
    return-void

    .line 721
    :catchall_0
    move-exception v2

    .line 722
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 721
    throw v2
.end method

.method public onPanelHidden()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 648
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 650
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->onPanelHidden()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 646
    return-void

    .line 651
    :catchall_0
    move-exception v2

    .line 652
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 651
    throw v2
.end method

.method public onPanelRevealed(ZI)V
    .locals 3
    .param p1, "clearNotificationEffects"    # Z
    .param p2, "numItems"    # I

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 626
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 628
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onPanelRevealed(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 624
    return-void

    .line 629
    :catchall_0
    move-exception v2

    .line 630
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 629
    throw v2
.end method

.method public onUnpinEvent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 928
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 930
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->onUnpinEvent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 931
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public preloadRecentApps()V
    .locals 2

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 494
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V
    .locals 5
    .param p1, "bar"    # Lcom/android/internal/statusbar/IStatusBar;
    .param p2, "iconList"    # Lcom/android/internal/statusbar/StatusBarIconList;
    .param p3, "switches"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            "[I",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 600
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 602
    const-string/jumbo v2, "StatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerStatusBar bar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 604
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 605
    :try_start_0
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {p2, v3}, Lcom/android/internal/statusbar/StatusBarIconList;->copyFrom(Lcom/android/internal/statusbar/StatusBarIconList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 607
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 608
    :try_start_1
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v2

    const/4 v4, 0x0

    aput v2, p3, v4

    .line 609
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    const/4 v4, 0x1

    aput v2, p3, v4

    .line 610
    iget-boolean v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisible:Z

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    const/4 v4, 0x2

    aput v2, p3, v4

    .line 611
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    const/4 v4, 0x3

    aput v2, p3, v4

    .line 612
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeBackDisposition:I

    const/4 v4, 0x4

    aput v2, p3, v4

    .line 613
    iget-boolean v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mShowImeSwitcher:Z

    if-eqz v2, :cond_1

    :goto_1
    const/4 v1, 0x5

    aput v0, p3, v1

    .line 614
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v0

    const/4 v1, 0x6

    aput v0, p3, v1

    .line 615
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    .line 599
    return-void

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    move v2, v1

    .line 610
    goto :goto_0

    :cond_1
    move v0, v1

    .line 613
    goto :goto_1

    .line 607
    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 6
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 375
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v3

    .line 376
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v1

    .line 377
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 378
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid status bar icon slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 381
    .restart local v1    # "index":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->removeIcon(I)V

    .line 383
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 385
    :try_start_2
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, v1}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v3

    .line 372
    return-void

    .line 386
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 529
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 527
    return-void
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPackage"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .param p4, "iconLevel"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 322
    iget-object v9, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v9

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v8

    .line 324
    .local v8, "index":I
    if-gez v8, :cond_0

    .line 325
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid status bar icon slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    .end local v8    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1

    .line 328
    .restart local v8    # "index":I
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 329
    const/4 v5, 0x0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 328
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 332
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, v8, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 334
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 336
    :try_start_2
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v8, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v9

    .line 319
    return-void

    .line 337
    :catch_0
    move-exception v7

    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 347
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v4

    .line 348
    :try_start_0
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v3, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v2

    .line 349
    .local v2, "index":I
    if-gez v2, :cond_0

    .line 350
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid status bar icon slot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    .end local v2    # "index":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 353
    .restart local v2    # "index":I
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v3, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 354
    .local v1, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v1, :cond_1

    monitor-exit v4

    .line 355
    return-void

    .line 358
    :cond_1
    :try_start_2
    iget-boolean v3, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eq v3, p2, :cond_2

    .line 359
    iput-boolean p2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 361
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 363
    :try_start_3
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v3, v2, v1}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v4

    .line 344
    return-void

    .line 364
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 427
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 431
    :try_start_0
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    .line 432
    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeBackDisposition:I

    .line 433
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    .line 434
    iput-boolean p4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mShowImeSwitcher:Z

    .line 435
    iget-object v7, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$5;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService$5;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/os/IBinder;IIZ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 420
    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public setSystemUiVisibility(IILjava/lang/String;)V
    .locals 7
    .param p1, "vis"    # I
    .param p2, "mask"    # I
    .param p3, "cause"    # Ljava/lang/String;

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 455
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 456
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->updateUiVisibilityLocked(II)V

    .line 458
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 459
    const/high16 v0, 0x3ff0000

    and-int v2, p1, v0

    .line 460
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    .line 461
    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p3

    .line 457
    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 449
    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public setWindowState(II)V
    .locals 2
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 534
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->setWindowState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public showDefaultAccountStatus(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 853
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 855
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->showDefaultAccountStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "StatusBarManagerService"

    const-string/jumbo v2, "unable to showSimIndicator, Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showRecentApps(Z)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 510
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 512
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->showRecentApps(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 572
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 574
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->startAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 575
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public toggleRecentApps()V
    .locals 2

    .prologue
    .line 483
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public topAppWindowChanged(Z)V
    .locals 3
    .param p1, "menuVisible"    # Z

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 403
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisible:Z

    .line 405
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 398
    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
