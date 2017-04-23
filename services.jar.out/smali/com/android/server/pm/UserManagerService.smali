.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerService$MainHandler;
    }
.end annotation


# static fields
.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GUEST_TO_REMOVE:Ljava/lang/String; = "guestToRemove"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PROFILE_GROUP_ID:Ljava/lang/String; = "profileGroupId"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final ATTR_TYPE_BUNDLE:Ljava/lang/String; = "B"

.field private static final ATTR_TYPE_BUNDLE_ARRAY:Ljava/lang/String; = "BA"

.field private static final ATTR_TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field private static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field private static final CONFIG_PROFILES_SHARE_CREDENTIAL:Z = true

.field private static final DBG:Z = true

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field private static final MAX_MANAGED_PROFILES:I = 0x1

.field private static final MIN_USER_ID:I = 0xa

.field private static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field private static final SYSTEM_CONTROLLED_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_GUEST_RESTRICTIONS:Ljava/lang/String; = "guestRestrictions"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_PHOTO_FILENAME_TMP:Ljava/lang/String; = "photo.png.tmp"

.field private static final USER_VERSION:I = 0x5

.field static final WRITE_USER_DELAY:I = 0x7d0

.field static final WRITE_USER_MSG:I = 0x1

.field private static final XATTR_SERIAL:Ljava/lang/String; = "user.serial"

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mContext:Landroid/content/Context;

.field private final mGuestRestrictions:Landroid/os/Bundle;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallLock:Ljava/lang/Object;

.field private mNextSerialNumber:I

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;

.field private mSwitchedUserId:I

