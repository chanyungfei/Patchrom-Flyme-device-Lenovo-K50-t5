.class public Lcom/mediatek/mom/MobileManagerService;
.super Lcom/mediatek/common/mom/IMobileManagerService$Stub;
.source "MobileManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mom/MobileManagerService$UserChangeReceiver;,
        Lcom/mediatek/mom/MobileManagerService$DumpState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MobileManagerService"


# instance fields
.field private isSystemReady:Z

.field private mCallInterceptionController:Lcom/mediatek/mom/CallInterceptionController;

.field private mContext:Landroid/content/Context;

.field private mControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/mom/ControllerBase;",
            ">;"
        }
    .end annotation
.end field

.field private mFirewallController:Lcom/mediatek/mom/FirewallController;

.field private mHandler:Lcom/mediatek/mom/MobileManagerHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInterceptionController:Lcom/mediatek/mom/InterceptionController;

.field private mLicenseController:Lcom/mediatek/mom/LicenseController;

.field private mMessageInterceptController:Lcom/mediatek/mom/MessageInterceptController;

.field private mNotificationController:Lcom/mediatek/mom/NotificationController;

.field private mPackageController:Lcom/mediatek/mom/PackageController;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPermissionController:Lcom/mediatek/mom/PermissionController;

.field private mReceiverController:Lcom/mediatek/mom/ReceiverController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 107
    invoke-direct {p0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mControllers:Ljava/util/Map;

    .line 87
    iput-boolean v3, p0, Lcom/mediatek/mom/MobileManagerService;->isSystemReady:Z

    .line 88
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    .line 90
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MoMS.HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 91
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->mHandler:Lcom/mediatek/mom/MobileManagerHandler;

    .line 93
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    .line 94
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->mPackageController:Lcom/mediatek/mom/PackageController;

    .line 95
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->mReceiverController:Lcom/mediatek/mom/ReceiverController;

    .line 96
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->mNotificationController:Lcom/mediatek/mom/NotificationController;

    .line 97
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->mFirewallController:Lcom/mediatek/mom/FirewallController;

    .line 98
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->mLicenseController:Lcom/mediatek/mom/LicenseController;

    .line 99
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->mInterceptionController:Lcom/mediatek/mom/InterceptionController;

    .line 100
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->mCallInterceptionController:Lcom/mediatek/mom/CallInterceptionController;

    .line 101
    iput-object v4, p0, Lcom/mediatek/mom/MobileManagerService;->mMessageInterceptController:Lcom/mediatek/mom/MessageInterceptController;

    .line 397
    new-instance v0, Lcom/mediatek/mom/MobileManagerService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/mom/MobileManagerService$1;-><init>(Lcom/mediatek/mom/MobileManagerService;)V

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 109
    iput-object p1, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    .line 112
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v0, Lcom/mediatek/mom/MobileManagerHandler;

    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/mom/MobileManagerHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mHandler:Lcom/mediatek/mom/MobileManagerHandler;

    .line 114
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mHandler:Lcom/mediatek/mom/MobileManagerHandler;

    invoke-static {v0}, Lcom/mediatek/mom/ListenerTriggerHelper;->setHandler(Landroid/os/Handler;)V

    .line 117
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/mom/ManagerIdentityHelper;->init(Landroid/content/Context;)V

    .line 120
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mControllers:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/PackageController;->getInstance()Lcom/mediatek/mom/ControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-direct {p0, v5}, Lcom/mediatek/mom/MobileManagerService;->getMobileManagerController(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/PackageController;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPackageController:Lcom/mediatek/mom/PackageController;

    .line 123
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mControllers:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->mPackageController:Lcom/mediatek/mom/PackageController;

    invoke-static {v2}, Lcom/mediatek/mom/PermissionController;->getInstance(Lcom/mediatek/mom/PackageController;)Lcom/mediatek/mom/ControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-direct {p0, v3}, Lcom/mediatek/mom/MobileManagerService;->getMobileManagerController(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/PermissionController;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    .line 126
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mControllers:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/mom/MobileManagerService;->mHandler:Lcom/mediatek/mom/MobileManagerHandler;

    invoke-static {v2, v3}, Lcom/mediatek/mom/ReceiverController;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/mediatek/mom/ControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-direct {p0, v6}, Lcom/mediatek/mom/MobileManagerService;->getMobileManagerController(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ReceiverController;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mReceiverController:Lcom/mediatek/mom/ReceiverController;

    .line 129
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mControllers:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/NotificationController;->getInstance()Lcom/mediatek/mom/ControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-direct {p0, v7}, Lcom/mediatek/mom/MobileManagerService;->getMobileManagerController(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/NotificationController;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mNotificationController:Lcom/mediatek/mom/NotificationController;

    .line 132
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mControllers:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/FirewallController;->getInstance()Lcom/mediatek/mom/ControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    .line 133
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->getMobileManagerController(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/FirewallController;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mFirewallController:Lcom/mediatek/mom/FirewallController;

    .line 135
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mControllers:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/LicenseController;->getInstance()Lcom/mediatek/mom/ControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x7

    .line 136
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->getMobileManagerController(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/LicenseController;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mLicenseController:Lcom/mediatek/mom/LicenseController;

    .line 138
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mControllers:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/InterceptionController;->getInstance()Lcom/mediatek/mom/ControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x8

    .line 139
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->getMobileManagerController(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/InterceptionController;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mInterceptionController:Lcom/mediatek/mom/InterceptionController;

    .line 141
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mControllers:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/CallInterceptionController;->getInstance()Lcom/mediatek/mom/ControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x6

    .line 142
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->getMobileManagerController(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/CallInterceptionController;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mCallInterceptionController:Lcom/mediatek/mom/CallInterceptionController;

    .line 144
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mControllers:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/mom/MessageInterceptController;->getInstance()Lcom/mediatek/mom/ControllerBase;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    .line 145
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->getMobileManagerController(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/MessageInterceptController;

    iput-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mMessageInterceptController:Lcom/mediatek/mom/MessageInterceptController;

    .line 148
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 151
    invoke-static {}, Lcom/mediatek/mom/MobileManagerService;->isMultiUserSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 152
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.USER_ADDED"

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/mediatek/mom/MobileManagerService$UserChangeReceiver;

    invoke-direct {v2, p0, v4}, Lcom/mediatek/mom/MobileManagerService$UserChangeReceiver;-><init>(Lcom/mediatek/mom/MobileManagerService;Lcom/mediatek/mom/MobileManagerService$1;)V

    iget-object v3, p0, Lcom/mediatek/mom/MobileManagerService;->mHandler:Lcom/mediatek/mom/MobileManagerHandler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private NotifyControllerUserStatusChanged(II)V
    .locals 3

    .prologue
    const-string/jumbo v0, "MobileManagerService"

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "User Status Changed, userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mControllers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 573
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 584
    return-void

    .line 574
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 575
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ControllerBase;

    .line 576
    instance-of v2, v0, Lcom/mediatek/mom/IPackageBasedController;

    if-nez v2, :cond_2

    .line 579
    instance-of v2, v0, Lcom/mediatek/mom/IPermissionController;

    if-eqz v2, :cond_0

    .line 580
    check-cast v0, Lcom/mediatek/mom/IPermissionController;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/mom/IPermissionController;->onUserStatusChange(II)V

    goto :goto_0

    .line 577
    :cond_2
    check-cast v0, Lcom/mediatek/mom/IPackageBasedController;

    invoke-interface {v0, p1, p2}, Lcom/mediatek/mom/IPackageBasedController;->onUserStatusChange(II)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/mediatek/mom/MobileManagerService;)Lcom/mediatek/mom/LicenseController;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mLicenseController:Lcom/mediatek/mom/LicenseController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/mom/MobileManagerService;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/mom/MobileManagerService;->onPackageStatusChange(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/mom/MobileManagerService;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/mom/MobileManagerService;->sendPackageBroadcastAsUser(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/mom/MobileManagerService;Z[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mom/MobileManagerService;->handlePackageAvaliable(Z[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/mom/MobileManagerService;II)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mom/MobileManagerService;->NotifyControllerUserStatusChanged(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/mom/MobileManagerService;II)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mom/MobileManagerService;->sendUserBroadcastAsUser(II)V

    return-void
.end method

.method private checkLicense(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 349
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mLicenseController:Lcom/mediatek/mom/LicenseController;

    invoke-static {p1}, Lcom/mediatek/mom/LicenseController;->checkManagerIdentity(I)I

    move-result v0

    .line 350
    if-nez v0, :cond_1

    .line 355
    :cond_0
    return v2

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mLicenseController:Lcom/mediatek/mom/LicenseController;

    invoke-virtual {v1, p1, v0}, Lcom/mediatek/mom/LicenseController;->checkProtocol(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method private clearAllSettingsInner()V
    .locals 3

    .prologue
    const-string/jumbo v0, "MobileManagerService"

    const-string/jumbo v1, "clearAllSettings()"

    .line 365
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mControllers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 368
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    return-void

    .line 369
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 370
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ControllerBase;

    .line 371
    instance-of v2, v0, Lcom/mediatek/mom/IPackageBasedController;

    if-eqz v2, :cond_0

    .line 372
    check-cast v0, Lcom/mediatek/mom/IPackageBasedController;

    invoke-interface {v0}, Lcom/mediatek/mom/IPackageBasedController;->clearAllSettings()Z

    goto :goto_0
.end method

.method private detachInner(I)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/PermissionController;->detach(I)V

    .line 345
    return-void
.end method

.method private enforceCallingUid(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 298
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2710

    .line 299
    if-ge v0, v1, :cond_0

    .line 303
    return-void

    .line 300
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Use MoMS API without valid uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " pid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforceCheckAttachment(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/PermissionController;->checkAttachment(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    return-void

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Use MoMS API without attachment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceCheckLicense(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 284
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->checkLicense(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    return-void

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Use MoMS API without valid license: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getMobileManagerController(I)Lcom/mediatek/mom/ControllerBase;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mControllers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ControllerBase;

    return-object v0
.end method

.method private getUserList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "user"

    .line 449
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    .line 450
    if-nez v1, :cond_0

    .line 456
    :goto_0
    return-object v0

    .line 451
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v1

    const-string/jumbo v2, "MobileManagerService"

    const-string/jumbo v3, "getUsers() failed!"

    .line 454
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handlePackageAvaliable(Z[Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 460
    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    move v1, v0

    :goto_0
    move v2, v3

    .line 464
    :goto_1
    array-length v0, p2

    if-lt v2, v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mReceiverController:Lcom/mediatek/mom/ReceiverController;

    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerService;->getUserList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/mom/ReceiverController;->updateReceiverList(Ljava/util/List;)V

    .line 485
    invoke-direct {p0, p2, v1}, Lcom/mediatek/mom/MobileManagerService;->sendPackageListBroadcastAsUser([Ljava/lang/String;I)V

    .line 486
    return-void

    :cond_0
    const/4 v0, 0x3

    move v1, v0

    .line 460
    goto :goto_0

    .line 466
    :cond_1
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/mediatek/mom/PackageController;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 467
    if-nez v0, :cond_4

    :cond_2
    move v4, v3

    :goto_2
    const-string/jumbo v0, "MobileManagerService"

    .line 470
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handlePackageAvaliable() package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " appId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2710

    .line 471
    if-ge v4, v0, :cond_5

    .line 481
    :cond_3
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/mediatek/mom/PackageController;->removePendingPackage(Ljava/lang/String;)V

    .line 464
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 467
    :cond_4
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_2

    .line 468
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move v4, v0

    goto :goto_2

    .line 472
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerService;->getUserList()Ljava/util/List;

    move-result-object v0

    .line 473
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 474
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 475
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 476
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 477
    aget-object v6, p2, v2

    invoke-direct {p0, v0, v6, v1}, Lcom/mediatek/mom/MobileManagerService;->onPackageStatusChange(ILjava/lang/String;I)V

    goto :goto_3
.end method

.method private static isMultiUserSupport()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    return v1

    .line 166
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private onPackageStatusChange(ILjava/lang/String;I)V
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mControllers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 524
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 535
    if-eq p3, v0, :cond_4

    .line 544
    if-eqz p3, :cond_5

    .line 548
    :cond_1
    :goto_1
    return-void

    .line 525
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 526
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ControllerBase;

    .line 527
    instance-of v2, v0, Lcom/mediatek/mom/IPackageBasedController;

    if-nez v2, :cond_3

    .line 529
    instance-of v2, v0, Lcom/mediatek/mom/IPermissionController;

    if-eqz v2, :cond_0

    .line 530
    check-cast v0, Lcom/mediatek/mom/IPermissionController;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/mom/IPermissionController;->onPackageStatusChange(ILjava/lang/String;I)V

    goto :goto_0

    .line 528
    :cond_3
    check-cast v0, Lcom/mediatek/mom/IPackageBasedController;

    invoke-interface {v0, p1, p2, p3}, Lcom/mediatek/mom/IPackageBasedController;->onPackageStatusChange(ILjava/lang/String;I)V

    goto :goto_0

    .line 538
    :cond_4
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mLicenseController:Lcom/mediatek/mom/LicenseController;

    invoke-static {p2}, Lcom/mediatek/mom/LicenseController;->checkManagerIdentity(Ljava/lang/String;)I

    move-result v0

    .line 541
    invoke-static {v0}, Lcom/mediatek/mom/ManagerIdentityHelper;->isMobileManagerIdetity(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerService;->clearAllSettingsInner()V

    goto :goto_1

    .line 545
    :cond_5
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mLicenseController:Lcom/mediatek/mom/LicenseController;

    invoke-static {p2}, Lcom/mediatek/mom/LicenseController;->checkManagerIdentity(Ljava/lang/String;)I

    move-result v0

    .line 546
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    invoke-virtual {v1, v0}, Lcom/mediatek/mom/PermissionController;->initPermControlAp(I)V

    goto :goto_1
.end method

.method private sendPackageBroadcastAsUser(Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/mediatek/mom/MobileManagerService;->isSystemReady:Z

    if-nez v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 490
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mom.action.PACKAGE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mom.action.extra.status"

    .line 491
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "mom.action.extra.package"

    .line 492
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "mom.action.extra.user"

    .line 493
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, -0x2710

    .line 495
    if-ne p3, v1, :cond_1

    .line 498
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private sendPackageListBroadcastAsUser([Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/mediatek/mom/MobileManagerService;->isSystemReady:Z

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 505
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mom.action.PACKAGE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mom.action.extra.status"

    .line 506
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "mom.action.extra.package.list"

    .line 507
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "mom.action.extra.user"

    const/4 v2, -0x1

    .line 508
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private sendUserBroadcastAsUser(II)V
    .locals 3

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/mediatek/mom/MobileManagerService;->isSystemReady:Z

    if-nez v0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 515
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "mom.action.USER_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mom.action.extra.status"

    .line 516
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "mom.action.extra.user"

    .line 517
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 518
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized attach(Lcom/mediatek/common/mom/IMobileConnectionCallback;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "attach()"

    .line 315
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    .line 317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 318
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mLicenseController:Lcom/mediatek/mom/LicenseController;

    invoke-static {v0}, Lcom/mediatek/mom/LicenseController;->checkManagerIdentity(I)I

    move-result v1

    .line 319
    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    invoke-virtual {v2, v0}, Lcom/mediatek/mom/PermissionController;->getCurrentIdentity(I)I

    move-result v2

    const-string/jumbo v3, "MobileManagerService"

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "attach() currentIdentity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " checkIdentity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " with uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    if-eqz p1, :cond_0

    .line 328
    iget-object v3, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    invoke-virtual {v3, p1, v0, v2, v1}, Lcom/mediatek/mom/PermissionController;->attach(Lcom/mediatek/common/mom/IMobileConnectionCallback;III)Z

    move-result v2

    const/4 v3, 0x1

    .line 330
    if-eq v2, v3, :cond_1

    const-string/jumbo v3, "MobileManagerService"

    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "attach() with uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " identity: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 335
    return v2

    :cond_0
    :try_start_1
    const-string/jumbo v0, "MobileManagerService"

    const-string/jumbo v1, "attach with null callback"

    .line 325
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 326
    return v6

    :cond_1
    :try_start_2
    const-string/jumbo v3, "MobileManagerService"

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "attach() with uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " identity: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " successfully"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancelNotification(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "cancelNotification()"

    .line 856
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mNotificationController:Lcom/mediatek/mom/NotificationController;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/NotificationController;->cancelNotification(Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method public checkPermission(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/mom/PermissionController;->checkPermission(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public checkPermissionAsync(Ljava/lang/String;ILcom/mediatek/common/mom/IRequestedPermissionCallback;)V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/mediatek/mom/PermissionController;->checkPermissionAsync(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)V

    .line 710
    return-void
.end method

.method public checkPermissionAsyncWithData(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)V
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/mom/PermissionController;->checkPermissionAsync(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)V

    .line 719
    return-void
.end method

.method public checkPermissionWithData(Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/mom/PermissionController;->checkPermission(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public clearAllSettings()V
    .locals 1

    .prologue
    const-string/jumbo v0, "clearAllSettings()"

    .line 359
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    .line 360
    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerService;->clearAllSettingsInner()V

    .line 361
    return-void
.end method

.method public clearPackageSettings(Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string/jumbo v0, "clearPackageSettings()"

    .line 379
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    const-string/jumbo v0, "MobileManagerService"

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearPackageSettings("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mControllers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 383
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    return-void

    .line 384
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 385
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ControllerBase;

    .line 386
    instance-of v2, v0, Lcom/mediatek/mom/IPackageBasedController;

    if-eqz v2, :cond_0

    .line 387
    check-cast v0, Lcom/mediatek/mom/IPackageBasedController;

    invoke-interface {v0, p1}, Lcom/mediatek/mom/IPackageBasedController;->clearPackageSettings(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public deletePackage(Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string/jumbo v0, "deletePackage()"

    .line 835
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    .line 837
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 839
    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->mPackageController:Lcom/mediatek/mom/PackageController;

    invoke-virtual {v2, p1}, Lcom/mediatek/mom/PackageController;->deletePackage(Ljava/lang/String;)V

    .line 841
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 842
    return-void
.end method

.method public detach()V
    .locals 1

    .prologue
    const-string/jumbo v0, "detach()"

    .line 339
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckAttachment(Ljava/lang/String;)V

    .line 340
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->detachInner(I)V

    .line 341
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 222
    :cond_0
    :goto_0
    array-length v2, p3

    if-lt v0, v2, :cond_5

    .line 248
    :cond_1
    new-instance v1, Lcom/mediatek/mom/MobileManagerService$DumpState;

    invoke-direct {v1}, Lcom/mediatek/mom/MobileManagerService$DumpState;-><init>()V

    .line 251
    array-length v2, p3

    if-lt v0, v2, :cond_7

    .line 267
    :cond_2
    :goto_1
    invoke-virtual {v1, v5}, Lcom/mediatek/mom/MobileManagerService$DumpState;->isDumping(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 269
    invoke-virtual {v1, v7}, Lcom/mediatek/mom/MobileManagerService$DumpState;->isDumping(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 271
    invoke-virtual {v1, v6}, Lcom/mediatek/mom/MobileManagerService$DumpState;->isDumping(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 273
    invoke-virtual {v1, v8}, Lcom/mediatek/mom/MobileManagerService$DumpState;->isDumping(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x10

    .line 275
    invoke-virtual {v1, v0}, Lcom/mediatek/mom/MobileManagerService$DumpState;->isDumping(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 278
    :cond_3
    return-void

    .line 213
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump MobileManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    return-void

    .line 223
    :cond_5
    aget-object v2, p3, v0

    .line 224
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    .line 227
    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v3, "-a"

    .line 228
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "-h"

    .line 230
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "-c"

    .line 242
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; use -h for help"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "Mobile manager dump options:"

    .line 231
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  [-h] [-c] [controller] ..."

    .line 232
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    -c: print the specific controller"

    .line 233
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    -h: print this help"

    .line 234
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  controller may be one of:"

    .line 235
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    permission: list permission configuration"

    .line 236
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    package: "

    .line 237
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    receiver: list packages that cannot receive BOOT_COMPLETED"

    .line 238
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    notification: "

    .line 239
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    firewall: "

    .line 240
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    return-void

    .line 252
    :cond_7
    aget-object v2, p3, v0

    .line 253
    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v0, "permission"

    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "package"

    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "receiver"

    .line 258
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "notification"

    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "firewall"

    .line 262
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    .line 263
    invoke-virtual {v1, v0}, Lcom/mediatek/mom/MobileManagerService$DumpState;->setDump(I)V

    goto/16 :goto_1

    .line 255
    :cond_8
    invoke-virtual {v1, v5}, Lcom/mediatek/mom/MobileManagerService$DumpState;->setDump(I)V

    goto/16 :goto_1

    .line 257
    :cond_9
    invoke-virtual {v1, v6}, Lcom/mediatek/mom/MobileManagerService$DumpState;->setDump(I)V

    goto/16 :goto_1

    .line 259
    :cond_a
    invoke-virtual {v1, v7}, Lcom/mediatek/mom/MobileManagerService$DumpState;->setDump(I)V

    goto/16 :goto_1

    .line 261
    :cond_b
    invoke-virtual {v1, v8}, Lcom/mediatek/mom/MobileManagerService$DumpState;->setDump(I)V

    goto/16 :goto_1
.end method

.method public enableInterceptionController(Z)V
    .locals 3

    .prologue
    const-string/jumbo v0, "enableInterceptionController()"

    .line 879
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    const-string/jumbo v0, "MobileManagerService"

    .line 880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableInterceptionController() enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mInterceptionController:Lcom/mediatek/mom/InterceptionController;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/InterceptionController;->enableController(Z)V

    .line 882
    return-void
.end method

.method public enablePermissionController(Z)V
    .locals 3

    .prologue
    const-string/jumbo v0, "enablePermissionController()"

    .line 670
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckAttachment(Ljava/lang/String;)V

    const-string/jumbo v0, "MobileManagerService"

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enablePermissionController() enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/PermissionController;->enableController(Z)V

    .line 673
    return-void
.end method

.method public filterReceiver(Landroid/content/Intent;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "filterReceiver()"

    .line 776
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCallingUid(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mReceiverController:Lcom/mediatek/mom/ReceiverController;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/mediatek/mom/ReceiverController;->filterReceiver(Ljava/lang/String;Ljava/util/List;I)V

    .line 778
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string/jumbo v0, "forceStopPackage()"

    .line 800
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    .line 802
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 804
    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->mPackageController:Lcom/mediatek/mom/PackageController;

    invoke-virtual {v2, p1}, Lcom/mediatek/mom/PackageController;->forceStopPackage(Ljava/lang/String;)V

    .line 806
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    return-void
.end method

.method public getBootReceiverEnabledSetting(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const-string/jumbo v0, "getBootReceiverEnabledSetting()"

    .line 770
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    .line 771
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 772
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mReceiverController:Lcom/mediatek/mom/ReceiverController;

    invoke-virtual {v1, v0, p1}, Lcom/mediatek/mom/ReceiverController;->getBootReceiverEnabledSetting(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBootReceiverList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "getBootReceiverList()"

    .line 738
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    .line 739
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 740
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mReceiverController:Lcom/mediatek/mom/ReceiverController;

    invoke-virtual {v1, v0}, Lcom/mediatek/mom/ReceiverController;->getBootReceiverList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "getInstalledPackages()"

    .line 393
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPackageController:Lcom/mediatek/mom/PackageController;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/mom/PackageController;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInterceptionEnabledSetting()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "getInterceptionEnabledSetting()"

    .line 885
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCallingUid(Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mInterceptionController:Lcom/mediatek/mom/InterceptionController;

    invoke-virtual {v0}, Lcom/mediatek/mom/InterceptionController;->isControllerEnabled()Z

    move-result v0

    return v0
.end method

.method public getNotificationEnabledSetting(Ljava/lang/String;)Z
    .locals 1

    .prologue
    const-string/jumbo v0, "getNotificationEnabledSetting()"

    .line 866
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCallingUid(Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mNotificationController:Lcom/mediatek/mom/NotificationController;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/NotificationController;->getNotificationEnabledSetting(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPackageGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "getPackageGrantedPermissions()"

    .line 676
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/mom/PermissionController;->getPackageGrantedPermissions(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 679
    return-object v0
.end method

.method public getParentPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/PermissionController;->getParentPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserConfirmTime(IJ)J
    .locals 6

    .prologue
    const-string/jumbo v0, "getUserConfirmTime"

    .line 722
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCallingUid(Ljava/lang/String;)V

    const/16 v0, -0x2710

    .line 724
    if-eq p1, v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/mom/PermissionController;->getUserConfirmTime(IJ)J

    move-result-wide v0

    const-string/jumbo v2, "MobileManagerService"

    .line 729
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUserConfirmTime() at User("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") timeBound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " totalTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return-wide v0

    :cond_0
    const-string/jumbo v0, "MobileManagerService"

    const-string/jumbo v1, "getUserConfirmTime() skipped because of null user id"

    .line 725
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    .line 726
    return-wide v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "getVersionName()"

    .line 306
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    const-string/jumbo v0, "MoMS.5.0.0"

    .line 307
    return-object v0
.end method

.method public installPackage(Landroid/net/Uri;Lcom/mediatek/common/mom/IPackageInstallCallback;)V
    .locals 3

    .prologue
    const-string/jumbo v0, "installPackage()"

    .line 818
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    .line 820
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 822
    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->mPackageController:Lcom/mediatek/mom/PackageController;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/mom/PackageController;->installPackage(Landroid/net/Uri;Lcom/mediatek/common/mom/IPackageInstallCallback;)V

    .line 824
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 825
    return-void
.end method

.method public registerManagerApListener(ILandroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 588
    if-eqz p1, :cond_0

    const-string/jumbo v0, "registerManagerApListener()"

    .line 591
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    .line 593
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/MobileManagerService;->getMobileManagerController(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    const-string/jumbo v1, "MobileManagerService"

    .line 594
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerManagerApListener() controllerID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    if-nez v0, :cond_1

    const-string/jumbo v0, "MobileManagerService"

    const-string/jumbo v1, "registerManagerApListener() failed!"

    .line 599
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "registerManagerApListener()"

    .line 589
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckAttachment(Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual {v0, p2}, Lcom/mediatek/mom/ControllerBase;->registerManagerApListener(Landroid/os/IBinder;)V

    goto :goto_1
.end method

.method public setBootReceiverEnabledSetting(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const-string/jumbo v0, "setBootReceiverEnabledSetting()"

    .line 751
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    .line 752
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 753
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mReceiverController:Lcom/mediatek/mom/ReceiverController;

    invoke-virtual {v1, v0, p1, p2}, Lcom/mediatek/mom/ReceiverController;->setBootReceiverEnabledSetting(ILjava/lang/String;Z)V

    .line 754
    return-void
.end method

.method public setBootReceiverEnabledSettings(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "setBootReceiverEnabledSettings()"

    .line 757
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    .line 758
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 759
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService;->mReceiverController:Lcom/mediatek/mom/ReceiverController;

    invoke-virtual {v1, v0, p1}, Lcom/mediatek/mom/ReceiverController;->setBootReceiverEnabledSettings(ILjava/util/List;)V

    .line 760
    return-void
.end method

.method public setFirewallPolicy(IIZ)V
    .locals 1

    .prologue
    const-string/jumbo v0, "setFirewallPolicy()"

    .line 848
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mFirewallController:Lcom/mediatek/mom/FirewallController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/mom/FirewallController;->setFirewallPolicy(IIZ)V

    .line 850
    return-void
.end method

.method public setNotificationCache(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/NotificationCacheRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "setNotificationCache()"

    .line 871
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mNotificationController:Lcom/mediatek/mom/NotificationController;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/NotificationController;->setNotificationCache(Ljava/util/List;)V

    .line 873
    return-void
.end method

.method public setNotificationEnabledSetting(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "setNotificationEnabledSetting()"

    .line 861
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckLicense(Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mNotificationController:Lcom/mediatek/mom/NotificationController;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mom/NotificationController;->setNotificationEnabledSetting(Ljava/lang/String;Z)V

    .line 863
    return-void
.end method

.method public setPermissionCache(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "setPermissionCache()"

    .line 693
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckAttachment(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/PermissionController;->resetCache(I)V

    .line 696
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/mom/PermissionController;->setPermissionRecord(ILjava/util/List;)V

    .line 697
    return-void
.end method

.method public setPermissionRecord(Lcom/mediatek/common/mom/PermissionRecord;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "setPermissionRecord()"

    .line 683
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckAttachment(Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/mom/PermissionController;->setPermissionRecord(ILcom/mediatek/common/mom/PermissionRecord;)V

    .line 685
    return-void
.end method

.method public setPermissionRecords(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "setPermissionRecords()"

    .line 688
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCheckAttachment(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mPermissionController:Lcom/mediatek/mom/PermissionController;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/mom/PermissionController;->setPermissionRecord(ILjava/util/List;)V

    .line 690
    return-void
.end method

.method public startMonitorBootReceiver(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMonitorBootReceiver("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCallingUid(Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mReceiverController:Lcom/mediatek/mom/ReceiverController;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/ReceiverController;->startMontor(Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method public stopMonitorBootReceiver(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopMonitorBootReceiver("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCallingUid(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mReceiverController:Lcom/mediatek/mom/ReceiverController;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/ReceiverController;->stopMontor(Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    const-string/jumbo v0, "MobileManagerService"

    const-string/jumbo v1, "systemReady()"

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/mediatek/mom/MobileManagerService;->mControllers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 178
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/MobileManagerService;->isSystemReady:Z

    .line 186
    return-void

    .line 179
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ControllerBase;

    .line 181
    iget-object v2, p0, Lcom/mediatek/mom/MobileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/mediatek/mom/ControllerBase;->systemReady(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public triggerManagerApListener(ILandroid/os/Bundle;I)I
    .locals 5

    .prologue
    const-string/jumbo v0, "triggerManagerApListener"

    .line 612
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCallingUid(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 616
    invoke-direct {p0, p1}, Lcom/mediatek/mom/MobileManagerService;->getMobileManagerController(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v1

    const-string/jumbo v2, "MobileManagerService"

    .line 619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "triggerManagerApListener() controllerID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " defaultResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    if-nez v1, :cond_0

    const-string/jumbo v1, "MobileManagerService"

    const-string/jumbo v2, "triggerManagerApListener() failed!"

    .line 631
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :goto_0
    return v0

    .line 623
    :cond_0
    invoke-virtual {v1}, Lcom/mediatek/mom/ControllerBase;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v1

    .line 624
    if-nez v1, :cond_1

    const-string/jumbo v1, "MobileManagerService"

    const-string/jumbo v2, "Trigger null listener!"

    .line 628
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 625
    :cond_1
    invoke-static {p1, v1, p2, p3}, Lcom/mediatek/mom/ListenerTriggerHelper;->triggerListener(ILandroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    goto :goto_0
.end method

.method public triggerManagerApListenerAsync(ILandroid/os/Bundle;ILandroid/os/IBinder;)V
    .locals 4

    .prologue
    const-string/jumbo v0, "triggerManagerApListenerAsync"

    .line 637
    invoke-direct {p0, v0}, Lcom/mediatek/mom/MobileManagerService;->enforceCallingUid(Ljava/lang/String;)V

    .line 640
    if-eqz p4, :cond_0

    .line 646
    invoke-direct {p0, p1}, Lcom/mediatek/mom/MobileManagerService;->getMobileManagerController(I)Lcom/mediatek/mom/ControllerBase;

    move-result-object v0

    const-string/jumbo v1, "MobileManagerService"

    .line 649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerManagerApListenerAsync() controllerID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " defaultResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    if-nez v0, :cond_1

    const-string/jumbo v0, "MobileManagerService"

    const-string/jumbo v1, "triggerManagerApListener() failed!"

    .line 662
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "MobileManagerService"

    const-string/jumbo v1, "triggerManagerApListenerAsync() with null callback"

    .line 641
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return-void

    .line 654
    :cond_1
    invoke-virtual {v0}, Lcom/mediatek/mom/ControllerBase;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v0

    .line 655
    if-nez v0, :cond_2

    const-string/jumbo v0, "MobileManagerService"

    const-string/jumbo v1, "Trigger null listener!"

    .line 659
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 656
    :cond_2
    invoke-static {p1, v0, p2, p3, p4}, Lcom/mediatek/mom/ListenerTriggerHelper;->triggerListenerAsync(ILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V

    goto :goto_0
.end method
