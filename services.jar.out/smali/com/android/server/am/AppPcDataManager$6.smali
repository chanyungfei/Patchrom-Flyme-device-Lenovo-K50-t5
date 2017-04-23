.class Lcom/android/server/am/AppPcDataManager$6;
.super Ljava/lang/Object;
.source "AppPcDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcDataManager;->startSyncSystemPermissionMaps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcDataManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcDataManager;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v6, 0x0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/am/AppPcDataManager;->access$1100()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 284
    if-nez v6, :cond_2

    .line 392
    :cond_0
    :goto_0
    if-nez v6, :cond_14

    .line 396
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/am/AppPcDataManager;->mSystemPermissionMapsSyncThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/android/server/am/AppPcDataManager;->access$1602(Lcom/android/server/am/AppPcDataManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 397
    return-void

    .line 284
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mAllSystemPermissionMaps:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$1200(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 286
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 289
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mAllSystemPermissionMaps:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$1200(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 290
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mModifyDisSystemPermissionMaps:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$1300(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string/jumbo v0, "package"

    .line 291
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v0, "permission"

    .line 292
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v0, "permission_status"

    .line 293
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v0, "modify"

    .line 294
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v0, "extra_data_1"

    .line 295
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 297
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 299
    :goto_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-static {v2}, Lcom/lenovo/common/AppPcUtils;->getPermCode(Ljava/lang/String;)I

    move-result v14

    const/4 v0, -0x1

    .line 301
    if-ne v0, v14, :cond_7

    .line 338
    :cond_3
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_4
    const-string/jumbo v0, "apppc_servive_is_first_boot"

    .line 341
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "apppc_servive_is_first_boot"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    .line 342
    if-eq v0, v1, :cond_d

    .line 386
    :goto_4
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 393
    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_5
    :try_start_4
    const-string/jumbo v2, "Security/AppPcDataManager"

    const-string/jumbo v3, "startSyncSystemPermissionMaps error"

    .line 389
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 392
    if-eqz v1, :cond_1

    .line 393
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 287
    :cond_5
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 392
    if-nez v6, :cond_6

    .line 393
    :goto_6
    return-void

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 301
    :cond_7
    :try_start_6
    invoke-static {v2}, Lcom/lenovo/common/AppPcUtils;->isIgnorePerm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 306
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 308
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 309
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/common/AppPcPermissionItem;->translateBackgroundStatus(Ljava/lang/String;)I

    move-result v5

    .line 310
    new-instance v0, Lcom/lenovo/common/AppPcPermissionItem;

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/common/AppPcPermissionItem;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 311
    if-eqz v4, :cond_8

    .line 320
    :goto_7
    iget-object v4, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mAllSystemPermissionMaps:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/am/AppPcDataManager;->access$1200(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 322
    if-eqz v4, :cond_a

    .line 326
    :goto_8
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    .line 328
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 332
    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 333
    if-eqz v0, :cond_b

    .line 337
    :goto_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 393
    :catchall_1
    move-exception v0

    .line 392
    :goto_a
    if-nez v6, :cond_15

    .line 393
    :goto_b
    throw v0

    .line 312
    :cond_8
    :try_start_7
    iget-object v4, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mModifyDisSystemPermissionMaps:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/am/AppPcDataManager;->access$1300(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 314
    if-eqz v4, :cond_9

    .line 318
    :goto_c
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 315
    :cond_9
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 316
    iget-object v5, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mModifyDisSystemPermissionMaps:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/am/AppPcDataManager;->access$1300(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 323
    :cond_a
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 324
    iget-object v5, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mAllSystemPermissionMaps:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/am/AppPcDataManager;->access$1200(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 334
    :cond_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 335
    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 338
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v0, "Security/AppPcDataManager"

    const-string/jumbo v1, "first boot init perm"

    .line 343
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 345
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 384
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "apppc_servive_is_first_boot"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 345
    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 346
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x16

    if-le v1, v2, :cond_e

    .line 348
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 349
    if-eqz v1, :cond_e

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 352
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v8, v5

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v8, :cond_e

    aget-object v9, v5, v3

    .line 353
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 354
    if-eqz v2, :cond_10

    .line 357
    iget-object v10, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v10

    .line 358
    iget v10, v10, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    .line 361
    iget-object v10, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v12, Landroid/os/UserHandle;

    iget-object v14, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getUserId()I

    move-result v14

    invoke-direct {v12, v14}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v10

    .line 363
    and-int/lit8 v11, v10, 0x10

    if-eqz v11, :cond_11

    .line 352
    :cond_10
    :goto_e
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_d

    .line 363
    :cond_11
    and-int/lit8 v10, v10, 0x4

    if-nez v10, :cond_10

    .line 367
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-eq v11, v10, :cond_12

    .line 371
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v10, -0x1

    if-eq v10, v2, :cond_13

    const-string/jumbo v2, "Security/AppPcDataManager"

    .line 377
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "init perm ask pkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " permName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    # invokes: Lcom/android/server/am/AppPcDataManager;->revokeSupportsRuntimePermissions(Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v2, v10, v9, v11}, Lcom/android/server/am/AppPcDataManager;->access$1500(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_e

    :cond_12
    const-string/jumbo v2, "Security/AppPcDataManager"

    .line 369
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "init perm allow pkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " permName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    # invokes: Lcom/android/server/am/AppPcDataManager;->grantSupportsRuntimePermissions(Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v2, v10, v9, v11}, Lcom/android/server/am/AppPcDataManager;->access$1400(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_e

    :cond_13
    const-string/jumbo v2, "Security/AppPcDataManager"

    .line 373
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "init perm refuse pkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " permName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager$6;->this$0:Lcom/android/server/am/AppPcDataManager;

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x1

    # invokes: Lcom/android/server/am/AppPcDataManager;->revokeSupportsRuntimePermissions(Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v2, v10, v9, v11}, Lcom/android/server/am/AppPcDataManager;->access$1500(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_e

    .line 393
    :cond_14
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_15
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object v1, v6

    goto/16 :goto_5
.end method
