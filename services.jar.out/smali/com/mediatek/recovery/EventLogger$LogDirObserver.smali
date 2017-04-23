.class public Lcom/mediatek/recovery/EventLogger$LogDirObserver;
.super Landroid/os/FileObserver;
.source "EventLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/recovery/EventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogDirObserver"
.end annotation


# static fields
.field static final ADD_EVENTS:I = 0x88


# instance fields
.field private mIsDetailFile:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-boolean p3, p0, Lcom/mediatek/recovery/EventLogger$LogDirObserver;->mIsDetailFile:Z

    .line 61
    return-void
.end method

.method private static getDirSize(Ljava/io/File;)J
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 82
    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 90
    array-length v5, v4

    move v8, v0

    move-wide v0, v2

    move v2, v8

    :goto_0
    if-lt v2, v5, :cond_2

    .line 98
    return-wide v0

    .line 83
    :cond_0
    return-wide v2

    .line 86
    :cond_1
    return-wide v2

    .line 90
    :cond_2
    aget-object v3, v4, v2

    .line 91
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_3

    .line 93
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_4

    .line 90
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 95
    invoke-static {v3}, Lcom/mediatek/recovery/EventLogger$LogDirObserver;->getDirSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_1
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 6

    .prologue
    const-wide/32 v4, 0x1400000

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    and-int/lit16 v2, p1, 0x88

    if-nez v2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-boolean v2, p0, Lcom/mediatek/recovery/EventLogger$LogDirObserver;->mIsDetailFile:Z

    if-nez v2, :cond_3

    .line 73
    :cond_2
    iget-boolean v2, p0, Lcom/mediatek/recovery/EventLogger$LogDirObserver;->mIsDetailFile:Z

    if-nez v2, :cond_0

    # getter for: Lcom/mediatek/recovery/EventLogger;->mLogFile:Ljava/io/File;
    invoke-static {}, Lcom/mediatek/recovery/EventLogger;->access$100()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    :goto_1
    if-nez v0, :cond_0

    .line 74
    # getter for: Lcom/mediatek/recovery/EventLogger;->mLogBakFile:Ljava/io/File;
    invoke-static {}, Lcom/mediatek/recovery/EventLogger;->access$200()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 75
    # getter for: Lcom/mediatek/recovery/EventLogger;->mLogFile:Ljava/io/File;
    invoke-static {}, Lcom/mediatek/recovery/EventLogger;->access$100()Ljava/io/File;

    move-result-object v0

    # getter for: Lcom/mediatek/recovery/EventLogger;->mLogBakFile:Ljava/io/File;
    invoke-static {}, Lcom/mediatek/recovery/EventLogger;->access$200()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-wide/16 v0, 0x0

    .line 76
    # setter for: Lcom/mediatek/recovery/EventLogger;->logFilePointer:J
    invoke-static {v0, v1}, Lcom/mediatek/recovery/EventLogger;->access$302(J)J

    goto :goto_0

    .line 66
    :cond_3
    # getter for: Lcom/mediatek/recovery/EventLogger;->mDetailedLogFileDir:Ljava/io/File;
    invoke-static {}, Lcom/mediatek/recovery/EventLogger;->access$000()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/recovery/EventLogger$LogDirObserver;->getDirSize(Ljava/io/File;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    move v2, v0

    :goto_2
    if-nez v2, :cond_2

    .line 68
    invoke-static {v1}, Lcom/mediatek/recovery/EventLogger;->getExceptionFileId(Z)I

    move-result v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/io/File;

    # getter for: Lcom/mediatek/recovery/EventLogger;->mDetailedLogFileDir:Ljava/io/File;
    invoke-static {}, Lcom/mediatek/recovery/EventLogger;->access$000()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_4
    move v2, v1

    .line 66
    goto :goto_2

    :cond_5
    move v0, v1

    .line 73
    goto :goto_1
.end method
