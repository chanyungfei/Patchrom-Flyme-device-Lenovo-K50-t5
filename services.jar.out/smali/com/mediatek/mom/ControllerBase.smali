.class public abstract Lcom/mediatek/mom/ControllerBase;
.super Ljava/lang/Object;
.source "ControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mom/ControllerBase$ListenerDeathRecipient;
    }
.end annotation


# instance fields
.field private mEnabled:Z

.field private mManagerApListener:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mom/ControllerBase;->mEnabled:Z

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/mediatek/mom/ControllerBase;->mManagerApListener:Landroid/os/IBinder;

    .line 164
    return-void
.end method

.method public static getActivityManagerService()Landroid/app/IActivityManager;
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 141
    return-object v0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "null activity manager service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPackageManagerService()Landroid/content/pm/IPackageManager;
    .locals 2

    .prologue
    const-string/jumbo v0, "package"

    .line 128
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 132
    return-object v0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "null package manager service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUserManagerService()Landroid/os/IUserManager;
    .locals 2

    .prologue
    const-string/jumbo v0, "user"

    .line 146
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 150
    return-object v0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "null user manager service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Lcom/mediatek/mom/MobileManagerService$DumpState;)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public enableController(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 77
    if-eq p1, v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/mediatek/mom/ControllerBase;->mEnabled:Z

    .line 89
    return-void

    .line 78
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 80
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->isUserAMonkey()Z

    move-result v0

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "ControllerBase"

    const-string/jumbo v1, "Contrller is disabled during monkey test"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    const/4 p1, 0x0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ControllerBase"

    const-string/jumbo v2, "isUserAMonkey() failed"

    .line 85
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getManagerApListener()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mediatek/mom/ControllerBase;->mManagerApListener:Landroid/os/IBinder;

    return-object v0
.end method

.method public isControllerEnabled()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/mediatek/mom/ControllerBase;->mEnabled:Z

    return v0
.end method

.method public isValidUserId(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    if-gez p1, :cond_1

    :cond_0
    const-string/jumbo v0, "ControllerBase"

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v3

    :cond_1
    const v0, 0x186a0

    .line 154
    if-ge p1, v0, :cond_0

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public registerManagerApListener(Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mediatek/mom/ControllerBase;->mManagerApListener:Landroid/os/IBinder;

    const-string/jumbo v0, "ControllerBase"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerManagerApListener() listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-nez p1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 112
    :cond_0
    :try_start_0
    new-instance v0, Lcom/mediatek/mom/ControllerBase$ListenerDeathRecipient;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/mom/ControllerBase$ListenerDeathRecipient;-><init>(Lcom/mediatek/mom/ControllerBase;Landroid/os/IBinder;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ControllerBase"

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LinkToDeath() failed! listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract systemReady(Landroid/content/Context;)V
.end method