.field private mUserIds:[I

.field private final mUserListFile:Ljava/io/File;

.field private final mUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserStateLocked(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 150
    const-string/jumbo v1, "no_record_audio"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 149
    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->SYSTEM_CONTROLLED_RESTRICTIONS:Ljava/util/Set;

    .line 90
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "packagesLock"    # Ljava/lang/Object;

    .prologue
    .line 208
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    .line 209
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 207
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    .line 206
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "packagesLock"    # Ljava/lang/Object;
    .param p5, "dataDir"    # Ljava/io/File;
    .param p6, "baseUserPath"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    .line 167
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 168
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    .line 169
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    .line 176
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 180
    iput v2, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 181
    iput v2, p0, Lcom/android/server/pm/UserManagerService;->mSwitchedUserId:I

    .line 218
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 219
    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 220
    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    .line 221
    iput-object p4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    .line 222
    new-instance v1, Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    .line 223
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 224
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 225
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v1, p5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    .line 226
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 228
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v4, "0"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    .local v0, "userZeroDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 230
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    const/16 v4, 0x1fd

    .line 233
    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 230
    invoke-static {v1, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 234
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v5, "userlist.xml"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    .line 235
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 236
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLocked()V

    .line 237
    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    .line 217
    return-void

    .line 224
    .end local v0    # "userZeroDir":Ljava/io/File;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "baseUserPath"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 197
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v2, v1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)V

    .line 196
    return-void
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 676
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 677
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 679
    const-string/jumbo v1, "android.permission.MANAGE_USERS"

    .line 680
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 678
    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_0

    .line 681
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "You need MANAGE_USERS permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 675
    :cond_0
    return-void
.end method

.method private static checkSystemOrRoot(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 686
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 687
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 688
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Only system may call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 685
    :cond_0
    return-void
.end method

.method private cleanAppRestrictions(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 1213
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1214
    :try_start_0
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 1215
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1216
    .local v2, "files":[Ljava/lang/String;
    if-nez v2, :cond_0

    monitor-exit v5

    return-void

    .line 1217
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    array-length v6, v2

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v2, v4

    .line 1218
    .local v1, "fileName":Ljava/lang/String;
    const-string/jumbo v7, "res_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1219
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1220
    .local v3, "resFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1221
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1217
    .end local v3    # "resFile":Ljava/io/File;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v1    # "fileName":Ljava/lang/String;
    :cond_2
    monitor-exit v5

    .line 1212
    return-void

    .line 1213
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "files":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private cleanAppRestrictionsForPackage(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1232
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1233
    :try_start_0
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 1234
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1235
    .local v1, "resFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1236
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 1231
    return-void

    .line 1232
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "resFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 30
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I

    .prologue
    .line 1259
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v24

    .line 1260
    const-string/jumbo v25, "no_add_user"

    const/16 v26, 0x0

    .line 1259
    invoke-virtual/range {v24 .. v26}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 1261
    const-string/jumbo v24, "UserManagerService"

    const-string/jumbo v25, "Cannot add user. DISALLOW_ADD_USER is enabled."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const/16 v24, 0x0

    return-object v24

    .line 1264
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 1265
    const/16 v24, 0x0

    return-object v24

    .line 1267
    :cond_1
    and-int/lit8 v24, p2, 0x4

    if-eqz v24, :cond_2

    const/4 v10, 0x1

    .line 1268
    .local v10, "isGuest":Z
    :goto_0
    and-int/lit8 v24, p2, 0x20

    if-eqz v24, :cond_3

    const/4 v11, 0x1

    .line 1269
    .local v11, "isManagedProfile":Z
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1270
    .local v8, "ident":J
    const/16 v19, 0x0

    .line 1273
    .local v19, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1274
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1275
    const/4 v14, 0x0

    .line 1276
    .local v14, "parent":Landroid/content/pm/UserInfo;
    const/16 v24, -0x2710

    move/from16 v0, p3

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 1277
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v14

    .line 1278
    .local v14, "parent":Landroid/content/pm/UserInfo;
    if-nez v14, :cond_4

    :try_start_3
    monitor-exit v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v24, 0x0

    .line 1336
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1278
    return-object v24

    .line 1267
    .end local v8    # "ident":J
    .end local v10    # "isGuest":Z
    .end local v11    # "isManagedProfile":Z
    .end local v14    # "parent":Landroid/content/pm/UserInfo;
    .end local v19    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "isGuest":Z
    goto :goto_0

    .line 1268
    :cond_3
    const/4 v11, 0x0

    .restart local v11    # "isManagedProfile":Z
    goto :goto_1

    .line 1280
    .restart local v8    # "ident":J
    .restart local v19    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4
    if-eqz v11, :cond_5

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->canAddMoreManagedProfiles()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 1283
    :cond_5
    if-nez v10, :cond_6

    if-eqz v11, :cond_8

    .line 1289
    :cond_6
    if-eqz v10, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUserLocked()Landroid/content/pm/UserInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-result-object v24

    if-eqz v24, :cond_9

    :try_start_6
    monitor-exit v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1290
    const/16 v24, 0x0

    .line 1336
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1290
    return-object v24

    :cond_7
    :try_start_8
    monitor-exit v26
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    monitor-exit v25
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1281
    const/16 v24, 0x0

    .line 1336
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1281
    return-object v24

    .line 1283
    :cond_8
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReachedLocked()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-result v24

    if-eqz v24, :cond_6

    :try_start_b
    monitor-exit v26
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    monitor-exit v25
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1286
    const/16 v24, 0x0

    .line 1336
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1286
    return-object v24

    .line 1292
    :cond_9
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableIdLocked()I

    move-result v18

    .line 1293
    .local v18, "userId":I
    new-instance v20, Landroid/content/pm/UserInfo;

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move-object/from16 v2, p1

    move-object/from16 v3, v24

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1294
    .end local v19    # "userInfo":Landroid/content/pm/UserInfo;
    .local v20, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    move/from16 v24, v0

    add-int/lit8 v27, v24, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 1295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1296
    .local v12, "now":J
    const-wide v28, 0xdc46c32800L

    cmp-long v24, v12, v28

    if-lez v24, :cond_c

    .end local v12    # "now":J
    :goto_2
    move-object/from16 v0, v20

    iput-wide v12, v0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 1297
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 1298
    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->mkdirs()Z

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1300
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    .line 1301
    if-eqz v14, :cond_b

    .line 1302
    iget v0, v14, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v24, v0

    const/16 v27, -0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 1303
    iget v0, v14, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v14, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1304
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1306
    :cond_a
    iget v0, v14, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1308
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-class v27, Landroid/os/storage/StorageManager;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/storage/StorageManager;

    .line 1309
    .local v16, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "vol$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/storage/VolumeInfo;

    .line 1310
    .local v21, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object v23

    .line 1312
    .local v23, "volumeUuid":Ljava/lang/String;
    :try_start_f
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/os/Environment;->getDataUserDirectory(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v17

    .line 1314
    .local v17, "userDir":Ljava/io/File;
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/UserManagerService;->prepareUserDirectory(Ljava/io/File;)V

    .line 1315
    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerService;->enforceSerialNumber(Ljava/io/File;I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_3

    .line 1316
    .end local v17    # "userDir":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 1317
    .local v7, "e":Ljava/io/IOException;
    :try_start_10
    const-string/jumbo v24, "UserManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Failed to create user directory on "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_3

    .line 1274
    .end local v7    # "e":Ljava/io/IOException;
    .end local v16    # "storage":Landroid/os/storage/StorageManager;
    .end local v21    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v22    # "vol$iterator":Ljava/util/Iterator;
    .end local v23    # "volumeUuid":Ljava/lang/String;
    :catchall_0
    move-exception v24

    move-object/from16 v19, v20

    .end local v18    # "userId":I
    .end local v20    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_4
    :try_start_11
    monitor-exit v26

    throw v24
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1273
    :catchall_1
    move-exception v24

    :goto_5
    :try_start_12
    monitor-exit v25

    throw v24
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1335
    :catchall_2
    move-exception v24

    .line 1336
    :goto_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1335
    throw v24

    .line 1296
    .restart local v12    # "now":J
    .restart local v18    # "userId":I
    .restart local v20    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_c
    const-wide/16 v12, 0x0

    goto/16 :goto_2

    .line 1320
    .end local v12    # "now":J
    .restart local v16    # "storage":Landroid/os/storage/StorageManager;
    .restart local v22    # "vol$iterator":Ljava/util/Iterator;
    :cond_d
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->createNewUserLILPw(I)V

    .line 1321
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 1322
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1323
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    .line 1324
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 1325
    .local v15, "restrictions":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :try_start_14
    monitor-exit v26
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    monitor-exit v25

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->newUserCreated(I)V

    .line 1329
    if-eqz v20, :cond_e

    .line 1330
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v24, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1331
    .local v6, "addedIntent":Landroid/content/Intent;
    const-string/jumbo v24, "android.intent.extra.user_handle"

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1333
    const-string/jumbo v26, "android.permission.MANAGE_USERS"

    .line 1332
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 1336
    .end local v6    # "addedIntent":Landroid/content/Intent;
    :cond_e
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1338
    return-object v20

    .line 1335
    :catchall_3
    move-exception v24

    move-object/from16 v19, v20

    .end local v20    # "userInfo":Landroid/content/pm/UserInfo;
    .local v19, "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_6

    .line 1273
    .end local v19    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v20    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_4
    move-exception v24

    move-object/from16 v19, v20

    .end local v20    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v19    # "userInfo":Landroid/content/pm/UserInfo;
    goto/16 :goto_5

    .line 1274
    .end local v15    # "restrictions":Landroid/os/Bundle;
    .end local v16    # "storage":Landroid/os/storage/StorageManager;
    .end local v18    # "userId":I
    .end local v22    # "vol$iterator":Ljava/util/Iterator;
    .local v19, "userInfo":Landroid/content/pm/UserInfo;
    :catchall_5
    move-exception v24

    goto/16 :goto_4
.end method

.method public static enforceSerialNumber(Ljava/io/File;I)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "serialNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1960
    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->getSerialNumber(Ljava/io/File;)I

    move-result v1

    .line 1961
    .local v1, "foundSerial":I
    const-string/jumbo v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with serial number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1964
    const-string/jumbo v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Serial number missing on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; assuming current is valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->setSerialNumber(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1959
    :cond_0
    :goto_0
    return-void

    .line 1967
    :catch_0
    move-exception v0

    .line 1968
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to set serial number on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1971
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    if-eq v1, p1, :cond_0

    .line 1972
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found serial number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1973
    const-string/jumbo v4, " doesn\'t match expected "

    .line 1972
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private fallbackToSingleUserLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 865
    new-instance v0, Landroid/content/pm/UserInfo;

    .line 866
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 867
    const/16 v4, 0x13

    .line 865
    invoke-direct {v0, v5, v2, v3, v4}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 868
    .local v0, "primary":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 869
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 870
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 872
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 873
    .local v1, "restrictions":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 875
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    .line 876
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 878
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    .line 879
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 863
    return-void
.end method

.method private findCurrentGuestUserLocked()Landroid/content/pm/UserInfo;
    .locals 5

    .prologue
    .line 1361
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1362
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1363
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1364
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v3, :cond_1

    .line 1362
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1364
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1365
    return-object v2

    .line 1368
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method private getAliveUsersExcludingGuestsCountLocked()I
    .locals 6

    .prologue
    .line 654
    const/4 v0, 0x0

    .line 655
    .local v0, "aliveUserCount":I
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 657
    .local v2, "totalUserCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 658
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 659
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 660
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 657
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    :cond_1
    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_0

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 664
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    return v0
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .locals 2

    .prologue
    .line 188
    const-class v0, Lcom/android/server/pm/UserManagerService;

    monitor-enter v0

    .line 189
    :try_start_0
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getNextAvailableIdLocked()I
    .locals 3

    .prologue
    .line 1919
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1920
    const/16 v0, 0xa

    .line 1921
    .local v0, "i":I
    :goto_0
    const v1, 0x7fffffff

    if-ge v0, v1, :cond_1

    .line 1922
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1925
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v2

    .line 1927
    return v0

    .line 1919
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getProfileParentLocked(I)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 365
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 366
    .local v1, "profile":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_0

    .line 367
    return-object v3

    .line 369
    :cond_0
    iget v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 370
    .local v0, "parentUserId":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 371
    return-object v3

    .line 373
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    return-object v2
.end method

.method private getProfilesLocked(IZ)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 320
    .local v2, "user":Landroid/content/pm/UserInfo;
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_0

    .line 323
    return-object v3

    .line 325
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 326
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 327
    .local v1, "profile":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 325
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 333
    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 336
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 338
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    :cond_4
    return-object v3
.end method

.method private static getSerialNumber(Ljava/io/File;)I
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1999
    const/16 v5, 0x100

    :try_start_0
    new-array v0, v5, [B

    .line 2000
    .local v0, "buf":[B
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "user.serial"

    invoke-static {v5, v6, v0}, Landroid/system/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v3

    .line 2001
    .local v3, "len":I
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2003
    .local v4, "serial":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    return v5

    .line 2004
    :catch_0
    move-exception v2

    .line 2005
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bad serial number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2007
    .end local v0    # "buf":[B
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "len":I
    .end local v4    # "serial":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 2008
    .local v1, "e":Landroid/system/ErrnoException;
    iget v5, v1, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->ENODATA:I

    if-ne v5, v6, :cond_0

    .line 2009
    const/4 v5, -0x1

    return v5

    .line 2011
    :cond_0
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v5

    throw v5
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1641
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1643
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1644
    const/16 v4, 0x2000

    .line 1643
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1648
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1643
    return v3

    .line 1645
    :catch_0
    move-exception v2

    .line 1646
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .line 1648
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1646
    return v3

    .line 1647
    .end local v2    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v3

    .line 1648
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1647
    throw v3
.end method

.method private getUserInfoLocked(I)Landroid/content/pm/UserInfo;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 414
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 416
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    :cond_0
    return-object v0

    .line 417
    :cond_1
    const-string/jumbo v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUserInfo: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-object v4
.end method

.method private initDefaultGuestRestrictions()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 526
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v1, "no_outgoing_calls"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 528
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v1, "no_sms"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 529
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v1, "no_config_wifi"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 525
    :cond_0
    return-void
.end method

.method private isPackageInstalled(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1199
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 1200
    const/16 v2, 0x2000

    .line 1199
    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1202
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 1203
    :cond_0
    return v3

    .line 1205
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .locals 4
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "profile"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 378
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v3, :cond_0

    .line 379
    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 380
    iget v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v3, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v2, v3, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 380
    goto :goto_0

    :cond_2
    move v0, v1

    .line 379
    goto :goto_0
.end method

.method private isUserLimitReachedLocked()Z
    .locals 2

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLocked()I

    move-result v0

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private numberOfUsersOfTypeLocked(IZ)I
    .locals 5
    .param p1, "flags"    # I
    .param p2, "excludeDying"    # Z

    .prologue
    .line 1342
    const/4 v0, 0x0

    .line 1343
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1344
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1345
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1343
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1346
    :cond_1
    iget v3, v2, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    .line 1347
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1351
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    return v0
.end method

.method private packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static prepareUserDirectory(Ljava/io/File;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3e8

    .line 1940
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1941
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1942
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1945
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1947
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to prepare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1939
    :cond_1
    return-void
.end method

.method static readApplicationRestrictionsLocked(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .locals 8
    .param p0, "restrictionsFile"    # Landroid/util/AtomicFile;

    .prologue
    .line 1662
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1663
    .local v3, "restrictions":Landroid/os/Bundle;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1664
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1665
    return-object v3

    .line 1668
    :cond_0
    const/4 v1, 0x0

    .line 1670
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 1671
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1672
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1673
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1674
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 1675
    const-string/jumbo v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to read restrictions file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1676
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    .line 1675
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1685
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1677
    return-object v3

    .line 1679
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 1680
    invoke-static {v3, v4, v2}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1682
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 1683
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1685
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1687
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v3

    .line 1685
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 1684
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v5

    .line 1685
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1684
    throw v5
.end method

.method private readApplicationRestrictionsLocked(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1655
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 1656
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1655
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1657
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLocked(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "restrictionKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1164
    invoke-interface {p1, v1, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1166
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1163
    :cond_0
    return-void
.end method

.method private static readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1736
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1737
    .local v0, "childBundle":Landroid/os/Bundle;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 1738
    .local v1, "outerDepth":I
    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1739
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1741
    :cond_0
    return-object v0
.end method

.method private static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1692
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 1693
    .local v6, "type":I
    const/4 v10, 0x2

    if-ne v6, v10, :cond_2

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "entry"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1694
    const-string/jumbo v10, "key"

    const/4 v11, 0x0

    invoke-interface {p2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1695
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v10, "type"

    const/4 v11, 0x0

    invoke-interface {p2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1696
    .local v7, "valType":Ljava/lang/String;
    const-string/jumbo v10, "m"

    const/4 v11, 0x0

    invoke-interface {p2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1697
    .local v4, "multiple":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1698
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1699
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1700
    .local v2, "count":I
    :cond_0
    :goto_0
    if-lez v2, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v10, 0x1

    if-eq v6, v10, :cond_1

    .line 1701
    const/4 v10, 0x2

    if-ne v6, v10, :cond_0

    .line 1702
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1701
    if-eqz v10, :cond_0

    .line 1703
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1704
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1707
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v9, v10, [Ljava/lang/String;

    .line 1708
    .local v9, "valueStrings":[Ljava/lang/String;
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1709
    invoke-virtual {p0, v3, v9}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1691
    .end local v2    # "count":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "multiple":Ljava/lang/String;
    .end local v7    # "valType":Ljava/lang/String;
    .end local v9    # "valueStrings":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1710
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "multiple":Ljava/lang/String;
    .restart local v7    # "valType":Ljava/lang/String;
    :cond_3
    const-string/jumbo v10, "B"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1711
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 1712
    :cond_4
    const-string/jumbo v10, "BA"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1713
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 1714
    .local v5, "outerDepth":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1715
    .local v0, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_2
    invoke-static {p2, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1716
    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    .line 1717
    .local v1, "childBundle":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1720
    .end local v1    # "childBundle":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Landroid/os/Bundle;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/os/Parcelable;

    .line 1719
    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_1

    .line 1722
    .end local v0    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v5    # "outerDepth":I
    :cond_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1723
    .local v8, "value":Ljava/lang/String;
    const-string/jumbo v10, "b"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1724
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1725
    :cond_7
    const-string/jumbo v10, "i"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1726
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1728
    :cond_8
    invoke-virtual {p0, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    const/4 v2, 0x0

    .line 1179
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1180
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_0

    return p3

    .line 1182
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p3
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    const/4 v2, 0x0

    .line 1189
    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1190
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_0

    return-wide p3

    .line 1192
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1193
    :catch_0
    move-exception v0

    .line 1194
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return-wide p3
.end method

.method private readRestrictionsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1126
    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1127
    const-string/jumbo v0, "no_modify_accounts"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1128
    const-string/jumbo v0, "no_install_apps"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1129
    const-string/jumbo v0, "no_uninstall_apps"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1130
    const-string/jumbo v0, "no_share_location"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1132
    const-string/jumbo v0, "no_install_unknown_sources"

    .line 1131
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1133
    const-string/jumbo v0, "no_config_bluetooth"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1134
    const-string/jumbo v0, "no_usb_file_transfer"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1135
    const-string/jumbo v0, "no_config_credentials"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1136
    const-string/jumbo v0, "no_remove_user"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1137
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1138
    const-string/jumbo v0, "no_config_vpn"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1139
    const-string/jumbo v0, "no_config_tethering"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1140
    const-string/jumbo v0, "no_network_reset"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1141
    const-string/jumbo v0, "no_factory_reset"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1142
    const-string/jumbo v0, "no_add_user"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1143
    const-string/jumbo v0, "ensure_verify_apps"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1144
    const-string/jumbo v0, "no_config_cell_broadcasts"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1145
    const-string/jumbo v0, "no_config_mobile_networks"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1146
    const-string/jumbo v0, "no_control_apps"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1148
    const-string/jumbo v0, "no_physical_media"

    .line 1147
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1149
    const-string/jumbo v0, "no_unmute_microphone"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1150
    const-string/jumbo v0, "no_adjust_volume"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1151
    const-string/jumbo v0, "no_outgoing_calls"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1152
    const-string/jumbo v0, "no_sms"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1153
    const-string/jumbo v0, "no_fun"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1154
    const-string/jumbo v0, "no_create_windows"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1155
    const-string/jumbo v0, "no_cross_profile_copy_paste"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1156
    const-string/jumbo v0, "no_outgoing_beam"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1157
    const-string/jumbo v0, "no_wallpaper"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1158
    const-string/jumbo v0, "no_safe_boot"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1159
    const-string/jumbo v0, "allow_parent_profile_app_linking"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1125
    return-void
.end method

.method private readUserListLocked()V
    .locals 14

    .prologue
    .line 743
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 744
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V

    .line 745
    return-void

    .line 747
    :cond_0
    const/4 v1, 0x0

    .line 748
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v10, Landroid/util/AtomicFile;

    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v10, v12}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 750
    .local v10, "userListFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v10}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 751
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 752
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 754
    :cond_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v12, 0x2

    if-eq v8, v12, :cond_2

    .line 755
    const/4 v12, 0x1

    if-ne v8, v12, :cond_1

    .line 759
    :cond_2
    const/4 v12, 0x2

    if-eq v8, v12, :cond_4

    .line 760
    const-string/jumbo v12, "UserManagerService"

    const-string/jumbo v13, "Unable to read user list"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 810
    if-eqz v1, :cond_3

    .line 812
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 762
    :cond_3
    :goto_0
    return-void

    .line 813
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 765
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    const/4 v12, -0x1

    :try_start_2
    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 766
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "users"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 767
    const-string/jumbo v12, "nextSerialNumber"

    const/4 v13, 0x0

    invoke-interface {v6, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 768
    .local v4, "lastSerialNumber":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 769
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    .line 771
    :cond_5
    const-string/jumbo v12, "version"

    const/4 v13, 0x0

    invoke-interface {v6, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 772
    .local v11, "versionNumber":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 773
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 777
    .end local v4    # "lastSerialNumber":Ljava/lang/String;
    .end local v11    # "versionNumber":Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v12, 0x1

    if-eq v8, v12, :cond_b

    .line 778
    const/4 v12, 0x2

    if-ne v8, v12, :cond_6

    .line 779
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 780
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v12, "user"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 781
    const-string/jumbo v12, "id"

    const/4 v13, 0x0

    invoke-interface {v6, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 782
    .local v2, "id":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/server/pm/UserManagerService;->readUserLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 784
    .local v9, "user":Landroid/content/pm/UserInfo;
    if-eqz v9, :cond_6

    .line 785
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget v13, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v13, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 786
    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v12, :cond_7

    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iget v13, v9, Landroid/content/pm/UserInfo;->id:I

    if-gt v12, v13, :cond_6

    .line 787
    :cond_7
    iget v12, v9, Landroid/content/pm/UserInfo;->id:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 805
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "id":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .end local v9    # "user":Landroid/content/pm/UserInfo;
    :catch_1
    move-exception v3

    .line 806
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 810
    if-eqz v1, :cond_8

    .line 812
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 742
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_8
    :goto_2
    return-void

    .line 790
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_9
    :try_start_5
    const-string/jumbo v12, "guestRestrictions"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 791
    :cond_a
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v12, 0x1

    if-eq v8, v12, :cond_6

    .line 792
    const/4 v12, 0x3

    if-eq v8, v12, :cond_6

    .line 793
    const/4 v12, 0x2

    if-ne v8, v12, :cond_a

    .line 794
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "restrictions"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 795
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {p0, v6, v12}, Lcom/android/server/pm/UserManagerService;->readRestrictionsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 807
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    :catch_2
    move-exception v7

    .line 808
    .local v7, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLocked()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 810
    if-eqz v1, :cond_8

    .line 812
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 813
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 803
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_b
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    .line 804
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLocked()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 810
    if-eqz v1, :cond_8

    .line 812
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    .line 813
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .restart local v3    # "ioe":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 809
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 810
    if-eqz v1, :cond_c

    .line 812
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 809
    :cond_c
    :goto_3
    throw v12

    .line 813
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_3
.end method

.method private readUserLocked(I)Landroid/content/pm/UserInfo;
    .locals 34
    .param p1, "id"    # I

    .prologue
    .line 1032
    const/4 v10, 0x0

    .line 1033
    .local v10, "flags":I
    move/from16 v23, p1

    .line 1034
    .local v23, "serialNumber":I
    const/16 v16, 0x0

    .line 1035
    .local v16, "name":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1036
    .local v12, "iconPath":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 1037
    .local v6, "creationTime":J
    const-wide/16 v14, 0x0

    .line 1038
    .local v14, "lastLoggedInTime":J
    const/16 v21, -0x1

    .line 1039
    .local v21, "profileGroupId":I
    const/16 v19, 0x0

    .line 1040
    .local v19, "partial":Z
    const/4 v11, 0x0

    .line 1041
    .local v11, "guestToRemove":Z
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1043
    .local v22, "restrictions":Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 1046
    .local v9, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v27, Landroid/util/AtomicFile;

    new-instance v30, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ".xml"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v30 .. v32}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1047
    .local v27, "userFile":Landroid/util/AtomicFile;
    invoke-virtual/range {v27 .. v27}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v9

    .line 1048
    .local v9, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .line 1049
    .local v18, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v30, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v30 .. v30}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-interface {v0, v9, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1051
    :cond_0
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v26

    .local v26, "type":I
    const/16 v30, 0x2

    move/from16 v0, v26

    move/from16 v1, v30

    if-eq v0, v1, :cond_1

    .line 1052
    const/16 v30, 0x1

    move/from16 v0, v26

    move/from16 v1, v30

    if-ne v0, v1, :cond_0

    .line 1056
    :cond_1
    const/16 v30, 0x2

    move/from16 v0, v26

    move/from16 v1, v30

    if-eq v0, v1, :cond_3

    .line 1057
    const-string/jumbo v30, "UserManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Unable to read user "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    const/16 v30, 0x0

    .line 1114
    if-eqz v9, :cond_2

    .line 1116
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1058
    :cond_2
    :goto_0
    return-object v30

    .line 1117
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/io/IOException;
    goto :goto_0

    .line 1061
    .end local v8    # "e":Ljava/io/IOException;
    :cond_3
    const/16 v30, 0x2

    move/from16 v0, v26

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    :try_start_2
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "user"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 1062
    const-string/jumbo v30, "id"

    const/16 v31, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v24

    .line 1063
    .local v24, "storedId":I
    move/from16 v0, v24

    move/from16 v1, p1

    if-eq v0, v1, :cond_5

    .line 1064
    const-string/jumbo v30, "UserManagerService"

    const-string/jumbo v31, "User id does not match the file name"

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1065
    const/16 v30, 0x0

    .line 1114
    if-eqz v9, :cond_4

    .line 1116
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1065
    :cond_4
    :goto_1
    return-object v30

    .line 1117
    :catch_1
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1067
    .end local v8    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_4
    const-string/jumbo v30, "serialNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v30

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v23

    .line 1068
    const-string/jumbo v30, "flags"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 1069
    const-string/jumbo v30, "icon"

    const/16 v31, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1070
    .local v12, "iconPath":Ljava/lang/String;
    const-string/jumbo v30, "created"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v30

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 1071
    const-string/jumbo v30, "lastLoggedIn"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v30

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    .line 1072
    const-string/jumbo v30, "profileGroupId"

    .line 1073
    const/16 v31, -0x1

    .line 1072
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    .line 1074
    const-string/jumbo v30, "partial"

    const/16 v31, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1075
    .local v29, "valueString":Ljava/lang/String;
    const-string/jumbo v30, "true"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 1076
    const/16 v19, 0x1

    .line 1078
    :cond_6
    const-string/jumbo v30, "guestToRemove"

    const/16 v31, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1079
    const-string/jumbo v30, "true"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 1080
    const/4 v11, 0x1

    .line 1083
    :cond_7
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    .line 1084
    .end local v16    # "name":Ljava/lang/String;
    .local v17, "outerDepth":I
    :cond_8
    :goto_2
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v26

    const/16 v30, 0x1

    move/from16 v0, v26

    move/from16 v1, v30

    if-eq v0, v1, :cond_c

    .line 1085
    const/16 v30, 0x3

    move/from16 v0, v26

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v17

    if-le v0, v1, :cond_c

    .line 1086
    :cond_9
    const/16 v30, 0x3

    move/from16 v0, v26

    move/from16 v1, v30

    if-eq v0, v1, :cond_8

    const/16 v30, 0x4

    move/from16 v0, v26

    move/from16 v1, v30

    if-eq v0, v1, :cond_8

    .line 1089
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v25

    .line 1090
    .local v25, "tag":Ljava/lang/String;
    const-string/jumbo v30, "name"

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 1091
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v26

    .line 1092
    const/16 v30, 0x4

    move/from16 v0, v26

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    .line 1093
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v16

    .local v16, "name":Ljava/lang/String;
    goto :goto_2

    .line 1095
    .end local v16    # "name":Ljava/lang/String;
    :cond_a
    const-string/jumbo v30, "restrictions"

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 1096
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->readRestrictionsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1111
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "iconPath":Ljava/lang/String;
    .end local v17    # "outerDepth":I
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "storedId":I
    .end local v25    # "tag":Ljava/lang/String;
    .end local v26    # "type":I
    .end local v27    # "userFile":Landroid/util/AtomicFile;
    .end local v29    # "valueString":Ljava/lang/String;
    :catch_2
    move-exception v13

    .line 1114
    .local v13, "ioe":Ljava/io/IOException;
    if-eqz v9, :cond_b

    .line 1116
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 1121
    .end local v13    # "ioe":Ljava/io/IOException;
    :cond_b
    :goto_3
    const/16 v30, 0x0

    return-object v30

    .line 1101
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v26    # "type":I
    .restart local v27    # "userFile":Landroid/util/AtomicFile;
    :cond_c
    :try_start_6
    new-instance v28, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v28

    move/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v12, v10}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1102
    .local v28, "userInfo":Landroid/content/pm/UserInfo;
    move/from16 v0, v23

    move-object/from16 v1, v28

    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 1103
    move-object/from16 v0, v28

    iput-wide v6, v0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 1104
    move-object/from16 v0, v28

    iput-wide v14, v0, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 1105
    move/from16 v0, v19

    move-object/from16 v1, v28

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 1106
    move-object/from16 v0, v28

    iput-boolean v11, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 1107
    move/from16 v0, v21

    move-object/from16 v1, v28

    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1114
    if-eqz v9, :cond_d

    .line 1116
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1109
    :cond_d
    :goto_4
    return-object v28

    .line 1117
    :catch_3
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 1112
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v26    # "type":I
    .end local v27    # "userFile":Landroid/util/AtomicFile;
    .end local v28    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_4
    move-exception v20

    .line 1114
    .local v20, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v9, :cond_b

    .line 1116
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    .line 1117
    :catch_5
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_3

    .end local v8    # "e":Ljava/io/IOException;
    .end local v20    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v13    # "ioe":Ljava/io/IOException;
    :catch_6
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 1113
    .end local v8    # "e":Ljava/io/IOException;
    .end local v13    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v30

    .line 1114
    if-eqz v9, :cond_e

    .line 1116
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 1113
    :cond_e
    :goto_5
    throw v30

    .line 1117
    :catch_7
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_5
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .locals 5
    .param p1, "parent"    # Ljava/io/File;

    .prologue
    .line 1538
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1539
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 1540
    .local v2, "files":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 1541
    .local v1, "filename":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1542
    .local v0, "child":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 1540
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1545
    .end local v0    # "child":Ljava/io/File;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "files":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1537
    return-void
.end method

.method private removeRestrictionsForUser(IZ)V
    .locals 2
    .param p1, "userHandle"    # I
    .param p2, "unhideApps"    # Z

    .prologue
    .line 1606
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1608
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->setUserRestrictions(Landroid/os/Bundle;I)V

    .line 1610
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictions(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1612
    if-eqz p2, :cond_0

    .line 1613
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->unhideAllInstalledAppsForUser(I)V

    .line 1605
    :cond_0
    return-void

    .line 1606
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeUserStateLocked(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1522
    const-string/jumbo v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeUserStateLocked userHandle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUserLILPw(Lcom/android/server/pm/UserManagerService;I)V

    .line 1527
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1529
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1530
    .local v0, "userFile":Landroid/util/AtomicFile;
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 1532
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    .line 1533
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIdsLocked()V

    .line 1534
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 1521
    return-void
.end method

.method private scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V
    .locals 4
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v2, 0x1

    .line 883
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 884
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 885
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 882
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private sendProfileRemovedBroadcast(II)V
    .locals 4
    .param p1, "parentUserId"    # I
    .param p2, "removedUserId"    # I

    .prologue
    .line 1549
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1550
    .local v0, "managedProfileIntent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1552
    const-string/jumbo v1, "android.intent.extra.USER"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1553
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1548
    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 472
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, "changedIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 475
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 471
    return-void
.end method

.method private static setSerialNumber(Ljava/io/File;I)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "serialNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1985
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1986
    .local v0, "buf":[B
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user.serial"

    sget v4, Landroid/system/OsConstants;->XATTR_CREATE:I

    invoke-static {v2, v3, v0, v4}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1983
    return-void

    .line 1987
    .end local v0    # "buf":[B
    :catch_0
    move-exception v1

    .line 1988
    .local v1, "e":Landroid/system/ErrnoException;
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method private setUserRestrictionsInternalLocked(Landroid/os/Bundle;I)V
    .locals 6
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    .prologue
    .line 610
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 611
    .local v1, "userRestrictions":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 612
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 613
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 615
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v4, v1, p2}, Lcom/android/internal/app/IAppOpsService;->setUserRestrictions(Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 621
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V

    .line 609
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v4, "UserManagerService"

    const-string/jumbo v5, "Unable to notify AppOpsService of UserRestrictions"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 618
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    .line 619
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 618
    throw v4
.end method

.method private unhideAllInstalledAppsForUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1617
    return-void
.end method

.method private updateUserIdsLocked()V
    .locals 6

    .prologue
    .line 1875
    const/4 v4, 0x0

    .line 1876
    .local v4, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 1877
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_0

    .line 1878
    add-int/lit8 v4, v4, 0x1

    .line 1876
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1881
    :cond_1
    new-array v3, v4, [I

    .line 1882
    .local v3, "newUsers":[I
    const/4 v1, 0x0

    .line 1883
    .local v1, "n":I
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 1884
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_2

    .line 1885
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "n":I
    .local v2, "n":I
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v3, v1

    move v1, v2

    .line 1883
    .end local v2    # "n":I
    .restart local v1    # "n":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1888
    :cond_3
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    .line 1874
    return-void
.end method

.method private upgradeIfNecessaryLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 823
    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 824
    .local v1, "userVersion":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 826
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 827
    .local v0, "user":Landroid/content/pm/UserInfo;
    const-string/jumbo v2, "Primary"

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 828
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 829
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V

    .line 831
    :cond_0
    const/4 v1, 0x1

    .line 834
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 836
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 837
    .restart local v0    # "user":Landroid/content/pm/UserInfo;
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_2

    .line 838
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 839
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V

    .line 841
    :cond_2
    const/4 v1, 0x2

    .line 845
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4

    .line 846
    const/4 v1, 0x4

    .line 849
    :cond_4
    if-ge v1, v5, :cond_5

    .line 850
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    .line 851
    const/4 v1, 0x5

    .line 854
    :cond_5
    if-ge v1, v5, :cond_6

    .line 855
    const-string/jumbo v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "User version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " didn\'t upgrade as expected to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :goto_0
    return-void

    .line 858
    :cond_6
    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    .line 859
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V

    goto :goto_0
.end method

.method static writeApplicationRestrictionsLocked(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .locals 6
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "restrictionsFile"    # Landroid/util/AtomicFile;

    .prologue
    .line 1755
    const/4 v2, 0x0

    .line 1757
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 1758
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1760
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1761
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1762
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1763
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1765
    const-string/jumbo v4, "restrictions"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1766
    invoke-static {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1767
    const-string/jumbo v4, "restrictions"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1769
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1770
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1754
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    return-void

    .line 1771
    :catch_0
    move-exception v1

    .line 1772
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1773
    const-string/jumbo v4, "UserManagerService"

    const-string/jumbo v5, "Error writing application restrictions list"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private writeApplicationRestrictionsLocked(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    .line 1746
    new-instance v0, Landroid/util/AtomicFile;

    .line 1747
    new-instance v1, Ljava/io/File;

    invoke-static {p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    .line 1748
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1747
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1746
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1749
    .local v0, "restrictionsFile":Landroid/util/AtomicFile;
    invoke-static {p2, v0}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLocked(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    .line 1745
    return-void
.end method

.method private writeBitmapLocked(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "info"    # Landroid/content/pm/UserInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 695
    if-nez p2, :cond_0

    .line 696
    iput-object v6, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    .line 697
    return-void

    .line 701
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 702
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "photo.png"

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 703
    .local v2, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "photo.png.tmp"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 704
    .local v5, "tmp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 705
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 707
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 708
    const/16 v7, 0x1f9

    .line 709
    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 706
    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 712
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v4, "os":Ljava/io/FileOutputStream;
    const/16 v7, 0x64

    invoke-virtual {p2, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 713
    invoke-virtual {v5, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    .line 712
    if-eqz v6, :cond_2

    .line 714
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 717
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 721
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 692
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "tmp":Ljava/io/File;
    :goto_1
    return-void

    .line 718
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "tmp":Ljava/io/File;
    :catch_0
    move-exception v3

    .local v3, "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 722
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .end local v5    # "tmp":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 723
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v6, "UserManagerService"

    const-string/jumbo v7, "Error setting photo for user "

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "restrictionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1172
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 1173
    const/4 v1, 0x0

    invoke-interface {p1, v1, p3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1171
    :cond_0
    return-void
.end method

.method private static writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 13
    .param p0, "restrictions"    # Landroid/os/Bundle;
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 1779
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1780
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1781
    .local v5, "value":Ljava/lang/Object;
    const-string/jumbo v7, "entry"

    invoke-interface {p1, v12, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1782
    const-string/jumbo v7, "key"

    invoke-interface {p1, v12, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1784
    instance-of v7, v5, Ljava/lang/Boolean;

    if-eqz v7, :cond_1

    .line 1785
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "b"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1786
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1818
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    :goto_1
    const-string/jumbo v7, "entry"

    invoke-interface {p1, v12, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1787
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    .line 1788
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "i"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1789
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 1790
    :cond_2
    if-eqz v5, :cond_3

    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 1791
    :cond_3
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "s"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1792
    if-eqz v5, :cond_4

    check-cast v5, Ljava/lang/String;

    .end local v5    # "value":Ljava/lang/Object;
    :goto_2
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .restart local v5    # "value":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v5, ""

    goto :goto_2

    .line 1793
    :cond_5
    instance-of v7, v5, Landroid/os/Bundle;

    if-eqz v7, :cond_6

    .line 1794
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "B"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1795
    check-cast v5, Landroid/os/Bundle;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-static {v5, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_1

    .line 1796
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v7, v5, [Landroid/os/Parcelable;

    if-eqz v7, :cond_8

    .line 1797
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "BA"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v0, v5

    .line 1798
    check-cast v0, [Landroid/os/Parcelable;

    .line 1799
    .local v0, "array":[Landroid/os/Parcelable;
    array-length v9, v0

    move v7, v8

    :goto_3
    if-ge v7, v9, :cond_0

    aget-object v4, v0, v7

    .line 1800
    .local v4, "parcelable":Landroid/os/Parcelable;
    instance-of v10, v4, Landroid/os/Bundle;

    if-nez v10, :cond_7

    .line 1801
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "bundle-array can only hold Bundles"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1803
    :cond_7
    const-string/jumbo v10, "entry"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1804
    const-string/jumbo v10, "type"

    const-string/jumbo v11, "B"

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1805
    check-cast v4, Landroid/os/Bundle;

    .end local v4    # "parcelable":Landroid/os/Parcelable;
    invoke-static {v4, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1806
    const-string/jumbo v10, "entry"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1799
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1809
    .end local v0    # "array":[Landroid/os/Parcelable;
    :cond_8
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "sa"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v6, v5

    .line 1810
    check-cast v6, [Ljava/lang/String;

    .line 1811
    .local v6, "values":[Ljava/lang/String;
    const-string/jumbo v7, "m"

    array-length v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1812
    array-length v9, v6

    move v7, v8

    :goto_4
    if-ge v7, v9, :cond_0

    aget-object v1, v6, v7

    .line 1813
    .local v1, "choice":Ljava/lang/String;
    const-string/jumbo v10, "value"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1814
    if-eqz v1, :cond_9

    .end local v1    # "choice":Ljava/lang/String;
    :goto_5
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1815
    const-string/jumbo v10, "value"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1812
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1814
    .restart local v1    # "choice":Ljava/lang/String;
    :cond_9
    const-string/jumbo v1, ""

    goto :goto_5

    .line 1778
    .end local v1    # "choice":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "values":[Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private writeRestrictionsLocked(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 994
    const-string/jumbo v0, "restrictions"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 995
    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 996
    const-string/jumbo v0, "no_modify_accounts"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 997
    const-string/jumbo v0, "no_install_apps"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 998
    const-string/jumbo v0, "no_uninstall_apps"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 999
    const-string/jumbo v0, "no_share_location"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1001
    const-string/jumbo v0, "no_install_unknown_sources"

    .line 1000
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1002
    const-string/jumbo v0, "no_config_bluetooth"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1003
    const-string/jumbo v0, "no_usb_file_transfer"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1004
    const-string/jumbo v0, "no_config_credentials"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1005
    const-string/jumbo v0, "no_remove_user"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1006
    const-string/jumbo v0, "no_debugging_features"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1007
    const-string/jumbo v0, "no_config_vpn"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1008
    const-string/jumbo v0, "no_config_tethering"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1009
    const-string/jumbo v0, "no_network_reset"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1010
    const-string/jumbo v0, "no_factory_reset"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1011
    const-string/jumbo v0, "no_add_user"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1012
    const-string/jumbo v0, "ensure_verify_apps"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1013
    const-string/jumbo v0, "no_config_cell_broadcasts"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1014
    const-string/jumbo v0, "no_config_mobile_networks"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1015
    const-string/jumbo v0, "no_control_apps"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1016
    const-string/jumbo v0, "no_physical_media"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1017
    const-string/jumbo v0, "no_unmute_microphone"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1018
    const-string/jumbo v0, "no_adjust_volume"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1019
    const-string/jumbo v0, "no_outgoing_calls"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1020
    const-string/jumbo v0, "no_sms"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1021
    const-string/jumbo v0, "no_fun"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1022
    const-string/jumbo v0, "no_create_windows"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1023
    const-string/jumbo v0, "no_cross_profile_copy_paste"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1024
    const-string/jumbo v0, "no_outgoing_beam"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1025
    const-string/jumbo v0, "no_wallpaper"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1026
    const-string/jumbo v0, "no_safe_boot"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1027
    const-string/jumbo v0, "allow_parent_profile_app_linking"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1028
    const-string/jumbo v0, "restrictions"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 993
    return-void
.end method

.method private writeUserListLocked()V
    .locals 10

    .prologue
    .line 956
    const/4 v2, 0x0

    .line 957
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Landroid/util/AtomicFile;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 959
    .local v6, "userListFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 960
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 963
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 964
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 965
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 966
    const-string/jumbo v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 968
    const-string/jumbo v7, "users"

    const/4 v8, 0x0

    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 969
    const-string/jumbo v7, "nextSerialNumber"

    iget v8, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v4, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 970
    const-string/jumbo v7, "version"

    iget v8, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v4, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 972
    const-string/jumbo v7, "guestRestrictions"

    const/4 v8, 0x0

    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 973
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {p0, v4, v7}, Lcom/android/server/pm/UserManagerService;->writeRestrictionsLocked(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    .line 974
    const-string/jumbo v7, "guestRestrictions"

    const/4 v8, 0x0

    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 975
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 976
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 977
    .local v5, "user":Landroid/content/pm/UserInfo;
    const-string/jumbo v7, "user"

    const/4 v8, 0x0

    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 978
    const-string/jumbo v7, "id"

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v4, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 979
    const-string/jumbo v7, "user"

    const/4 v8, 0x0

    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 975
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 982
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    const-string/jumbo v7, "users"

    const/4 v8, 0x0

    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 984
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 985
    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return-void

    .line 986
    :catch_0
    move-exception v1

    .line 987
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 988
    const-string/jumbo v7, "UserManagerService"

    const-string/jumbo v8, "Error writing user list"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private writeUserLocked(Landroid/content/pm/UserInfo;)V
    .locals 10
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 897
    const/4 v1, 0x0

    .line 898
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 900
    .local v5, "userFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 901
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 904
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 905
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 906
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 907
    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 909
    const-string/jumbo v6, "user"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 910
    const-string/jumbo v6, "id"

    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 911
    const-string/jumbo v6, "serialNumber"

    iget v7, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 912
    const-string/jumbo v6, "flags"

    iget v7, p1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 913
    const-string/jumbo v6, "created"

    iget-wide v8, p1, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 914
    const-string/jumbo v6, "lastLoggedIn"

    .line 915
    iget-wide v8, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 914
    const/4 v8, 0x0

    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 916
    iget-object v6, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 917
    const-string/jumbo v6, "icon"

    iget-object v7, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 919
    :cond_0
    iget-boolean v6, p1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v6, :cond_1

    .line 920
    const-string/jumbo v6, "partial"

    const-string/jumbo v7, "true"

    const/4 v8, 0x0

    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 922
    :cond_1
    iget-boolean v6, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v6, :cond_2

    .line 923
    const-string/jumbo v6, "guestToRemove"

    const-string/jumbo v7, "true"

    const/4 v8, 0x0

    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 925
    :cond_2
    iget v6, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 926
    const-string/jumbo v6, "profileGroupId"

    .line 927
    iget v7, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 926
    const/4 v8, 0x0

    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 930
    :cond_3
    const-string/jumbo v6, "name"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 931
    iget-object v6, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 932
    const-string/jumbo v6, "name"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 933
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 934
    .local v3, "restrictions":Landroid/os/Bundle;
    if-eqz v3, :cond_4

    .line 935
    invoke-direct {p0, v4, v3}, Lcom/android/server/pm/UserManagerService;->writeRestrictionsLocked(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    .line 937
    :cond_4
    const-string/jumbo v6, "user"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 939
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 940
    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "restrictions":Landroid/os/Bundle;
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    return-void

    .line 941
    :catch_0
    move-exception v2

    .line 942
    .local v2, "ioe":Ljava/lang/Exception;
    const-string/jumbo v6, "UserManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error writing user info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {v5, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public canAddMoreManagedProfiles()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 633
    const-string/jumbo v3, "check if more managed profiles can be added."

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 634
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 635
    return v2

    .line 637
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 638
    const-string/jumbo v4, "android.software.managed_users"

    .line 637
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 639
    return v2

    .line 641
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 643
    const/16 v4, 0x20

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/UserManagerService;->numberOfUsersOfTypeLocked(IZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-lt v4, v1, :cond_2

    monitor-exit v3

    .line 645
    return v2

    .line 647
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLocked()I

    move-result v0

    .line 649
    .local v0, "usersCount":I
    if-eq v0, v1, :cond_3

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-ge v0, v4, :cond_4

    :cond_3
    :goto_0
    monitor-exit v3

    return v1

    :cond_4
    move v1, v2

    goto :goto_0

    .line 641
    .end local v0    # "usersCount":I
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method public createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 1243
    const-string/jumbo v0, "Only the system can create users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1244
    if-eqz p3, :cond_0

    .line 1245
    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "Only user owner can have profiles"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const/4 v0, 0x0

    return-object v0

    .line 1248
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 1253
    const-string/jumbo v0, "Only the system can create users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1254
    const-string/jumbo v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createUser name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const/16 v0, -0x2710

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    .line 2018
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 2020
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission Denial: can\'t dump UserManager from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2021
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 2020
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2022
    const-string/jumbo v6, ", uid="

    .line 2020
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2022
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2020
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2023
    const-string/jumbo v6, " without permission "

    .line 2020
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2024
    const-string/jumbo v6, "android.permission.DUMP"

    .line 2020
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2025
    return-void

    .line 2028
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2029
    .local v2, "now":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2030
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2031
    :try_start_0
    const-string/jumbo v5, "Users:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2032
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 2033
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 2034
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-nez v4, :cond_1

    .line 2032
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2035
    :cond_1
    const-string/jumbo v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v5, " serialNo="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2036
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, " <removing> "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2037
    :cond_2
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, " <partial>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2038
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2039
    const-string/jumbo v5, "    Created: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2040
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->creationTime:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_4

    .line 2041
    const-string/jumbo v5, "<unknown>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2048
    :goto_2
    const-string/jumbo v5, "    Last logged in: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2049
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_5

    .line 2050
    const-string/jumbo v5, "<unknown>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2030
    .end local v0    # "i":I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 2043
    .restart local v0    # "i":I
    .restart local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_4
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2044
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->creationTime:J

    sub-long v8, v2, v8

    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2045
    const-string/jumbo v5, " ago"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 2052
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2053
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    sub-long v8, v2, v8

    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2054
    const-string/jumbo v5, " ago"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2055
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit v6

    .line 2017
    return-void
.end method

.method public exists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 425
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method finishRemoveUser(I)V
    .locals 12
    .param p1, "userHandle"    # I

    .prologue
    .line 1485
    const-string/jumbo v0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "finishRemoveUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1490
    .local v10, "ident":J
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1491
    .local v1, "addedIntent":Landroid/content/Intent;
    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1492
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1493
    const-string/jumbo v3, "android.permission.MANAGE_USERS"

    .line 1495
    new-instance v4, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v4, p0, p1}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    .line 1515
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1492
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1517
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1484
    return-void

    .line 1516
    .end local v1    # "addedIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    .line 1517
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1516
    throw v0
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1558
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1563
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 1564
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1567
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1569
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLocked(Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1565
    :cond_0
    const-string/jumbo v0, "Only system can get restrictions for other users/apps"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    goto :goto_0

    .line 1567
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getCredentialOwnerProfile(I)I
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 343
    const-string/jumbo v1, "get the credential owner"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 345
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 346
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 347
    .local v0, "profileParent":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 348
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    .line 353
    return p1

    .line 345
    .end local v0    # "profileParent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 535
    const-string/jumbo v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 537
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 358
    const-string/jumbo v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLocked(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 359
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getting profiles related to user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 307
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 309
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 310
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfilesLocked(IZ)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 313
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    return-object v3

    .line 309
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 312
    :catchall_1
    move-exception v2

    .line 313
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 312
    throw v2
.end method

.method public getSwitchedUserId()I
    .locals 3

    .prologue
    .line 1867
    const-string/jumbo v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSwitchedUserId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/UserManagerService;->mSwitchedUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    iget v0, p0, Lcom/android/server/pm/UserManagerService;->mSwitchedUserId:I

    return v0
.end method

.method public getUserCreationTime(I)J
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    .line 1844
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1845
    .local v0, "callingUserId":I
    const/4 v2, 0x0

    .line 1846
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1847
    if-ne v0, p1, :cond_1

    .line 1848
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    :goto_0
    monitor-exit v4

    .line 1856
    if-nez v2, :cond_2

    .line 1857
    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "userHandle can only be the calling user or a managed profile associated with this user"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1850
    .restart local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1851
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, v0, :cond_0

    .line 1852
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 1846
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1860
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    iget-wide v4, v2, Landroid/content/pm/UserInfo;->creationTime:J

    return-wide v4
.end method

.method public getUserHandle(I)I
    .locals 7
    .param p1, "userSerialNumber"    # I

    .prologue
    .line 1832
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1833
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    const/4 v2, 0x0

    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_1

    aget v1, v4, v2

    .line 1834
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1835
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    iget v6, v0, Landroid/content/pm/UserInfo;->serialNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, p1, :cond_0

    monitor-exit v3

    return v1

    .line 1833
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1838
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    .end local v1    # "userId":I
    :cond_1
    const/4 v2, -0x1

    monitor-exit v3

    return v2

    .line 1832
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x0

    .line 481
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 482
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 483
    .local v3, "info":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_0

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_1

    .line 484
    :cond_0
    const-string/jumbo v4, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getUserIcon: unknown user #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 485
    return-object v8

    .line 487
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v0, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 488
    .local v0, "callingGroupId":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    .line 489
    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v0, v4, :cond_3

    .line 490
    :cond_2
    const-string/jumbo v4, "get the icon of a user who is not related"

    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 492
    :cond_3
    iget-object v4, v3, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_4

    monitor-exit v5

    .line 493
    return-object v8

    .line 495
    :cond_4
    :try_start_2
    iget-object v2, v3, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v2, "iconPath":Ljava/lang/String;
    monitor-exit v5

    .line 500
    :try_start_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    .line 499
    invoke-static {v4, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    return-object v4

    .line 481
    .end local v0    # "callingGroupId":I
    .end local v2    # "iconPath":Ljava/lang/String;
    .end local v3    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 501
    .restart local v0    # "callingGroupId":I
    .restart local v2    # "iconPath":Ljava/lang/String;
    .restart local v3    # "info":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    .line 502
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "UserManagerService"

    const-string/jumbo v5, "Couldn\'t find icon file"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    return-object v8
.end method

.method public getUserIds()[I
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 733
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getUserIdsLPr()[I
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    return-object v0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 397
    const-string/jumbo v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 398
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 563
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 564
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 565
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 563
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getUserSerialNumber(I)I
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 1824
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1825
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    return v0

    .line 1826
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v0

    .line 1824
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUsers(Z)Ljava/util/List;
    .locals 6
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    const-string/jumbo v3, "query users"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 287
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 288
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 290
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 291
    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_1

    .line 289
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_1
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 295
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 287
    .end local v0    # "i":I
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v0    # "i":I
    .restart local v2    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_3
    monitor-exit v4

    .line 298
    return-object v2
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 553
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 555
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 553
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method isInitialized(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2084
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isRestricted()Z
    .locals 2

    .prologue
    .line 405
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 406
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public makeInitialized(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 508
    const-string/jumbo v1, "makeInitialized"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 509
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 511
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_1

    .line 512
    :cond_0
    const-string/jumbo v1, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeInitialized: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_1
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_2

    .line 515
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 516
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    .line 507
    return-void

    .line 509
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public markGuestForDeletion(I)Z
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1378
    const-string/jumbo v3, "Only the system can remove users"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1379
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    .line 1380
    const-string/jumbo v4, "no_remove_user"

    .line 1379
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1381
    const-string/jumbo v3, "UserManagerService"

    const-string/jumbo v4, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    return v5

    .line 1385
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1388
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1389
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1390
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz p1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1408
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1391
    return v5

    .line 1390
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1393
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1408
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1394
    return v5

    .line 1401
    :cond_3
    const/4 v3, 0x1

    :try_start_5
    iput-boolean v3, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 1404
    iget v3, v2, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 1405
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1408
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1410
    return v6

    .line 1388
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit v4

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1407
    :catchall_1
    move-exception v3

    .line 1408
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1407
    throw v3
.end method

.method public onUserForeground(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 1896
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1897
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1898
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1899
    .local v0, "now":J
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_1

    .line 1900
    :cond_0
    const-string/jumbo v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "userForeground: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1901
    return-void

    .line 1903
    :cond_1
    :try_start_1
    const-string/jumbo v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Swtich User Id from"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/pm/UserManagerService;->mSwitchedUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "to"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mSwitchedUserId:I

    .line 1905
    const-wide v6, 0xdc46c32800L

    cmp-long v3, v0, v6

    if-lez v3, :cond_2

    .line 1906
    iput-wide v0, v2, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 1907
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUserLocked(Landroid/content/pm/UserInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v4

    .line 1895
    return-void

    .line 1896
    .end local v0    # "now":J
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public removeRestrictions()V
    .locals 2

    .prologue
    .line 1600
    const-string/jumbo v1, "Only system can remove restrictions"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1601
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1602
    .local v0, "userHandle":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/UserManagerService;->removeRestrictionsForUser(IZ)V

    .line 1599
    return-void
.end method

.method public removeUser(I)Z
    .locals 10
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1419
    const-string/jumbo v7, "Only the system can remove users"

    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 1420
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v7

    .line 1421
    const-string/jumbo v8, "no_remove_user"

    .line 1420
    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1422
    const-string/jumbo v5, "UserManagerService"

    const-string/jumbo v7, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    return v6

    .line 1426
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1429
    .local v2, "ident":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1430
    :try_start_1
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1431
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-eqz p1, :cond_1

    if-nez v4, :cond_2

    :cond_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1480
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1432
    return v6

    .line 1431
    :cond_2
    :try_start_3
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1438
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v9, 0x1

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1441
    :try_start_4
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v8, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1448
    :goto_0
    const/4 v8, 0x1

    :try_start_5
    iput-boolean v8, v4, Landroid/content/pm/UserInfo;->partial:Z

    .line 1451
    iget v8, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 1452
    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v7

    .line 1455
    iget v7, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 1456
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    .line 1455
    if-eqz v7, :cond_3

    .line 1459
    iget v7, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(II)V

    .line 1462
    :cond_3
    const-string/jumbo v7, "UserManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Stopping user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1465
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    .line 1466
    new-instance v8, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v8, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1465
    invoke-interface {v7, p1, v8}, Landroid/app/IActivityManager;->stopUser(ILandroid/app/IStopUserCallback;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v1

    .line 1478
    .local v1, "res":I
    if-nez v1, :cond_4

    .line 1480
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1478
    return v5

    .line 1442
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 1443
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_8
    const-string/jumbo v8, "UserManagerService"

    const-string/jumbo v9, "Unable to notify AppOpsService of removing user"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 1429
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v5

    :try_start_9
    monitor-exit v7

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1479
    :catchall_1
    move-exception v5

    .line 1480
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1479
    throw v5

    .line 1475
    .restart local v4    # "user":Landroid/content/pm/UserInfo;
    :catch_1
    move-exception v0

    .line 1480
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1476
    return v6

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "res":I
    :cond_4
    move v5, v6

    .line 1478
    goto :goto_1
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    .line 1576
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-ne v1, p3, :cond_2

    .line 1577
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1580
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1581
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1582
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackage(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v2

    .line 1589
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/UserManagerService;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1591
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1592
    .local v0, "changeIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1593
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1594
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1575
    .end local v0    # "changeIntent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 1578
    :cond_2
    const-string/jumbo v1, "Only system can set restrictions for other users/apps"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    goto :goto_0

    .line 1585
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLocked(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1580
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .prologue
    .line 543
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 546
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 547
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 542
    return-void

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setSystemControlledUserRestriction(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 583
    const-string/jumbo v1, "setSystemControlledUserRestriction"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    .line 584
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 585
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 586
    .local v0, "restrictions":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 587
    invoke-direct {p0, v0, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestrictionsInternalLocked(Landroid/os/Bundle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 582
    return-void

    .line 584
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setUserEnabled(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 385
    const-string/jumbo v1, "enable user"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 387
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 388
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    .line 384
    return-void

    .line 389
    :cond_1
    :try_start_1
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 390
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 386
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 453
    const-string/jumbo v3, "update users"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 454
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 456
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 457
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 458
    .local v2, "info":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_1

    .line 459
    :cond_0
    const-string/jumbo v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUserIcon: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 467
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 460
    return-void

    .line 462
    :cond_1
    :try_start_3
    invoke-direct {p0, v2, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLocked(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    .line 463
    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v4

    .line 465
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 467
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 452
    return-void

    .line 456
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 466
    :catchall_1
    move-exception v3

    .line 467
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    throw v3
.end method

.method public setUserName(ILjava/lang/String;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 432
    const-string/jumbo v2, "rename users"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 435
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 436
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_1

    .line 437
    :cond_0
    const-string/jumbo v2, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUserName: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 438
    return-void

    .line 440
    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    :goto_0
    monitor-exit v3

    .line 446
    if-eqz v0, :cond_3

    .line 447
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    .line 431
    :cond_3
    return-void

    .line 441
    :cond_4
    :try_start_2
    iput-object p2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 442
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    const/4 v0, 0x1

    goto :goto_0

    .line 434
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setUserRestriction(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 571
    const-string/jumbo v1, "setUserRestriction"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 572
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 573
    :try_start_0
    sget-object v1, Lcom/android/server/pm/UserManagerService;->SYSTEM_CONTROLLED_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    invoke-virtual {p0, p3}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 575
    .local v0, "restrictions":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 576
    invoke-direct {p0, v0, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestrictionsInternalLocked(Landroid/os/Bundle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "restrictions":Landroid/os/Bundle;
    :cond_0
    monitor-exit v2

    .line 570
    return-void

    .line 572
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setUserRestrictions(Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    .prologue
    .line 593
    const-string/jumbo v3, "setUserRestrictions"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    .line 594
    if-nez p1, :cond_0

    return-void

    .line 596
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 597
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 599
    .local v2, "oldUserRestrictions":Landroid/os/Bundle;
    sget-object v3, Lcom/android/server/pm/UserManagerService;->SYSTEM_CONTROLLED_RESTRICTIONS:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 600
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 602
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 596
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "oldUserRestrictions":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 605
    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "oldUserRestrictions":Landroid/os/Bundle;
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->setUserRestrictionsInternalLocked(Landroid/os/Bundle;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 592
    return-void
.end method

.method systemReady()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 243
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v6

    .line 244
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 246
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v3, "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 248
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 249
    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_0

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v5, :cond_1

    :cond_0
    if-eqz v2, :cond_1

    .line 250
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 254
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 255
    .restart local v4    # "ui":Landroid/content/pm/UserInfo;
    const-string/jumbo v5, "UserManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Removing partially created user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 256
    const-string/jumbo v9, " (name="

    .line 255
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 256
    iget-object v9, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 255
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 256
    const-string/jumbo v9, ")"

    .line 255
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->removeUserStateLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_3
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v6

    .line 261
    invoke-virtual {p0, v10}, Lcom/android/server/pm/UserManagerService;->onUserForeground(I)V

    .line 263
    const-string/jumbo v5, "appops"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 262
    invoke-static {v5}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 264
    const/4 v2, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 266
    :try_start_3
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictions:Landroid/util/SparseArray;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    aget v7, v7, v2

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    aget v7, v7, v2

    invoke-interface {v6, v5, v7}, Lcom/android/internal/app/IAppOpsService;->setUserRestrictions(Landroid/os/Bundle;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 264
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 244
    .end local v2    # "i":I
    .end local v3    # "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v7

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 243
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 267
    .restart local v2    # "i":I
    .restart local v3    # "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "UserManagerService"

    const-string/jumbo v6, "Unable to notify AppOpsService of UserRestrictions"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 271
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    const/4 v0, 0x0

    .line 272
    .local v0, "currentGuestUser":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 273
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUserLocked()Landroid/content/pm/UserInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v0

    .local v0, "currentGuestUser":Landroid/content/pm/UserInfo;
    monitor-exit v5

    .line 275
    if-eqz v0, :cond_5

    .line 276
    const-string/jumbo v5, "no_config_wifi"

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    .line 275
    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 242
    :cond_5
    :goto_4
    return-void

    .line 272
    .local v0, "currentGuestUser":Landroid/content/pm/UserInfo;
    :catchall_2
    move-exception v6

    monitor-exit v5

    throw v6

    .line 280
    .local v0, "currentGuestUser":Landroid/content/pm/UserInfo;
    :cond_6
    const-string/jumbo v5, "no_config_wifi"

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v7, 0x1

    invoke-virtual {p0, v5, v7, v6}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    goto :goto_4
.end method
