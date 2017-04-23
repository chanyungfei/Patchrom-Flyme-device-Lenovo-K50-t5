.class public Lcom/android/internal/content/PackageHelper;
.super Ljava/lang/Object;
.source "PackageHelper.java"


# static fields
.field public static final APP_INSTALL_AUTO:I = 0x0

.field public static final APP_INSTALL_EXTERNAL:I = 0x2

.field public static final APP_INSTALL_INTERNAL:I = 0x1

.field public static final RECOMMEND_FAILED_ALREADY_EXISTS:I = -0x4

.field public static final RECOMMEND_FAILED_INSUFFICIENT_STORAGE:I = -0x1

.field public static final RECOMMEND_FAILED_INVALID_APK:I = -0x2

.field public static final RECOMMEND_FAILED_INVALID_LOCATION:I = -0x3

.field public static final RECOMMEND_FAILED_INVALID_URI:I = -0x6

.field public static final RECOMMEND_FAILED_VERSION_DOWNGRADE:I = -0x7

.field public static final RECOMMEND_INSTALL_EXTERNAL:I = 0x2

.field public static final RECOMMEND_INSTALL_INTERNAL:I = 0x1

.field public static final RECOMMEND_MEDIA_UNAVAILABLE:I = -0x5

.field private static final TAG:Ljava/lang/String; = "PackageHelper"

.field private static final localLOGV:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;ZLjava/lang/String;)J
    .locals 8
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p1, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p2, "isForwardLocked"    # Z
    .param p3, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 540
    const-wide/16 v4, 0x0

    .line 543
    .local v4, "sizeBytes":J
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "codePath$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 544
    .local v1, "codePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 545
    .local v0, "codeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 547
    if-eqz p2, :cond_0

    .line 548
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/internal/content/PackageHelper;->extractPublicFiles(Ljava/io/File;Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_0

    .line 553
    .end local v0    # "codeFile":Ljava/io/File;
    .end local v1    # "codePath":Ljava/lang/String;
    :cond_1
    invoke-static {p1, p3}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 555
    return-wide v4
.end method

.method public static calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;ZLjava/lang/String;)J
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p1, "isForwardLocked"    # Z
    .param p2, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    const/4 v0, 0x0

    .line 531
    .local v0, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/PackageParser$PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    .line 532
    .local v0, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;ZLjava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 534
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 532
    return-wide v2

    .line 533
    .end local v0    # "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :catchall_0
    move-exception v1

    .line 534
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 533
    throw v1
.end method

