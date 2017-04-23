.class Lcom/android/server/am/AppPcDataManager$7;
.super Ljava/lang/Object;
.source "AppPcDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcDataManager;->startSyncUserPermissions()V
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
    .line 465
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v7, 0x0

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$1700(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 471
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$1800(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 473
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x1002

    .line 474
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 476
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 477
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 514
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_USER_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/am/AppPcDataManager;->access$2000()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v6

    .line 515
    if-nez v6, :cond_8

    .line 553
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # invokes: Lcom/android/server/am/AppPcDataManager;->bulkInsertAppPcPermissionItem(Ljava/util/List;)I
    invoke-static {v0, v1}, Lcom/android/server/am/AppPcDataManager;->access$2100(Lcom/android/server/am/AppPcDataManager;Ljava/util/List;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 558
    if-nez v6, :cond_d

    .line 562
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->reInitAppLockOnAppCount()V
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$2200(Lcom/android/server/am/AppPcDataManager;)V

    .line 563
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # setter for: Lcom/android/server/am/AppPcDataManager;->mUserPermissionSyncThread:Ljava/lang/Thread;
    invoke-static {v0, v7}, Lcom/android/server/am/AppPcDataManager;->access$2302(Lcom/android/server/am/AppPcDataManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 564
    return-void

    .line 477
    :cond_3
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 478
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_4

    .line 482
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->getPackageDefaultPermissionItems(Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/android/server/am/AppPcDataManager;->access$1900(Lcom/android/server/am/AppPcDataManager;Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 483
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/AppPcDataManager;->access$1700(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 485
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/AppPcDataManager;->access$1800(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 486
    :try_start_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 508
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 509
    :try_start_5
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 559
    :catch_0
    move-exception v0

    move-object v1, v7

    :goto_3
    :try_start_7
    const-string/jumbo v2, "Security/AppPcDataManager"

    const-string/jumbo v3, "startSyncUserPermissions error"

    .line 555
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 558
    if-eqz v1, :cond_2

    .line 559
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_4
    return-void

    .line 486
    :cond_5
    :try_start_8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcPermissionItem;

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/AppPcDataManager;->access$1700(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 491
    if-eqz v1, :cond_6

    .line 497
    :goto_4
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/AppPcDataManager;->access$1800(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 501
    if-eqz v1, :cond_7

    .line 506
    :goto_5
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 508
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 559
    :catchall_2
    move-exception v0

    .line 558
    :goto_6
    if-nez v7, :cond_e

    .line 559
    :goto_7
    throw v0

    .line 492
    :cond_6
    :try_start_a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 493
    iget-object v6, p0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$1700(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 502
    :cond_7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 503
    iget-object v6, p0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/am/AppPcDataManager;->access$1800(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 515
    :cond_8
    :try_start_b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "package"

    .line 519
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v0, "permission"

    .line 520
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v0, "permission_status"

    .line 521
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v0, "extra_data_1"

    .line 522
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 524
    :goto_8
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 526
    invoke-static {v2}, Lcom/lenovo/common/AppPcUtils;->getPermCode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    .line 528
    if-ne v1, v0, :cond_c

    .line 548
    :cond_9
    :goto_9
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result v0

    if-nez v0, :cond_1

    goto :goto_8

    .line 558
    :cond_a
    if-nez v6, :cond_b

    .line 559
    :goto_a
    return-void

    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 528
    :cond_c
    :try_start_c
    invoke-static {v2}, Lcom/lenovo/common/AppPcUtils;->isIgnorePerm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 533
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 538
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/common/AppPcPermissionItem;->translateBackgroundStatus(Ljava/lang/String;)I

    move-result v5

    .line 540
    new-instance v0, Lcom/lenovo/common/AppPcPermissionItem;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/common/AppPcPermissionItem;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 546
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    invoke-virtual {v1, v0}, Lcom/android/server/am/AppPcDataManager;->changeAppPcPermissionStatus(Lcom/lenovo/common/AppPcPermissionItem;)Z

    .line 547
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$7;->this$0:Lcom/android/server/am/AppPcDataManager;

    invoke-virtual {v1, v0}, Lcom/android/server/am/AppPcDataManager;->changeAppPcPermissionBackgroundStatus(Lcom/lenovo/common/AppPcPermissionItem;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_9

    .line 559
    :catch_1
    move-exception v0

    move-object v1, v6

    goto/16 :goto_3

    :cond_d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    :catchall_3
    move-exception v0

    move-object v7, v6

    goto/16 :goto_6

    :catchall_4
    move-exception v0

    move-object v7, v1

    goto/16 :goto_6
.end method
