.class public Landroid/app/KeyguardManager;
.super Ljava/lang/Object;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/KeyguardManager$KeyguardLock;,
        Landroid/app/KeyguardManager$OnKeyguardExitResult;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String; = "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

.field private static final COVER_APP:I = 0x2

.field public static final EXTRA_DESCRIPTION:Ljava/lang/String; = "android.app.extra.DESCRIPTION"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.app.extra.TITLE"


# instance fields
.field private mTrustManager:Landroid/app/trust/ITrustManager;

.field private mWM:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;
    .locals 1

    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    return-object v0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    .line 185
    const-string/jumbo v0, "trust"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 184
    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 182
    return-void
.end method

.method private checkAppType()I
    .locals 3

    .prologue
    .line 363
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 364
    .local v1, "myUid":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 365
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 366
    .local v0, "app":Landroid/app/Application;
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/keyguard/KeyguardCoverAppUtils;->isCoverAppLock(Landroid/content/Context;)Z

    move-result v2

    .line 366
    if-eqz v2, :cond_0

    .line 368
    const/4 v2, 0x2

    return v2

    .line 371
    .end local v0    # "app":Landroid/app/Application;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 84
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 86
    const-string/jumbo v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 88
    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    return-object v0
.end method

.method public exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
    .locals 3
    .param p1, "callback"    # Landroid/app/KeyguardManager$OnKeyguardExitResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 347
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    new-instance v2, Landroid/app/KeyguardManager$1;

    invoke-direct {v2, p0, p1}, Landroid/app/KeyguardManager$1;-><init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 3

    .prologue
    .line 259
    :try_start_0
    invoke-direct {p0}, Landroid/app/KeyguardManager;->checkAppType()I

    move-result v0

    .line 260
    .local v0, "appType":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 261
    const/4 v2, 0x1

    return v2

    .line 265
    :cond_0
    iget-object v2, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->inKeyguardRestrictedInputMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 266
    .end local v0    # "appType":I
    :catch_0
    move-exception v1

    .line 267
    .local v1, "ex":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2
.end method

.method public isDeviceLocked()Z
    .locals 1

    .prologue
    .line 279
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    invoke-interface {v1, p1}, Landroid/app/trust/ITrustManager;->isDeviceLocked(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isDeviceSecure()Z
    .locals 1

    .prologue
    .line 304
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceSecure(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 314
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    invoke-interface {v1, p1}, Landroid/app/trust/ITrustManager;->isDeviceSecure(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public isKeyguardLocked()Z
    .locals 3

    .prologue
    .line 218
    :try_start_0
    invoke-direct {p0}, Landroid/app/KeyguardManager;->checkAppType()I

    move-result v0

    .line 219
    .local v0, "appType":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 220
    const/4 v2, 0x1

    return v2

    .line 224
    :cond_0
    iget-object v2, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 225
    .end local v0    # "appType":I
    :catch_0
    move-exception v1

    .line 226
    .local v1, "ex":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2
.end method

.method public isKeyguardSecure()Z
    .locals 2

    .prologue
    .line 240
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->isKeyguardSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    new-instance v0, Landroid/app/KeyguardManager$KeyguardLock;

    invoke-direct {v0, p0, p1}, Landroid/app/KeyguardManager$KeyguardLock;-><init>(Landroid/app/KeyguardManager;Ljava/lang/String;)V

    return-object v0
.end method
