.class public Lcom/mediatek/recovery/EventLogger;
.super Ljava/lang/Object;
.source "EventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/recovery/EventLogger$LogDirObserver;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static LAST_BOOT_FAILED:I = 0x0

.field public static LAST_BOOT_RECOVERY:I = 0x0

.field public static LAST_BOOT_SUCCESS:I = 0x0

.field private static final LOG_SIZE:J = 0x1400000L

.field private static TAG:Ljava/lang/String; = null

.field static TAG_BOOT_FAILED:Ljava/lang/String; = null

.field static TAG_BOOT_RECOVERY:Ljava/lang/String; = null

.field static TAG_BOOT_SUCCESS:Ljava/lang/String; = null

.field private static logFilePointer:J = 0x0L

.field private static mDetailedLogFileDir:Ljava/io/File; = null

.field private static final mExceptionFilePrefix:Ljava/lang/String; = "exp_"

.field private static final mExceptionFileSurfix:Ljava/lang/String; = ".log"

.field private static final mLineEnd:C = '\n'

.field private static mLogBakFile:Ljava/io/File;

.field private static mLogFile:Ljava/io/File;

.field private static mLogFileDir:Ljava/io/File;


# instance fields
.field private mDetailLogObserver:Lcom/mediatek/recovery/EventLogger$LogDirObserver;

.field private mLogObserver:Lcom/mediatek/recovery/EventLogger$LogDirObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 25
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mediatek/recovery/BackupServant;->getBackupDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/recovery/EventLogger;->mLogFileDir:Ljava/io/File;

    .line 27
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mediatek/recovery/EventLogger;->mLogFileDir:Ljava/io/File;

    const-string/jumbo v2, "detail"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/recovery/EventLogger;->mDetailedLogFileDir:Ljava/io/File;

    .line 28
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mediatek/recovery/EventLogger;->mLogFileDir:Ljava/io/File;

    const-string/jumbo v2, "RecoveryManagerEvent.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/recovery/EventLogger;->mLogFile:Ljava/io/File;

    .line 30
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mediatek/recovery/EventLogger;->mLogFileDir:Ljava/io/File;

    const-string/jumbo v2, "RecoveryManagerEvent.bak"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/recovery/EventLogger;->mLogBakFile:Ljava/io/File;

    const-string/jumbo v0, "[BOOT_SUCCESS]"

    .line 36
    sput-object v0, Lcom/mediatek/recovery/EventLogger;->TAG_BOOT_SUCCESS:Ljava/lang/String;

    const-string/jumbo v0, "[BOOT_FAILED]"

    .line 37
    sput-object v0, Lcom/mediatek/recovery/EventLogger;->TAG_BOOT_FAILED:Ljava/lang/String;

    const-string/jumbo v0, "[BOOT_RECOVERY]"

    .line 38
    sput-object v0, Lcom/mediatek/recovery/EventLogger;->TAG_BOOT_RECOVERY:Ljava/lang/String;

    .line 40
    sput v3, Lcom/mediatek/recovery/EventLogger;->LAST_BOOT_SUCCESS:I

    const/4 v0, 0x1

    .line 41
    sput v0, Lcom/mediatek/recovery/EventLogger;->LAST_BOOT_FAILED:I

    const/4 v0, 0x2

    .line 42
    sput v0, Lcom/mediatek/recovery/EventLogger;->LAST_BOOT_RECOVERY:I

    .line 50
    sput-boolean v3, Lcom/mediatek/recovery/EventLogger;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v4, 0x1fc

    const/16 v6, 0x88

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    sput-object p1, Lcom/mediatek/recovery/EventLogger;->TAG:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/mediatek/recovery/EventLogger;->mLogFileDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 105
    sget-object v0, Lcom/mediatek/recovery/EventLogger;->mLogFileDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 107
    sget-object v0, Lcom/mediatek/recovery/EventLogger;->mDetailedLogFileDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 108
    sget-object v0, Lcom/mediatek/recovery/EventLogger;->mDetailedLogFileDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 110
    sget-object v0, Lcom/mediatek/recovery/EventLogger;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/mediatek/recovery/EventLogger;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_1
    sput-wide v0, Lcom/mediatek/recovery/EventLogger;->logFilePointer:J

    .line 111
    new-instance v0, Lcom/mediatek/recovery/EventLogger$LogDirObserver;

    sget-object v1, Lcom/mediatek/recovery/EventLogger;->mLogFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6, v3}, Lcom/mediatek/recovery/EventLogger$LogDirObserver;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/mediatek/recovery/EventLogger;->mLogObserver:Lcom/mediatek/recovery/EventLogger$LogDirObserver;

    .line 113
    iget-object v0, p0, Lcom/mediatek/recovery/EventLogger;->mLogObserver:Lcom/mediatek/recovery/EventLogger$LogDirObserver;

    invoke-virtual {v0}, Lcom/mediatek/recovery/EventLogger$LogDirObserver;->startWatching()V

    .line 114
    new-instance v0, Lcom/mediatek/recovery/EventLogger$LogDirObserver;

    sget-object v1, Lcom/mediatek/recovery/EventLogger;->mDetailedLogFileDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6, v2}, Lcom/mediatek/recovery/EventLogger$LogDirObserver;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/mediatek/recovery/EventLogger;->mDetailLogObserver:Lcom/mediatek/recovery/EventLogger$LogDirObserver;

    .line 116
    iget-object v0, p0, Lcom/mediatek/recovery/EventLogger;->mDetailLogObserver:Lcom/mediatek/recovery/EventLogger$LogDirObserver;

    invoke-virtual {v0}, Lcom/mediatek/recovery/EventLogger$LogDirObserver;->startWatching()V

    .line 117
    return-void

    :cond_0
    move v0, v3

    .line 110
    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/mediatek/recovery/EventLogger;->mDetailedLogFileDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100()Ljava/io/File;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/mediatek/recovery/EventLogger;->mLogFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200()Ljava/io/File;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/mediatek/recovery/EventLogger;->mLogBakFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$302(J)J
    .locals 0

    .prologue
    .line 22
    sput-wide p0, Lcom/mediatek/recovery/EventLogger;->logFilePointer:J

    return-wide p0
