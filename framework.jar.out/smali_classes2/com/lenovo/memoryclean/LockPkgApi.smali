.class public Lcom/lenovo/memoryclean/LockPkgApi;
.super Ljava/lang/Object;
.source "LockPkgApi.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.lenovo.lsf.bwprovider"

.field private static final CUSTOM_WHITE_LIST_APPS_URI:Ljava/lang/String; = "content://com.lenovo.lsf.bwprovider/sys_accelerate_customized"

.field private static final SAC_FIELD_REMOVED:Ljava/lang/String; = "is_removable"

.field private static final SAC_TABLE_NAME:Ljava/lang/String; = "sys_accelerate_customized"

.field private static final SA_FIELD_APPNAME:Ljava/lang/String; = "app_name"

.field private static final SA_FIELD_PKGNAME:Ljava/lang/String; = "pkg_name"

.field private static final TAG:Ljava/lang/String; = "LockPkgApi"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasInited:Z

.field private mLock:Ljava/lang/Object;

.field private mLockList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mSyncThread:Ljava/lang/Thread;

.field private mUserTableObservable:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLock:Ljava/lang/Object;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mHasInited:Z

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLockList:Ljava/util/HashSet;

    .line 184
    new-instance v0, Lcom/lenovo/memoryclean/LockPkgApi$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/memoryclean/LockPkgApi$1;-><init>(Lcom/lenovo/memoryclean/LockPkgApi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mUserTableObservable:Landroid/database/ContentObserver;

    .line 38
    iput-object p1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/memoryclean/LockPkgApi;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/lenovo/memoryclean/LockPkgApi;->startSyncWhiteLists()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/memoryclean/LockPkgApi;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/memoryclean/LockPkgApi;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/lenovo/memoryclean/LockPkgApi;->loadWhiteFromDb(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$302(Lcom/lenovo/memoryclean/LockPkgApi;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private addToLockList(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLockList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadWhiteFromDb(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mHasInited:Z

    .line 55
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.lenovo.lsf.bwprovider/sys_accelerate_customized"

    .line 57
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    .line 63
    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "pkg_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "is_removable"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    const-string/jumbo v0, "LockPkgApi"

    const-string/jumbo v1, "get user whitelist fail"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    invoke-direct {p0, v6}, Lcom/lenovo/memoryclean/LockPkgApi;->updateList(Ljava/util/HashSet;)V

    .line 99
    :goto_1
    return-void

    .line 66
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    const-string/jumbo v1, "LockPkgApi"

    const-string/jumbo v2, "user whitelist no app"

    .line 87
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, "LockPkgApi"

    const-string/jumbo v1, "initList fail!"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 67
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 68
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "pkg_name"

    .line 72
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 70
    :cond_3
    return-void
.end method

.method private removeFromLockList(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLockList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 159
    monitor-exit v1

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startSyncWhiteLists()V
    .locals 2

    .prologue
    const-string/jumbo v0, "LockPkgApi"

    const-string/jumbo v1, "startSyncSystemWhiteLists"

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mSyncThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 196
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/memoryclean/LockPkgApi$2;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/LockPkgApi$2;-><init>(Lcom/lenovo/memoryclean/LockPkgApi;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mSyncThread:Ljava/lang/Thread;

    .line 203
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 204
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private updateList(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLockList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 103
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLockList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 104
    monitor-exit v1

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public isInLockList(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 141
    iget-object v1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mLockList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 143
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadWhiteFromDbIfNeed()V
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mHasInited:Z

    if-eqz v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lenovo/memoryclean/LockPkgApi;->loadWhiteFromDb(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public lockPkg(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 111
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.lenovo.lsf.bwprovider/sys_accelerate_customized"

    .line 112
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 114
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "is_removable"

    .line 115
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "pkg_name=?"

    .line 116
    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 117
    if-lez v3, :cond_0

    .line 123
    :goto_0
    invoke-direct {p0, p1}, Lcom/lenovo/memoryclean/LockPkgApi;->addToLockList(Ljava/lang/String;)V

    .line 124
    return v5

    :cond_0
    const-string/jumbo v3, "app_name"

    .line 119
    iget-object v4, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/lenovo/memoryclean/Utils;->getApplicationName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "pkg_name"

    .line 120
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public registerContentObserve()V
    .locals 4

    .prologue
    const-string/jumbo v0, "content://com.lenovo.lsf.bwprovider/sys_accelerate_customized"

    .line 165
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mResolver:Landroid/content/ContentResolver;

    .line 167
    iget-object v1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mUserTableObservable:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    iget-boolean v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mHasInited:Z

    if-eqz v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/memoryclean/LockPkgApi;->startSyncWhiteLists()V

    goto :goto_0
.end method

.method public unLockPkg(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 131
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.lenovo.lsf.bwprovider/sys_accelerate_customized"

    .line 132
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "pkg_name=?"

    .line 133
    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    invoke-direct {p0, p1}, Lcom/lenovo/memoryclean/LockPkgApi;->removeFromLockList(Ljava/lang/String;)V

    .line 135
    return v5
.end method

.method public unRegisterContentObserve()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/memoryclean/LockPkgApi;->mUserTableObservable:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
