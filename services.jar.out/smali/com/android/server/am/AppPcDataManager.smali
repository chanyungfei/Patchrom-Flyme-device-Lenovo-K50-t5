.class public Lcom/android/server/am/AppPcDataManager;
.super Ljava/lang/Object;
.source "AppPcDataManager.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.lenovo.lsf.bwprovider"

.field private static final CONTENT_PERM_SYS_URI:Landroid/net/Uri;

.field private static final CONTENT_PERM_USER_URI:Landroid/net/Uri;

.field private static final CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

.field private static final CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

.field private static final FIELD_NAME_MODIFY:Ljava/lang/String; = "modify"

.field private static final FIELD_NAME_PACKAGE:Ljava/lang/String; = "package"

.field private static final FIELD_NAME_PERMISSION:Ljava/lang/String; = "permission"

.field private static final FIELD_NAME_PERMISSION_BACKGROUND_STATUS:Ljava/lang/String; = "extra_data_1"

.field private static final FIELD_NAME_PERMISSION_STATUS:Ljava/lang/String; = "permission_status"

.field private static final TABLE_PERMISSION_SYS:Ljava/lang/String; = "app_permissions_sys_settings"

.field private static final TABLE_PERMISSION_USER:Ljava/lang/String; = "app_permissions_user_settings"

.field private static final TABLE_PERMISSION_WHITE_LIST_SYS:Ljava/lang/String; = "white_list_sys_settings"

.field private static final TABLE_PERMISSION_WHITE_LIST_USER:Ljava/lang/String; = "white_list_user_settings"

.field private static final TAG:Ljava/lang/String; = "Security/AppPcDataManager"


# instance fields
.field private mAllSystemPermissionMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppLockOnAppCount:I

.field private mAppLockOnAppCountLock:Ljava/lang/Object;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mModifyDisSystemPermissionMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSystemPermissionMapsSyncThread:Ljava/lang/Thread;

.field private mSystemWhiteLists:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemWhiteListsSyncThread:Ljava/lang/Thread;

.field private mUserCodePermissionMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserPermissionSyncThread:Ljava/lang/Thread;

