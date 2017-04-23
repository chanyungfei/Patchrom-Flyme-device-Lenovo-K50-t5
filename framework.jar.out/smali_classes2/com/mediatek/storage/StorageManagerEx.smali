.class public Lcom/mediatek/storage/StorageManagerEx;
.super Ljava/lang/Object;
.source "StorageManagerEx.java"


# static fields
.field private static final DIR_ANDROID:Ljava/lang/String; = "Android"

.field private static final DIR_CACHE:Ljava/lang/String; = "cache"

.field private static final DIR_DATA:Ljava/lang/String; = "data"

.field private static final PROP_DEVICE_TABLET:Ljava/lang/String; = "tablet"

.field private static final PROP_DEVICE_TYPE:Ljava/lang/String; = "ro.build.characteristics"

.field public static final PROP_SD_DEFAULT_PATH:Ljava/lang/String; = "persist.sys.sd.defaultpath"

.field private static final STORAGE_PATH_EMULATED:Ljava/lang/String; = "/storage/emulated/"

.field private static final STORAGE_PATH_SD1:Ljava/lang/String; = "/storage/sdcard0"

.field private static final STORAGE_PATH_SD1_ICS:Ljava/lang/String; = "/mnt/sdcard"

.field private static final STORAGE_PATH_SD2:Ljava/lang/String; = "/storage/sdcard1"

.field private static final STORAGE_PATH_SD2_ICS:Ljava/lang/String; = "/mnt/sdcard2"

