.class Lcom/android/server/am/AppPcDataManager$5;
.super Ljava/lang/Object;
.source "AppPcDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcDataManager;->startSyncUserWhiteLists()V
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
    .line 237
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager$5;->this$0:Lcom/android/server/am/AppPcDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$5;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/am/AppPcDataManager;->access$800()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 243
    if-nez v1, :cond_2

    .line 260
    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 264
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$5;->this$0:Lcom/android/server/am/AppPcDataManager;

    # setter for: Lcom/android/server/am/AppPcDataManager;->mUserWhiteListsSyncThread:Ljava/lang/Thread;
    invoke-static {v0, v6}, Lcom/android/server/am/AppPcDataManager;->access$1002(Lcom/android/server/am/AppPcDataManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 265
    return-void

    .line 243
    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$5;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserWhiteLists:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$900(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 245
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 248
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$5;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserWhiteLists:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$900(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const-string/jumbo v0, "package"

    .line 249
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 251
    :goto_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 252
    iget-object v4, p0, Lcom/android/server/am/AppPcDataManager$5;->this$0:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcDataManager;->mUserWhiteLists:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/am/AppPcDataManager;->access$900(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 254
    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 261
    :catch_0
    move-exception v0

    :goto_3
    :try_start_4
    const-string/jumbo v2, "Security/AppPcDataManager"

    const-string/jumbo v3, "startSyncUserWhiteLists error"

    .line 257
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 260
    if-eqz v1, :cond_1

    .line 261
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 246
    :cond_4
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 260
    if-nez v1, :cond_5

    .line 261
    :goto_4
    return-void

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 253
    :cond_6
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 261
    :cond_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v6

    .line 260
    :goto_5
    if-nez v1, :cond_8

    .line 261
    :goto_6
    throw v0

    :cond_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method