.field private mUserPkgPermissionMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserWhiteLists:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserWhiteListsSyncThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "content://com.lenovo.lsf.bwprovider/app_permissions_user_settings"

    .line 54
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.lenovo.lsf.bwprovider/app_permissions_sys_settings"

    .line 57
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.lenovo.lsf.bwprovider/white_list_sys_settings"

    .line 60
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.lenovo.lsf.bwprovider/white_list_user_settings"

    .line 64
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mAllSystemPermissionMaps:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mModifyDisSystemPermissionMaps:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteLists:Ljava/util/HashSet;

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteLists:Ljava/util/HashSet;

    .line 94
    iput-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    .line 96
    iput-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    .line 98
    iput-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mSystemPermissionMapsSyncThread:Ljava/lang/Thread;

    .line 100
    iput-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mUserPermissionSyncThread:Ljava/lang/Thread;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCount:I

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCountLock:Ljava/lang/Object;

    .line 147
    new-instance v0, Lcom/android/server/am/AppPcDataManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppPcDataManager$3;-><init>(Lcom/android/server/am/AppPcDataManager;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/AppPcDataManager;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/am/AppPcDataManager;->startSyncSystemWhiteLists()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/AppPcDataManager;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/am/AppPcDataManager;->startSyncSystemPermissionMaps()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/server/am/AppPcDataManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mAllSystemPermissionMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mModifyDisSystemPermissionMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppPcDataManager;->grantSupportsRuntimePermissions(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppPcDataManager;->revokeSupportsRuntimePermissions(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/am/AppPcDataManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager;->mSystemPermissionMapsSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/AppPcDataManager;Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcDataManager;->getPackageDefaultPermissionItems(Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppPcDataManager;->reInitPackageUserPermissions(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/am/AppPcDataManager;Ljava/util/List;)I
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcDataManager;->bulkInsertAppPcPermissionItem(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/am/AppPcDataManager;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/am/AppPcDataManager;->reInitAppLockOnAppCount()V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/server/am/AppPcDataManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager;->mUserPermissionSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcDataManager;->removePackageUserPermissionsInternal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/am/AppPcDataManager;Lcom/lenovo/common/AppPcPermissionItem;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcDataManager;->changeDbPermissionStatus(Lcom/lenovo/common/AppPcPermissionItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcDataManager;->removePackageUserPermissions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/AppPcDataManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteLists:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/am/AppPcDataManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_WHITE_LIST_USER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/AppPcDataManager;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteLists:Ljava/util/HashSet;

    return-object v0
.end method

.method private bulkInsertAppPcPermissionItem(Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 574
    if-eqz p1, :cond_0

    .line 577
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 578
    if-eqz v0, :cond_1

    .line 582
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 583
    new-array v4, v0, [Landroid/content/ContentValues;

    .line 585
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 599
    :try_start_0
    sget-object v0, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 600
    return v0

    .line 575
    :cond_0
    return v2

    .line 579
    :cond_1
    return v2

    .line 585
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcPermissionItem;

    .line 587
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "package"

    .line 588
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "permission"

    .line 589
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "permission_status"

    .line 590
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "modify"

    .line 591
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getModify()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "extra_data_1"

    .line 592
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getBackgroundStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    aput-object v6, v4, v1

    .line 595
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 596
    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 603
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 606
    return v2
.end method

.method private changeDbPermissionBackgroundStatus(Lcom/lenovo/common/AppPcPermissionItem;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1034
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1035
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getBackgroundStatus()I

    move-result v2

    .line 1036
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v0

    invoke-static {v0}, Lcom/lenovo/common/AppPcUtils;->getPermissionByCode(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1037
    iget-object v3, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1038
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1043
    return-void

    .line 1038
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1039
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "extra_data_1"

    .line 1040
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    sget-object v6, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    const-string/jumbo v7, "package=? AND permission=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object v1, v8, v10

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-virtual {v3, v6, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeDbPermissionStatus(Lcom/lenovo/common/AppPcPermissionItem;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1018
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1019
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v2

    .line 1020
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v0

    invoke-static {v0}, Lcom/lenovo/common/AppPcUtils;->getPermissionByCode(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1021
    iget-object v3, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1022
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1027
    return-void

    .line 1022
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1023
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "permission_status"

    .line 1024
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1025
    sget-object v6, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_USER_URI:Landroid/net/Uri;

    const-string/jumbo v7, "package=? AND permission=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object v1, v8, v10

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-virtual {v3, v6, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getControledPermissionsList(Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 805
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 806
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 807
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 810
    invoke-static {v1}, Lcom/lenovo/common/AppPcUtils;->isIgnorePkg(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "com.lenovo.security"

    .line 812
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 816
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppPcDataManager;->isInWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 820
    iget-object v3, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/lenovo/common/AppPcUtils;->isLauncherApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 821
    iget-object v6, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/lenovo/common/AppPcUtils;->isHomeApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 823
    if-eqz v6, :cond_5

    .line 826
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/lenovo/common/AppPcUtils;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    .line 828
    if-nez v7, :cond_6

    move v3, v0

    .line 834
    :goto_1
    if-eqz v6, :cond_7

    .line 841
    :goto_2
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_a

    :goto_3
    move v1, v2

    .line 847
    :goto_4
    if-eqz v5, :cond_d

    .line 851
    if-eq v7, v2, :cond_e

    .line 855
    :cond_1
    array-length v2, v5

    :goto_5
    if-lt v0, v2, :cond_f

    .line 870
    if-nez v1, :cond_13

    .line 874
    :goto_6
    return-object v4

    .line 811
    :cond_2
    return-object v6

    .line 813
    :cond_3
    return-object v6

    .line 817
    :cond_4
    return-object v6

    .line 823
    :cond_5
    if-eqz v3, :cond_0

    const-string/jumbo v3, "lenovo.permission.APP_LOCK"

    .line 824
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 829
    :cond_6
    invoke-static {v1}, Lcom/lenovo/common/AppPcUtils;->isInControllableSystemApps(Ljava/lang/String;)Z

    move-result v1

    move v3, v1

    goto :goto_1

    .line 834
    :cond_7
    if-nez v7, :cond_9

    :cond_8
    const-string/jumbo v1, "com.lenovo.pemission.exit_app"

    .line 835
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "lenovo.permission.GET_INSTALLED_PACKAGES"

    .line 836
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 834
    :cond_9
    if-eq v3, v2, :cond_8

    goto :goto_2

    .line 841
    :cond_a
    if-nez v7, :cond_c

    :cond_b
    const-string/jumbo v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 842
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_4

    .line 841
    :cond_c
    if-eq v3, v2, :cond_b

    goto :goto_3

    .line 849
    :cond_d
    return-object v4

    .line 851
    :cond_e
    if-nez v3, :cond_1

    .line 852
    return-object v4

    .line 855
    :cond_f
    aget-object v3, v5, v0

    .line 856
    invoke-static {v3}, Lcom/lenovo/common/AppPcUtils;->isIgnorePerm(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string/jumbo v6, "android.permission.SEND_SMS"

    .line 863
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 866
    invoke-static {v3}, Lcom/lenovo/common/AppPcUtils;->getPermCode(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_12

    .line 855
    :cond_10
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    const-string/jumbo v3, "android.permission.SEND_SMS"

    .line 864
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "lenovo.permission.SEND_MMS"

    .line 865
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 867
    :cond_12
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_13
    const-string/jumbo v0, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 872
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method private getPackageDefaultPermissionItems(Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 742
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcDataManager;->getControledPermissionsList(Landroid/content/pm/PackageInfo;)Ljava/util/ArrayList;

    move-result-object v7

    .line 743
    if-nez v7, :cond_1

    .line 797
    :cond_0
    return-object v6

    .line 743
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 745
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 747
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    const-string/jumbo v3, "package=?"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v8, v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 751
    if-nez v6, :cond_3

    .line 781
    :cond_2
    if-nez v6, :cond_6

    .line 785
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 786
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 795
    return-object v1

    .line 751
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "package"

    .line 752
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string/jumbo v0, "permission"

    .line 753
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v0, "permission_status"

    .line 754
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v0, "extra_data_1"

    .line 755
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 757
    :goto_2
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 759
    invoke-static {v2}, Lcom/lenovo/common/AppPcUtils;->getPermCode(Ljava/lang/String;)I

    move-result v13

    const/4 v0, -0x1

    .line 761
    if-ne v0, v13, :cond_5

    .line 777
    :cond_4
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 761
    :cond_5
    invoke-static {v2}, Lcom/lenovo/common/AppPcUtils;->isIgnorePerm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 766
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 768
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/common/AppPcPermissionItem;->translateBackgroundStatus(Ljava/lang/String;)I

    move-result v5

    .line 770
    new-instance v0, Lcom/lenovo/common/AppPcPermissionItem;

    const/4 v4, 0x1

    move-object v1, v8

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/common/AppPcPermissionItem;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 776
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 782
    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 781
    :goto_4
    if-nez v1, :cond_7

    .line 782
    :goto_5
    throw v0

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 786
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 787
    new-instance v3, Lcom/lenovo/common/AppPcPermissionItem;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/lenovo/common/AppPcUtils;->isSystemApp(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    invoke-direct {v3, v4, v0, v5}, Lcom/lenovo/common/AppPcPermissionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 788
    invoke-virtual {v3}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcPermissionItem;

    .line 789
    if-nez v0, :cond_9

    .line 793
    :goto_6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 790
    :cond_9
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lenovo/common/AppPcPermissionItem;->setStatus(I)V

    .line 791
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getBackgroundStatus()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/lenovo/common/AppPcPermissionItem;->setBackgroundStatus(I)V

    goto :goto_6

    .line 782
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_4
.end method

.method private grantSupportsRuntimePermissions(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 410
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 411
    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 415
    if-eqz p3, :cond_0

    .line 423
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v3, 0x3

    .line 416
    new-instance v5, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private reInitAppLockOnAppCount()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1186
    iget-object v3, p0, Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;

    monitor-enter v3

    .line 1187
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;

    const/16 v4, 0x16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1188
    if-nez v0, :cond_1

    move-object v0, v2

    .line 1191
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1192
    if-nez v0, :cond_2

    .line 1199
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCountLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1200
    :try_start_1
    iput v1, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCount:I

    .line 1201
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1202
    return-void

    .line 1189
    :cond_1
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    goto :goto_0

    .line 1191
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1193
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcPermissionItem;

    .line 1194
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    move v0, v1

    :goto_2
    move v1, v0

    .line 1197
    goto :goto_1

    .line 1195
    :cond_3
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 1201
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private reInitPackageUserPermissions(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 613
    new-instance v0, Lcom/android/server/am/AppPcDataManager$8;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/AppPcDataManager$8;-><init>(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/AppPcDataManager$8;->start()V

    .line 709
    return-void
.end method

.method private removePackageUserPermissions(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 711
    new-instance v0, Lcom/android/server/am/AppPcDataManager$9;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/AppPcDataManager$9;-><init>(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/AppPcDataManager$9;->start()V

    .line 718
    return-void
.end method

.method private removePackageUserPermissionsInternal(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 721
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    monitor-enter v1

    .line 722
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 723
    if-nez v0, :cond_0

    .line 726
    :goto_0
    monitor-exit v1

    .line 727
    if-nez v0, :cond_1

    .line 735
    :goto_1
    return-void

    .line 724
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 726
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 728
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 729
    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;

    monitor-enter v2

    .line 730
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 733
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 730
    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcPermissionItem;

    .line 731
    iget-object v3, p0, Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2
.end method

.method private revokeSupportsRuntimePermissions(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 434
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 435
    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 439
    if-nez p3, :cond_0

    .line 448
    new-instance v5, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 455
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v4, 0x2

    .line 440
    new-instance v5, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private startSyncSystemPermissionMaps()V
    .locals 2

    .prologue
    const-string/jumbo v0, "Security/AppPcDataManager"

    const-string/jumbo v1, "startSyncSystemPermissionMaps"

    .line 274
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemPermissionMapsSyncThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 278
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/AppPcDataManager$6;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppPcDataManager$6;-><init>(Lcom/android/server/am/AppPcDataManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemPermissionMapsSyncThread:Ljava/lang/Thread;

    .line 399
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemPermissionMapsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 400
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemPermissionMapsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private startSyncSystemWhiteLists()V
    .locals 2

    .prologue
    const-string/jumbo v0, "Security/AppPcDataManager"

    const-string/jumbo v1, "startSyncSystemWhiteLists"

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 192
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/AppPcDataManager$4;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppPcDataManager$4;-><init>(Lcom/android/server/am/AppPcDataManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    .line 227
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 228
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private startSyncUserPermissions()V
    .locals 2

    .prologue
    const-string/jumbo v0, "Security/AppPcDataManager"

    const-string/jumbo v1, "startSyncUserPermissions"

    .line 461
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserPermissionSyncThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 465
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/AppPcDataManager$7;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppPcDataManager$7;-><init>(Lcom/android/server/am/AppPcDataManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserPermissionSyncThread:Ljava/lang/Thread;

    .line 566
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserPermissionSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 567
    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserPermissionSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private startSyncUserWhiteLists()V
    .locals 2

    .prologue
    const-string/jumbo v0, "Security/AppPcDataManager"

    const-string/jumbo v1, "startSyncUserWhiteLists"

    .line 233
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 237
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/AppPcDataManager$5;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppPcDataManager$5;-><init>(Lcom/android/server/am/AppPcDataManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    .line 267
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 268
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteListsSyncThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method


# virtual methods
.method public changeAppPcPermissionBackgroundStatus(Lcom/lenovo/common/AppPcPermissionItem;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 985
    iget-object v3, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    monitor-enter v3

    .line 986
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 988
    if-nez v0, :cond_0

    const-string/jumbo v0, "Security/AppPcDataManager"

    const-string/jumbo v4, "changeAppPcPermissionBackgroundStatus map==null"

    .line 1004
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1006
    :goto_0
    monitor-exit v3

    .line 1007
    if-nez v0, :cond_3

    .line 1011
    return v1

    .line 989
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcPermissionItem;

    .line 990
    if-nez v0, :cond_1

    const-string/jumbo v0, "Security/AppPcDataManager"

    const-string/jumbo v4, "changeAppPcPermissionBackgroundStatus destItem==null"

    .line 1001
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_1
    move v6, v0

    move v0, v1

    move v1, v6

    .line 1003
    goto :goto_0

    .line 992
    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getBackgroundStatus()I

    move-result v4

    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getBackgroundStatus()I

    move-result v5

    if-ne v4, v5, :cond_2

    move v0, v2

    goto :goto_1

    .line 994
    :cond_2
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getBackgroundStatus()I

    move-result v1

    .line 995
    invoke-virtual {v0, v1}, Lcom/lenovo/common/AppPcPermissionItem;->setBackgroundStatus(I)V

    move v0, v2

    move v1, v2

    .line 999
    goto :goto_1

    .line 1006
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1008
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcDataManager;->changeDbPermissionBackgroundStatus(Lcom/lenovo/common/AppPcPermissionItem;)V

    .line 1009
    return v2
.end method

.method public changeAppPcPermissionStatus(Lcom/lenovo/common/AppPcPermissionItem;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 934
    iget-object v4, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    monitor-enter v4

    .line 935
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 937
    if-nez v0, :cond_1

    move v0, v1

    move v3, v1

    .line 953
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    if-nez v0, :cond_4

    .line 963
    :goto_1
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v0

    const/16 v4, 0x16

    if-eq v0, v4, :cond_5

    .line 975
    :cond_0
    :goto_2
    return v3

    .line 938
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcPermissionItem;

    .line 939
    if-nez v0, :cond_2

    .line 950
    monitor-exit v4

    return v1

    .line 941
    :cond_2
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 947
    monitor-exit v4

    return v2

    .line 943
    :cond_3
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v1

    .line 944
    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lenovo/common/AppPcPermissionItem;->setStatus(I)V

    move v0, v2

    move v3, v2

    goto :goto_0

    .line 953
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 955
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/AppPcDataManager$10;

    invoke-direct {v4, p0, p1}, Lcom/android/server/am/AppPcDataManager$10;-><init>(Lcom/android/server/am/AppPcDataManager;Lcom/lenovo/common/AppPcPermissionItem;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 963
    :cond_5
    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 966
    iget-object v4, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCountLock:Ljava/lang/Object;

    monitor-enter v4

    .line 967
    if-eq v1, v2, :cond_6

    .line 971
    :try_start_2
    iget v0, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCount:I

    .line 973
    :goto_3
    monitor-exit v4

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 969
    :cond_6
    :try_start_3
    iget v0, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3
.end method

.method public getAppPcPermissionItemsByCode(I)Landroid/content/pm/ParceledListSlice;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 900
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;

    monitor-enter v1

    .line 901
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserCodePermissionMaps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 902
    if-nez v0, :cond_0

    .line 906
    monitor-exit v1

    .line 908
    return-object v3

    .line 903
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 904
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v0

    .line 906
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppPcPermissionItemsByPackageName(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Lcom/lenovo/common/AppPcPermissionItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 916
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    monitor-enter v1

    .line 917
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 918
    if-nez v0, :cond_0

    .line 922
    monitor-exit v1

    .line 923
    return-object v2

    .line 919
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 920
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v0

    .line 922
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPermBackgroundStatus(Ljava/lang/String;I)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    .line 1084
    if-eq v0, p2, :cond_2

    .line 1088
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mModifyDisSystemPermissionMaps:Ljava/util/HashMap;

    monitor-enter v1

    .line 1089
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mModifyDisSystemPermissionMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1091
    if-nez v0, :cond_3

    .line 1097
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    monitor-enter v1

    .line 1099
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1101
    if-nez v0, :cond_4

    .line 1107
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1108
    return v3

    .line 1086
    :cond_2
    return v3

    .line 1092
    :cond_3
    :try_start_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcPermissionItem;

    .line 1093
    if-eqz v0, :cond_0

    .line 1094
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getBackgroundStatus()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1097
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1102
    :cond_4
    :try_start_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcPermissionItem;

    .line 1103
    if-eqz v0, :cond_1

    .line 1104
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getBackgroundStatus()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1107
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getPermStatus(Ljava/lang/String;I)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x1

    .line 1051
    if-eq v0, p2, :cond_2

    .line 1055
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mModifyDisSystemPermissionMaps:Ljava/util/HashMap;

    monitor-enter v1

    .line 1056
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mModifyDisSystemPermissionMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1058
    if-nez v0, :cond_3

    .line 1064
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    monitor-enter v1

    .line 1066
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserPkgPermissionMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1068
    if-nez v0, :cond_4

    .line 1074
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1075
    return v3

    .line 1053
    :cond_2
    return v3

    .line 1059
    :cond_3
    :try_start_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcPermissionItem;

    .line 1060
    if-eqz v0, :cond_0

    .line 1061
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1064
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1069
    :cond_4
    :try_start_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/common/AppPcPermissionItem;

    .line 1070
    if-eqz v0, :cond_1

    .line 1071
    invoke-virtual {v0}, Lcom/lenovo/common/AppPcPermissionItem;->getStatus()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1074
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 114
    invoke-direct {p0}, Lcom/android/server/am/AppPcDataManager;->startSyncSystemWhiteLists()V

    .line 115
    invoke-direct {p0}, Lcom/android/server/am/AppPcDataManager;->startSyncUserWhiteLists()V

    .line 116
    invoke-direct {p0}, Lcom/android/server/am/AppPcDataManager;->startSyncSystemPermissionMaps()V

    .line 117
    invoke-direct {p0}, Lcom/android/server/am/AppPcDataManager;->startSyncUserPermissions()V

    .line 119
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_WHITE_LIST_SYS_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/AppPcDataManager$1;

    iget-object v3, p0, Lcom/android/server/am/AppPcDataManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/AppPcDataManager$1;-><init>(Lcom/android/server/am/AppPcDataManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/AppPcDataManager;->CONTENT_PERM_SYS_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/am/AppPcDataManager$2;

    iget-object v3, p0, Lcom/android/server/am/AppPcDataManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/AppPcDataManager$2;-><init>(Lcom/android/server/am/AppPcDataManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/AppPcDataManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    return-void
.end method

.method public isAnyAppLockOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1207
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1208
    :try_start_0
    iget v2, p0, Lcom/android/server/am/AppPcDataManager;->mAppLockOnAppCount:I

    if-gtz v2, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isInWhiteList(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 882
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteLists:Ljava/util/HashSet;

    monitor-enter v1

    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mSystemWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteLists:Ljava/util/HashSet;

    monitor-enter v1

    .line 888
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager;->mUserWhiteLists:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 891
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 892
    return v2

    .line 884
    :cond_0
    :try_start_2
    monitor-exit v1

    return v3

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 889
    :cond_1
    :try_start_3
    monitor-exit v1

    return v3

    .line 891
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
