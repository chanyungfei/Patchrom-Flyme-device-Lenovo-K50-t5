.class Lcom/android/server/am/AppPcService$PermControlService;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermControlService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;,
        Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;,
        Lcom/android/server/am/AppPcService$PermControlService$PermReq;,
        Lcom/android/server/am/AppPcService$PermControlService$PermReqs;,
        Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    }
.end annotation


# static fields
.field private static final COUNT_DOWN_TIMER:I = 0x14

.field private static final DELAY_TIME:I = 0x3e8

.field private static final EXTRA_TIMER:I = 0x1388

.field private static final MAX_WATI_TIME:I = 0x4e20

.field private static final MSG_RESET:I = 0x65

.field private static final TOAST_ACTIVE_TIME:J = 0xea60L


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastToastTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mPowerManager:Landroid/os/PowerManager;

.field private mRecordCheckHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordCheckHistoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordCheckHistoryPool:Ljava/util/concurrent/ExecutorService;

.field private mUidPackageNameMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidPermReqs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/AppPcService$PermControlService$PermReqs;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUidPermReqsLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/am/AppPcService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "Security_PermControlService"

    .line 1381
    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->TAG:Ljava/lang/String;

    .line 1409
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mLastToastTimes:Ljava/util/HashMap;

    .line 1411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPackageNameMaps:Ljava/util/HashMap;

    .line 1416
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryMap:Ljava/util/HashMap;

    .line 1417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    .line 1473
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppPcService$PermControlService$1;-><init>(Lcom/android/server/am/AppPcService$PermControlService;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mHandler:Landroid/os/Handler;

    .line 1987
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPermReqsLock:Ljava/lang/Object;

    .line 1988
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPermReqs:Landroid/util/SparseArray;

    .line 1420
    iput-object p2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    .line 1422
    new-instance v0, Lcom/android/server/am/AppPcDataManager;

    invoke-direct {v0, p2}, Lcom/android/server/am/AppPcDataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;

    .line 1423
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;

    invoke-virtual {v0}, Lcom/android/server/am/AppPcDataManager;->init()V

    .line 1424
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryPool:Ljava/util/concurrent/ExecutorService;

    const-string/jumbo v0, "power"

    .line 1425
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPowerManager:Landroid/os/PowerManager;

    .line 1426
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcDataManager;
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1380
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->getFirstTask()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/AppPcService$PermControlService;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1380
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->getUidByPackageName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/am/AppPcService$PermControlService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private askOperationLocked(IILjava/lang/String;Lcom/android/server/am/AppPcService$PermControlService$PermReq;)Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;
    .locals 7

    .prologue
    .line 2159
    new-instance v6, Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;

    invoke-direct {v6, p0}, Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;-><init>(Lcom/android/server/am/AppPcService$PermControlService;)V

    .line 2161
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;-><init>(Lcom/android/server/am/AppPcService$PermControlService;IILjava/lang/String;Lcom/android/server/am/AppPcService$PermControlService$PermReq;Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;)V

    invoke-virtual {v0}, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->start()V

    .line 2162
    return-object v6
.end method

.method private checkBackgroundNotifyType(ILcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1668
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p2}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2500(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppPcDataManager;->getPermBackgroundStatus(Ljava/lang/String;I)I

    move-result v0

    .line 1669
    sget-boolean v1, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-nez v1, :cond_0

    :goto_0
    const/4 v1, -0x1

    .line 1671
    if-eq v0, v1, :cond_1

    .line 1674
    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v1, "Security_PermControlService"

    .line 1670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "check backNotifyType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1672
    :cond_1
    return v4
.end method

.method private checkCurrentUid()Z
    .locals 1

    .prologue
    .line 1463
    const/4 v0, 0x1

    return v0
.end method

.method private getFirstTask()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1822
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_1

    .line 1826
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1828
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v1, v2, v2, v0}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v0

    .line 1831
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 1846
    :cond_0
    return-object v3

    .line 1823
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    goto :goto_0

    .line 1832
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1833
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1834
    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-nez v2, :cond_3

    .line 1837
    :goto_1
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v2, -0x200001

    and-int/2addr v0, v2

    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1839
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1840
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1842
    if-eqz v0, :cond_0

    .line 1843
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 1835
    :cond_3
    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private getPackageNameByUid(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1891
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/am/AppPcService;->access$3100(Lcom/android/server/am/AppPcService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 1892
    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "Security_PermControlService"

    .line 1902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPackageNameByUid fail uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    return-object v3

    .line 1892
    :cond_1
    array-length v1, v0

    if-lez v1, :cond_0

    .line 1894
    aget-object v0, v0, v2

    .line 1895
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1896
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPackageNameMaps:Ljava/util/HashMap;

    monitor-enter v1

    .line 1897
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPackageNameMaps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1898
    monitor-exit v1

    .line 1899
    return-object v0

    .line 1898
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPermRawLocked(ILjava/lang/String;Z)Lcom/android/server/am/AppPcService$PermControlService$PermReqs;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2107
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPermReqs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2108
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 2115
    :goto_0
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppPcService$PermControlService$PermReqs;

    .line 2116
    if-eqz v0, :cond_2

    .line 2123
    :goto_1
    return-object v0

    .line 2109
    :cond_0
    if-eqz p3, :cond_1

    .line 2112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2113
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPermReqs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    goto :goto_0

    .line 2110
    :cond_1
    return-object v2

    .line 2117
    :cond_2
    if-eqz p3, :cond_3

    .line 2120
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$PermReqs;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/am/AppPcService$PermControlService$PermReqs;-><init>(Lcom/android/server/am/AppPcService$PermControlService;Ljava/lang/String;I)V

    .line 2121
    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2118
    :cond_3
    return-object v2
.end method

.method private getPermReqLocked(IILjava/lang/String;Z)Lcom/android/server/am/AppPcService$PermControlService$PermReq;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2148
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPermReqsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2149
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/am/AppPcService$PermControlService;->getPermReqsLocked(ILjava/lang/String;Z)Lcom/android/server/am/AppPcService$PermControlService$PermReqs;

    move-result-object v0

    .line 2150
    if-eqz v0, :cond_0

    .line 2153
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/am/AppPcService$PermControlService;->getPermReqLocked(Lcom/android/server/am/AppPcService$PermControlService$PermReqs;IZ)Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2151
    :cond_0
    monitor-exit v1

    return-object v2

    .line 2153
    :catchall_0
    move-exception v0

    .line 2154
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPermReqLocked(Lcom/android/server/am/AppPcService$PermControlService$PermReqs;IZ)Lcom/android/server/am/AppPcService$PermControlService$PermReq;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2137
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/AppPcService$PermControlService$PermReqs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    .line 2138
    if-eqz v0, :cond_0

    .line 2145
    :goto_0
    return-object v0

    .line 2139
    :cond_0
    if-eqz p3, :cond_1

    .line 2142
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    iget v1, p1, Lcom/android/server/am/AppPcService$PermControlService$PermReqs;->uid:I

    iget-object v2, p1, Lcom/android/server/am/AppPcService$PermControlService$PermReqs;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;-><init>(Lcom/android/server/am/AppPcService$PermControlService;ILjava/lang/String;I)V

    .line 2143
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/android/server/am/AppPcService$PermControlService$PermReqs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2140
    :cond_1
    return-object v1
.end method

.method private getPermReqsLocked(ILjava/lang/String;Z)Lcom/android/server/am/AppPcService$PermControlService$PermReqs;
    .locals 1

    .prologue
    .line 2126
    if-eqz p1, :cond_1

    const/16 v0, 0x7d0

    .line 2128
    if-eq p1, v0, :cond_2

    const/16 v0, 0x3e8

    .line 2130
    if-eq p1, v0, :cond_3

    .line 2134
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppPcService$PermControlService;->getPermRawLocked(ILjava/lang/String;Z)Lcom/android/server/am/AppPcService$PermControlService$PermReqs;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo p2, "root"

    goto :goto_0

    :cond_2
    const-string/jumbo p2, "com.android.shell"

    goto :goto_0

    .line 2131
    :cond_3
    if-nez p2, :cond_0

    const-string/jumbo p2, "android"

    goto :goto_0
.end method

.method private getUidByPackageName(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 1851
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 1852
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1854
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 1856
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 1858
    return-object v0
.end method

.method private handleCheckCase(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;I)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1678
    sget-boolean v0, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-nez v0, :cond_0

    .line 1683
    :goto_0
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2500(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v0

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mUid:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2400(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v1

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/am/AppPcService$PermControlService;->getPermReqLocked(IILjava/lang/String;Z)Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    move-result-object v0

    .line 1684
    if-nez v0, :cond_1

    const-string/jumbo v0, "Security_PermControlService"

    const-string/jumbo v1, "handleCheckCase req = null"

    .line 1688
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    return v3

    :cond_0
    const-string/jumbo v0, "Security_PermControlService"

    .line 1679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCheckCase record.mPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2500(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1686
    :cond_1
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2500(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v1

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mUid:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2400(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v2

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/server/am/AppPcService$PermControlService;->askOperationLocked(IILjava/lang/String;Lcom/android/server/am/AppPcService$PermControlService$PermReq;)Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;

    move-result-object v0

    .line 1693
    invoke-virtual {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;->get()Z

    move-result v0

    const-string/jumbo v1, "Security_PermControlService"

    .line 1694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleCheckCase mIsGranted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";record.mPackageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2500(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    return v0
.end method

.method private recordCheckHistory(Ljava/lang/String;IIZZ)V
    .locals 11

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->RECORD_CHECK_HISTORY_ENABLE:Z
    invoke-static {v0}, Lcom/android/server/am/AppPcService;->access$2600(Lcom/android/server/am/AppPcService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1730
    invoke-static {p3}, Lcom/lenovo/common/AppPcUtils;->getFirstPermissionByCode(I)Ljava/lang/String;

    move-result-object v5

    .line 1731
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1733
    :cond_0
    return-void

    .line 1728
    :cond_1
    return-void

    .line 1731
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x16

    if-eq p3, v0, :cond_0

    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1736
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "package"

    .line 1737
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "permission"

    .line 1738
    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    if-nez p4, :cond_3

    const-string/jumbo v1, "deny_content"

    const-string/jumbo v3, "0"

    .line 1742
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v8, v6

    const-string/jumbo v1, "deny_time"

    .line 1745
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1746
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1747
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1751
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1752
    iget-object v10, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$2;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/AppPcService$PermControlService$2;-><init>(Lcom/android/server/am/AppPcService$PermControlService;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZIZ)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1795
    return-void

    :cond_3
    const-string/jumbo v1, "deny_content"

    const-string/jumbo v3, "1"

    .line 1740
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1749
    :cond_4
    :try_start_1
    monitor-exit v1

    return-void

    .line 1751
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setStatusBarEnableStatus(Z)V
    .locals 3

    .prologue
    const-string/jumbo v0, "Security_PermControlService"

    .line 1874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStatusBarEnableStatus enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    return-void
.end method

.method private showDenyToast(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)V
    .locals 7

    .prologue
    .line 1798
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mUid:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2400(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1800
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/am/AppPcService;->access$3000(Lcom/android/server/am/AppPcService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 1801
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$3000(Lcom/android/server/am/AppPcService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppPcPermissionListener;

    .line 1802
    monitor-exit v1

    .line 1803
    if-nez v0, :cond_0

    .line 1814
    :goto_0
    return-void

    .line 1802
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v1, -0x1

    .line 1805
    :try_start_1
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2500(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v2

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mUid:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2400(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v3

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2500(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v5

    invoke-static {v5}, Lcom/lenovo/common/AppPcUtils;->getFirstPermissionByCode(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IAppPcPermissionListener;->onPermissionCheck(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1812
    :catch_0
    move-exception v0

    const-string/jumbo v0, "Security_PermControlService"

    const-string/jumbo v1, "showDenyToast error"

    .line 1809
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearCheckHistorys(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1707
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1712
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1713
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    .line 1720
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1722
    :goto_1
    return-void

    .line 1708
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1709
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1710
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1714
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string/jumbo v3, "package"

    .line 1715
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1716
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1713
    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1717
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1720
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getCheckHistorys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1698
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1699
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 1700
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPackageName(II)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1906
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPackageNameMaps:Ljava/util/HashMap;

    monitor-enter v1

    .line 1907
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPackageNameMaps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1908
    if-nez v0, :cond_1

    .line 1913
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1916
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_3

    .line 1920
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 1922
    if-eqz v0, :cond_4

    const-string/jumbo v1, "Security_PermControlService"

    .line 1927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPackageName l.size() ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1930
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "Security_PermControlService"

    .line 1942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPackageName fail uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1909
    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-nez v2, :cond_2

    .line 1911
    :goto_2
    monitor-exit v1

    return-object v0

    :cond_2
    const-string/jumbo v2, "Security_PermControlService"

    .line 1910
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageName from mUidPackageNameMaps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1913
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1917
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "Security_PermControlService"

    const-string/jumbo v1, "getPackageName l == null"

    .line 1923
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1931
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1932
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p2, :cond_7

    .line 1933
    :cond_6
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v0, v0, v4

    .line 1934
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1935
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPackageNameMaps:Ljava/util/HashMap;

    monitor-enter v1

    .line 1936
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPackageNameMaps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1938
    return-object v0

    .line 1932
    :cond_7
    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-eq v2, p1, :cond_6

    goto/16 :goto_1

    .line 1937
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public handleCheckBackgroundCase(ILjava/lang/String;IIZ)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1521
    sget-boolean v0, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-nez v0, :cond_1

    .line 1523
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1524
    sget-boolean v1, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-nez v1, :cond_2

    .line 1529
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->checkCurrentUid()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    .line 1533
    if-eq v0, p1, :cond_4

    .line 1537
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->CHECK_BACKGROUND_GPS_ENABLE:Z
    invoke-static {v0}, Lcom/android/server/am/AppPcService;->access$2000(Lcom/android/server/am/AppPcService;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1557
    :goto_2
    return v7

    :cond_1
    const-string/jumbo v0, "Security_PermControlService"

    .line 1522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCheckBackgroundCase packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1524
    :cond_2
    if-eq v0, p3, :cond_0

    const-string/jumbo v1, "Security_PermControlService"

    const-string/jumbo v2, "handleCheckCase callingUid != uid"

    .line 1525
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Security_PermControlService"

    .line 1526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleCheckCase callingUid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Security_PermControlService"

    .line 1527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCheckCase uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1530
    :cond_3
    return v8

    .line 1535
    :cond_4
    return v7

    .line 1537
    :cond_5
    if-nez p1, :cond_7

    .line 1543
    :cond_6
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;-><init>(Lcom/android/server/am/AppPcService$PermControlService;ILjava/lang/String;IILandroid/os/Bundle;)V

    .line 1544
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->getFirstTask()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1548
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/AppPcService$PermControlService;->checkBackgroundNotifyType(ILcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z

    move-result v4

    move v5, v7

    .line 1551
    :goto_3
    if-nez p5, :cond_9

    :goto_4
    const-string/jumbo v0, "Security_PermControlService"

    .line 1554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCheckBackgroundCase checkResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    return v4

    .line 1537
    :cond_7
    if-eqz p1, :cond_6

    goto/16 :goto_2

    :cond_8
    move v5, v8

    move v4, v7

    .line 1546
    goto :goto_3

    .line 1551
    :cond_9
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsSystemApp:Z
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2100(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1552
    :cond_a
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mUid:I
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2400(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v2

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppPcService$PermControlService;->recordCheckHistory(Ljava/lang/String;IIZZ)V

    goto :goto_4

    .line 1551
    :cond_b
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsInControllableSystemApp:Z
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2200(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4
.end method

.method public handleCheckCase(ILjava/lang/String;IIZ)Z
    .locals 7

    .prologue
    .line 1561
    sget-boolean v0, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-nez v0, :cond_2

    .line 1563
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1564
    sget-boolean v1, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-nez v1, :cond_3

    .line 1569
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->checkCurrentUid()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    .line 1573
    if-eq v0, p1, :cond_5

    const/16 v0, 0x11

    .line 1576
    if-eq p1, v0, :cond_6

    .line 1587
    :cond_1
    :try_start_0
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;-><init>(Lcom/android/server/am/AppPcService$PermControlService;ILjava/lang/String;IILandroid/os/Bundle;)V

    .line 1591
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/AppPcDataManager;->getPermStatus(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "Security_PermControlService"

    .line 1592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleCheckCase notifyType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1598
    const/4 v5, 0x0

    .line 1599
    if-eqz v1, :cond_7

    const/4 v2, -0x1

    .line 1613
    if-eq v2, v1, :cond_c

    const/4 v2, 0x1

    .line 1621
    if-eq v2, v1, :cond_f

    .line 1637
    const/4 v4, 0x1

    .line 1639
    :goto_2
    if-nez p5, :cond_14

    :goto_3
    const-string/jumbo v0, "Security_PermControlService"

    .line 1642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCheckCase checkResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    return v4

    :cond_2
    const-string/jumbo v0, "Security_PermControlService"

    .line 1562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCheckCase packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1564
    :cond_3
    if-eq v0, p3, :cond_0

    const-string/jumbo v1, "Security_PermControlService"

    const-string/jumbo v2, "handleCheckCase callingUid != uid"

    .line 1565
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Security_PermControlService"

    .line 1566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleCheckCase callingUid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Security_PermControlService"

    .line 1567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCheckCase uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1570
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 1575
    :cond_5
    const/4 v0, 0x1

    return v0

    .line 1577
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    const-string/jumbo v1, "Security_PermControlService"

    .line 1578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPowerSaveMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    if-eqz v0, :cond_1

    .line 1580
    const/4 v0, 0x0

    return v0

    .line 1596
    :catch_0
    move-exception v0

    .line 1594
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1595
    const/4 v0, 0x1

    return v0

    :cond_7
    const/16 v1, 0x11

    .line 1600
    if-ne p1, v1, :cond_9

    .line 1602
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_9
    const/16 v1, 0x16

    .line 1600
    if-eq p1, v1, :cond_8

    const/16 v1, 0xe

    .line 1603
    if-eq v1, p1, :cond_a

    .line 1606
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mBootCompleted:Z
    invoke-static {v1}, Lcom/android/server/am/AppPcService;->access$000(Lcom/android/server/am/AppPcService;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "Security_PermControlService"

    .line 1609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enable ask permission packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 1604
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_b
    const/4 v1, 0x0

    .line 1607
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/AppPcService$PermControlService;->handleCheckCase(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;I)Z

    move-result v4

    goto/16 :goto_2

    .line 1614
    :cond_c
    const/4 v4, 0x0

    const/16 v1, 0x11

    .line 1615
    if-ne p1, v1, :cond_e

    :cond_d
    const-string/jumbo v1, "Security_PermControlService"

    .line 1617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refuse auto boot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_e
    const/16 v1, 0x16

    .line 1615
    if-eq p1, v1, :cond_d

    .line 1619
    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService$PermControlService;->showDenyToast(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)V

    goto/16 :goto_2

    .line 1622
    :cond_f
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->CHECK_BACKGROUND_GPS_ENABLE:Z
    invoke-static {v1}, Lcom/android/server/am/AppPcService;->access$2000(Lcom/android/server/am/AppPcService;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1634
    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 1622
    :cond_10
    if-nez p1, :cond_12

    .line 1626
    :cond_11
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->getFirstTask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1630
    const/4 v5, 0x1

    .line 1631
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/AppPcService$PermControlService;->checkBackgroundNotifyType(ILcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z

    move-result v4

    goto/16 :goto_2

    .line 1622
    :cond_12
    if-eqz p1, :cond_11

    goto :goto_4

    .line 1628
    :cond_13
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 1639
    :cond_14
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsSystemApp:Z
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2100(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1640
    :cond_15
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mUid:I
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2400(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v2

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppPcService$PermControlService;->recordCheckHistory(Ljava/lang/String;IIZZ)V

    goto/16 :goto_3

    .line 1639
    :cond_16
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsInControllableSystemApp:Z
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2200(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_3
.end method

.method public inWhiteList(Ljava/lang/String;II)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1495
    sget-boolean v0, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-nez v0, :cond_1

    .line 1497
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1501
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/lenovo/common/AppPcUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1506
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppPcDataManager;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1509
    return v2

    :cond_1
    const-string/jumbo v0, "Security_PermControlService"

    const-string/jumbo v1, "inWhiteList(int code, int uid, int pid)"

    .line 1496
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1498
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/AppPcService$PermControlService;->getPackageName(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1502
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppPcService;->isInControllableSystemApps(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1503
    return v3

    .line 1507
    :cond_4
    return v3
.end method

.method public recordCheckHistory(ILjava/lang/String;II)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1648
    :try_start_0
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;-><init>(Lcom/android/server/am/AppPcService$PermControlService;ILjava/lang/String;IILandroid/os/Bundle;)V

    .line 1649
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->getFirstTask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v5, v7

    .line 1653
    :goto_0
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsSystemApp:Z
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2100(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1654
    :cond_0
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mUid:I
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2400(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v2

    const/4 v4, 0x1

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppPcService$PermControlService;->recordCheckHistory(Ljava/lang/String;IIZZ)V

    .line 1658
    :goto_1
    return-void

    :cond_1
    move v5, v8

    .line 1651
    goto :goto_0

    .line 1653
    :cond_2
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsInControllableSystemApp:Z
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2200(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1657
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setAppPermissionResult(ILjava/lang/String;II)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "Security_PermControlService"

    .line 2165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAppPermissionResult uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    invoke-direct {p0, p3, p1, p2, v1}, Lcom/android/server/am/AppPcService$PermControlService;->getPermReqLocked(IILjava/lang/String;Z)Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    move-result-object v2

    .line 2168
    if-nez v2, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v0, "Security_PermControlService"

    .line 2178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAppPermissionResult end uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    return-void

    .line 2169
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->isPermUIShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2171
    if-eqz p4, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->notifyAll(Z)V

    .line 2172
    invoke-virtual {v2, v1}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->setIfPermUIShowing(Z)V

    .line 2173
    invoke-virtual {v2}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->quitHandle()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 2171
    goto :goto_1
.end method
