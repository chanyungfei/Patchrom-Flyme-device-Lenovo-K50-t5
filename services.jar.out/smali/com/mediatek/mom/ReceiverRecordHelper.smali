.class Lcom/mediatek/mom/ReceiverRecordHelper;
.super Ljava/lang/Object;
.source "ReceiverRecordHelper.java"


# static fields
.field public static final DEFAULT_STATUS:Z = true

.field private static final FILE_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final FILE_NAME:Ljava/lang/String; = "bootreceiver"

.field public static SUPPORT_SYSTEM_APP:Z = false

.field private static final TAG:Ljava/lang/String; = "ReceiverRecordHelper"


# instance fields
.field private mBootReceiverList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFile:Landroid/util/AtomicFile;

.field private mHandler:Landroid/os/Handler;

.field private mIsDeleted:Z

.field private mPendingSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/IPackageManager;

.field private mReady:Z

.field private mRecorder:Lcom/mediatek/mom/ReceiverRecorder;

.field private mUm:Landroid/os/IUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/mom/ReceiverRecordHelper;->SUPPORT_SYSTEM_APP:Z

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/mom/ReceiverRecorder;Landroid/content/Context;Landroid/os/Handler;Landroid/os/IUserManager;Landroid/content/pm/IPackageManager;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v1, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mContext:Landroid/content/Context;

    .line 84
    iput-object v1, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mFile:Landroid/util/AtomicFile;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mPendingSettings:Ljava/util/Map;

    .line 91
    iput-object v1, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mUm:Landroid/os/IUserManager;

    .line 92
    iput-object v1, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mPm:Landroid/content/pm/IPackageManager;

    .line 93
    iput-object v1, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mRecorder:Lcom/mediatek/mom/ReceiverRecorder;

    .line 94
    iput-boolean v2, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mReady:Z

    .line 95
    iput-object v1, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mHandler:Landroid/os/Handler;

    .line 96
    iput-boolean v2, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mIsDeleted:Z

    .line 100
    iput-object p1, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mRecorder:Lcom/mediatek/mom/ReceiverRecorder;

    .line 101
    invoke-virtual {p1}, Lcom/mediatek/mom/ReceiverRecorder;->genPostfix()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 103
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "system"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bootreceiver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".xml"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mFile:Landroid/util/AtomicFile;

    .line 106
    iput-object p2, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mContext:Landroid/content/Context;

    .line 107
    iput-object p3, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mHandler:Landroid/os/Handler;

    .line 108
    iput-object p4, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mUm:Landroid/os/IUserManager;

    .line 109
    iput-object p5, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mPm:Landroid/content/pm/IPackageManager;

    const-string/jumbo v0, "ReceiverRecordHelper"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ReceiverRecordHelper("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mRecorder:Lcom/mediatek/mom/ReceiverRecorder;

    invoke-virtual {v2}, Lcom/mediatek/mom/ReceiverRecorder;->getIdentity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/mom/ReceiverRecordHelper;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/mediatek/mom/ReceiverRecordHelper;->writeReceiverList()V

    return-void
.end method

.method private enforceBasicBootPolicy()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-static {}, Lcom/mediatek/common/mom/BootReceiverPolicy;->getBootPolicy()Ljava/util/List;

    move-result-object v2

    .line 238
    const/4 v0, 0x1

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    .line 241
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "android.intent.action.ACTION_BOOT_IPO"

    .line 245
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    :goto_0
    if-eqz v0, :cond_2

    .line 254
    return-void

    :cond_0
    move v0, v1

    .line 243
    goto :goto_0

    :cond_1
    move v0, v1

    .line 246
    goto :goto_0

    .line 252
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Should NOT remove basic boot policy!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBootReceiverListByUser(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/common/mom/ReceiverRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v1, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    monitor-enter v1

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    monitor-exit v1

    const/4 v0, 0x0

    .line 280
    return-object v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    monitor-exit v1

    return-object v0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getBootReceivers(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 207
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-static {}, Lcom/mediatek/common/mom/BootReceiverPolicy;->getBootPolicy()Ljava/util/List;

    move-result-object v6

    move v1, v2

    .line 210
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 233
    return-object v5

    .line 211
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mPm:Landroid/content/pm/IPackageManager;

    iget-object v7, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    invoke-interface {v0, v4, v7, v8, p1}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v7

    .line 216
    if-nez v7, :cond_2

    .line 210
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v4, v2

    .line 217
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 218
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 219
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v8, :cond_4

    move-object v0, v3

    .line 220
    :goto_3
    sget-boolean v8, Lcom/mediatek/mom/ReceiverRecordHelper;->SUPPORT_SYSTEM_APP:Z

    if-eqz v8, :cond_5

    .line 223
    :goto_4
    if-nez v0, :cond_6

    .line 217
    :cond_3
    :goto_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 219
    :cond_4
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_3

    .line 220
    :cond_5
    invoke-static {p1, v0}, Lcom/mediatek/mom/PackageController;->isSystemApp(ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_4

    .line 223
    :cond_6
    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 224
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 231
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getReceiverList(I)Ljava/util/List;
    .locals 6
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
    .line 581
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 582
    iget-object v2, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    monitor-enter v2

    .line 583
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/ReceiverRecordHelper;->getBootReceiverListByUser(I)Ljava/util/Map;

    move-result-object v3

    .line 584
    if-nez v3, :cond_1

    .line 591
    :cond_0
    monitor-exit v2

    .line 592
    return-object v1

    .line 585
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 586
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 588
    new-instance v5, Lcom/mediatek/common/mom/ReceiverRecord;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/ReceiverRecord;

    invoke-direct {v5, v0}, Lcom/mediatek/common/mom/ReceiverRecord;-><init>(Lcom/mediatek/common/mom/ReceiverRecord;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getUserList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mUm:Landroid/os/IUserManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 602
    :goto_0
    return-object v0

    .line 601
    :catch_0
    move-exception v0

    const-string/jumbo v2, "ReceiverRecordHelper"

    const-string/jumbo v3, "getUsers() failed!"

    .line 600
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private initReceiverCache(IZ)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "ReceiverRecordHelper"

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initReceiverCache("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mRecorder:Lcom/mediatek/mom/ReceiverRecorder;

    invoke-virtual {v3}, Lcom/mediatek/mom/ReceiverRecorder;->getIdentity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-direct {p0, p1}, Lcom/mediatek/mom/ReceiverRecordHelper;->getBootReceivers(I)Ljava/util/List;

    move-result-object v2

    .line 152
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 154
    iget-object v4, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    monitor-enter v4

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v0

    .line 157
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 162
    if-nez p2, :cond_1

    .line 165
    :goto_1
    monitor-exit v4

    .line 166
    return-void

    .line 158
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    new-instance v5, Lcom/mediatek/common/mom/ReceiverRecord;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Lcom/mediatek/common/mom/ReceiverRecord;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "ReceiverRecordHelper"

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initReceiverCache() packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/mom/ReceiverRecordHelper;->readReceiverList()V

    goto :goto_1

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isPendingSetting(ILjava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 409
    iget-object v1, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mPendingSettings:Ljava/util/Map;

    monitor-enter v1

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mPendingSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 411
    if-nez v0, :cond_1

    .line 418
    :cond_0
    monitor-exit v1

    .line 419
    return v3

    .line 412
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ReceiverRecordHelper"

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found a pending setting for pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readReceiverList()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v5, 0x2

    const/4 v11, 0x1

    const-string/jumbo v0, "ReceiverRecordHelper"

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readReceiverList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mRecorder:Lcom/mediatek/mom/ReceiverRecorder;

    invoke-virtual {v2}, Lcom/mediatek/mom/ReceiverRecorder;->getIdentity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v1, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mFile:Landroid/util/AtomicFile;

    monitor-enter v1

    .line 497
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 500
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 507
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const/4 v0, 0x0

    .line 508
    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 511
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 515
    :goto_0
    if-ne v0, v5, :cond_3

    .line 519
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 521
    :cond_1
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v0

    if-ne v0, v11, :cond_4

    .line 570
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 575
    :goto_3
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 576
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 577
    return-void

    .line 504
    :catch_0
    move-exception v0

    :try_start_6
    const-string/jumbo v0, "ReceiverRecordHelper"

    .line 502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No existing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; starting empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-void

    .line 511
    :cond_2
    if-ne v0, v11, :cond_0

    goto :goto_0

    .line 516
    :cond_3
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "no start tag found"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 572
    :catch_1
    move-exception v0

    :try_start_9
    const-string/jumbo v4, "ReceiverRecordHelper"

    .line 554
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 567
    :try_start_a
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 570
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    .line 573
    :catch_2
    move-exception v0

    .line 572
    :try_start_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Fail to read receiver list"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v0

    .line 576
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v0

    .line 521
    :cond_4
    if-eq v0, v12, :cond_6

    .line 522
    :cond_5
    if-eq v0, v12, :cond_1

    const/4 v6, 0x4

    if-eq v0, v6, :cond_1

    .line 525
    :try_start_e
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "pkg"

    .line 526
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "ReceiverRecordHelper"

    .line 547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown element under <boot-receiver>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto/16 :goto_1

    .line 572
    :catch_3
    move-exception v0

    :try_start_f
    const-string/jumbo v4, "ReceiverRecordHelper"

    .line 556
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 567
    :try_start_10
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 570
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_3

    .line 573
    :catch_4
    move-exception v0

    .line 572
    :try_start_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Fail to read receiver list"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 521
    :cond_6
    :try_start_13
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-gt v6, v5, :cond_5

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v0, "n"

    const/4 v6, 0x0

    .line 527
    invoke-interface {v4, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "u"

    const/4 v7, 0x0

    .line 528
    invoke-interface {v4, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v7, "e"

    const/4 v8, 0x0

    .line 529
    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v8, "ReceiverRecordHelper"

    .line 530
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Read package name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " enabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " at User("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/4 v8, 0x0

    invoke-direct {p0, v0, v6, v7, v8}, Lcom/mediatek/mom/ReceiverRecordHelper;->setReceiverRecord(ILjava/lang/String;ZZ)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "ReceiverRecordHelper"

    .line 532
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Found a pending settings for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v7, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mPendingSettings:Ljava/util/Map;

    monitor-enter v7
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 535
    :try_start_14
    iget-object v8, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mPendingSettings:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 539
    :goto_4
    iget-object v8, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mPendingSettings:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 540
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 543
    :goto_5
    monitor-exit v7

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :try_start_15
    throw v0
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 572
    :catch_5
    move-exception v0

    :try_start_16
    const-string/jumbo v4, "ReceiverRecordHelper"

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 567
    :try_start_17
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 570
    :try_start_18
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_3

    .line 573
    :catch_6
    move-exception v0

    .line 572
    :try_start_19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Fail to read receiver list"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 536
    :cond_8
    :try_start_1a
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 537
    iget-object v9, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mPendingSettings:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    goto :goto_4

    .line 572
    :catch_7
    move-exception v0

    :try_start_1b
    const-string/jumbo v4, "ReceiverRecordHelper"

    .line 560
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 567
    :try_start_1c
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 570
    :try_start_1d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto/16 :goto_3

    .line 573
    :catch_8
    move-exception v0

    .line 572
    :try_start_1e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Fail to read receiver list"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 541
    :cond_9
    :try_start_1f
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    goto :goto_5

    .line 572
    :catch_9
    move-exception v0

    :try_start_20
    const-string/jumbo v4, "ReceiverRecordHelper"

    .line 562
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 567
    :try_start_21
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 570
    :try_start_22
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_a
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    goto/16 :goto_3

    .line 573
    :catch_a
    move-exception v0

    .line 572
    :try_start_23
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Fail to read receiver list"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :catch_b
    move-exception v0

    .line 572
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Fail to read receiver list"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    :catch_c
    move-exception v0

    :try_start_24
    const-string/jumbo v4, "ReceiverRecordHelper"

    .line 564
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed parsing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    .line 567
    :try_start_25
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 570
    :try_start_26
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_d
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    goto/16 :goto_3

    .line 573
    :catch_d
    move-exception v0

    .line 572
    :try_start_27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Fail to read receiver list"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    .line 567
    iget-object v4, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 570
    :try_start_28
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_e
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 572
    :try_start_29
    throw v0

    .line 573
    :catch_e
    move-exception v0

    .line 572
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Fail to read receiver list"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0
.end method

.method private removePendingSetting(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 423
    iget-object v1, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mPendingSettings:Ljava/util/Map;

    monitor-enter v1

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mPendingSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 425
    if-nez v0, :cond_1

    .line 430
    :cond_0
    :goto_0
    monitor-exit v1

    .line 431
    return-void

    .line 426
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private scheduleWriteReceiverList()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/mom/ReceiverRecordHelper$1;

    invoke-direct {v1, p0}, Lcom/mediatek/mom/ReceiverRecordHelper$1;-><init>(Lcom/mediatek/mom/ReceiverRecordHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 439
    return-void
.end method

.method private setReceiverRecord(ILjava/lang/String;ZZ)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 349
    iget-object v2, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    monitor-enter v2

    .line 350
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/ReceiverRecordHelper;->getBootReceiverListByUser(I)Ljava/util/Map;

    move-result-object v3

    .line 351
    if-nez v3, :cond_2

    .line 356
    :cond_0
    :goto_0
    monitor-exit v2

    .line 357
    if-eq v0, v1, :cond_3

    .line 360
    :cond_1
    :goto_1
    return v0

    .line 351
    :cond_2
    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/ReceiverRecord;

    .line 353
    iput-boolean p3, v0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    move v0, v1

    .line 354
    goto :goto_0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 357
    :cond_3
    if-ne p4, v1, :cond_1

    .line 358
    invoke-direct {p0}, Lcom/mediatek/mom/ReceiverRecordHelper;->scheduleWriteReceiverList()V

    goto :goto_1
.end method

.method private writeReceiverList()V
    .locals 14

    .prologue
    const-string/jumbo v0, "ReceiverRecordHelper"

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeReceiverList("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mRecorder:Lcom/mediatek/mom/ReceiverRecorder;

    invoke-virtual {v2}, Lcom/mediatek/mom/ReceiverRecorder;->getIdentity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v3, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mFile:Landroid/util/AtomicFile;

    monitor-enter v3

    .line 444
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mIsDeleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 451
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 456
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 457
    invoke-direct {p0}, Lcom/mediatek/mom/ReceiverRecordHelper;->getUserList()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 460
    :try_start_3
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v0, "utf-8"

    .line 461
    invoke-interface {v8, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 462
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v8, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "boot-receiver"

    const/4 v1, 0x0

    .line 463
    invoke-interface {v8, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    move v2, v0

    .line 465
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    const-string/jumbo v0, "boot-receiver"

    const/4 v1, 0x0

    .line 482
    invoke-interface {v8, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 483
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 484
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 489
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 491
    :goto_1
    monitor-exit v3

    .line 492
    return-void

    :cond_0
    const-string/jumbo v0, "ReceiverRecordHelper"

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No need to write with identity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mRecorder:Lcom/mediatek/mom/ReceiverRecorder;

    invoke-virtual {v2}, Lcom/mediatek/mom/ReceiverRecorder;->getIdentity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    monitor-exit v3

    return-void

    .line 455
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ReceiverRecordHelper"

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to write state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 466
    :cond_1
    :try_start_5
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v9, v0, Landroid/content/pm/UserInfo;->id:I

    .line 467
    invoke-direct {p0, v9}, Lcom/mediatek/mom/ReceiverRecordHelper;->getReceiverList(I)Ljava/util/List;

    move-result-object v10

    .line 468
    if-nez v10, :cond_3

    .line 465
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    .line 469
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 470
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/ReceiverRecord;

    .line 472
    iget-boolean v11, v0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 469
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    const-string/jumbo v11, "pkg"

    const/4 v12, 0x0

    .line 473
    invoke-interface {v8, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "u"

    .line 474
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v8, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "n"

    .line 475
    iget-object v12, v0, Lcom/mediatek/common/mom/ReceiverRecord;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v8, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "e"

    .line 476
    iget-boolean v0, v0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    invoke-interface {v8, v12, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "pkg"

    const/4 v11, 0x0

    .line 477
    invoke-interface {v8, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 490
    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "ReceiverRecordHelper"

    const-string/jumbo v2, "Failed to write state, restoring backup."

    .line 486
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 489
    :try_start_7
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 490
    :catchall_1
    move-exception v0

    .line 489
    :try_start_8
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method


# virtual methods
.method public addReceiverRecord(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/mom/ReceiverRecordHelper;->addReceiverRecord(ILjava/lang/String;Z)V

    .line 370
    return-void
.end method

.method public addReceiverRecord(ILjava/lang/String;Z)V
    .locals 4

    .prologue
    const-string/jumbo v0, "ReceiverRecordHelper"

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addReceiverRecord("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mRecorder:Lcom/mediatek/mom/ReceiverRecorder;

    invoke-virtual {v2}, Lcom/mediatek/mom/ReceiverRecorder;->getIdentity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at User("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v1, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    monitor-enter v1

    .line 378
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/ReceiverRecordHelper;->getBootReceiverListByUser(I)Ljava/util/Map;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_0

    .line 383
    :goto_0
    new-instance v2, Lcom/mediatek/common/mom/ReceiverRecord;

    invoke-direct {v2, p2, p3}, Lcom/mediatek/common/mom/ReceiverRecord;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    monitor-exit v1

    .line 385
    return-void

    .line 380
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 381
    iget-object v2, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addReceiverRecordWrite(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/mom/ReceiverRecordHelper;->addReceiverRecord(ILjava/lang/String;Z)V

    .line 365
    invoke-direct {p0}, Lcom/mediatek/mom/ReceiverRecordHelper;->scheduleWriteReceiverList()V

    .line 366
    return-void
.end method

.method public contains(ILjava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v1, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    monitor-enter v1

    .line 285
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/ReceiverRecordHelper;->getBootReceiverListByUser(I)Ljava/util/Map;

    move-result-object v0

    .line 286
    if-nez v0, :cond_1

    .line 289
    :cond_0
    monitor-exit v1

    .line 291
    return v2

    .line 286
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBootReceiverList(I)Ljava/util/List;
    .locals 2
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
    .line 295
    iget-boolean v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mReady:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "ReceiverRecordHelper"

    const-string/jumbo v1, "getBootReceiverList() not ready!"

    .line 298
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 300
    return-object v0

    .line 296
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/ReceiverRecordHelper;->getReceiverList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverDataEnabled(ILjava/lang/String;)Z
    .locals 3

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mReady:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "ReceiverRecordHelper"

    const-string/jumbo v1, "getReceiverDataEnabled() not ready!"

    .line 315
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 305
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    monitor-enter v1

    .line 306
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/ReceiverRecordHelper;->getBootReceiverListByUser(I)Ljava/util/Map;

    move-result-object v0

    .line 307
    if-nez v0, :cond_2

    .line 313
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 307
    :cond_2
    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/ReceiverRecord;

    .line 309
    if-eqz v0, :cond_1

    .line 310
    iget-boolean v0, v0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public initReceiverCache(I)V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/mom/ReceiverRecordHelper;->initReceiverCache(IZ)V

    .line 130
    return-void
.end method

.method public initReceiverList()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Lcom/mediatek/mom/ReceiverRecordHelper;->enforceBasicBootPolicy()V

    .line 117
    invoke-direct {p0}, Lcom/mediatek/mom/ReceiverRecordHelper;->getUserList()Ljava/util/List;

    move-result-object v2

    .line 118
    iget-object v3, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    monitor-enter v3

    move v1, v0

    .line 119
    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/mediatek/mom/ReceiverRecordHelper;->readReceiverList()V

    .line 124
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mReady:Z

    .line 126
    return-void

    .line 120
    :cond_0
    :try_start_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/mediatek/mom/ReceiverRecordHelper;->initReceiverCache(IZ)V

    .line 119
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public matchBootPolicy(ILjava/lang/String;)Z
    .locals 4

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/mediatek/mom/ReceiverRecordHelper;->getBootReceivers(I)Ljava/util/List;

    move-result-object v0

    .line 259
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "ReceiverRecordHelper"

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "matchBootPolicy("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mRecorder:Lcom/mediatek/mom/ReceiverRecorder;

    invoke-virtual {v3}, Lcom/mediatek/mom/ReceiverRecorder;->getIdentity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return v0
.end method

.method public removeReceiverCache(I)V
    .locals 3

    .prologue
    const-string/jumbo v0, "ReceiverRecordHelper"

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeReceiverCache("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mRecorder:Lcom/mediatek/mom/ReceiverRecorder;

    invoke-virtual {v2}, Lcom/mediatek/mom/ReceiverRecorder;->getIdentity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") at User("

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

    .line 268
    iget-object v1, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-direct {p0}, Lcom/mediatek/mom/ReceiverRecordHelper;->scheduleWriteReceiverList()V

    .line 271
    monitor-exit v1

    .line 272
    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeReceiverRecordWrite(ILjava/lang/String;)V
    .locals 3

    .prologue
    const-string/jumbo v0, "ReceiverRecordHelper"

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeReceiverRecordWrite("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mRecorder:Lcom/mediatek/mom/ReceiverRecorder;

    invoke-virtual {v2}, Lcom/mediatek/mom/ReceiverRecorder;->getIdentity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at User("

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

    .line 391
    iget-object v1, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    monitor-enter v1

    .line 392
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/ReceiverRecordHelper;->getBootReceiverListByUser(I)Ljava/util/Map;

    move-result-object v2

    .line 393
    if-nez v2, :cond_1

    .line 405
    :cond_0
    :goto_0
    monitor-exit v1

    .line 406
    return-void

    .line 394
    :cond_1
    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/ReceiverRecord;

    .line 396
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-direct {p0}, Lcom/mediatek/mom/ReceiverRecordHelper;->scheduleWriteReceiverList()V

    .line 400
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setReceiverDataEnabled(ILjava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    iget-boolean v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mReady:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "ReceiverRecordHelper"

    const-string/jumbo v1, "setReceiverDataEnabled() not ready!"

    .line 341
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return v2

    .line 339
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/mom/ReceiverRecordHelper;->setReceiverRecord(ILjava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public setReceiverDataEnabledBatch(ILjava/util/List;)V
    .locals 4
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
    const/4 v2, 0x0

    .line 322
    iget-boolean v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mReady:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "ReceiverRecordHelper"

    const-string/jumbo v1, "setReceiverDataEnabledBatch() not ready!"

    .line 333
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v1, v2

    .line 324
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 330
    invoke-direct {p0}, Lcom/mediatek/mom/ReceiverRecordHelper;->scheduleWriteReceiverList()V

    goto :goto_0

    .line 325
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/ReceiverRecord;

    .line 326
    if-nez v0, :cond_3

    .line 324
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 327
    :cond_3
    iget-object v3, v0, Lcom/mediatek/common/mom/ReceiverRecord;->packageName:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/mediatek/mom/ReceiverRecordHelper;->setReceiverRecord(ILjava/lang/String;ZZ)Z

    goto :goto_2
.end method

.method public uninitReceiverCache(I)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 133
    iget-object v1, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    monitor-exit v1

    return v4

    :cond_0
    const-string/jumbo v0, "ReceiverRecordHelper"

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uninitReceiverCache("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mRecorder:Lcom/mediatek/mom/ReceiverRecorder;

    invoke-virtual {v3}, Lcom/mediatek/mom/ReceiverRecorder;->getIdentity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") at User("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "ReceiverRecordHelper"

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uninitReceiverCache("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mRecorder:Lcom/mediatek/mom/ReceiverRecorder;

    invoke-virtual {v3}, Lcom/mediatek/mom/ReceiverRecorder;->getIdentity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") uninited"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mIsDeleted:Z

    .line 142
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v5
.end method

.method public updateReceiverCache(IZ)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "ReceiverRecordHelper"

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateReceiverCache("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mRecorder:Lcom/mediatek/mom/ReceiverRecorder;

    invoke-virtual {v4}, Lcom/mediatek/mom/ReceiverRecorder;->getIdentity()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ") at User("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ") "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v6, p0, Lcom/mediatek/mom/ReceiverRecordHelper;->mBootReceiverList:Ljava/util/Map;

    monitor-enter v6

    .line 173
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/mom/ReceiverRecordHelper;->getReceiverList(I)Ljava/util/List;

    move-result-object v7

    .line 174
    invoke-direct {p0, p1}, Lcom/mediatek/mom/ReceiverRecordHelper;->getBootReceivers(I)Ljava/util/List;

    move-result-object v8

    move v5, v2

    .line 176
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lt v5, v0, :cond_0

    .line 203
    monitor-exit v6

    .line 204
    return-void

    .line 179
    :cond_0
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v4, v2

    .line 180
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lt v4, v1, :cond_1

    move v1, v2

    move v4, v3

    .line 188
    :goto_2
    if-eq v1, v3, :cond_4

    .line 191
    if-nez p2, :cond_5

    .line 199
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/mom/ReceiverRecordHelper;->addReceiverRecord(ILjava/lang/String;)V

    .line 176
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 181
    :cond_1
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/mom/ReceiverRecord;

    .line 182
    if-nez v1, :cond_3

    .line 180
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 182
    :cond_3
    iget-object v9, v1, Lcom/mediatek/common/mom/ReceiverRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 183
    iget-boolean v1, v1, Lcom/mediatek/common/mom/ReceiverRecord;->enabled:Z

    move v4, v1

    move v1, v3

    .line 185
    goto :goto_2

    .line 189
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v4, v1}, Lcom/mediatek/mom/ReceiverRecordHelper;->setReceiverRecord(ILjava/lang/String;ZZ)Z

    goto :goto_3

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 192
    :cond_5
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/mediatek/mom/ReceiverRecordHelper;->isPendingSetting(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 196
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/mom/ReceiverRecordHelper;->addReceiverRecord(ILjava/lang/String;)V

    goto :goto_3

    .line 193
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/mom/ReceiverRecordHelper;->addReceiverRecord(ILjava/lang/String;Z)V

    .line 194
    invoke-direct {p0, p1, v0}, Lcom/mediatek/mom/ReceiverRecordHelper;->removePendingSetting(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method
