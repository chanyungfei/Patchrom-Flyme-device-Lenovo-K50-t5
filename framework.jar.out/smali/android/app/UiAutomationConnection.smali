.class public final Landroid/app/UiAutomationConnection;
.super Landroid/app/IUiAutomationConnection$Stub;
.source "UiAutomationConnection.java"


# static fields
.field private static final INITIAL_FROZEN_ROTATION_UNSPECIFIED:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field private mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mInitialFrozenRotation:I

.field private mIsShutdown:Z

.field private final mLock:Ljava/lang/Object;

.field private mOwningUid:I

.field private final mPackageManager:Landroid/content/pm/IPackageManager;

.field private final mToken:Landroid/os/Binder;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Landroid/app/UiAutomationConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/UiAutomationConnection;->LOG_TAG:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/IUiAutomationConnection$Stub;-><init>()V

    .line 65
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    .line 69
    const-string/jumbo v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    .line 72
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomationConnection;->mToken:Landroid/os/Binder;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    .line 60
    return-void
.end method

.method private isConnectedLocked()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .locals 5
    .param p1, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;

    .prologue
    .line 331
    const-string/jumbo v3, "accessibility"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 330
    invoke-static {v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 332
    .local v1, "manager":Landroid/view/accessibility/IAccessibilityManager;
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 333
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v3, -0x1

    iput v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 334
    const/16 v3, 0x10

    iput v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 335
    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v3, v3, 0x12

    iput v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 337
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    .line 344
    :try_start_0
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v3, p1, v0}, Landroid/view/accessibility/IAccessibilityManager;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 345
    iput-object p1, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    return-void

    .line 346
    :catch_0
    move-exception v2

    .line 347
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Error while registering UiTestAutomationService."

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private restoreRotationStateLocked()V
    .locals 3

    .prologue
    .line 379
    :try_start_0
    iget v1, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 382
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    iget v2, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 377
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private storeRotationStateLocked()V
    .locals 2

    .prologue
    .line 367
    :try_start_0
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->isRotationFrozen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getRotation()I

    move-result v1

    iput v1, p0, Landroid/app/UiAutomationConnection;->mInitialFrozenRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private throwIfCalledByNotTrustedUidLocked()V
    .locals 4

    .prologue
    .line 410
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 413
    .local v0, "callingUid":I
    sget-object v1, Landroid/app/UiAutomationConnection;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calling UID : = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Ownering UID := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget v1, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    if-nez v1, :cond_0

    return-void

    .line 418
    :cond_0
    iget v1, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    .line 419
    if-eqz v0, :cond_1

    .line 420
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Calling from not trusted UID!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 409
    :cond_1
    return-void
.end method

.method private throwIfNotConnectedLocked()V
    .locals 2

    .prologue
    .line 404
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    return-void
.end method

.method private throwIfShutdownLocked()V
    .locals 2

    .prologue
    .line 398
    iget-boolean v0, p0, Landroid/app/UiAutomationConnection;->mIsShutdown:Z

    if-eqz v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Connection shutdown!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    return-void
.end method

.method private unregisterUiTestAutomationServiceLocked()V
    .locals 4

    .prologue
    .line 353
    const-string/jumbo v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 352
    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 357
    .local v0, "manager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0, v2}, Landroid/view/accessibility/IAccessibilityManager;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 358
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/UiAutomationConnection;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    return-void

    .line 359
    :catch_0
    move-exception v1

    .line 360
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Error while unregistering UiTestAutomationService"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public clearWindowAnimationFrameStats()V
    .locals 4

    .prologue
    .line 210
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 211
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 212
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 213
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 215
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 217
    .local v0, "identity":J
    :try_start_1
    invoke-static {}, Landroid/view/SurfaceControl;->clearAnimationFrameStats()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 219
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 209
    return-void

    .line 210
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 218
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    .line 219
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 218
    throw v2
.end method

.method public clearWindowContentFrameStats(I)Z
    .locals 5
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 173
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 174
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 175
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 179
    .local v0, "identity":J
    :try_start_1
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v3, p1}, Landroid/view/accessibility/IAccessibilityManager;->getWindowToken(I)Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 180
    .local v2, "token":Landroid/os/IBinder;
    if-nez v2, :cond_0

    .line 181
    const/4 v3, 0x0

    .line 185
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    return v3

    .line 172
    .end local v0    # "identity":J
    .end local v2    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 183
    .restart local v0    # "identity":J
    .restart local v2    # "token":Landroid/os/IBinder;
    :cond_0
    :try_start_2
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    .line 185
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    return v3

    .line 184
    .end local v2    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v3

    .line 185
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    throw v3
.end method