.method private static copyZipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    .locals 5
    .param p0, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p1, "inZipFile"    # Ljava/util/zip/ZipFile;
    .param p2, "outZipStream"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 319
    .local v0, "buffer":[B
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-nez v4, :cond_0

    .line 321
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 326
    .local v2, "newEntry":Ljava/util/zip/ZipEntry;
    :goto_0
    invoke-virtual {p2, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 328
    invoke-virtual {p1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 330
    .local v1, "data":Ljava/io/InputStream;
    :goto_1
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "num":I
    if-lez v3, :cond_1

    .line 331
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 334
    .end local v3    # "num":I
    :catchall_0
    move-exception v4

    .line 335
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 334
    throw v4

    .line 324
    .end local v1    # "data":Ljava/io/InputStream;
    .end local v2    # "newEntry":Ljava/util/zip/ZipEntry;
    :cond_0
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .restart local v2    # "newEntry":Ljava/util/zip/ZipEntry;
    goto :goto_0

    .line 333
    .restart local v1    # "data":Ljava/io/InputStream;
    .restart local v3    # "num":I
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 314
    return-void
.end method

.method public static createSdDir(JLjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 12
    .param p0, "sizeBytes"    # J
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "sdEncKey"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "isExternal"    # Z

    .prologue
    .line 98
    const-wide/32 v4, 0x100000

    add-long/2addr v4, p0

    const-wide/32 v10, 0x100000

    div-long/2addr v4, v10

    long-to-int v1, v4

    add-int/lit8 v2, v1, 0x1

    .line 100
    .local v2, "sizeMb":I
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 105
    .local v0, "mountService":Landroid/os/storage/IMountService;
    const-string/jumbo v3, "ext4"

    move-object v1, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/os/storage/IMountService;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v9

    .line 107
    .local v9, "rc":I
    if-eqz v9, :cond_0

    .line 108
    const-string/jumbo v1, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to create secure container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v1, 0x0

    return-object v1

    .line 111
    :cond_0
    invoke-interface {v0, p2}, Landroid/os/storage/IMountService;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 114
    .local v7, "cachePath":Ljava/lang/String;
    return-object v7

    .line 115
    .end local v0    # "mountService":Landroid/os/storage/IMountService;
    .end local v7    # "cachePath":Ljava/lang/String;
    .end local v9    # "rc":I
    :catch_0
    move-exception v8

    .line 116
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PackageHelper"

    const-string/jumbo v3, "MountService running?"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x0

    return-object v1
.end method

.method public static destroySdDir(Ljava/lang/String;)Z
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 228
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, p0, v3}, Landroid/os/storage/IMountService;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v1

    .line 229
    .local v1, "rc":I
    if-eqz v1, :cond_0

    .line 230
    const-string/jumbo v2, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to destroy container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    return v5

    .line 233
    :cond_0
    return v4

    .line 234
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to destroy container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 236
    const-string/jumbo v4, " with exception "

    .line 235
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return v5
.end method

.method public static extractPublicFiles(Ljava/io/File;Ljava/io/File;)J
    .locals 13
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "publicZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    if-nez p1, :cond_2

    .line 269
    const/4 v1, 0x0

    .line 270
    .local v1, "fstr":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 277
    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    :goto_0
    const-wide/16 v4, 0x0

    .line 280
    .local v4, "size":J
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 283
    .local v2, "privateZip":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "zipEntry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 284
    .local v6, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 285
    .local v8, "zipEntryName":Ljava/lang/String;
    const-string/jumbo v9, "AndroidManifest.xml"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 286
    const-string/jumbo v9, "resources.arsc"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 285
    if-nez v9, :cond_1

    .line 287
    const-string/jumbo v9, "res/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 285
    if-eqz v9, :cond_0

    .line 288
    :cond_1
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    add-long/2addr v4, v10

    .line 289
    if-eqz p1, :cond_0

    .line 290
    invoke-static {v6, v2, v3}, Lcom/android/internal/content/PackageHelper;->copyZipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 294
    .end local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v7    # "zipEntry$iterator":Ljava/util/Iterator;
    .end local v8    # "zipEntryName":Ljava/lang/String;
    :catchall_0
    move-exception v9

    .line 295
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 294
    :goto_2
    :try_start_3
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 306
    .end local v2    # "privateZip":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v9

    .line 307
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 306
    throw v9

    .line 272
    .end local v4    # "size":J
    :cond_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 273
    .local v1, "fstr":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 274
    .local v3, "publicZipOutStream":Ljava/util/zip/ZipOutputStream;
    const-string/jumbo v9, "PackageHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Extracting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 295
    .end local v1    # "fstr":Ljava/io/FileOutputStream;
    .end local v3    # "publicZipOutStream":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v4    # "size":J
    .restart local v7    # "zipEntry$iterator":Ljava/util/Iterator;
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 298
    :goto_3
    if-eqz p1, :cond_4

    .line 299
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 300
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 301
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 302
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 303
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1a4

    .line 304
    const/4 v11, -0x1

    const/4 v12, -0x1

    .line 303
    invoke-static {v9, v10, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 307
    :cond_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 310
    return-wide v4

    .line 295
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "zipEntry$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method public static finalizeSdDir(Ljava/lang/String;)Z
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 212
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/os/storage/IMountService;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v1

    .line 213
    .local v1, "rc":I
    if-eqz v1, :cond_0

    .line 214
    const-string/jumbo v2, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to finalize container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    return v5

    .line 217
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 218
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to finalize container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 220
    const-string/jumbo v4, " with exception "

    .line 219
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return v5
.end method

.method public static fitsOnExternal(Landroid/content/Context;J)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 434
    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 436
    .local v2, "storage":Landroid/os/storage/StorageManager;
    const-string/jumbo v6, "persist.fw.allow_asec"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_0

    const/4 v0, 0x1

    .line 437
    .local v0, "allowAsec":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 438
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getPublicSdVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 439
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    cmp-long v6, p1, v8

    if-lez v6, :cond_2

    .line 440
    if-eqz v3, :cond_2

    .line 441
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v7, v6, :cond_2

    .line 442
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-gtz v6, :cond_1

    .line 439
    :goto_1
    return v4

    .line 436
    .end local v0    # "allowAsec":Z
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "allowAsec":Z
    goto :goto_0

    .restart local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    move v4, v5

    .line 442
    goto :goto_1

    :cond_2
    move v4, v5

    .line 439
    goto :goto_1

    .line 445
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_3
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 446
    .local v1, "primary":Landroid/os/storage/StorageVolume;
    cmp-long v6, p1, v8

    if-lez v6, :cond_4

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    :goto_2
    return v5

    .line 447
    :cond_5
    const-string/jumbo v6, "mounted"

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 446
    if-eqz v6, :cond_4

    .line 448
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-gtz v6, :cond_4

    move v5, v4

    goto :goto_2
.end method

.method public static fitsOnInternal(Landroid/content/Context;J)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J

    .prologue
    .line 428
    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 429
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 430
    .local v1, "target":Ljava/io/File;
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "gid"    # I
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 341
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    invoke-interface {v2, p0, p1, p2}, Landroid/os/storage/IMountService;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 342
    .local v1, "rc":I
    if-eqz v1, :cond_0

    .line 343
    const-string/jumbo v2, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to fixperms container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    return v5

    .line 346
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 347
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to fixperms container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return v5
.end method

.method public static getMountService()Landroid/os/storage/IMountService;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 87
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 88
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    return-object v1

    .line 90
    :cond_0
    const-string/jumbo v1, "PackageHelper"

    const-string/jumbo v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "Could not contact mount service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getSdDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 187
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/storage/IMountService;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PackageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to get container path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 190
    const-string/jumbo v3, " with exception "

    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getSdFilesystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 197
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/os/storage/IMountService;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to get container path for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 204
    const-string/jumbo v4, " with exception "

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 198
    :catch_1
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to get container path for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 200
    const-string/jumbo v4, " with exception "

    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSecureContainerList()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 243
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/storage/IMountService;->getSecureContainerList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PackageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to get secure container list with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isContainerMounted(Ljava/lang/String;)Z
    .locals 4
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 253
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/storage/IMountService;->isSecureContainerMounted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PackageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to find out if container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mounted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v1, 0x0

    return v1
.end method

.method private static isSDExistWhenSwap()Z
    .locals 2

    .prologue
    .line 568
    new-instance v0, Lcom/mediatek/storage/StorageManagerEx;

    invoke-direct {v0}, Lcom/mediatek/storage/StorageManagerEx;-><init>()V

    .line 569
    .local v0, "sm":Lcom/mediatek/storage/StorageManagerEx;
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getSdSwapState()Z

    move-result v1

    return v1
.end method

.method public static mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mountSdDir(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "readOnly"    # Z

    .prologue
    const/4 v5, 0x0

    .line 143
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    invoke-interface {v2, p0, p1, p2, p3}, Landroid/os/storage/IMountService;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v1

    .line 144
    .local v1, "rc":I
    if-eqz v1, :cond_0

    .line 145
    const-string/jumbo v2, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to mount container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " rc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-object v5

    .line 148
    :cond_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/os/storage/IMountService;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 149
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageHelper"

    const-string/jumbo v3, "MountService running?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-object v5
.end method

.method public static renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "oldId"    # Ljava/lang/String;
    .param p1, "newId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 171
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Landroid/os/storage/IMountService;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 172
    .local v1, "rc":I
    if-eqz v1, :cond_0

    .line 173
    const-string/jumbo v2, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to rename "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 174
    const-string/jumbo v4, "with rc "

    .line 173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    return v5

    .line 177
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 178
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed ot rename  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 180
    const-string/jumbo v4, " with exception : "

    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return v5
.end method

.method public static replaceEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "before"    # Ljava/lang/String;
    .param p2, "after"    # Ljava/lang/String;

    .prologue
    .line 559
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to end with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 560
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resizeSdDir(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "sizeBytes"    # J
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "sdEncKey"    # Ljava/lang/String;

    .prologue
    const-wide/32 v8, 0x100000

    const/4 v7, 0x0

    .line 123
    add-long v4, p0, v8

    div-long/2addr v4, v8

    long-to-int v4, v4

    add-int/lit8 v3, v4, 0x1

    .line 125
    .local v3, "sizeMb":I
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 126
    .local v1, "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v1, p2, v3, p3}, Landroid/os/storage/IMountService;->resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 127
    .local v2, "rc":I
    if-nez v2, :cond_0

    .line 128
    const/4 v4, 0x1

    return v4

    .line 130
    .end local v1    # "mountService":Landroid/os/storage/IMountService;
    .end local v2    # "rc":I
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "PackageHelper"

    const-string/jumbo v5, "MountService running?"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v4, "PackageHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to create secure container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v7
.end method

.method public static resolveInstallLocation(Landroid/content/Context;Ljava/lang/String;IJI)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installLocation"    # I
    .param p3, "sizeBytes"    # J
    .param p5, "installFlags"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 457
    const/4 v1, 0x0

    .line 459
    .local v1, "existingInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 460
    const/16 v7, 0x2000

    .line 459
    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 466
    .end local v1    # "existingInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    and-int/lit8 v6, p5, 0x10

    if-eqz v6, :cond_4

    .line 467
    const/4 v5, 0x1

    .line 468
    .local v5, "prefer":I
    const/4 v0, 0x0

    .line 496
    .local v0, "checkBoth":Z
    :goto_1
    const/4 v3, 0x0

    .line 497
    .local v3, "fitsOnInternal":Z
    if-nez v0, :cond_0

    if-ne v5, v8, :cond_1

    .line 498
    :cond_0
    invoke-static {p0, p3, p4}, Lcom/android/internal/content/PackageHelper;->fitsOnInternal(Landroid/content/Context;J)Z

    move-result v3

    .line 501
    .end local v3    # "fitsOnInternal":Z
    :cond_1
    const/4 v2, 0x0

    .line 502
    .local v2, "fitsOnExternal":Z
    if-nez v0, :cond_2

    if-ne v5, v9, :cond_3

    .line 503
    :cond_2
    invoke-static {p0, p3, p4}, Lcom/android/internal/content/PackageHelper;->fitsOnExternal(Landroid/content/Context;J)Z

    move-result v2

    .line 506
    .end local v2    # "fitsOnExternal":Z
    :cond_3
    if-ne v5, v8, :cond_b

    .line 507
    if-eqz v3, :cond_c

    .line 508
    return v8

    .line 469
    .end local v0    # "checkBoth":Z
    .end local v5    # "prefer":I
    :cond_4
    and-int/lit8 v6, p5, 0x8

    if-eqz v6, :cond_5

    .line 470
    const/4 v5, 0x2

    .line 471
    .restart local v5    # "prefer":I
    const/4 v0, 0x0

    .restart local v0    # "checkBoth":Z
    goto :goto_1

    .line 472
    .end local v0    # "checkBoth":Z
    .end local v5    # "prefer":I
    :cond_5
    if-ne p2, v8, :cond_6

    .line 473
    const/4 v5, 0x1

    .line 474
    .restart local v5    # "prefer":I
    const/4 v0, 0x0

    .restart local v0    # "checkBoth":Z
    goto :goto_1

    .line 475
    .end local v0    # "checkBoth":Z
    .end local v5    # "prefer":I
    :cond_6
    if-ne p2, v9, :cond_7

    .line 476
    const/4 v5, 0x2

    .line 477
    .restart local v5    # "prefer":I
    const/4 v0, 0x1

    .restart local v0    # "checkBoth":Z
    goto :goto_1

    .line 478
    .end local v0    # "checkBoth":Z
    .end local v5    # "prefer":I
    :cond_7
    if-nez p2, :cond_a

    .line 480
    if-eqz v1, :cond_9

    .line 482
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x40000

    and-int/2addr v6, v7

    if-eqz v6, :cond_8

    .line 483
    const/4 v5, 0x2

    .line 490
    .restart local v5    # "prefer":I
    :goto_2
    const/4 v0, 0x1

    .restart local v0    # "checkBoth":Z
    goto :goto_1

    .line 485
    .end local v0    # "checkBoth":Z
    .end local v5    # "prefer":I
    :cond_8
    const/4 v5, 0x1

    .restart local v5    # "prefer":I
    goto :goto_2

    .line 488
    .end local v5    # "prefer":I
    :cond_9
    const/4 v5, 0x1

    .restart local v5    # "prefer":I
    goto :goto_2

    .line 492
    .end local v5    # "prefer":I
    :cond_a
    const/4 v5, 0x1

    .line 493
    .restart local v5    # "prefer":I
    const/4 v0, 0x0

    .restart local v0    # "checkBoth":Z
    goto :goto_1

    .line 510
    :cond_b
    if-ne v5, v9, :cond_c

    .line 511
    if-eqz v2, :cond_c

    .line 512
    return v9

    .line 516
    :cond_c
    if-eqz v0, :cond_e

    .line 517
    if-eqz v3, :cond_d

    .line 518
    return v8

    .line 519
    :cond_d
    if-eqz v2, :cond_e

    .line 520
    return v9

    .line 524
    :cond_e
    const/4 v6, -0x1

    return v6

    .line 461
    .end local v0    # "checkBoth":Z
    .end local v5    # "prefer":I
    .restart local v1    # "existingInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v4

    .local v4, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static resolveInstallVolume(Landroid/content/Context;Ljava/lang/String;IJ)Ljava/lang/String;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installLocation"    # I
    .param p3, "sizeBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    const/4 v10, 0x0

    .line 368
    .local v10, "existingInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 369
    const/16 v17, 0x2000

    .line 368
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 373
    .end local v10    # "existingInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    const-class v16, Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/storage/StorageManager;

    .line 374
    .local v13, "storageManager":Landroid/os/storage/StorageManager;
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/internal/content/PackageHelper;->fitsOnInternal(Landroid/content/Context;J)Z

    move-result v11

    .line 376
    .local v11, "fitsOnInternal":Z
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 377
    .local v4, "allCandidates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 378
    .local v5, "bestCandidate":Landroid/os/storage/VolumeInfo;
    const-wide/high16 v8, -0x8000000000000000L

    .line 379
    .local v8, "bestCandidateAvailBytes":J
    invoke-virtual {v13}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v5    # "bestCandidate":Landroid/os/storage/VolumeInfo;
    .local v15, "vol$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/storage/VolumeInfo;

    .line 380
    .local v14, "vol":Landroid/os/storage/VolumeInfo;
    iget v0, v14, Landroid/os/storage/VolumeInfo;->type:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    invoke-virtual {v14}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 381
    new-instance v16, Ljava/io/File;

    iget-object v0, v14, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v6

    .line 382
    .local v6, "availBytes":J
    cmp-long v16, v6, p3

    if-ltz v16, :cond_1

    .line 383
    iget-object v0, v14, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_1
    cmp-long v16, v6, v8

    if-ltz v16, :cond_0

    .line 386
    move-object v5, v14

    .line 387
    .local v5, "bestCandidate":Landroid/os/storage/VolumeInfo;
    move-wide v8, v6

    goto :goto_1

    .line 393
    .end local v5    # "bestCandidate":Landroid/os/storage/VolumeInfo;
    .end local v6    # "availBytes":J
    .end local v14    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 394
    const/16 p2, 0x1

    .line 398
    :cond_3
    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 399
    if-eqz v11, :cond_4

    .line 400
    const/16 v16, 0x0

    return-object v16

    .line 402
    :cond_4
    new-instance v16, Ljava/io/IOException;

    const-string/jumbo v17, "Requested internal only, but not enough space"

    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 407
    :cond_5
    if-eqz v10, :cond_7

    .line 408
    iget-object v0, v10, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_6

    if-eqz v11, :cond_6

    .line 409
    const/16 v16, 0x0

    return-object v16

    .line 411
    :cond_6
    iget-object v0, v10, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 412
    iget-object v0, v10, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    move-object/from16 v16, v0

    return-object v16

    .line 418
    :cond_7
    if-eqz v5, :cond_8

    .line 419
    iget-object v0, v5, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    move-object/from16 v16, v0

    return-object v16

    .line 420
    :cond_8
    if-eqz v11, :cond_9

    .line 421
    const/16 v16, 0x0

    return-object v16

    .line 423
    :cond_9
    new-instance v16, Ljava/io/IOException;

    const-string/jumbo v17, "No special requests, but no room anywhere"

    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 370
    .end local v4    # "allCandidates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "bestCandidateAvailBytes":J
    .end local v11    # "fitsOnInternal":Z
    .end local v13    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v15    # "vol$iterator":Ljava/util/Iterator;
    .restart local v10    # "existingInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v12

    .local v12, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0
.end method

.method public static unMountSdDir(Ljava/lang/String;)Z
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 157
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, p0, v3}, Landroid/os/storage/IMountService;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v1

    .line 158
    .local v1, "rc":I
    if-eqz v1, :cond_0

    .line 159
    const-string/jumbo v2, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to unmount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with rc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    return v5

    .line 162
    :cond_0
    return v4

    .line 163
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PackageHelper"

    const-string/jumbo v3, "MountService running?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v5
.end method
