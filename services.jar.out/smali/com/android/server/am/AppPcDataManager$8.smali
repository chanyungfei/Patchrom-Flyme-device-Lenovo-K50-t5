.class Lcom/android/server/am/AppPcDataManager$8;
.super Ljava/lang/Thread;
.source "AppPcDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcDataManager;->reInitPackageUserPermissions(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcDataManager;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    iput-object p2, p0, Lcom/android/server/am/AppPcDataManager$8;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 617
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$8;->val$packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/am/AppPcDataManager;->removePackageUserPermissionsInternal(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/am/AppPcDataManager;->access$2400(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$8;->val$packageName:Ljava/lang/String;

    const/16 v2, 0x1002

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 622
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->getPackageDefaultPermissionItems(Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lcom/android/server/am/AppPcDataManager;->access$1900(Lcom/android/server/am/AppPcDataManager;Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 623
    if-nez v0, :cond_1

    .line 701
    :cond_0
    return-void

    .line 623
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 627
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 628
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/AppPcDataManager;->access$1700(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 629
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/AppPcDataManager;->access$1800(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 630
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 652
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 653
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 655
    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_USER_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/am/AppPcDataManager;->access$2000()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "package=?"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/am/AppPcDataManager$8;->val$packageName:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v6

    .line 657
    if-nez v6, :cond_7

    .line 695
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # invokes: Lcom/android/server/am/AppPcDataManager;->bulkInsertAppPcPermissionItem(Ljava/util/List;)I
    invoke-static {v0, v1}, Lcom/android/server/am/AppPcDataManager;->access$2100(Lcom/android/server/am/AppPcDataManager;Ljava/util/List;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 700
    if-nez v6, :cond_c

    .line 704
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->reInitAppLockOnAppCount()V
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$2200(Lcom/android/server/am/AppPcDataManager;)V

    .line 705
    return-void

    .line 630
    :cond_4
    :try_start_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcPermissionItem;

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/AppPcDataManager;->access$1700(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 635
    if-eqz v1, :cond_5

    .line 641
    :goto_2
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/am/AppPcDataManager;->access$1800(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 645
    if-eqz v1, :cond_6

    .line 650
    :goto_3
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    .line 653
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 701
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 700
    :goto_4
    if-eqz v0, :cond_3

    .line 701
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 636
    :cond_5
    :try_start_9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 637
    iget-object v5, p0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/am/AppPcDataManager;->access$1700(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 701
    :catchall_2
    move-exception v0

    .line 700
    if-nez v6, :cond_d

    .line 701
    :goto_5
    throw v0

    .line 646
    :cond_6
    :try_start_a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 647
    iget-object v5, p0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/am/AppPcDataManager;->access$1800(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 657
    :cond_7
    :try_start_b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 658
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "package"

    .line 661
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v0, "permission"

    .line 662
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v0, "permission_status"

    .line 663
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v0, "extra_data_1"

    .line 664
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 666
    :goto_6
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 668
    invoke-static {v2}, Lcom/lenovo/common/AppPcUtils;->getPermCode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    .line 670
    if-ne v1, v0, :cond_b

    .line 690
    :cond_8
    :goto_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result v0

    if-nez v0, :cond_2

    goto :goto_6

    .line 700
    :cond_9
    if-nez v6, :cond_a

    .line 701
    :goto_8
    return-void

    :cond_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 670
    :cond_b
    :try_start_c
    invoke-static {v2}, Lcom/lenovo/common/AppPcUtils;->isIgnorePerm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 675
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 680
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/common/AppPcPermissionItem;->translateBackgroundStatus(Ljava/lang/String;)I

    move-result v5

    .line 682
    new-instance v0, Lcom/lenovo/common/AppPcPermissionItem;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/common/AppPcPermissionItem;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 688
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    invoke-virtual {v1, v0}, Lcom/android/server/am/AppPcDataManager;->changeAppPcPermissionStatus(Lcom/lenovo/common/AppPcPermissionItem;)Z

    .line 689
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$8;->this$0:Lcom/android/server/am/AppPcDataManager;

    invoke-virtual {v1, v0}, Lcom/android/server/am/AppPcDataManager;->changeAppPcPermissionBackgroundStatus(Lcom/lenovo/common/AppPcPermissionItem;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_7

    .line 701
    :catch_1
    move-exception v0

    move-object v0, v6

    goto/16 :goto_4

    :cond_c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5
.end method