.end method

.method static getExceptionFileId(Z)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 170
    sget-object v1, Lcom/mediatek/recovery/EventLogger;->mDetailedLogFileDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 173
    if-nez p0, :cond_1

    const v1, 0x7fffffff

    .line 179
    :goto_0
    if-nez v3, :cond_2

    .line 180
    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 174
    goto :goto_0

    .line 179
    :cond_2
    array-length v2, v3

    if-eqz v2, :cond_0

    .line 183
    :goto_1
    array-length v2, v3

    if-lt v0, v2, :cond_3

    .line 202
    if-nez p0, :cond_7

    .line 205
    :goto_2
    sget-boolean v0, Lcom/mediatek/recovery/EventLogger;->DEBUG:Z

    if-nez v0, :cond_8

    .line 206
    :goto_3
    return v1

    .line 184
    :cond_3
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 185
    if-nez v2, :cond_5

    .line 183
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "exp_"

    .line 185
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, ".log"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "exp_"

    .line 187
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string/jumbo v5, ".log"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 191
    if-nez p0, :cond_6

    .line 196
    if-le v1, v2, :cond_4

    move v1, v2

    .line 197
    goto :goto_4

    .line 192
    :cond_6
    if-ge v1, v2, :cond_4

    move v1, v2

    .line 193
    goto :goto_4

    .line 203
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 205
    :cond_8
    sget-object v0, Lcom/mediatek/recovery/EventLogger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception file id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public getLastBootStatus()I
    .locals 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 210
    sget v0, Lcom/mediatek/recovery/EventLogger;->LAST_BOOT_SUCCESS:I

    .line 213
    :try_start_0
    sget-wide v4, Lcom/mediatek/recovery/EventLogger;->logFilePointer:J

    const-wide/16 v6, 0x3

    sub-long/2addr v4, v6

    .line 214
    cmp-long v1, v4, v10

    if-gtz v1, :cond_3

    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    .line 215
    new-instance v8, Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/mediatek/recovery/EventLogger;->mLogFile:Ljava/io/File;

    const-string/jumbo v6, "r"

    invoke-direct {v8, v1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    :goto_1
    invoke-virtual {v8, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 218
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    const/16 v6, 0xa

    if-ne v1, v6, :cond_4

    .line 219
    :cond_0
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 220
    sget-boolean v2, Lcom/mediatek/recovery/EventLogger;->DEBUG:Z

    if-nez v2, :cond_6

    .line 221
    :goto_2
    if-nez v1, :cond_7

    .line 230
    :cond_1
    :goto_3
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 236
    :cond_2
    :goto_4
    return v0

    :cond_3
    move v1, v3

    .line 214
    goto :goto_0

    :cond_4
    const-wide/16 v6, 0x1

    .line 218
    sub-long v6, v4, v6

    cmp-long v1, v4, v10

    if-lez v1, :cond_5

    move v1, v2

    :goto_5
    if-eqz v1, :cond_0

    move-wide v4, v6

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_5

    .line 220
    :cond_6
    sget-object v2, Lcom/mediatek/recovery/EventLogger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Last log line is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 235
    :catch_0
    move-exception v1

    move-object v12, v1

    move v1, v0

    move-object v0, v12

    .line 234
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_4

    .line 222
    :cond_7
    :try_start_1
    sget-object v2, Lcom/mediatek/recovery/EventLogger;->TAG_BOOT_SUCCESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 224
    sget-object v2, Lcom/mediatek/recovery/EventLogger;->TAG_BOOT_RECOVERY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 226
    sget-object v2, Lcom/mediatek/recovery/EventLogger;->TAG_BOOT_FAILED:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    sget v0, Lcom/mediatek/recovery/EventLogger;->LAST_BOOT_FAILED:I

    goto :goto_3

    .line 223
    :cond_8
    sget v0, Lcom/mediatek/recovery/EventLogger;->LAST_BOOT_SUCCESS:I

    goto :goto_3

    .line 225
    :cond_9
    sget v0, Lcom/mediatek/recovery/EventLogger;->LAST_BOOT_RECOVERY:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public logBootFail(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    const/4 v0, 0x5

    .line 143
    :try_start_0
    sget-object v1, Lcom/mediatek/recovery/EventLogger;->TAG_BOOT_FAILED:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/recovery/EventLogger;->logInfo(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 144
    sget-object v1, Lcom/mediatek/recovery/EventLogger;->TAG_BOOT_FAILED:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/recovery/EventLogger;->logInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/recovery/EventLogger;->getExceptionFileId(Z)I

    move-result v0

    .line 146
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/mediatek/recovery/EventLogger;->mDetailedLogFileDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exp_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".log"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 148
    sget-object v2, Lcom/mediatek/recovery/EventLogger;->TAG_BOOT_FAILED:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deatail exception info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/mediatek/recovery/EventLogger;->logInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 151
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 152
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 153
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 154
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fc

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public logBootRecovery(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x5

    .line 166
    sget-object v1, Lcom/mediatek/recovery/EventLogger;->TAG_BOOT_RECOVERY:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/mediatek/recovery/EventLogger;->logInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public logBootSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x4

    .line 162
    sget-object v1, Lcom/mediatek/recovery/EventLogger;->TAG_BOOT_SUCCESS:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/mediatek/recovery/EventLogger;->logInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public logInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 120
    sget-object v0, Lcom/mediatek/recovery/EventLogger;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p3}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 122
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/mediatek/recovery/EventLogger;->mLogFile:Ljava/io/File;

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 124
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 131
    sget-wide v2, Lcom/mediatek/recovery/EventLogger;->logFilePointer:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    .line 132
    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 133
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    sput-wide v2, Lcom/mediatek/recovery/EventLogger;->logFilePointer:J

    .line 134
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 135
    sget-object v0, Lcom/mediatek/recovery/EventLogger;->mLogFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fc

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method