.field private static final TAG:Ljava/lang/String; = "StorageManagerEx"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findPhoneStorage()Landroid/os/storage/VolumeInfo;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 381
    const-string/jumbo v6, "StorageManagerEx"

    const-string/jumbo v7, "findPhoneStorage VolumeInfo"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v3, 0x0

    .line 385
    .local v3, "phoneStorage":Landroid/os/storage/VolumeInfo;
    :try_start_0
    const-string/jumbo v6, "mount"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 386
    .local v2, "mountService":Landroid/os/storage/IMountService;
    if-nez v2, :cond_0

    .line 387
    const-string/jumbo v6, "StorageManagerEx"

    const-string/jumbo v7, "mount service is not initialized!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-object v8

    .line 390
    :cond_0
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v5

    .line 391
    .local v5, "volumeInfos":[Landroid/os/storage/VolumeInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_1

    .line 392
    aget-object v4, v5, v1

    .line 393
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isPhoneStorage()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 394
    move-object v3, v4

    .line 401
    .end local v1    # "i":I
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v3    # "phoneStorage":Landroid/os/storage/VolumeInfo;
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v5    # "volumeInfos":[Landroid/os/storage/VolumeInfo;
    :cond_1
    :goto_1
    return-object v3

    .line 391
    .restart local v1    # "i":I
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    .restart local v3    # "phoneStorage":Landroid/os/storage/VolumeInfo;
    .restart local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v5    # "volumeInfos":[Landroid/os/storage/VolumeInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    .end local v1    # "i":I
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v5    # "volumeInfos":[Landroid/os/storage/VolumeInfo;
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "StorageManagerEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "RemoteException when invoke findPhoneStorage VolumeInfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getDefaultPath()Ljava/lang/String;
    .locals 13

    .prologue
    .line 93
    const-string/jumbo v5, ""

    .line 94
    .local v5, "path":Ljava/lang/String;
    const/4 v0, 0x0

    .line 95
    .local v0, "deviceTablet":Z
    const/4 v6, 0x0

    .line 98
    .local v6, "supportMultiUsers":Z
    :try_start_0
    const-string/jumbo v10, "persist.sys.sd.defaultpath"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    const-string/jumbo v10, "StorageManagerEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "get path from system property, path="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    const-string/jumbo v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 107
    const-string/jumbo v10, "/mnt/sdcard"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 106
    if-nez v10, :cond_0

    .line 107
    const-string/jumbo v10, "/storage/sdcard0"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 106
    if-nez v10, :cond_0

    .line 108
    const-string/jumbo v10, "/mnt/sdcard2"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 106
    if-nez v10, :cond_0

    .line 108
    const-string/jumbo v10, "/storage/sdcard1"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 106
    if-eqz v10, :cond_3

    .line 109
    :cond_0
    const-string/jumbo v10, "StorageManagerEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DefaultPath invalid! path = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", set to default."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :try_start_1
    const-string/jumbo v10, "mount"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 113
    .local v4, "mountService":Landroid/os/storage/IMountService;
    if-nez v4, :cond_1

    .line 114
    const-string/jumbo v10, "StorageManagerEx"

    const-string/jumbo v11, "mount service is not initialized!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string/jumbo v10, ""
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v10

    .line 100
    .end local v4    # "mountService":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v10, "StorageManagerEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "IllegalArgumentException when get default path:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 117
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "mountService":Landroid/os/storage/IMountService;
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 118
    .local v7, "userId":I
    const/4 v10, 0x0

    invoke-interface {v4, v10}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v9

    .line 119
    .local v9, "volumeInfos":[Landroid/os/storage/VolumeInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v10, v9

    if-ge v3, v10, :cond_2

    .line 120
    aget-object v8, v9, v3

    .line 121
    .local v8, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v8, v7}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 122
    invoke-virtual {v8, v7}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 123
    const-string/jumbo v10, "StorageManagerEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Find primary and visible volumeInfo, path="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 124
    const-string/jumbo v12, ", volumeInfo:"

    .line 123
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v8    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_2
    invoke-static {v5}, Lcom/mediatek/storage/StorageManagerEx;->setDefaultPath(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 133
    .end local v3    # "i":I
    .end local v4    # "mountService":Landroid/os/storage/IMountService;
    .end local v7    # "userId":I
    .end local v9    # "volumeInfos":[Landroid/os/storage/VolumeInfo;
    :cond_3
    :goto_2
    return-object v5

    .line 119
    .restart local v3    # "i":I
    .restart local v4    # "mountService":Landroid/os/storage/IMountService;
    .restart local v7    # "userId":I
    .restart local v8    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v9    # "volumeInfos":[Landroid/os/storage/VolumeInfo;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    .end local v3    # "i":I
    .end local v4    # "mountService":Landroid/os/storage/IMountService;
    .end local v7    # "userId":I
    .end local v8    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v9    # "volumeInfos":[Landroid/os/storage/VolumeInfo;
    :catch_1
    move-exception v1

    .line 130
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "StorageManagerEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "RemoteException when set default path:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getExternalCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 164
    if-nez p0, :cond_0

    .line 165
    const-string/jumbo v1, "StorageManagerEx"

    const-string/jumbo v2, "packageName = null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-object v3

    .line 169
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "externalCacheDir":Ljava/io/File;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "Android"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "data"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 171
    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string/jumbo v2, "cache"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 170
    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 172
    const-string/jumbo v1, "StorageManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getExternalCacheDir path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-object v0
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v14, 0x2

    .line 184
    const-string/jumbo v7, ""

    .line 187
    .local v7, "path":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v11, "mount"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v6

    .line 188
    .local v6, "mountService":Landroid/os/storage/IMountService;
    if-nez v6, :cond_0

    .line 189
    const-string/jumbo v11, "StorageManagerEx"

    const-string/jumbo v12, "mount service is not initialized!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string/jumbo v11, ""

    return-object v11

    .line 192
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 193
    .local v8, "userId":I
    const-string/jumbo v11, "ro.mtk_emmc_support"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 194
    .local v5, "isEMMCProject":Z
    const/4 v11, 0x0

    invoke-interface {v6, v11}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v10

    .line 195
    .local v10, "volumeInfos":[Landroid/os/storage/VolumeInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v11, v10

    if-ge v3, v11, :cond_3

    .line 196
    aget-object v9, v10, v3

    .line 197
    .local v9, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "diskID":Ljava/lang/String;
    const-string/jumbo v11, "StorageManagerEx"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getExternalStoragePath, diskID="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-eqz v0, :cond_5

    .line 201
    invoke-virtual {v9, v8}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 202
    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v11

    if-ne v11, v14, :cond_1

    .line 203
    if-eqz v5, :cond_4

    .line 205
    const-string/jumbo v11, "disk:179"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string/jumbo v11, ",0"

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 195
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    :cond_2
    invoke-virtual {v9, v8}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 236
    .end local v0    # "diskID":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "isEMMCProject":Z
    .end local v6    # "mountService":Landroid/os/storage/IMountService;
    .end local v8    # "userId":I
    .end local v9    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v10    # "volumeInfos":[Landroid/os/storage/VolumeInfo;
    :cond_3
    :goto_2
    const-string/jumbo v11, "StorageManagerEx"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getExternalStoragePath path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-object v7

    .line 211
    .restart local v0    # "diskID":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v5    # "isEMMCProject":Z
    .restart local v6    # "mountService":Landroid/os/storage/IMountService;
    .restart local v8    # "userId":I
    .restart local v9    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v10    # "volumeInfos":[Landroid/os/storage/VolumeInfo;
    :cond_4
    :try_start_1
    const-string/jumbo v11, "disk:179,0"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 212
    invoke-virtual {v9, v8}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 219
    :cond_5
    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v11

    if-ne v11, v14, :cond_1

    .line 220
    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v11

    if-ne v11, v14, :cond_1

    .line 221
    invoke-virtual {v9, v8}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "emulatedPath":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->getInternalPath()Ljava/io/File;

    move-result-object v4

    .line 223
    .local v4, "internalPathFile":Ljava/io/File;
    if-eqz v4, :cond_6

    .line 224
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "/data/media"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 228
    :cond_6
    const-string/jumbo v11, "StorageManagerEx"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getExternalStoragePath, igore path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 233
    .end local v0    # "diskID":Ljava/lang/String;
    .end local v2    # "emulatedPath":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "internalPathFile":Ljava/io/File;
    .end local v5    # "isEMMCProject":Z
    .end local v6    # "mountService":Landroid/os/storage/IMountService;
    .end local v8    # "userId":I
    .end local v9    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v10    # "volumeInfos":[Landroid/os/storage/VolumeInfo;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v11, "StorageManagerEx"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "RemoteException when getExternalStoragePath:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 225
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "diskID":Ljava/lang/String;
    .restart local v2    # "emulatedPath":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "internalPathFile":Ljava/io/File;
    .restart local v5    # "isEMMCProject":Z
    .restart local v6    # "mountService":Landroid/os/storage/IMountService;
    .restart local v8    # "userId":I
    .restart local v9    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v10    # "volumeInfos":[Landroid/os/storage/VolumeInfo;
    :cond_7
    move-object v7, v2

    goto/16 :goto_2
.end method

.method public static getInternalStoragePath()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 299
    const-string/jumbo v0, ""

    .line 300
    .local v0, "path":Ljava/lang/String;
    const-string/jumbo v1, "StorageManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInternalStoragePath path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-object v0
.end method

.method public static getInternalStoragePathForLogger()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 322
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "path":Ljava/lang/String;
    const-string/jumbo v1, "StorageManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInternalStoragePathForLogger raw path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    if-eqz v0, :cond_0

    const-string/jumbo v1, "/storage/emulated/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    const-string/jumbo v0, "/storage/emulated/0"

    .line 330
    :cond_0
    const-string/jumbo v1, "StorageManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInternalStoragePathForLogger path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-object v0
.end method

.method public static getSdSwapState()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public static isExternalSDCard(Ljava/lang/String;)Z
    .locals 14
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 246
    const-string/jumbo v10, "StorageManagerEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isExternalSDcard path="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v5, 0x0

    .line 248
    .local v5, "result":Z
    if-nez p0, :cond_0

    .line 249
    return v13

    .line 251
    :cond_0
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "externalStoragePath":Ljava/lang/String;
    const-string/jumbo v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 253
    return v13

    .line 255
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 256
    const-string/jumbo v10, "StorageManagerEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "path="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 257
    const-string/jumbo v12, ", externalStoragePath="

    .line 256
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 258
    const-string/jumbo v12, ", return false"

    .line 256
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return v13

    .line 264
    :cond_2
    :try_start_0
    const-string/jumbo v10, "mount"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 265
    .local v4, "mountService":Landroid/os/storage/IMountService;
    if-nez v4, :cond_3

    .line 266
    const-string/jumbo v10, "StorageManagerEx"

    const-string/jumbo v11, "mount service is not initialized!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return v13

    .line 269
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 270
    .local v6, "userId":I
    const/4 v10, 0x0

    invoke-interface {v4, v10}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v9

    .line 271
    .local v9, "volumeInfos":[Landroid/os/storage/VolumeInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v10, v9

    if-ge v2, v10, :cond_6

    .line 272
    aget-object v7, v9, v2

    .line 273
    .local v7, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v7, v6}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 274
    invoke-virtual {v7, v6}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 275
    .local v8, "volPath":Ljava/lang/String;
    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 276
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getInternalPath()Ljava/io/File;

    move-result-object v3

    .line 277
    .local v3, "internalPathFile":Ljava/io/File;
    if-eqz v3, :cond_4

    .line 278
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "/data/media"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_5

    .line 271
    .end local v3    # "internalPathFile":Ljava/io/File;
    .end local v8    # "volPath":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    .restart local v3    # "internalPathFile":Ljava/io/File;
    .restart local v8    # "volPath":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x1

    .line 288
    .end local v2    # "i":I
    .end local v3    # "internalPathFile":Ljava/io/File;
    .end local v4    # "mountService":Landroid/os/storage/IMountService;
    .end local v6    # "userId":I
    .end local v7    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v8    # "volPath":Ljava/lang/String;
    .end local v9    # "volumeInfos":[Landroid/os/storage/VolumeInfo;
    :cond_6
    :goto_1
    const-string/jumbo v10, "StorageManagerEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isExternalSDcard path="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", return "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return v5

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "StorageManagerEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "RemoteException when invoke isExternalSDcard:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isSetPrimaryStorageUuidFinish()Z
    .locals 6

    .prologue
    .line 409
    const-string/jumbo v3, "StorageManagerEx"

    const-string/jumbo v4, "isSetPrimaryStorageUuidFinish"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v2, 0x1

    .line 413
    .local v2, "result":Z
    :try_start_0
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 414
    .local v1, "mountService":Landroid/os/storage/IMountService;
    if-nez v1, :cond_0

    .line 415
    const-string/jumbo v3, "StorageManagerEx"

    const-string/jumbo v4, "mount service is not initialized!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v2

    .line 418
    :cond_0
    invoke-interface {v1}, Landroid/os/storage/IMountService;->isSetPrimaryStorageUuidFinish()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 422
    .end local v1    # "mountService":Landroid/os/storage/IMountService;
    .end local v2    # "result":Z
    :goto_0
    const-string/jumbo v3, "StorageManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSetPrimaryStorageUuidFinish return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return v2

    .line 419
    .restart local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "StorageManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RemoteException when invoke findPhoneStorage VolumeInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isUSBOTG(Ljava/lang/String;)Z
    .locals 11
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 341
    const-string/jumbo v7, "StorageManagerEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isUSBOTG, path="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    if-nez p0, :cond_0

    .line 344
    const-string/jumbo v7, "StorageManagerEx"

    const-string/jumbo v8, "isUSBOTG, path is null, ruturn false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return v10

    .line 348
    :cond_0
    const/4 v4, 0x0

    .line 351
    .local v4, "result":Z
    :try_start_0
    const-string/jumbo v7, "mount"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    .line 352
    .local v3, "mountService":Landroid/os/storage/IMountService;
    if-nez v3, :cond_1

    .line 353
    const-string/jumbo v7, "StorageManagerEx"

    const-string/jumbo v8, "mount service is not initialized!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return v10

    .line 356
    :cond_1
    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v6

    .line 357
    .local v6, "volumeInfos":[Landroid/os/storage/VolumeInfo;
    const/4 v2, 0x0

    .end local v4    # "result":Z
    .local v2, "i":I
    :goto_0
    array-length v7, v6

    if-ge v2, v7, :cond_2

    .line 358
    aget-object v5, v6, v2

    .line 359
    .local v5, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v7, v5, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v5, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 360
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "diskID":Ljava/lang/String;
    const-string/jumbo v7, "StorageManagerEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isUSBOTG, diskID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->isUSBOTG()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 363
    .local v4, "result":Z
    if-eqz v4, :cond_3

    .line 371
    .end local v0    # "diskID":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "mountService":Landroid/os/storage/IMountService;
    .end local v4    # "result":Z
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v6    # "volumeInfos":[Landroid/os/storage/VolumeInfo;
    :cond_2
    :goto_1
    const-string/jumbo v7, "StorageManagerEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isUSBOTG return="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return v4

    .line 357
    .restart local v2    # "i":I
    .restart local v3    # "mountService":Landroid/os/storage/IMountService;
    .restart local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .restart local v6    # "volumeInfos":[Landroid/os/storage/VolumeInfo;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    .end local v2    # "i":I
    .end local v3    # "mountService":Landroid/os/storage/IMountService;
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v6    # "volumeInfos":[Landroid/os/storage/VolumeInfo;
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "StorageManagerEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "RemoteException when invoke isUSBOTG:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setDefaultPath(Ljava/lang/String;)V
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string/jumbo v2, "StorageManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultPath path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :try_start_0
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 148
    .local v1, "mountService":Landroid/os/storage/IMountService;
    if-nez v1, :cond_0

    .line 149
    const-string/jumbo v2, "StorageManagerEx"

    const-string/jumbo v3, "mount service is not initialized!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 152
    :cond_0
    invoke-interface {v1, p0}, Landroid/os/storage/IMountService;->setDefaultPath(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1    # "mountService":Landroid/os/storage/IMountService;
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "StorageManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException when set default path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
