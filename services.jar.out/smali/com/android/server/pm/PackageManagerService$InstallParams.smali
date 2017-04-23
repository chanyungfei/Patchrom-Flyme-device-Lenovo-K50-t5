.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final grantedRuntimePermissions:[Ljava/lang/String;

.field installFlags:I

.field final installerPackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mRet:I

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationParams:Landroid/content/pm/VerificationParams;

.field volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/VerificationParams;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"    # I
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "packageAbiOverride"    # Ljava/lang/String;
    .param p11, "grantedPermissions"    # [Ljava/lang/String;

    .prologue
    .line 11141
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 11145
    invoke-direct {p0, p1, p9}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 11146
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 11147
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 11148
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 11149
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 11150
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 11151
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 11152
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    .line 11153
    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 11154
    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 11144
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .locals 9
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 11171
    iget-object v3, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 11172
    .local v3, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 11173
    .local v1, "installLocation":I
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 11175
    .local v2, "onSd":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 11176
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 11177
    .local v4, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v4, :cond_6

    .line 11178
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_9

    .line 11180
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_0

    .line 11182
    :try_start_1
    invoke-static {v4, p1}, Lcom/android/server/pm/PackageManagerService;->-wrap22(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11189
    :cond_0
    :try_start_2
    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 11190
    if-eqz v2, :cond_2

    .line 11191
    const-string/jumbo v5, "PackageManager"

    const-string/jumbo v7, "Cannot install update to system app on sdcard"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11192
    const/4 v5, -0x3

    monitor-exit v6

    return v5

    .line 11173
    .end local v2    # "onSd":Z
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "onSd":Z
    goto :goto_0

    .line 11183
    .restart local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_0
    move-exception v0

    .line 11184
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_3
    const-string/jumbo v5, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Downgrade detected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11185
    const/4 v5, -0x7

    monitor-exit v6

    return v5

    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_2
    monitor-exit v6

    .line 11194
    return v7

    .line 11196
    :cond_3
    if-eqz v2, :cond_4

    monitor-exit v6

    .line 11198
    return v8

    .line 11201
    :cond_4
    if-ne v1, v7, :cond_5

    monitor-exit v6

    .line 11203
    return v7

    .line 11204
    :cond_5
    if-ne v1, v8, :cond_7

    :cond_6
    monitor-exit v6

    .line 11222
    if-eqz v2, :cond_a

    .line 11223
    return v8

    .line 11208
    :cond_7
    :try_start_4
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-wrap6(Landroid/content/pm/PackageParser$Package;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    if-eqz v5, :cond_8

    monitor-exit v6

    .line 11209
    return v8

    :cond_8
    monitor-exit v6

    .line 11211
    return v7

    .line 11216
    :cond_9
    const/4 v5, -0x4

    monitor-exit v6

    return v5

    .line 11175
    .end local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 11225
    .restart local v4    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_a
    iget v5, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return v5
.end method


# virtual methods
.method public getManifestDigest()Landroid/content/pm/ManifestDigest;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11164
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    if-nez v0, :cond_0

    .line 11165
    return-object v1

    .line 11167
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v0}, Landroid/content/pm/VerificationParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v0

    return-object v0
.end method

.method handleReturnCode()V
    .locals 3

    .prologue
    .line 11505
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_0

    .line 11506
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->-wrap29(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 11501
    :cond_0
    return-void
.end method

.method handleServiceError()V
    .locals 1

    .prologue
    .line 11512
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->-wrap10(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 11513
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 11511
    return-void
.end method

.method public handleStartCopy()V
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11235
    const/16 v26, 0x1

    .line 11238
    .local v26, "ret":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v4, :cond_0

    .line 11239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v4, :cond_e

    .line 11240
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 11241
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 11250
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_10

    const/16 v21, 0x1

    .line 11251
    .local v21, "onSd":Z
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_11

    const/16 v20, 0x1

    .line 11253
    .local v20, "onInt":Z
    :goto_2
    const/16 v22, 0x0

    .line 11255
    .local v22, "pkgLite":Landroid/content/pm/PackageInfoLite;
    if-eqz v20, :cond_12

    if-eqz v21, :cond_12

    .line 11257
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v7, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11258
    const/16 v26, -0x13

    .line 11297
    .end local v22    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_1
    :goto_3
    const/4 v4, 0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_3

    .line 11298
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    move/from16 v17, v0

    .line 11299
    .local v17, "loc":I
    const/4 v4, -0x3

    move/from16 v0, v17

    if-ne v0, v4, :cond_14

    .line 11300
    const/16 v26, -0x13

    .line 11331
    :cond_2
    :goto_4
    const-string/jumbo v4, "1"

    const-string/jumbo v7, "ro.mtk_select_ins_loc"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 11332
    .local v27, "selectInsLoc":Z
    if-eqz v27, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 11333
    const/16 v37, 0x0

    .line 11335
    .local v37, "volumeuuid":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get5(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    .line 11336
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->isForwardLocked()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 11335
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J

    move-result-wide v28

    .line 11337
    .local v28, "sizeBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 11338
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v8, v0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 11337
    move-wide/from16 v0, v28

    invoke-static {v4, v7, v8, v0, v1}, Lcom/android/internal/content/PackageHelper;->resolveInstallVolume(Landroid/content/Context;Ljava/lang/String;IJ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v37

    .line 11342
    .local v37, "volumeuuid":Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 11344
    .end local v28    # "sizeBytes":J
    .end local v37    # "volumeuuid":Ljava/lang/String;
    :goto_5
    const-string/jumbo v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Best volume for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11348
    .end local v17    # "loc":I
    .end local v27    # "selectInsLoc":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap10(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v14

    .line 11349
    .local v14, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 11351
    const/4 v4, 0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_d

    .line 11356
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v33

    .line 11357
    .local v33, "userIdentifier":I
    const/4 v4, -0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_4

    .line 11358
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_4

    .line 11359
    const/16 v33, 0x0

    .line 11366
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-nez v4, :cond_1c

    const/16 v24, -0x1

    .line 11368
    .local v24, "requiredUid":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v4, :cond_1e

    const/4 v4, -0x1

    move/from16 v0, v24

    if-eq v0, v4, :cond_1e

    .line 11369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move/from16 v0, v33

    invoke-static {v4, v0, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap7(Lcom/android/server/pm/PackageManagerService;II)Z

    move-result v4

    .line 11368
    if-eqz v4, :cond_1e

    .line 11370
    new-instance v5, Landroid/content/Intent;

    .line 11371
    const-string/jumbo v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    .line 11370
    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11372
    .local v5, "verification":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11373
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 11374
    const-string/jumbo v7, "application/vnd.android.package-archive"

    .line 11373
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 11375
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 11378
    const-string/jumbo v7, "application/vnd.android.package-archive"

    const/16 v8, 0x200

    .line 11379
    const/4 v9, 0x0

    .line 11377
    invoke-virtual {v4, v5, v7, v8, v9}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v23

    .line 11381
    .local v23, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get4()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 11382
    const-string/jumbo v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " verifiers for intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 11383
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    .line 11382
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 11383
    const-string/jumbo v8, " with "

    .line 11382
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 11383
    move-object/from16 v0, v22

    iget-object v8, v0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v8, v8

    .line 11382
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 11384
    const-string/jumbo v8, " optional verifiers"

    .line 11382
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11387
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get10(Lcom/android/server/pm/PackageManagerService;)I

    move-result v34

    add-int/lit8 v7, v34, 0x1

    invoke-static {v4, v7}, Lcom/android/server/pm/PackageManagerService;->-set1(Lcom/android/server/pm/PackageManagerService;I)I

    .line 11389
    .local v34, "verificationId":I
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_ID"

    move/from16 v0, v34

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11391
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    .line 11392
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 11391
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11394
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    .line 11395
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 11394
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11397
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    .line 11398
    move-object/from16 v0, v22

    iget-object v7, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 11397
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11400
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    .line 11401
    move-object/from16 v0, v22

    iget v7, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    .line 11400
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    if-eqz v4, :cond_a

    .line 11404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getVerificationURI()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 11405
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_URI"

    .line 11406
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v7}, Landroid/content/pm/VerificationParams;->getVerificationURI()Landroid/net/Uri;

    move-result-object v7

    .line 11405
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 11408
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getOriginatingURI()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 11409
    const-string/jumbo v4, "android.intent.extra.ORIGINATING_URI"

    .line 11410
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v7}, Landroid/content/pm/VerificationParams;->getOriginatingURI()Landroid/net/Uri;

    move-result-object v7

    .line 11409
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 11412
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getReferrer()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 11413
    const-string/jumbo v4, "android.intent.extra.REFERRER"

    .line 11414
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v7}, Landroid/content/pm/VerificationParams;->getReferrer()Landroid/net/Uri;

    move-result-object v7

    .line 11413
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 11416
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    move-result v4

    if-ltz v4, :cond_9

    .line 11417
    const-string/jumbo v4, "android.intent.extra.ORIGINATING_UID"

    .line 11418
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v7}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    move-result v7

    .line 11417
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11420
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v4

    if-ltz v4, :cond_a

    .line 11421
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    .line 11422
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v7}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v7

    .line 11421
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11426
    :cond_a
    new-instance v35, Lcom/android/server/pm/PackageVerificationState;

    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-direct {v0, v1, v14}, Lcom/android/server/pm/PackageVerificationState;-><init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    .line 11429
    .local v35, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 11431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v35

    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->-wrap18(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v32

    .line 11435
    .local v32, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 11436
    .local v6, "verifierUser":Landroid/os/UserHandle;
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v6, v4, :cond_b

    .line 11437
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 11444
    :cond_b
    if-eqz v32, :cond_c

    .line 11445
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v13

    .line 11446
    .local v13, "N":I
    if-nez v13, :cond_1d

    .line 11447
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v7, "Additional verifiers required, but none installed."

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11448
    const/16 v26, -0x16

    .line 11460
    .end local v13    # "N":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 11461
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 11460
    move-object/from16 v0, v23

    invoke-static {v4, v7, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap0(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v25

    .line 11462
    .local v25, "requiredVerifierComponent":Landroid/content/ComponentName;
    const/4 v4, 0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_d

    .line 11463
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 11469
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 11470
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 11471
    const-string/jumbo v7, "android.permission.PACKAGE_VERIFICATION_AGENT"

    .line 11472
    new-instance v8, Lcom/android/server/pm/PackageManagerService$InstallParams$1;

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v8, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    .line 11480
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 11470
    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 11486
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 11497
    .end local v5    # "verification":Landroid/content/Intent;
    .end local v6    # "verifierUser":Landroid/os/UserHandle;
    .end local v23    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v24    # "requiredUid":I
    .end local v25    # "requiredVerifierComponent":Landroid/content/ComponentName;
    .end local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v33    # "userIdentifier":I
    .end local v34    # "verificationId":I
    .end local v35    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_d
    :goto_7
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 11234
    return-void

    .line 11242
    .end local v14    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v20    # "onInt":Z
    .end local v21    # "onSd":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 11243
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 11244
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x11

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_0

    .line 11246
    :cond_f
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Invalid stage location"

    invoke-direct {v4, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 11250
    :cond_10
    const/16 v21, 0x0

    .restart local v21    # "onSd":Z
    goto/16 :goto_1

    .line 11251
    :cond_11
    const/16 v20, 0x0

    .restart local v20    # "onInt":Z
    goto/16 :goto_2

    .line 11260
    .restart local v22    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get5(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 11261
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 11260
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v22

    .line 11267
    .local v22, "pkgLite":Landroid/content/pm/PackageInfoLite;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-nez v4, :cond_1

    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 11268
    const/4 v7, -0x1

    .line 11267
    if-ne v4, v7, :cond_1

    .line 11270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v30

    .line 11272
    .local v30, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 11271
    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v18

    .line 11274
    .local v18, "lowThreshold":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get5(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    .line 11275
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->isForwardLocked()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 11274
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J

    move-result-wide v28

    .line 11277
    .restart local v28    # "sizeBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    add-long v8, v28, v18

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)I

    move-result v4

    if-ltz v4, :cond_13

    .line 11278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get5(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    .line 11279
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 11278
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v22

    .line 11289
    :cond_13
    move-object/from16 v0, v22

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 11290
    const/4 v7, -0x6

    .line 11289
    if-ne v4, v7, :cond_1

    .line 11292
    const/4 v4, -0x1

    .line 11291
    move-object/from16 v0, v22

    iput v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto/16 :goto_3

    .line 11301
    .end local v18    # "lowThreshold":J
    .end local v22    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v28    # "sizeBytes":J
    .end local v30    # "storage":Landroid/os/storage/StorageManager;
    .restart local v17    # "loc":I
    :cond_14
    const/4 v4, -0x4

    move/from16 v0, v17

    if-ne v0, v4, :cond_15

    .line 11302
    const/16 v26, -0x1

    goto/16 :goto_4

    .line 11303
    :cond_15
    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_16

    .line 11304
    const/16 v26, -0x4

    goto/16 :goto_4

    .line 11305
    :cond_16
    const/4 v4, -0x2

    move/from16 v0, v17

    if-ne v0, v4, :cond_17

    .line 11306
    const/16 v26, -0x2

    goto/16 :goto_4

    .line 11307
    :cond_17
    const/4 v4, -0x6

    move/from16 v0, v17

    if-ne v0, v4, :cond_18

    .line 11308
    const/16 v26, -0x3

    goto/16 :goto_4

    .line 11309
    :cond_18
    const/4 v4, -0x5

    move/from16 v0, v17

    if-ne v0, v4, :cond_19

    .line 11310
    const/16 v26, -0x14

    goto/16 :goto_4

    .line 11313
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v17

    .line 11314
    const/4 v4, -0x7

    move/from16 v0, v17

    if-ne v0, v4, :cond_1a

    .line 11315
    const/16 v26, -0x19

    goto/16 :goto_4

    .line 11316
    :cond_1a
    if-nez v21, :cond_2

    if-nez v20, :cond_2

    .line 11318
    const/4 v4, 0x2

    move/from16 v0, v17

    if-ne v0, v4, :cond_1b

    .line 11320
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 11321
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x11

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_4

    .line 11325
    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 11326
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_4

    .line 11339
    .restart local v27    # "selectInsLoc":Z
    .local v37, "volumeuuid":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 11340
    .local v15, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception happend: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11333
    const/4 v4, 0x0

    .line 11342
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    goto/16 :goto_5

    .line 11341
    .end local v15    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 11333
    const/4 v7, 0x0

    .line 11342
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 11341
    throw v4

    .line 11367
    .end local v17    # "loc":I
    .end local v27    # "selectInsLoc":Z
    .end local v37    # "volumeuuid":Ljava/lang/String;
    .restart local v14    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v33    # "userIdentifier":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    move/from16 v0, v33

    invoke-virtual {v4, v7, v0}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v24

    .restart local v24    # "requiredUid":I
    goto/16 :goto_6

    .line 11450
    .restart local v5    # "verification":Landroid/content/Intent;
    .restart local v6    # "verifierUser":Landroid/os/UserHandle;
    .restart local v13    # "N":I
    .restart local v23    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v34    # "verificationId":I
    .restart local v35    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_1d
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_8
    move/from16 v0, v16

    if-ge v0, v13, :cond_c

    .line 11451
    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/ComponentName;

    .line 11453
    .local v36, "verifierComponent":Landroid/content/ComponentName;
    new-instance v31, Landroid/content/Intent;

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 11454
    .local v31, "sufficientIntent":Landroid/content/Intent;
    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 11455
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 11450
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 11493
    .end local v5    # "verification":Landroid/content/Intent;
    .end local v6    # "verifierUser":Landroid/os/UserHandle;
    .end local v13    # "N":I
    .end local v16    # "i":I
    .end local v23    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v31    # "sufficientIntent":Landroid/content/Intent;
    .end local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v34    # "verificationId":I
    .end local v35    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v36    # "verifierComponent":Landroid/content/ComponentName;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get5(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v14, v4, v7}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v26

    goto/16 :goto_7
.end method

.method public isForwardLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11517
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 11159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11160
    const-string/jumbo v1, " file="

    .line 11159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11160
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    .line 11159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11160
    const-string/jumbo v1, " cid="

    .line 11159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11160
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    .line 11159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11160
    const-string/jumbo v1, "}"

    .line 11159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
