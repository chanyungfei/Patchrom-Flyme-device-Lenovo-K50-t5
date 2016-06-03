.class public Lcom/lenovo/settings/storage/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# static fields
.field private static final MEMORY_SD0_EMMC_MNT:Ljava/lang/String; = "/storage/sdcard0"

.field private static final MEMORY_SD0_EMMC_MNT_FLAG_ICS:Ljava/lang/String; = "/storage/sdcard0"

.field private static final MEMORY_SD1_EMMC_MNT:Ljava/lang/String; = "/storage/sdcard1"

.field private static final MEMORY_SD1_EMMC_MNT_FLAG_ICS:Ljava/lang/String; = "/storage/sdcard1"

.field private static final TAG:Ljava/lang/String; = "StorageUtils"

.field public static USB_CHARGING:Ljava/lang/String; = null

.field private static final USB_STORAGE_1_PATH:Ljava/lang/String; = "/storage/usbotg1"

.field private static final USB_STORAGE_PATH:Ljava/lang/String; = "/storage/usbotg"

.field public static mIsUms:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/settings/storage/StorageUtils;->mIsUms:Z

    .line 82
    const-string v0, "charging"

    sput-object v0, Lcom/lenovo/settings/storage/StorageUtils;->USB_CHARGING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized CMDExecuteRun([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "cmd"    # [Ljava/lang/String;
    .param p1, "workdirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const-class v8, Lcom/lenovo/settings/storage/StorageUtils;

    monitor-enter v8

    :try_start_0
    const-string v6, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    .local v6, "result":Ljava/lang/String;
    const/4 v4, 0x0

    .line 54
    .local v4, "in":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 56
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 57
    .local v2, "builder":Ljava/lang/ProcessBuilder;
    if-eqz p1, :cond_0

    .line 58
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 59
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 60
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 61
    .local v5, "process":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :goto_0
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 64
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v6

    move-object v0, v1

    .line 70
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "process":Ljava/lang/Process;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_0
    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v4, 0x0

    .line 71
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v0, 0x0

    .line 73
    .end local v2    # "builder":Ljava/lang/ProcessBuilder;
    :cond_2
    :goto_3
    monitor-exit v8

    return-object v6

    .line 67
    :catch_0
    move-exception v3

    .line 68
    .local v3, "ex":Ljava/lang/Exception;
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 70
    if-eqz v4, :cond_3

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v4, 0x0

    .line 71
    :cond_3
    :goto_5
    if-eqz v0, :cond_2

    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v0, 0x0

    goto :goto_3

    .line 70
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v4, :cond_4

    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v4, 0x0

    .line 71
    :cond_4
    :goto_7
    if-eqz v0, :cond_5

    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    const/4 v0, 0x0

    :cond_5
    :goto_8
    :try_start_d
    throw v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 52
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "result":Ljava/lang/String;
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    .line 70
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "builder":Ljava/lang/ProcessBuilder;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "result":Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_2

    .line 71
    :catch_2
    move-exception v7

    goto :goto_3

    .line 70
    .end local v2    # "builder":Ljava/lang/ProcessBuilder;
    .restart local v3    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto :goto_5

    .line 71
    :catch_4
    move-exception v7

    goto :goto_3

    .line 70
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_5
    move-exception v9

    goto :goto_7

    .line 71
    :catch_6
    move-exception v9

    goto :goto_8

    .line 70
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "builder":Ljava/lang/ProcessBuilder;
    .restart local v5    # "process":Ljava/lang/Process;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 67
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 62
    :catch_8
    move-exception v7

    goto :goto_1

    .line 61
    :catch_9
    move-exception v7

    goto :goto_0
.end method

.method public static getConstantStringDIRECTORY_USBOTG()Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "StorageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Environment.DIRECTORY_USBOTG="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "USBOTG_STORAGE"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v0, "USBOTG_STORAGE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEMMCFatTotalSize(Lcom/android/internal/app/IMediaContainerService;)J
    .locals 10
    .param p0, "imcs"    # Lcom/android/internal/app/IMediaContainerService;

    .prologue
    const-wide/16 v6, -0x1

    .line 85
    const-wide/16 v4, 0x0

    .line 86
    .local v4, "totalSize":J
    const-string v3, "persist.sys.emmc"

    const-string v8, "/storage/sdcard0"

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    invoke-interface {p0, v1}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v2

    .line 97
    .local v2, "stats":[J
    const/4 v3, 0x0

    aget-wide v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-wide v6, v4

    .line 104
    .end local v2    # "stats":[J
    :goto_0
    return-wide v6

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "StorageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IllegalArgumentException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/lenovo/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "StorageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem in container service"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/lenovo/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getEMMCRomTotalSize()J
    .locals 8

    .prologue
    .line 34
    const-wide/16 v4, 0x0

    .line 35
    .local v4, "size":J
    const/4 v2, 0x0

    .line 37
    .local v2, "result":Ljava/lang/String;
    const/4 v3, 0x2

    :try_start_0
    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "/system/bin/cat"

    aput-object v6, v0, v3

    const/4 v3, 0x1

    const-string v6, "/sys/block/mmcblk0/size"

    aput-object v6, v0, v3

    .line 40
    .local v0, "args":[Ljava/lang/String;
    const-string v3, "system/bin/"

    invoke-static {v0, v3}, Lcom/lenovo/settings/storage/StorageUtils;->CMDExecuteRun([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    int-to-long v4, v3

    .line 42
    const-wide/16 v6, 0x200

    mul-long/2addr v4, v6

    .line 48
    .end local v0    # "args":[Ljava/lang/String;
    :goto_0
    return-wide v4

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 46
    .local v1, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isExSdcardInserted()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 152
    const-string v5, "StorageUtils"

    const-string v6, "isExSdcardInserted  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v3, 0x0

    .line 155
    .local v3, "result":Z
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 168
    :goto_0
    return v3

    .line 159
    :cond_0
    :try_start_0
    const-string v4, "com.mediatek.storage.StorageManagerEx"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 160
    .local v2, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getSdSwapState"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 161
    .local v1, "m":Ljava/lang/reflect/Method;
    const-string v4, "StorageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "myclass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 167
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const-string v4, "StorageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "StorageUtils"

    const-string v5, "isExSdcardInserted exception "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isFuseOn(Landroid/os/storage/StorageManager;)Z
    .locals 6
    .param p0, "mStorageManager"    # Landroid/os/storage/StorageManager;

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 204
    .local v4, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v4

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 205
    .local v3, "v":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    const/4 v5, 0x1

    .line 209
    .end local v3    # "v":Landroid/os/storage/StorageVolume;
    :goto_1
    return v5

    .line 204
    .restart local v3    # "v":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    .end local v3    # "v":Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static isOtgVolume(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "otgDevice":Z
    if-nez p0, :cond_0

    .line 173
    const/4 v1, 0x0

    .line 179
    :goto_0
    return v1

    .line 175
    :cond_0
    const-string v1, "/storage/usbotg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/storage/usbotg1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    :cond_1
    const/4 v0, 0x1

    .line 178
    :cond_2
    const-string v1, "StorageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is otg  +otgDevice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 179
    goto :goto_0
.end method

.method public static isSomeStorageEmulated()Z
    .locals 6

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 118
    .local v1, "isExistEmulatedStorage":Z
    :try_start_0
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 120
    .local v2, "mountService":Landroid/os/storage/IMountService;
    if-eqz v2, :cond_0

    .line 121
    invoke-interface {v2}, Landroid/os/storage/IMountService;->isExternalStorageEmulated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 128
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :goto_0
    const-string v3, "StorageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExistEmulatedStorage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return v1

    .line 123
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_0
    :try_start_1
    const-string v3, "StorageUtils"

    const-string v4, "MountService return null"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 125
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "StorageUtils"

    const-string v4, "RemoteException happens, couldn\'t talk to MountService"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSupportMtk2SDCardSwap()Z
    .locals 7

    .prologue
    .line 132
    const-string v4, "StorageUtils"

    const-string v5, "isSupportMtk2SDCardSwap  "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v3, 0x0

    .line 135
    .local v3, "result":Z
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v4

    if-nez v4, :cond_0

    .line 136
    const-string v4, "StorageUtils"

    const-string v5, "isSupportMtk2SDCardSwap is not mtk platform "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v3, 0x0

    .line 149
    :goto_0
    return v3

    .line 140
    :cond_0
    :try_start_0
    const-string v4, "com.lenovo.lenovofeatureoption.LenovoFeatureOption"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 141
    .local v2, "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "MTK_2SDCARD_SWAP"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 142
    .local v1, "fMtkFlags":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 148
    .end local v1    # "fMtkFlags":Ljava/lang/reflect/Field;
    .end local v2    # "myclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const-string v4, "StorageUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSupportMtk2SDCardSwap enable= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "StorageUtils"

    const-string v5, "isSupportMtk2SDCardSwap exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isSupport_External_Storage()Z
    .locals 4

    .prologue
    .line 214
    const-string v1, "SECONDARY_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "rawSecondaryStorage":Ljava/lang/String;
    const-string v1, "StorageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zhsy SECONDARY_STORAGE= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    const/4 v1, 0x1

    .line 219
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupport_MULTI_STORAGE(Landroid/os/storage/StorageManager;)Z
    .locals 7
    .param p0, "mStorageManager"    # Landroid/os/storage/StorageManager;

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 194
    .local v4, "volumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v4

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 195
    .local v3, "v":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/storage/sdcard1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    const/4 v5, 0x1

    .line 199
    .end local v3    # "v":Landroid/os/storage/StorageVolume;
    :goto_1
    return v5

    .line 194
    .restart local v3    # "v":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v3    # "v":Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method
