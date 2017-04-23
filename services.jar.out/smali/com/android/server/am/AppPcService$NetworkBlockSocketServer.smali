.class Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;
.super Ljava/lang/Thread;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkBlockSocketServer"
.end annotation


# instance fields
.field private final CONTENT_URI:Landroid/net/Uri;

.field private final _RULE:Ljava/lang/String;

.field private final _UID:Ljava/lang/String;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/am/AppPcService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService;I)V
    .locals 1

    .prologue
    .line 2287
    iput-object p1, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    .line 2288
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string/jumbo v0, "content://com.lenovo.security/fire_wall"

    .line 2282
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "_uid"

    .line 2284
    iput-object v0, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->_UID:Ljava/lang/String;

    const-string/jumbo v0, "_rule"

    .line 2285
    iput-object v0, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->_RULE:Ljava/lang/String;

    .line 2289
    iput p2, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->mUid:I

    .line 2290
    return-void
.end method

.method private getPkgIsBlockBySecurity(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2349
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPcService;->access$1200(Lcom/android/server/am/AppPcService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "_uid=?"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2352
    if-nez v1, :cond_1

    :cond_0
    :try_start_1
    const-string/jumbo v0, "Security_AppPcService"

    const-string/jumbo v2, "getPkgIsBlockBySecurity cursor invaild"

    .line 2362
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    if-nez v1, :cond_7

    .line 2387
    :goto_0
    return v7

    .line 2352
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "_rule"

    .line 2353
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2355
    invoke-static {v0}, Lcom/android/server/am/AppPcService$FirewallRuleSet;->parse(Ljava/lang/String;)Lcom/android/server/am/AppPcService$FirewallRuleSet;

    move-result-object v2

    .line 2356
    if-eqz v2, :cond_5

    .line 2366
    iget-object v0, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPcService;->access$1200(Lcom/android/server/am/AppPcService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2368
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2370
    if-nez v0, :cond_8

    .line 2372
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 2373
    if-eq v0, v8, :cond_9

    .line 2377
    :cond_3
    if-eqz v0, :cond_b

    .line 2386
    :cond_4
    if-nez v1, :cond_e

    .line 2390
    :goto_1
    return v7

    :cond_5
    const-string/jumbo v0, "Security_AppPcService"

    const-string/jumbo v2, "getPkgIsBlockBySecurity firewallRuleSet == null"

    .line 2357
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2386
    if-nez v1, :cond_6

    .line 2387
    :goto_2
    return v7

    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2370
    :cond_8
    :try_start_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v0, "Security_AppPcService"

    const-string/jumbo v2, "getPkgIsBlockBySecurity networkInfo invaild"

    .line 2382
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    if-nez v1, :cond_d

    .line 2387
    :goto_3
    return v7

    .line 2373
    :cond_9
    iget-object v3, v2, Lcom/android/server/am/AppPcService$FirewallRuleSet;->wifiRule:Lcom/android/server/am/AppPcService$FirewallRule;

    sget-object v4, Lcom/android/server/am/AppPcService$FirewallRule;->Restrict:Lcom/android/server/am/AppPcService$FirewallRule;

    if-ne v3, v4, :cond_3

    const-string/jumbo v0, "Security_AppPcService"

    const-string/jumbo v2, "getPkgIsBlockBySecurity wifi Restrict"

    .line 2375
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2386
    if-nez v1, :cond_a

    .line 2387
    :goto_4
    return v8

    :cond_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 2377
    :cond_b
    :try_start_3
    iget-object v0, v2, Lcom/android/server/am/AppPcService$FirewallRuleSet;->mobileRule:Lcom/android/server/am/AppPcService$FirewallRule;

    sget-object v2, Lcom/android/server/am/AppPcService$FirewallRule;->Restrict:Lcom/android/server/am/AppPcService$FirewallRule;

    if-ne v0, v2, :cond_4

    const-string/jumbo v0, "Security_AppPcService"

    const-string/jumbo v2, "getPkgIsBlockBySecurity mobile Restrict"

    .line 2378
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2386
    if-nez v1, :cond_c

    .line 2387
    :goto_5
    return v8

    :cond_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :cond_d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 2386
    :goto_6
    if-nez v1, :cond_f

    .line 2387
    :goto_7
    throw v0

    :cond_f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6
.end method

.method private loadFirstTask(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string/jumbo v0, "activity"

    .line 2394
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 2397
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v0

    .line 2401
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2418
    :cond_0
    return-object v5

    .line 2402
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2404
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2405
    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-nez v2, :cond_2

    .line 2409
    :goto_0
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v2, -0x200001

    and-int/2addr v0, v2

    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2411
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2412
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2414
    if-eqz v0, :cond_0

    .line 2415
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 2406
    :cond_2
    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2296
    :try_start_0
    iget v2, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->mUid:I

    .line 2297
    iget-object v0, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPcService;->access$1200(Lcom/android/server/am/AppPcService;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->loadFirstTask(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2298
    iget-object v3, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mPermControlService:Lcom/android/server/am/AppPcService$PermControlService;
    invoke-static {v3}, Lcom/android/server/am/AppPcService;->access$3300(Lcom/android/server/am/AppPcService;)Lcom/android/server/am/AppPcService$PermControlService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/AppPcService$PermControlService;->getPackageName(II)Ljava/lang/String;

    move-result-object v3

    .line 2302
    if-nez v0, :cond_1

    .line 2337
    :cond_0
    :goto_0
    return-void

    .line 2302
    :cond_1
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2305
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->getPkgIsBlockBySecurity(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v4, "Security_AppPcService"

    .line 2306
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isInBlockList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    if-eqz v0, :cond_3

    .line 2310
    iget-object v0, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mLastNetworkBlockToastTimes:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/AppPcService;->access$3400(Lcom/android/server/am/AppPcService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2311
    if-nez v0, :cond_4

    .line 2317
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mLastNetworkBlockToastTimes:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/AppPcService;->access$3400(Lcom/android/server/am/AppPcService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2319
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2321
    iget-object v1, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/am/AppPcService;->access$3000(Lcom/android/server/am/AppPcService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2322
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/AppPcService$NetworkBlockSocketServer;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$3000(Lcom/android/server/am/AppPcService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppPcPermissionListener;

    .line 2323
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2324
    if-eqz v0, :cond_0

    .line 2325
    :try_start_2
    invoke-interface {v0, v3}, Lcom/android/internal/app/IAppPcPermissionListener;->onNetworkBlocked(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2336
    :catch_0
    move-exception v0

    .line 2335
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2308
    :cond_3
    return-void

    .line 2312
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 2314
    return-void

    :cond_5
    move v0, v1

    .line 2312
    goto :goto_1

    .line 2323
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method
