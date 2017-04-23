.class public final Lcom/mediatek/recovery/BackupServant;
.super Ljava/lang/Object;
.source "BackupServant.java"


# static fields
.field private static BACKUP_DIR:Ljava/io/File; = null

.field static final TAG:Ljava/lang/String; = "BackupServant"


# instance fields
.field private final MAX_RETIRES:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "recovery"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/recovery/BackupServant;->BACKUP_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/recovery/BackupServant;->BACKUP_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/recovery/BackupServant;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 66
    iput v0, p0, Lcom/mediatek/recovery/BackupServant;->MAX_RETIRES:I

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/recovery/BackupServant;->BACKUP_DIR:Ljava/io/File;

    .line 78
    sget-object v0, Lcom/mediatek/recovery/BackupServant;->BACKUP_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 79
    sget-object v0, Lcom/mediatek/recovery/BackupServant;->BACKUP_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 83
    return-void
.end method

.method private checkStorage(Ljava/io/File;J)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v6, v0

    mul-long/2addr v4, v6

    .line 213
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 215
    add-long/2addr v4, p2

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 216
    return v2

    :cond_0
    move v0, v2

    .line 215
    goto :goto_0

    .line 218
    :cond_1
    return v1
.end method

.method private checksum(Ljava/lang/String;)J
    .locals 6

    .prologue
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 226
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :try_start_1
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 229
    :goto_0
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    .line 240
    if-nez v1, :cond_2

    move-wide v0, v2

    .line 249
    :goto_1
    return-wide v0

    .line 230
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/zip/CRC32;->update(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 235
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 240
    if-nez v1, :cond_3

    :cond_1
    move-wide v0, v4

    goto :goto_1

    .line 242
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    move-wide v0, v2

    .line 246
    goto :goto_1

    :catch_1
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 242
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    move-wide v0, v4

    .line 246
    goto :goto_1

    :catch_2
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 246
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 238
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 240
    if-eqz v1, :cond_1

    .line 242
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    .line 246
    :catch_4
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 246
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 240
    :goto_6
    if-nez v1, :cond_4

    .line 246
    :goto_7
    throw v0

    .line 242
    :cond_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    .line 246
    :catch_5
    move-exception v1

    .line 245
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 246
    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "BackupServant"

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dest = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 187
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 188
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    if-nez v1, :cond_0

    const-string/jumbo v0, "BackupServant"

    const-string/jumbo v1, "Create input channel failed!"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 194
    :cond_0
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 199
    if-nez v0, :cond_1

    const-string/jumbo v0, "BackupServant"

    const-string/jumbo v1, "Create output channel failed!"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 200
    :cond_1
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 206
    return-void

    .line 203
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 190
    :goto_0
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    .line 193
    :goto_1
    if-nez v2, :cond_2

    const-string/jumbo v0, "BackupServant"

    const-string/jumbo v1, "Create input channel failed!"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 194
    :cond_2
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 199
    if-nez v1, :cond_3

    const-string/jumbo v0, "BackupServant"

    const-string/jumbo v1, "Create output channel failed!"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 200
    :cond_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 203
    throw v0

    .line 190
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    .line 203
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static getBackupDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/mediatek/recovery/BackupServant;->BACKUP_DIR:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public backup(Lcom/mediatek/recovery/Module;Lcom/mediatek/recovery/RegisteredRecoveryFile;)I
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    .line 88
    new-instance v1, Ljava/io/File;

    iget-object v0, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 90
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const-string/jumbo v0, "BackupServant"

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Target module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mediatek/recovery/Module;->moduleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " declared backup file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " doesn\'t exist or cannot backup. Skip it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    .line 94
    return v0

    .line 97
    :cond_0
    invoke-direct {p0, v1, v4, v5}, Lcom/mediatek/recovery/BackupServant;->checkStorage(Ljava/io/File;J)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 108
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 110
    :try_start_0
    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 113
    :goto_0
    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/mediatek/recovery/BackupServant;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/recovery/BackupServant;->checksum(Ljava/lang/String;)J

    move-result-wide v2

    .line 120
    iget-object v4, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/recovery/BackupServant;->checksum(Ljava/lang/String;)J

    move-result-wide v4

    .line 121
    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    if-gtz v0, :cond_1

    .line 123
    :cond_2
    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    const-string/jumbo v0, "BackupServant"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Backup failed, mismatched CRC for declared backup file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    .line 126
    return v0

    :cond_3
    const-string/jumbo v0, "BackupServant"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Backup failed, not enough storage for file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 100
    return v0

    .line 111
    :cond_4
    :try_start_1
    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    const-string/jumbo v0, "BackupServant"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Backup failed, create copy file failed for declared backup file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    .line 117
    return v0

    .line 129
    :cond_5
    return v7
.end method

.method public restore(Lcom/mediatek/recovery/Module;Lcom/mediatek/recovery/RegisteredRecoveryFile;)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 134
    new-instance v1, Ljava/io/File;

    iget-object v0, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    iget-object v0, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/mediatek/recovery/BackupServant;->checkStorage(Ljava/io/File;J)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    .line 150
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 152
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 161
    :cond_1
    :try_start_0
    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    invoke-static {v2, v1}, Lcom/mediatek/recovery/BackupServant;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/recovery/BackupServant;->checksum(Ljava/lang/String;)J

    move-result-wide v2

    .line 169
    iget-object v4, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/recovery/BackupServant;->checksum(Ljava/lang/String;)J

    move-result-wide v4

    .line 171
    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    if-gtz v0, :cond_0

    .line 173
    :cond_2
    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    const-string/jumbo v0, "BackupServant"

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Restore failed, checksum mismatch for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x5

    .line 175
    return v0

    :cond_3
    const-string/jumbo v0, "BackupServant"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Restore failed, not backup file for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 138
    return v0

    :cond_4
    const-string/jumbo v0, "BackupServant"

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Restore failed, not enough storage for backup file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    .line 144
    return v0

    .line 153
    :cond_5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v0, "BackupServant"

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Restore failed, cannot remove original file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    .line 155
    return v0

    .line 165
    :catch_0
    move-exception v0

    const-string/jumbo v0, "BackupServant"

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Restore failed, cannot copy backup file for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    .line 164
    return v0

    .line 178
    :cond_6
    return v7
.end method
