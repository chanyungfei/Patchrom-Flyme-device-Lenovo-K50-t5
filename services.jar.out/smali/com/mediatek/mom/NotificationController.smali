.class Lcom/mediatek/mom/NotificationController;
.super Lcom/mediatek/mom/ControllerBase;
.source "NotificationController.java"

# interfaces
.implements Lcom/mediatek/mom/IPackageBasedController;


# static fields
.field private static final DBG:Z = true

.field public static final NAME:Ljava/lang/String; = "NotificationController"

.field private static final TAG:Ljava/lang/String; = "MoMS.NotificationController"

.field private static mInstance:Lcom/mediatek/mom/ControllerBase;


# instance fields
.field private mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/app/INotificationManager;

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/mediatek/mom/NotificationController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/mediatek/mom/ControllerBase;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/NotificationController;->mBlockedPackages:Ljava/util/HashSet;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mom/NotificationController;->mSystemReady:Z

    .line 74
    return-void
.end method

.method private clearNotificationSettings()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/mom/NotificationController;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 86
    return-void
.end method

.method public static final getInstance()Lcom/mediatek/mom/ControllerBase;
    .locals 3

    .prologue
    .line 90
    sget-object v0, Lcom/mediatek/mom/NotificationController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    sget-object v0, Lcom/mediatek/mom/NotificationController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Lcom/mediatek/mom/NotificationController;

    invoke-direct {v0}, Lcom/mediatek/mom/NotificationController;-><init>()V

    sput-object v0, Lcom/mediatek/mom/NotificationController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    .line 92
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "Create MobileManagerController: NotificationController"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0
.end method

.method private getService()Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/mom/NotificationController;->mService:Landroid/app/INotificationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "notification"

    .line 80
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/NotificationController;->mService:Landroid/app/INotificationManager;

    .line 81
    iget-object v0, p0, Lcom/mediatek/mom/NotificationController;->mService:Landroid/app/INotificationManager;

    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mom/NotificationController;->mService:Landroid/app/INotificationManager;

    return-object v0
.end method


# virtual methods
.method public cancelNotification(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 130
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/mom/NotificationController;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    const-string/jumbo v1, "MoMS.NotificationController"

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cancelNotification for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    if-nez v0, :cond_0

    .line 143
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    :goto_1
    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v1, "MoMS.NotificationController"

    const-string/jumbo v4, "cancelNotification in NMS"

    .line 136
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/INotificationManager;->removeAllNotifications(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v0, "NotificationController"

    const-string/jumbo v1, "cancelNotification() faild!"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 144
    :catchall_0
    move-exception v0

    .line 143
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public clearAllSettings()Z
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/mom/NotificationController;->clearNotificationSettings()V

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public clearPackageSettings(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/mom/NotificationController;->setNotificationEnabledSetting(Ljava/lang/String;Z)V

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getNotificationEnabledSetting(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 160
    iget-object v1, p0, Lcom/mediatek/mom/NotificationController;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    const-string/jumbo v2, "MoMS.NotificationController"

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifications are "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const-string/jumbo v1, "dis"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "abled for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 160
    goto :goto_0

    :cond_1
    const-string/jumbo v1, "en"

    goto :goto_1
.end method

.method public onPackageStatusChange(ILjava/lang/String;I)V
    .locals 3

    .prologue
    const-string/jumbo v0, "MoMS.NotificationController"

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageStatusChange() packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    packed-switch p3, :pswitch_data_0

    .line 200
    :goto_0
    :pswitch_0
    return-void

    .line 195
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/mediatek/mom/NotificationController;->setNotificationEnabledSetting(Ljava/lang/String;Z)V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onUserStatusChange(II)V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public setNotificationCache(Ljava/util/List;)V
    .locals 3
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
    .line 169
    invoke-direct {p0}, Lcom/mediatek/mom/NotificationController;->clearNotificationSettings()V

    .line 170
    if-nez p1, :cond_1

    const-string/jumbo v0, "MoMS.NotificationController"

    const-string/jumbo v1, "setNotificationCache to null"

    .line 181
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    return-void

    .line 173
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 174
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/NotificationCacheRecord;

    .line 176
    if-eqz v0, :cond_2

    .line 177
    iget-object v2, v0, Lcom/mediatek/common/mom/NotificationCacheRecord;->packageName:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/mediatek/common/mom/NotificationCacheRecord;->enable:Z

    invoke-virtual {p0, v2, v0}, Lcom/mediatek/mom/NotificationController;->setNotificationEnabledSetting(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setNotificationEnabledSetting(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const-string/jumbo v1, "MoMS.NotificationController"

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p2, :cond_0

    const-string/jumbo v0, "dis"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "abling notifications for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-nez p2, :cond_1

    .line 155
    iget-object v0, p0, Lcom/mediatek/mom/NotificationController;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 157
    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "en"

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/mediatek/mom/NotificationController;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/NotificationController;->mSystemReady:Z

    .line 116
    invoke-direct {p0}, Lcom/mediatek/mom/NotificationController;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "null INotificationManager"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
