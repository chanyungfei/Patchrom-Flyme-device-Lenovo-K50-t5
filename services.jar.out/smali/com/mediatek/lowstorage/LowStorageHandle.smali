.class public final Lcom/mediatek/lowstorage/LowStorageHandle;
.super Ljava/lang/Object;
.source "LowStorageHandle.java"


# static fields
.field public static final FORCE_CLEAN_ENABLE:Z = false

.field public static final LSM_THRESHOLD_FORCE_CLEAN:J = 0x0L

.field public static final LSM_THRESHOLD_LOWMEM:J = 0x600L

.field public static final LSM_THRESHOLD_WARN:J = 0x1000L

.field public static final PIGGYBANK_MAX_KB_SIZE:J = 0x1000L

.field public static final PIGGYBANK_PATH:Ljava/lang/String; = "/data/piggybank"

.field static final TAG:Ljava/lang/String; = "LowStorageHandle"

.field private static sInstance:Lcom/mediatek/lowstorage/LowStorageHandle;


# instance fields
.field public final DEL_FILENAME_PATTERN:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/lowstorage/LowStorageHandle;->mContext:Landroid/content/Context;

    .line 71
    const-string/jumbo v0, "^core\\.[0-9]*"

    iput-object v0, p0, Lcom/mediatek/lowstorage/LowStorageHandle;->DEL_FILENAME_PATTERN:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/mediatek/lowstorage/LowStorageHandle;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method

.method private LSMRemoveCoredump()V
    .locals 12

    .prologue
    .line 74
    const-string/jumbo v4, "LowStorageHandle"

    const-string/jumbo v5, "remove system core dump file to save storge memory"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/core"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "root_path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, "path":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 80
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v5, v4

    .line 81
    .local v1, "filename":Ljava/lang/String;
    const-string/jumbo v7, "^core\\.[0-9]*"

    invoke-virtual {v1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 84
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "f_remove":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 86
    const-string/jumbo v7, "LowStorageHandle"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "find and remove system core dump file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ";free :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 86
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 80
    .end local v0    # "f_remove":Ljava/io/File;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "filename":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public GetCurrentFlag()Z
    .locals 2

    .prologue
    .line 147
    const-string/jumbo v0, "sys.lowstorage_flag"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public registerFilter()V
    .locals 3

    .prologue
    .line 100
    const-string/jumbo v1, "LowStorageHandle"

    const-string/jumbo v2, "register filter"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/mediatek/lowstorage/LowStorageHandle;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 104
    const-string/jumbo v1, "LowStorageHandle"

    const-string/jumbo v2, "register receiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .local v0, "lsmFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/mediatek/lowstorage/LowStorageHandle;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/mediatek/lowstorage/LowStorageHandle$1;

    invoke-direct {v2, p0}, Lcom/mediatek/lowstorage/LowStorageHandle$1;-><init>(Lcom/mediatek/lowstorage/LowStorageHandle;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    .end local v0    # "lsmFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string/jumbo v1, "LowStorageHandle"

    const-string/jumbo v2, "mContext is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemReadyLSM()V
    .locals 16

    .prologue
    .line 153
    const-wide/16 v6, 0x0

    .line 155
    .local v6, "freeKBStorage":J
    const-string/jumbo v9, "LowStorageHandle"

    const-string/jumbo v12, " LSM_THRESHOLD_FORCE_CLEAN : 0; LSM_THRESHOLD_LOWMEM: 1536;LSM_THRESHOLD_WARN :4096"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string/jumbo v9, "LowStorageHandle"

    const-string/jumbo v12, " FORCE_CLEAN_ENABLE : false"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, "dataFileStats":Landroid/os/StatFs;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v12, v9

    .line 165
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v14, v9

    .line 164
    mul-long/2addr v12, v14

    .line 165
    const-wide/16 v14, 0x400

    .line 164
    div-long v6, v12, v14
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    const-string/jumbo v9, "LowStorageHandle"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "data.free.before KB: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-wide/16 v10, 0x1000

    .line 173
    .local v10, "piggyKBSize":J
    const-wide/16 v12, 0x2000

    cmp-long v9, v6, v12

    if-gtz v9, :cond_1

    const-wide/16 v12, 0x1000

    cmp-long v9, v6, v12

    if-lez v9, :cond_1

    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/lowstorage/LowStorageHandle;->LSMRemoveCoredump()V

    .line 187
    :cond_0
    :goto_1
    const-string/jumbo v9, "LowStorageHandle"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "systemReady : want to create piggybank KB:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v5, Ljava/io/File;

    const-string/jumbo v9, "/data/piggybank"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    .line 192
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    .local v8, "out":Ljava/io/OutputStream;
    const/16 v9, 0x800

    :try_start_2
    new-array v0, v9, [B

    .line 195
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 196
    .local v2, "dataWrite":I
    :goto_2
    int-to-long v12, v2

    const-wide/16 v14, 0x2

    div-long v14, v10, v14

    cmp-long v9, v12, v14

    if-gez v9, :cond_3

    .line 197
    const/4 v9, 0x0

    const/16 v12, 0x800

    invoke-virtual {v8, v0, v9, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 166
    .end local v0    # "buffer":[B
    .end local v2    # "dataWrite":I
    .end local v5    # "f":Ljava/io/File;
    .end local v8    # "out":Ljava/io/OutputStream;
    .end local v10    # "piggyKBSize":J
    :catch_0
    move-exception v4

    .line 167
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v9, "LowStorageHandle"

    const-string/jumbo v12, "IllegalArgumentException"

    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 176
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "piggyKBSize":J
    :cond_1
    const-wide/16 v12, 0x1000

    cmp-long v9, v6, v12

    if-gtz v9, :cond_2

    .line 177
    const-wide/16 v12, 0x800

    cmp-long v9, v6, v12

    if-ltz v9, :cond_2

    .line 178
    const-wide/16 v10, 0x800

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/lowstorage/LowStorageHandle;->LSMRemoveCoredump()V

    goto :goto_1

    .line 180
    :cond_2
    const-wide/16 v12, 0x800

    cmp-long v9, v6, v12

    if-gez v9, :cond_0

    .line 184
    long-to-double v12, v6

    const-wide v14, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v12, v14

    double-to-long v10, v12

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/lowstorage/LowStorageHandle;->LSMRemoveCoredump()V

    goto :goto_1

    .line 201
    .restart local v0    # "buffer":[B
    .restart local v2    # "dataWrite":I
    .restart local v5    # "f":Ljava/io/File;
    .restart local v8    # "out":Ljava/io/OutputStream;
    :cond_3
    :try_start_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 210
    .end local v0    # "buffer":[B
    .end local v2    # "dataWrite":I
    .end local v8    # "out":Ljava/io/OutputStream;
    :cond_4
    :goto_3
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v12, v9

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v14, v9

    mul-long/2addr v12, v14

    .line 212
    const-wide/16 v14, 0x400

    .line 211
    div-long v6, v12, v14
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 216
    :goto_4
    const-string/jumbo v9, "LowStorageHandle"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " data.free.after KB: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 200
    .restart local v8    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v9

    .line 201
    :try_start_5
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 200
    throw v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 203
    .end local v8    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v3

    .line 205
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v9, "LowStorageHandle"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " Can\'t create piggybank"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 213
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 214
    .restart local v4    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v9, "LowStorageHandle"

    const-string/jumbo v12, "IllegalArgumentException"

    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
