.class Lcom/mediatek/mom/PackageController;
.super Lcom/mediatek/mom/ControllerBase;
.source "PackageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mom/PackageController$PackageDeleteObserver;,
        Lcom/mediatek/mom/PackageController$PackageInstallObserverWrapper;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "PackageController"

.field static localLOGV:Z

.field private static mAm:Landroid/app/IActivityManager;

.field private static mInitPendingPackageDone:Z

.field private static mInstance:Lcom/mediatek/mom/ControllerBase;

.field private static mPackageDeleteObserver:Lcom/mediatek/mom/PackageController$PackageDeleteObserver;

.field private static mPendingPackageInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPm:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/mom/PackageController;->localLOGV:Z

    .line 70
    sput-object v1, Lcom/mediatek/mom/PackageController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    .line 71
    sput-object v1, Lcom/mediatek/mom/PackageController;->mAm:Landroid/app/IActivityManager;

    .line 72
    sput-object v1, Lcom/mediatek/mom/PackageController;->mPm:Landroid/content/pm/IPackageManager;

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/mom/PackageController;->mInitPendingPackageDone:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/mom/PackageController;->mPendingPackageInfos:Ljava/util/List;

    .line 258
    sput-object v1, Lcom/mediatek/mom/PackageController;->mPackageDeleteObserver:Lcom/mediatek/mom/PackageController$PackageDeleteObserver;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mediatek/mom/ControllerBase;-><init>()V

    .line 84
    invoke-static {}, Lcom/mediatek/mom/PackageController;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    sput-object v0, Lcom/mediatek/mom/PackageController;->mAm:Landroid/app/IActivityManager;

    .line 85
    invoke-static {}, Lcom/mediatek/mom/PackageController;->getPackageManagerService()Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/mediatek/mom/PackageController;->mPm:Landroid/content/pm/IPackageManager;

    .line 86
    invoke-static {}, Lcom/mediatek/mom/PackageController;->initPendingPackageInfos()V

    .line 87
    return-void
.end method

