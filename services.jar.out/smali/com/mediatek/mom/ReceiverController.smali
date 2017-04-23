.class Lcom/mediatek/mom/ReceiverController;
.super Lcom/mediatek/mom/ControllerBase;
.source "ReceiverController.java"

# interfaces
.implements Lcom/mediatek/mom/IPackageBasedController;


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ReceiverController"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/mediatek/mom/ControllerBase;

.field private static mMonitorEnabled:Z


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mHandler:Landroid/os/Handler;

.field private mPm:Landroid/content/pm/IPackageManager;

.field private mRecordHelperList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/mom/ReceiverRecordHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/mediatek/mom/ReceiverController;->mContext:Landroid/content/Context;

    .line 66
    sput-object v0, Lcom/mediatek/mom/ReceiverController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/mom/ReceiverController;->mMonitorEnabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Lcom/mediatek/mom/ControllerBase;-><init>()V

    .line 67
    iput-object v2, p0, Lcom/mediatek/mom/ReceiverController;->mAm:Landroid/app/IActivityManager;

    .line 68
    iput-object v2, p0, Lcom/mediatek/mom/ReceiverController;->mPm:Landroid/content/pm/IPackageManager;

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    .line 71
    iput-object v2, p0, Lcom/mediatek/mom/ReceiverController;->mHandler:Landroid/os/Handler;

    .line 81
    sput-object p1, Lcom/mediatek/mom/ReceiverController;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/mediatek/mom/ReceiverController;->mHandler:Landroid/os/Handler;

    .line 83
    invoke-static {}, Lcom/mediatek/mom/ManagerIdentityHelper;->getIdentityList()Ljava/util/List;

    move-result-object v2

    .line 84
    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v0, "Normal Bootup Start"

    .line 93
    invoke-virtual {p0, v0}, Lcom/mediatek/mom/ReceiverController;->startMontor(Ljava/lang/String;)V

    .line 94
    return-void

    :cond_1
    move v1, v0

    .line 85
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 86
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 88
    invoke-static {v0}, Lcom/mediatek/mom/ManagerIdentityHelper;->getManagerIdentityInstalled(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 85
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 89
    :cond_2
    invoke-direct {p0, v0}, Lcom/mediatek/mom/ReceiverController;->initRecordHelper(I)V

    goto :goto_1
.end method

.method private checkStrictPolicyAllowed(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 363
    const/4 v1, 0x1

    .line 364
    iget-object v3, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    monitor-enter v3

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 366
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 376
    :goto_0
    monitor-exit v3

    .line 378
    return v0

    .line 367
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 368
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ReceiverRecordHelper;

    .line 369
    invoke-virtual {v0, p2, p3}, Lcom/mediatek/mom/ReceiverRecordHelper;->getReceiverDataEnabled(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ReceiverController"

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Identity "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " denied "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " to package: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " at User("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 373
    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/mediatek/mom/ControllerBase;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/mediatek/mom/ReceiverController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    sget-object v0, Lcom/mediatek/mom/ReceiverController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Lcom/mediatek/mom/ReceiverController;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/mom/ReceiverController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/mediatek/mom/ReceiverController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    goto :goto_0
.end method

.method private initRecordHelper(I)V
    .locals 7

    .prologue
    .line 107
    iget-object v6, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    monitor-enter v6

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-static {p1}, Lcom/mediatek/mom/ManagerIdentityHelper;->getManagerIdentityObject(I)Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_1

    .line 116
    new-instance v1, Lcom/mediatek/mom/ReceiverRecorder;

    invoke-direct {v1, v0}, Lcom/mediatek/mom/ReceiverRecorder;-><init>(Lcom/mediatek/mom/ManagerIdentityHelper$ManagerIdentity;)V

    .line 117
    new-instance v0, Lcom/mediatek/mom/ReceiverRecordHelper;

    sget-object v2, Lcom/mediatek/mom/ReceiverController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/mom/ReceiverController;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/mediatek/mom/ReceiverController;->getUserManagerService()Landroid/os/IUserManager;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/mom/ReceiverController;->getPackageManagerService()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/ReceiverRecordHelper;-><init>(Lcom/mediatek/mom/ReceiverRecorder;Landroid/content/Context;Landroid/os/Handler;Landroid/os/IUserManager;Landroid/content/pm/IPackageManager;)V

    .line 123
    iget-object v2, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/mediatek/mom/ReceiverRecorder;->getIdentity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {v0}, Lcom/mediatek/mom/ReceiverRecordHelper;->initReceiverList()V

    const-string/jumbo v0, "ReceiverController"

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init ReceiverRecordHelper for identity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mediatek/mom/ReceiverRecorder;->getIdentity()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    monitor-exit v6

    .line 127
    return-void

    .line 109
    :cond_0
    monitor-exit v6

    return-void

    :cond_1
    const-string/jumbo v0, "ReceiverController"

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initRecordHelper() failed with identity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    monitor-exit v6

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateReceiverList(IZ)V
    .locals 4

    .prologue
    .line 260
    iget-object v1, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 262
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    monitor-exit v1

    .line 267
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ReceiverRecordHelper;

    .line 264
    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mom/ReceiverRecordHelper;->updateReceiverCache(IZ)V

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearAllSettings()Z
    .locals 2

    .prologue
    const-string/jumbo v0, "ReceiverController"

    const-string/jumbo v1, "clearAllSettings()"

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public clearPackageSettings(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const-string/jumbo v0, "ReceiverController"

    .line 317
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

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/mediatek/mom/MobileManagerService$DumpState;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "ReceiverController:"

    .line 131
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public filterReceiver(Ljava/lang/String;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 329
    sget-boolean v0, Lcom/mediatek/mom/ReceiverController;->mMonitorEnabled:Z

    if-eqz v0, :cond_1

    .line 332
    if-eqz p1, :cond_2

    .line 336
    if-eqz p2, :cond_3

    .line 339
    invoke-virtual {p0, p3}, Lcom/mediatek/mom/ReceiverController;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 345
    invoke-static {p1}, Lcom/mediatek/common/mom/BootReceiverPolicy;->match(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 360
    :cond_0
    return-void

    .line 330
    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "ReceiverController"

    const-string/jumbo v1, "filterReceiver() ignored with null action"

    .line 333
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void

    .line 337
    :cond_3
    return-void

    :cond_4
    const-string/jumbo v0, "ReceiverController"

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "filterReceiver() ignored with invalid userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void

    .line 347
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 348
    :cond_6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 350
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_6

    .line 352
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 353
    invoke-direct {p0, p1, p3, v0}, Lcom/mediatek/mom/ReceiverController;->checkStrictPolicyAllowed(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 354
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public getBootReceiverEnabledSetting(ILjava/lang/String;)Z
    .locals 5

    .prologue
    .line 304
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 305
    invoke-static {p1}, Lcom/mediatek/mom/ManagerIdentityHelper;->getManagerIdentity(I)I

    move-result v0

    const-string/jumbo v2, "ReceiverController"

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBootReceiverEnabledSetting("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") at User("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") with identity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v2, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ReceiverRecordHelper;

    .line 309
    if-nez v0, :cond_0

    .line 312
    const/4 v0, 0x1

    return v0

    .line 310
    :cond_0
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/ReceiverRecordHelper;->getReceiverDataEnabled(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBootReceiverList(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 271
    invoke-static {p1}, Lcom/mediatek/mom/ManagerIdentityHelper;->getManagerIdentity(I)I

    move-result v0

    .line 272
    iget-object v2, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ReceiverRecordHelper;

    .line 274
    invoke-virtual {v0, v1}, Lcom/mediatek/mom/ReceiverRecordHelper;->getBootReceiverList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onPackageStatusChange(ILjava/lang/String;I)V
    .locals 6

    .prologue
    const-string/jumbo v0, "ReceiverController"

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageStatusChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 144
    packed-switch p3, :pswitch_data_0

    .line 209
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "ReceiverController"

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PACKAGE_ADDED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v2, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    monitor-enter v2

    .line 148
    :try_start_0
    invoke-static {p2}, Lcom/mediatek/mom/ManagerIdentityHelper;->getManagerIdentity(Ljava/lang/String;)I

    move-result v0

    .line 149
    invoke-static {v0}, Lcom/mediatek/mom/ManagerIdentityHelper;->isBootControlIdetity(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    :goto_1
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 155
    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    const-string/jumbo v3, "ReceiverController"

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initRecordHelper("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0, v0}, Lcom/mediatek/mom/ReceiverController;->initRecordHelper(I)V

    goto :goto_1

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ReceiverRecordHelper;

    .line 157
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/ReceiverRecordHelper;->matchBootPolicy(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/ReceiverRecordHelper;->addReceiverRecord(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :pswitch_1
    const-string/jumbo v0, "ReceiverController"

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PACKAGE_REMOVED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    monitor-enter v2

    .line 167
    :try_start_2
    invoke-static {p2}, Lcom/mediatek/mom/ManagerIdentityHelper;->getManagerIdentity(Ljava/lang/String;)I

    move-result v3

    .line 169
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 170
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 174
    invoke-static {v3}, Lcom/mediatek/mom/ManagerIdentityHelper;->isBootControlIdetity(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 182
    :cond_3
    :goto_4
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 171
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ReceiverRecordHelper;

    .line 172
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/ReceiverRecordHelper;->removeReceiverRecordWrite(ILjava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string/jumbo v0, "ReceiverController"

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uninitReceiverCache("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ReceiverRecordHelper;

    .line 178
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/ReceiverRecordHelper;->uninitReceiverCache(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :pswitch_2
    const-string/jumbo v0, "ReceiverController"

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PACKAGE_UPDATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v2, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    monitor-enter v2

    .line 188
    :try_start_4
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 189
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 198
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 190
    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ReceiverRecordHelper;

    .line 191
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/ReceiverRecordHelper;->matchBootPolicy(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 195
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/ReceiverRecordHelper;->removeReceiverRecordWrite(ILjava/lang/String;)V

    goto :goto_5

    .line 193
    :cond_7
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/ReceiverRecordHelper;->addReceiverRecordWrite(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :pswitch_3
    const-string/jumbo v0, "ReceiverController"

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PACKAGE_EXT_AVAILABLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v0, "ReceiverController"

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PACKAGE_EXT_UNAVAILABLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onUserStatusChange(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 213
    packed-switch p2, :pswitch_data_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 215
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/ReceiverController;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ReceiverController"

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USER_SWITCHED: Update cache for User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0, p1, v3}, Lcom/mediatek/mom/ReceiverController;->updateReceiverList(IZ)V

    goto :goto_0

    .line 221
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/ReceiverController;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ReceiverController"

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USER_ADDED: Init cache for User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    monitor-enter v1

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 225
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 226
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ReceiverRecordHelper;

    .line 227
    invoke-virtual {v0, p1}, Lcom/mediatek/mom/ReceiverRecordHelper;->initReceiverCache(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 233
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/ReceiverController;->isValidUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ReceiverController"

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USER_REMOVED: Remove cache for User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    monitor-enter v1

    .line 236
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 237
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 238
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ReceiverRecordHelper;

    .line 239
    invoke-virtual {v0, p1}, Lcom/mediatek/mom/ReceiverRecordHelper;->removeReceiverCache(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setBootReceiverEnabledSetting(ILjava/lang/String;Z)V
    .locals 5

    .prologue
    .line 289
    invoke-static {p1}, Lcom/mediatek/mom/ManagerIdentityHelper;->getManagerIdentity(I)I

    move-result v0

    .line 290
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string/jumbo v2, "ReceiverController"

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBootReceiverEnabledSetting("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") at User("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") with identity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v2, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ReceiverRecordHelper;

    .line 295
    if-nez v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {v0, v1, p2, p3}, Lcom/mediatek/mom/ReceiverRecordHelper;->setReceiverDataEnabled(ILjava/lang/String;Z)Z

    move-result v0

    .line 297
    if-nez v0, :cond_0

    const-string/jumbo v0, "ReceiverController"

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "setBootReceiverEnabledSetting("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBootReceiverEnabledSettings(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    invoke-static {p1}, Lcom/mediatek/mom/ManagerIdentityHelper;->getManagerIdentity(I)I

    move-result v0

    .line 279
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string/jumbo v2, "ReceiverController"

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBootReceiverEnabledSettings() at User("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") with identity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v2, p0, Lcom/mediatek/mom/ReceiverController;->mRecordHelperList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/ReceiverRecordHelper;

    .line 283
    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-virtual {v0, v1, p2}, Lcom/mediatek/mom/ReceiverRecordHelper;->setReceiverDataEnabledBatch(ILjava/util/List;)V

    goto :goto_0
.end method

.method public startMontor(Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string/jumbo v0, "ReceiverController"

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startMontor("

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

    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/mom/ReceiverController;->mMonitorEnabled:Z

    .line 99
    return-void
.end method

.method public stopMontor(Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string/jumbo v0, "ReceiverController"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopMontor("

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

    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/mom/ReceiverController;->mMonitorEnabled:Z

    .line 104
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/mediatek/mom/ReceiverController;->getPackageManagerService()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mPm:Landroid/content/pm/IPackageManager;

    .line 137
    invoke-static {}, Lcom/mediatek/mom/ReceiverController;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/ReceiverController;->mAm:Landroid/app/IActivityManager;

    .line 138
    return-void
.end method

.method public updateReceiverList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    if-nez p1, :cond_1

    .line 257
    :cond_0
    return-void

    .line 251
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 252
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 254
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/mediatek/mom/ReceiverController;->updateReceiverList(IZ)V

    goto :goto_0
.end method
