.class final Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "PackageDexOptimizer.java"


# static fields
.field static final DEX_OPT_DEFERRED:I = 0x2

.field static final DEX_OPT_FAILED:I = -0x1

.field static final DEX_OPT_PERFORMED:I = 0x1

.field static final DEX_OPT_SKIPPED:I = 0x0

.field static final OAT_DIR_NAME:Ljava/lang/String; = "oat"

.field private static final TAG:Ljava/lang/String; = "PackageManager.DexOptimizer"


# instance fields
.field private mDeferredDexOpt:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation
.end field

.field private final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private volatile mSystemReady:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 3
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 61
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 62
    const-string/jumbo v2, "power"

    .line 61
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 63
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v1, "*dexopt*"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 59
    return-void
.end method

.method private createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 221
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flagsEx:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    .line 224
    .local v2, "isVendorApps":Z
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "codePath":Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerService;->isLinkFile(Ljava/io/File;)Z

    move-result v1

    .line 226
    .local v1, "isPreloadApps":Z
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 227
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v4

    .line 226
    if-nez v4, :cond_2

    .line 227
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isExternalAsec()Z

    move-result v4

    .line 226
    if-eqz v4, :cond_4

    .line 228
    :cond_2
    return-object v5

    .line 221
    .end local v0    # "codePath":Ljava/io/File;
    .end local v1    # "isPreloadApps":Z
    .end local v2    # "isVendorApps":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isVendorApps":Z
    goto :goto_0

    .line 232
    .restart local v0    # "codePath":Ljava/io/File;
    .restart local v1    # "isPreloadApps":Z
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 233
    invoke-static {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 234
    .local v3, "oatDir":Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 238
    .end local v3    # "oatDir":Ljava/io/File;
    :cond_5
    return-object v5
.end method

.method static getOatDir(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p0, "codePath"    # Ljava/io/File;

    .prologue
    .line 242
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oat"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZLandroid/util/ArraySet;)I
    .locals 22
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "targetInstructionSets"    # [Ljava/lang/String;
    .param p3, "forceDex"    # Z
    .param p4, "defer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 100
    .local p5, "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    .line 101
    move-object/from16 v4, p2

    .line 103
    .local v4, "instructionSets":[Ljava/lang/String;
    :goto_0
    if-eqz p5, :cond_1

    .line 104
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 105
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 106
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLibsLI(Ljava/util/ArrayList;[Ljava/lang/String;ZZLandroid/util/ArraySet;)V

    .line 108
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 109
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object/from16 v2, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLibsLI(Ljava/util/ArrayList;[Ljava/lang/String;ZZLandroid/util/ArraySet;)V

    .line 114
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_3

    .line 115
    const/4 v2, 0x0

    return v2

    .line 101
    .end local v4    # "instructionSets":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "instructionSets":[Ljava/lang/String;
    goto :goto_0

    .line 118
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_4

    const/4 v12, 0x1

    .line 119
    .local v12, "vmSafeMode":Z
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    const/4 v13, 0x1

    .line 121
    .local v13, "debuggable":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v19

    .line 122
    .local v19, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .line 127
    .local v20, "performedDexOpt":Z
    invoke-static {v4}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 128
    .local v15, "dexCodeInstructionSets":[Ljava/lang/String;
    const/4 v2, 0x0

    array-length v3, v15

    :goto_3
    if-ge v2, v3, :cond_f

    aget-object v10, v15, v2

    .line 129
    .local v10, "dexCodeInstructionSet":Ljava/lang/String;
    if-nez p3, :cond_6

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mDexOptPerformed:Landroid/util/ArraySet;

    invoke-virtual {v5, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 128
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 118
    .end local v10    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v12    # "vmSafeMode":Z
    .end local v13    # "debuggable":Z
    .end local v15    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v19    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "performedDexOpt":Z
    :cond_4
    const/4 v12, 0x0

    .restart local v12    # "vmSafeMode":Z
    goto :goto_1

    .line 119
    :cond_5
    const/4 v13, 0x0

    .restart local v13    # "debuggable":Z
    goto :goto_2

    .line 133
    .restart local v10    # "dexCodeInstructionSet":Ljava/lang/String;
    .restart local v15    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v19    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "performedDexOpt":Z
    :cond_6
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "path$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 135
    .local v6, "path":Ljava/lang/String;
    if-eqz p3, :cond_8

    .line 136
    const/4 v11, 0x1

    .line 147
    .local v11, "dexoptNeeded":I
    :goto_6
    if-nez p3, :cond_9

    if-eqz p4, :cond_9

    if-eqz v11, :cond_9

    .line 151
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PackageDexOptimizer;->addPackageForDeferredDexopt(Landroid/content/pm/PackageParser$Package;)V

    .line 152
    const/4 v2, 0x2

    return v2

    .line 139
    .end local v11    # "dexoptNeeded":I
    :cond_8
    :try_start_0
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move/from16 v0, p4

    invoke-static {v6, v5, v10, v0}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .restart local v11    # "dexoptNeeded":I
    goto :goto_6

    .line 141
    .end local v11    # "dexoptNeeded":I
    :catch_0
    move-exception v17

    .line 142
    .local v17, "ioe":Ljava/io/IOException;
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException reading apk: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    const/4 v2, -0x1

    return v2

    .line 155
    .end local v17    # "ioe":Ljava/io/IOException;
    .restart local v11    # "dexoptNeeded":I
    :cond_9
    if-eqz v11, :cond_7

    .line 157
    const/4 v14, 0x0

    .line 158
    .local v14, "oatDir":Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v11, v5, :cond_a

    .line 159
    const-string/jumbo v16, "dex2oat"

    .line 161
    .local v16, "dexoptType":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/server/pm/PackageDexOptimizer;->createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    .line 174
    .end local v14    # "oatDir":Ljava/lang/String;
    :goto_7
    const-string/jumbo v5, "PackageManager.DexOptimizer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Running dexopt ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") on: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " pkg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 175
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 175
    const-string/jumbo v9, " isa="

    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 176
    const-string/jumbo v9, " vmSafeMode="

    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 176
    const-string/jumbo v9, " debuggable="

    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 177
    const-string/jumbo v9, " oatDir = "

    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v7

    .line 179
    .local v7, "sharedGid":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v8, 0x0

    :goto_8
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 179
    invoke-virtual/range {v5 .. v14}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;)I

    move-result v21

    .line 185
    .local v21, "ret":I
    if-nez v21, :cond_7

    .line 186
    const/16 v20, 0x1

    goto/16 :goto_5

    .line 162
    .end local v7    # "sharedGid":I
    .end local v21    # "ret":I
    .restart local v14    # "oatDir":Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 163
    .restart local v17    # "ioe":Ljava/io/IOException;
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to create oatDir for package: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v2, -0x1

    return v2

    .line 166
    .end local v16    # "dexoptType":Ljava/lang/String;
    .end local v17    # "ioe":Ljava/io/IOException;
    :cond_a
    const/4 v5, 0x2

    if-ne v11, v5, :cond_b

    .line 167
    const-string/jumbo v16, "patchoat"

    .restart local v16    # "dexoptType":Ljava/lang/String;
    goto/16 :goto_7

    .line 168
    .end local v16    # "dexoptType":Ljava/lang/String;
    :cond_b
    const/4 v5, 0x3

    if-ne v11, v5, :cond_c

    .line 169
    const-string/jumbo v16, "self patchoat"

    .restart local v16    # "dexoptType":Ljava/lang/String;
    goto/16 :goto_7

    .line 171
    .end local v16    # "dexoptType":Ljava/lang/String;
    :cond_c
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid dexopt needed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    .end local v14    # "oatDir":Ljava/lang/String;
    .restart local v7    # "sharedGid":I
    .restart local v16    # "dexoptType":Ljava/lang/String;
    :cond_d
    const/4 v8, 0x1

    goto :goto_8

    .line 196
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "sharedGid":I
    .end local v11    # "dexoptNeeded":I
    .end local v16    # "dexoptType":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mDexOptPerformed:Landroid/util/ArraySet;

    invoke-virtual {v5, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 203
    .end local v10    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v18    # "path$iterator":Ljava/util/Iterator;
    :cond_f
    if-eqz v20, :cond_10

    const/4 v2, 0x1

    :goto_9
    return v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_9
.end method

.method private performDexOptLibsLI(Ljava/util/ArrayList;[Ljava/lang/String;ZZLandroid/util/ArraySet;)V
    .locals 8
    .param p2, "instructionSets"    # [Ljava/lang/String;
    .param p3, "forceDex"    # Z
    .param p4, "defer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "libs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "libName$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 248
    .local v6, "libName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageManagerService;->findSharedNonSystemLibrary(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 250
    .local v1, "libPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    invoke-virtual {p5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 251
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZLandroid/util/ArraySet;)I

    goto :goto_0

    .line 246
    .end local v1    # "libPkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "libName":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addPackageForDeferredDexopt(Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public clearDeferredDexOptPackages()Landroid/util/ArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    .line 262
    .local v0, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDeferredDexOpt:Landroid/util/ArraySet;

    .line 263
    return-object v0
.end method

.method performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZZ)I
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "instructionSets"    # [Ljava/lang/String;
    .param p3, "forceDex"    # Z
    .param p4, "defer"    # Z
    .param p5, "inclDependencies"    # Z

    .prologue
    .line 76
    if-eqz p5, :cond_3

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 77
    :cond_0
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 78
    .local v5, "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v5    # "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v7

    .line 83
    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 84
    .local v6, "useLock":Z
    if-eqz v6, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v1, v2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 89
    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;ZZLandroid/util/ArraySet;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 91
    if-eqz v6, :cond_2

    .line 92
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    monitor-exit v7

    .line 89
    return v0

    .line 80
    .end local v6    # "useLock":Z
    :cond_3
    const/4 v5, 0x0

    .local v5, "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 90
    .end local v5    # "done":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "useLock":Z
    :catchall_0
    move-exception v0

    .line 91
    if-eqz v6, :cond_4

    .line 92
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 90
    :cond_4
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 82
    .end local v6    # "useLock":Z
    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method systemReady()V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 273
    return-void
.end method