.method public static getCurrentUser()I
    .locals 4

    .prologue
    const/16 v1, -0x2710

    .line 167
    :try_start_0
    sget-object v0, Lcom/mediatek/mom/PackageController;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return v0

    .line 170
    :catch_0
    move-exception v0

    const-string/jumbo v2, "PackageController"

    const-string/jumbo v3, "getCurrentUser() failed"

    .line 169
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method public static getInstalledPackages(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mediatek/mom/PackageController;->getInstalledPackages(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getInstalledPackages(IZ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const-string/jumbo v0, "PackageController"

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInstalledPackages() at user("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    :try_start_0
    sget-object v0, Lcom/mediatek/mom/PackageController;->mPm:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x2200

    invoke-interface {v0, v2, p0}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 112
    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-object v1

    .line 113
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 116
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 118
    if-eq p1, v6, :cond_3

    .line 122
    :goto_2
    invoke-static {v0}, Lcom/mediatek/mom/PackageController;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 123
    sget-object v3, Lcom/mediatek/mom/PackageController;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x1000

    invoke-interface {v3, v4, v5, p0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 124
    if-nez v3, :cond_4

    .line 126
    if-ne p1, v6, :cond_2

    const-string/jumbo v3, "PackageController"

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Pending the un-ready package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v3, Lcom/mediatek/mom/PackageController;->mPendingPackageInfos:Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 136
    :catch_0
    move-exception v0

    const-string/jumbo v2, "PackageController"

    const-string/jumbo v3, "getPackageInfo() failed!"

    .line 135
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v3, "PackageController"

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Installed packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " appId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 125
    :cond_4
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static final getInstance()Lcom/mediatek/mom/ControllerBase;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mediatek/mom/PackageController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    sget-object v0, Lcom/mediatek/mom/PackageController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Lcom/mediatek/mom/PackageController;

    invoke-direct {v0}, Lcom/mediatek/mom/PackageController;-><init>()V

    sput-object v0, Lcom/mediatek/mom/PackageController;->mInstance:Lcom/mediatek/mom/ControllerBase;

    goto :goto_0
.end method

.method public static getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 144
    :try_start_0
    sget-object v0, Lcom/mediatek/mom/PackageController;->mPm:Landroid/content/pm/IPackageManager;

    const/16 v4, 0x1000

    sget-object v5, Lcom/mediatek/mom/PackageController;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, p0, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 148
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v4, "PackageController"

    const-string/jumbo v5, "getPackageInfo() failed!"

    .line 146
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v0, v1

    .line 149
    goto :goto_0

    :catchall_0
    move-exception v0

    .line 148
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public static getPackageInfoByUser(ILjava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 156
    :try_start_0
    sget-object v0, Lcom/mediatek/mom/PackageController;->mPm:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x1000

    invoke-interface {v0, p1, v2, p0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    .line 159
    :catch_0
    move-exception v0

    const-string/jumbo v2, "PackageController"

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageInfoByUser() failed! with userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private static initPendingPackageInfos()V
    .locals 3

    .prologue
    .line 93
    sget-object v1, Lcom/mediatek/mom/PackageController;->mPendingPackageInfos:Ljava/util/List;

    monitor-enter v1

    .line 94
    :try_start_0
    invoke-static {}, Lcom/mediatek/mom/PackageController;->getCurrentUser()I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/mediatek/mom/PackageController;->getInstalledPackages(IZ)Ljava/util/List;

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/mom/PackageController;->mInitPendingPackageDone:Z

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isCoreApp(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 313
    invoke-static {p0}, Lcom/mediatek/mom/PackageController;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 314
    if-nez v0, :cond_1

    .line 323
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 314
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_3

    .line 320
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 315
    :cond_3
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x403

    if-eq v1, v2, :cond_2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x3ef

    if-eq v0, v1, :cond_2

    goto :goto_0
.end method

.method public static isPendingPackage(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    sget-object v0, Lcom/mediatek/mom/PackageController;->mPendingPackageInfos:Ljava/util/List;

    if-nez v0, :cond_1

    .line 176
    :cond_0
    return v1

    .line 175
    :cond_1
    sget-boolean v0, Lcom/mediatek/mom/PackageController;->mInitPendingPackageDone:Z

    if-eqz v0, :cond_0

    .line 178
    sget-object v1, Lcom/mediatek/mom/PackageController;->mPendingPackageInfos:Ljava/util/List;

    monitor-enter v1

    .line 179
    :try_start_0
    sget-object v0, Lcom/mediatek/mom/PackageController;->mPendingPackageInfos:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 180
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isSystemApp(ILjava/lang/String;)Z
    .locals 2

    .prologue
    .line 288
    invoke-static {p0, p1}, Lcom/mediatek/mom/PackageController;->getPackageInfoByUser(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 289
    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "PackageController"

    const-string/jumbo v1, "isSystemApp() return false with null packageName"

    .line 292
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v0, 0x0

    return v0

    .line 289
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 290
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/mediatek/mom/PackageController;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 307
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 308
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    goto :goto_0
.end method

.method public static isSystemApp(Landroid/content/pm/PackageInfo;)Z
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    const-string/jumbo v0, "PackageController"

    const-string/jumbo v1, "isSystemApp() return false with null app info"

    .line 301
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x0

    return v0

    .line 299
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/mediatek/mom/PackageController;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public static removePendingPackage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 184
    sget-object v0, Lcom/mediatek/mom/PackageController;->mPendingPackageInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 185
    :cond_0
    sget-object v1, Lcom/mediatek/mom/PackageController;->mPendingPackageInfos:Ljava/util/List;

    monitor-enter v1

    .line 186
    :try_start_0
    sget-object v0, Lcom/mediatek/mom/PackageController;->mPendingPackageInfos:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 187
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public deletePackage(Ljava/lang/String;)V
    .locals 4

    .prologue
    const-string/jumbo v0, "PackageController"

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deletePackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {p1}, Lcom/mediatek/mom/PackageController;->isCoreApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PackageController"

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignore core package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_0
    return-void

    .line 269
    :cond_0
    sget-object v0, Lcom/mediatek/mom/PackageController;->mPackageDeleteObserver:Lcom/mediatek/mom/PackageController$PackageDeleteObserver;

    if-eqz v0, :cond_1

    .line 273
    :goto_1
    :try_start_0
    sget-object v0, Lcom/mediatek/mom/PackageController;->mPm:Landroid/content/pm/IPackageManager;

    sget-object v1, Lcom/mediatek/mom/PackageController;->mPackageDeleteObserver:Lcom/mediatek/mom/PackageController$PackageDeleteObserver;

    invoke-static {}, Lcom/mediatek/mom/PackageController;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    goto :goto_0

    .line 270
    :cond_1
    new-instance v0, Lcom/mediatek/mom/PackageController$PackageDeleteObserver;

    invoke-direct {v0, p0}, Lcom/mediatek/mom/PackageController$PackageDeleteObserver;-><init>(Lcom/mediatek/mom/PackageController;)V

    sput-object v0, Lcom/mediatek/mom/PackageController;->mPackageDeleteObserver:Lcom/mediatek/mom/PackageController$PackageDeleteObserver;

    goto :goto_1
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/mediatek/mom/MobileManagerService$DumpState;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "PackageController:"

    .line 284
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string/jumbo v0, "PackageController"

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "forceStopPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {p1}, Lcom/mediatek/mom/PackageController;->isCoreApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PackageController"

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignore core package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-void

    .line 201
    :cond_0
    :try_start_0
    sget-object v0, Lcom/mediatek/mom/PackageController;->mAm:Landroid/app/IActivityManager;

    sget-object v1, Lcom/mediatek/mom/PackageController;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public installPackage(Landroid/net/Uri;Lcom/mediatek/common/mom/IPackageInstallCallback;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "PackageController"

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installPackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v6, Lcom/mediatek/mom/PackageController$PackageInstallObserverWrapper;

    invoke-direct {v6, p2}, Lcom/mediatek/mom/PackageController$PackageInstallObserverWrapper;-><init>(Lcom/mediatek/common/mom/IPackageInstallCallback;)V

    .line 222
    new-instance v0, Landroid/content/pm/VerificationParams;

    const/4 v4, -0x1

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    .line 226
    :try_start_0
    sget-object v1, Lcom/mediatek/mom/PackageController;->mPm:Landroid/content/pm/IPackageManager;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/mediatek/mom/PackageController$PackageInstallObserverWrapper;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "PackageController"

    const/4 v7, 0x0

    move-object v6, v0

    invoke-interface/range {v1 .. v7}, Landroid/content/pm/IPackageManager;->installPackage(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
