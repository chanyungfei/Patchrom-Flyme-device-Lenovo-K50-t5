.class public Lcom/mediatek/recovery/PackageManagerRecovery;
.super Lcom/mediatek/recovery/AbstractRecoveryMethod;
.source "PackageManagerRecovery.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private dataDir:Ljava/io/File;

.field private mAppDataDir:Ljava/io/File;

.field private mBackupSettingsFilename:Ljava/io/File;

.field private mInstaller:Lcom/android/server/pm/Installer;

.field private final mInstallerConnection:Lcom/android/internal/os/InstallerConnection;

.field private mSettingsFilename:Ljava/io/File;

.field private mSystemDir:Ljava/io/File;

.field private mUserAppDataDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mediatek/recovery/AbstractRecoveryMethod;-><init>()V

    .line 16
    const-string/jumbo v0, "PackageManagerRecovery"

    iput-object v0, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/android/server/pm/Installer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->mInstaller:Lcom/android/server/pm/Installer;

    .line 18
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->dataDir:Ljava/io/File;

    .line 19
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->dataDir:Ljava/io/File;

    const-string/jumbo v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->mAppDataDir:Ljava/io/File;

    .line 20
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->dataDir:Ljava/io/File;

    const-string/jumbo v2, "user"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->mUserAppDataDir:Ljava/io/File;

    .line 21
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->dataDir:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->mSystemDir:Ljava/io/File;

    .line 22
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->mSettingsFilename:Ljava/io/File;

    .line 23
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->mBackupSettingsFilename:Ljava/io/File;

    .line 24
    new-instance v0, Lcom/android/internal/os/InstallerConnection;

    invoke-direct {v0}, Lcom/android/internal/os/InstallerConnection;-><init>()V

    iput-object v0, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->mInstallerConnection:Lcom/android/internal/os/InstallerConnection;

    .line 15
    return-void
.end method

.method private getDataPathForUser(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 111
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->mUserAppDataDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateBackupFile(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 119
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 120
    const-string/jumbo v2, "package-restrictions-backup.xml"

    .line 119
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateFile(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 115
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "package-restrictions.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateRecoveryFile(I)Ljava/io/File;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 125
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 126
    const-string/jumbo v2, "package-restrictions-recovery.xml"

    .line 125
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private recoverSettings(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_0
    iget-object v9, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 39
    const-string/jumbo v9, "PackageManagerRecovery"

    const-string/jumbo v10, "Recovery remove settings backup file"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v9, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 42
    :cond_0
    iget-object v9, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 43
    const-string/jumbo v9, "PackageManagerRecovery"

    const-string/jumbo v10, "Recovery try to remove settings file"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v9, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_8

    .line 51
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 53
    .local v8, "user":Landroid/content/pm/UserInfo;
    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    if-nez v9, :cond_2

    .line 54
    iget-object v0, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->mAppDataDir:Ljava/io/File;

    .line 58
    .local v0, "dataPath":Ljava/io/File;
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "files":[Ljava/lang/String;
    if-nez v2, :cond_3

    .line 60
    return-void

    .line 46
    .end local v0    # "dataPath":Ljava/io/File;
    .end local v2    # "files":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "PackageManagerRecovery"

    const-string/jumbo v10, "Recovery cannot remove settings or backup file"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "i":I
    .restart local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9}, Lcom/mediatek/recovery/PackageManagerRecovery;->getDataPathForUser(I)Ljava/io/File;

    move-result-object v0

    .restart local v0    # "dataPath":Ljava/io/File;
    goto :goto_2

    .line 63
    .restart local v2    # "files":[Ljava/lang/String;
    :cond_3
    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9}, Lcom/mediatek/recovery/PackageManagerRecovery;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v6

    .line 64
    .local v6, "lastUserStateFile":Ljava/io/File;
    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9}, Lcom/mediatek/recovery/PackageManagerRecovery;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v5

    .line 65
    .local v5, "lastUserStateBackupFile":Ljava/io/File;
    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9}, Lcom/mediatek/recovery/PackageManagerRecovery;->getUserPackagesStateRecoveryFile(I)Ljava/io/File;

    move-result-object v7

    .line 69
    .local v7, "recoverFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 70
    invoke-virtual {v5, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 75
    :cond_4
    :goto_3
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    array-length v9, v2

    if-ge v4, v9, :cond_7

    .line 76
    iget-object v9, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->mInstaller:Lcom/android/server/pm/Installer;

    aget-object v10, v2, v4

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10, v11}, Lcom/android/server/pm/Installer;->changeUidRoot(Ljava/lang/String;I)I

    move-result v9

    if-gez v9, :cond_5

    .line 77
    const-string/jumbo v9, "PackageManagerRecovery"

    .line 78
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Change data folder uid to root of package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v2, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 77
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 71
    .end local v4    # "j":I
    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 72
    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_3

    .line 50
    .restart local v4    # "j":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 35
    .end local v0    # "dataPath":Ljava/io/File;
    .end local v2    # "files":[Ljava/lang/String;
    .end local v4    # "j":I
    .end local v5    # "lastUserStateBackupFile":Ljava/io/File;
    .end local v6    # "lastUserStateFile":Ljava/io/File;
    .end local v7    # "recoverFile":Ljava/io/File;
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_8
    return-void
.end method

.method private restoreRestrictions(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const-string/jumbo v5, "PackageManagerRecovery"

    const-string/jumbo v6, "Trying to restore package restriction file for each user"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 88
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 90
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/mediatek/recovery/PackageManagerRecovery;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v2

    .line 91
    .local v2, "lastUserStateFile":Ljava/io/File;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/mediatek/recovery/PackageManagerRecovery;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v1

    .line 92
    .local v1, "lastUserStateBackupFile":Ljava/io/File;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/mediatek/recovery/PackageManagerRecovery;->getUserPackagesStateRecoveryFile(I)Ljava/io/File;

    move-result-object v3

    .line 93
    .local v3, "recoverFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    const-string/jumbo v5, "PackageManagerRecovery"

    const-string/jumbo v6, "Restore to restriction backup file"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 97
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 87
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    const-string/jumbo v5, "PackageManagerRecovery"

    const-string/jumbo v6, "Restore to restriction file"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 101
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    .line 104
    :cond_2
    const-string/jumbo v5, "PackageManagerRecovery"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "User: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " restriction file doesn\'t exist, skip restore"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    .end local v1    # "lastUserStateBackupFile":Ljava/io/File;
    .end local v2    # "lastUserStateFile":Ljava/io/File;
    .end local v3    # "recoverFile":Ljava/io/File;
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    return-void
.end method


# virtual methods
.method public doRecover(Ljava/lang/Object;)I
    .locals 4
    .param p1, "param"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 28
    const-string/jumbo v0, "PackageManagerRecovery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doRecover called, path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/mediatek/recovery/PackageManagerRecovery;->mInstallerConnection:Lcom/android/internal/os/InstallerConnection;

    invoke-virtual {v0}, Lcom/android/internal/os/InstallerConnection;->waitForConnection()V

    .line 30
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/recovery/PackageManagerRecovery;->recoverSettings(Ljava/util/List;)V

    .line 31
    return v3
.end method
