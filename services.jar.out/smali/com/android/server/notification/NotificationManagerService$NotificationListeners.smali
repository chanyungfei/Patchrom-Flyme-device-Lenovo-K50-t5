.class public Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
.super Lcom/android/server/notification/ManagedServices;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationListeners"
.end annotation


# instance fields
.field private final mLightTrimListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationGroupsDesired:Z

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "interruptionFilter"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPosted(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdate(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemoved(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 4024
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4025
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-get10(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-get31(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    .line 4021
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    .line 4024
    return-void
.end method

.method private isListenerPackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 4258
    if-nez p1, :cond_0

    .line 4259
    return v4

    .line 4262
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 4263
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mServices:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 4264
    .local v0, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 4265
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .end local v0    # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_2
    monitor-exit v3

    .line 4269
    return v4

    .line 4262
    .end local v1    # "serviceInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private notifyInterruptionFilterChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "interruptionFilter"    # I

    .prologue
    .line 4249
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Landroid/service/notification/INotificationListener;

    .line 4251
    .local v1, "listener":Landroid/service/notification/INotificationListener;
    :try_start_0
    invoke-interface {v1, p2}, Landroid/service/notification/INotificationListener;->onInterruptionFilterChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4248
    :goto_0
    return-void

    .line 4252
    :catch_0
    move-exception v0

    .line 4253
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify listener (interruption filter): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyListenerHintsChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .prologue
    .line 4239
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Landroid/service/notification/INotificationListener;

    .line 4241
    .local v1, "listener":Landroid/service/notification/INotificationListener;
    :try_start_0
    invoke-interface {v1, p2}, Landroid/service/notification/INotificationListener;->onListenerHintsChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4238
    :goto_0
    return-void

    .line 4242
    :catch_0
    move-exception v0

    .line 4243
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify listener (listener hints): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyPosted(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 6
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 4205
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Landroid/service/notification/INotificationListener;

    .line 4206
    .local v1, "listener":Landroid/service/notification/INotificationListener;
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-direct {v2, p2}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 4208
    .local v2, "sbnHolder":Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
    :try_start_0
    invoke-interface {v1, v2, p3}, Landroid/service/notification/INotificationListener;->onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4204
    :goto_0
    return-void

    .line 4209
    :catch_0
    move-exception v0

    .line 4210
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to notify listener (posted): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyRankingUpdate(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 4230
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Landroid/service/notification/INotificationListener;

    .line 4232
    .local v1, "listener":Landroid/service/notification/INotificationListener;
    :try_start_0
    invoke-interface {v1, p2}, Landroid/service/notification/INotificationListener;->onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4229
    :goto_0
    return-void

    .line 4233
    :catch_0
    move-exception v0

    .line 4234
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify listener (ranking update): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyRemoved(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .locals 6
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 4216
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4217
    return-void

    .line 4219
    :cond_0
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Landroid/service/notification/INotificationListener;

    .line 4220
    .local v1, "listener":Landroid/service/notification/INotificationListener;
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-direct {v2, p2}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 4222
    .local v2, "sbnHolder":Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
    :try_start_0
    invoke-interface {v1, v2, p3}, Landroid/service/notification/INotificationListener;->onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4215
    :goto_0
    return-void

    .line 4223
    :catch_0
    move-exception v0

    .line 4224
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to notify listener (removed): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateNotificationGroupsDesiredLocked()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4283
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mNotificationGroupsDesired:Z

    .line 4285
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4286
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mNotificationGroupsDesired:Z

    .line 4287
    return-void

    .line 4290
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 4291
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4290
    if-eqz v0, :cond_1

    .line 4292
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mNotificationGroupsDesired:Z

    .line 4293
    return-void

    .line 4282
    :cond_1
    return-void
.end method


# virtual methods
.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 4042
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    return-object v0
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .locals 2

    .prologue
    .line 4030
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    .line 4031
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string/jumbo v1, "notification listener"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 4032
    const-string/jumbo v1, "android.service.notification.NotificationListenerService"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 4033
    const-string/jumbo v1, "enabled_notification_listeners"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 4034
    const-string/jumbo v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 4035
    const-string/jumbo v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 4036
    const v1, 0x104042f

    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 4037
    return-object v0
.end method

.method public getOnNotificationPostedTrim(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)I
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 4079
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notificationGroupsDesired()Z
    .locals 1

    .prologue
    .line 4279
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mNotificationGroupsDesired:Z

    return v0
.end method

.method public notifyInterruptionFilterChanged(I)V
    .locals 4
    .param p1, "interruptionFilter"    # I

    .prologue
    .line 4190
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mServices:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 4191
    .local v0, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4194
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get10(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$6;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$6;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4189
    .end local v0    # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_1
    return-void
.end method

.method public notifyListenerHintsChangedLocked(I)V
    .locals 4
    .param p1, "hints"    # I

    .prologue
    .line 4176
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mServices:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 4177
    .local v0, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4180
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-get10(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$5;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$5;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4175
    .end local v0    # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_1
    return-void
.end method

.method public notifyPostedLocked(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V
    .locals 12
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "oldSbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 4092
    const/4 v4, 0x0

    .line 4093
    .local v4, "sbnClone":Landroid/service/notification/StatusBarNotification;
    const/4 v5, 0x0

    .line 4095
    .local v5, "sbnCloneLight":Landroid/service/notification/StatusBarNotification;
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mServices:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v4    # "sbnClone":Landroid/service/notification/StatusBarNotification;
    .end local v5    # "sbnCloneLight":Landroid/service/notification/StatusBarNotification;
    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 4096
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap4(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v7

    .line 4097
    .local v7, "sbnVisible":Z
    if-eqz p2, :cond_4

    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap4(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v3

    .line 4099
    :goto_1
    if-nez v3, :cond_1

    if-eqz v7, :cond_0

    .line 4102
    :cond_1
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap0(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v9

    .line 4105
    .local v9, "update":Landroid/service/notification/NotificationRankingUpdate;
    if-eqz v3, :cond_2

    if-eqz v7, :cond_5

    .line 4116
    :cond_2
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-get18(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getOnNotificationPostedTrim(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)I

    move-result v8

    .line 4118
    .local v8, "trim":I
    const/4 v10, 0x1

    if-ne v8, v10, :cond_6

    if-nez v5, :cond_6

    .line 4119
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 4124
    :cond_3
    :goto_2
    if-nez v8, :cond_7

    move-object v6, v4

    .line 4126
    .local v6, "sbnToPost":Landroid/service/notification/StatusBarNotification;
    :goto_3
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-get10(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v10

    new-instance v11, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$2;

    invoke-direct {v11, p0, v0, v6, v9}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$2;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    invoke-virtual {v10, v11}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4097
    .end local v6    # "sbnToPost":Landroid/service/notification/StatusBarNotification;
    .end local v8    # "trim":I
    .end local v9    # "update":Landroid/service/notification/NotificationRankingUpdate;
    :cond_4
    const/4 v3, 0x0

    .local v3, "oldSbnVisible":Z
    goto :goto_1

    .line 4106
    .end local v3    # "oldSbnVisible":Z
    .restart local v9    # "update":Landroid/service/notification/NotificationRankingUpdate;
    :cond_5
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 4107
    .local v2, "oldSbnLightClone":Landroid/service/notification/StatusBarNotification;
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->-get10(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v10

    new-instance v11, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;

    invoke-direct {v11, p0, v0, v2, v9}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    invoke-virtual {v10, v11}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4120
    .end local v2    # "oldSbnLightClone":Landroid/service/notification/StatusBarNotification;
    .restart local v8    # "trim":I
    :cond_6
    if-nez v8, :cond_3

    if-nez v4, :cond_3

    .line 4121
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .local v4, "sbnClone":Landroid/service/notification/StatusBarNotification;
    goto :goto_2

    .line 4124
    .end local v4    # "sbnClone":Landroid/service/notification/StatusBarNotification;
    :cond_7
    move-object v6, v5

    .restart local v6    # "sbnToPost":Landroid/service/notification/StatusBarNotification;
    goto :goto_3

    .line 4090
    .end local v0    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v6    # "sbnToPost":Landroid/service/notification/StatusBarNotification;
    .end local v7    # "sbnVisible":Z
    .end local v8    # "trim":I
    .end local v9    # "update":Landroid/service/notification/NotificationRankingUpdate;
    :cond_8
    return-void
.end method

.method public notifyRankingUpdateLocked()V
    .locals 5

    .prologue
    .line 4161
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mServices:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 4162
    .local v0, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4165
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap0(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v2

    .line 4166
    .local v2, "update":Landroid/service/notification/NotificationRankingUpdate;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-get10(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v3

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$4;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$4;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V

    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4160
    .end local v0    # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v2    # "update":Landroid/service/notification/NotificationRankingUpdate;
    :cond_1
    return-void
.end method

.method public notifyRemovedLocked(Landroid/service/notification/StatusBarNotification;)V
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 4142
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 4143
    .local v2, "sbnLight":Landroid/service/notification/StatusBarNotification;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mServices:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 4144
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap4(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4147
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap0(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v3

    .line 4148
    .local v3, "update":Landroid/service/notification/NotificationRankingUpdate;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-get10(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v4

    new-instance v5, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;

    invoke-direct {v5, p0, v0, v2, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4138
    .end local v0    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v3    # "update":Landroid/service/notification/NotificationRankingUpdate;
    :cond_1
    return-void
.end method

.method public onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 4047
    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Landroid/service/notification/INotificationListener;

    .line 4049
    .local v1, "listener":Landroid/service/notification/INotificationListener;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 4050
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->updateNotificationGroupsDesiredLocked()V

    .line 4051
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap0(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, "update":Landroid/service/notification/NotificationRankingUpdate;
    monitor-exit v4

    .line 4054
    :try_start_1
    invoke-interface {v1, v2}, Landroid/service/notification/INotificationListener;->onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4046
    :goto_0
    return-void

    .line 4049
    .end local v2    # "update":Landroid/service/notification/NotificationRankingUpdate;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 4055
    .restart local v2    # "update":Landroid/service/notification/NotificationRankingUpdate;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 1
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 4062
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-get19(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4063
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap29(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4064
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap26(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4066
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 4067
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->updateNotificationGroupsDesiredLocked()V

    .line 4061
    return-void
.end method

.method public setOnNotificationPostedTrimLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 1
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "trim"    # I

    .prologue
    .line 4071
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4072
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4070
    :goto_0
    return-void

    .line 4074
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