.method public connect(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .locals 3
    .param p1, "client"    # Landroid/accessibilityservice/IAccessibilityServiceClient;

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Client cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 92
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Already connected."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 95
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    .line 96
    invoke-direct {p0, p1}, Landroid/app/UiAutomationConnection;->registerUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 97
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->storeRotationStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 86
    return-void
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 105
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 106
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Already disconnected."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 109
    :cond_0
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Landroid/app/UiAutomationConnection;->mOwningUid:I

    .line 110
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->unregisterUiTestAutomationServiceLocked()V

    .line 111
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->restoreRotationStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 102
    return-void
.end method

.method public executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "sink"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 276
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 277
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 278
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 281
    new-instance v0, Landroid/app/UiAutomationConnection$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/app/UiAutomationConnection$1;-><init>(Landroid/app/UiAutomationConnection;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 312
    .local v0, "streamReader":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 274
    return-void

    .line 275
    .end local v0    # "streamReader":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    .locals 5

    .prologue
    .line 225
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 226
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 227
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 228
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 230
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 232
    .local v0, "identity":J
    :try_start_1
    new-instance v2, Landroid/view/WindowAnimationFrameStats;

    invoke-direct {v2}, Landroid/view/WindowAnimationFrameStats;-><init>()V

    .line 233
    .local v2, "stats":Landroid/view/WindowAnimationFrameStats;
    invoke-static {v2}, Landroid/view/SurfaceControl;->getAnimationFrameStats(Landroid/view/WindowAnimationFrameStats;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 236
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 234
    return-object v2

    .line 225
    .end local v0    # "identity":J
    .end local v2    # "stats":Landroid/view/WindowAnimationFrameStats;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 235
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v3

    .line 236
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    throw v3
.end method

.method public getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    .locals 6
    .param p1, "windowId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 191
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 192
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 193
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 194
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 196
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 198
    .local v0, "identity":J
    :try_start_1
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v3, p1}, Landroid/view/accessibility/IAccessibilityManager;->getWindowToken(I)Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 199
    .local v2, "token":Landroid/os/IBinder;
    if-nez v2, :cond_0

    .line 204
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    return-object v5

    .line 191
    .end local v0    # "identity":J
    .end local v2    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 202
    .restart local v0    # "identity":J
    .restart local v2    # "token":Landroid/os/IBinder;
    :cond_0
    :try_start_2
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 204
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    return-object v3

    .line 203
    .end local v2    # "token":Landroid/os/IBinder;
    :catchall_1
    move-exception v3

    .line 204
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 203
    throw v3
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 244
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 245
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 246
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 248
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 250
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 252
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    return-void

    .line 243
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 251
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    .line 252
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 251
    throw v2
.end method

.method public injectInputEvent(Landroid/view/InputEvent;Z)Z
    .locals 5
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z

    .prologue
    .line 117
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 118
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 119
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 120
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 122
    if-eqz p2, :cond_0

    const/4 v2, 0x2

    .line 124
    .local v2, "mode":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 126
    .local v0, "identity":J
    :try_start_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 128
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    return v3

    .line 117
    .end local v0    # "identity":J
    .end local v2    # "mode":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 123
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "mode":I
    goto :goto_0

    .line 127
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v3

    .line 128
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    throw v3
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 259
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 260
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 261
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 262
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 264
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 266
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Landroid/app/UiAutomationConnection;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 268
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 258
    return-void

    .line 259
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 267
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    .line 268
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    throw v2
.end method

.method public setRotation(I)Z
    .locals 5
    .param p1, "rotation"    # I

    .prologue
    .line 134
    iget-object v4, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 135
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 136
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 137
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 141
    .local v0, "identity":J
    const/4 v3, -0x2

    if-ne p1, v3, :cond_0

    .line 142
    :try_start_1
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    :goto_0
    const/4 v3, 0x1

    .line 150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    return v3

    .line 134
    .end local v0    # "identity":J
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 144
    .restart local v0    # "identity":J
    :cond_0
    :try_start_2
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3, p1}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v2

    .line 150
    .local v2, "re":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    const/4 v3, 0x0

    return v3

    .line 149
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    .line 150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    throw v3
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 317
    iget-object v1, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 321
    :cond_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/UiAutomationConnection;->mIsShutdown:Z

    .line 323
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->isConnectedLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    invoke-virtual {p0}, Landroid/app/UiAutomationConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 316
    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public takeScreenshot(II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 157
    iget-object v3, p0, Landroid/app/UiAutomationConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 158
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfCalledByNotTrustedUidLocked()V

    .line 159
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfShutdownLocked()V

    .line 160
    invoke-direct {p0}, Landroid/app/UiAutomationConnection;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 162
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 164
    .local v0, "identity":J
    :try_start_1
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 166
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    return-object v2

    .line 157
    .end local v0    # "identity":J
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 165
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    .line 166
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    throw v2
.end method
