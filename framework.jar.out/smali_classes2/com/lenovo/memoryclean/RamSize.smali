.class public Lcom/lenovo/memoryclean/RamSize;
.super Ljava/lang/Object;
.source "RamSize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/memoryclean/RamSize$RAMSize;
    }
.end annotation


# static fields
.field private static PROC_MEM_INFO:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "RamSize"

    .line 16
    sput-object v0, Lcom/lenovo/memoryclean/RamSize;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "/proc/meminfo"

    .line 17
    sput-object v0, Lcom/lenovo/memoryclean/RamSize;->PROC_MEM_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getRamSizeGB()F
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v1, 0x0

    .line 53
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    sget-object v2, Lcom/lenovo/memoryclean/RamSize;->PROC_MEM_INFO:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    invoke-direct {v3, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const-string/jumbo v0, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 58
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    if-nez v4, :cond_1

    .line 100
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    :goto_1
    return v0

    :cond_1
    :try_start_3
    const-string/jumbo v2, "MemTotal"

    .line 59
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v8, :cond_0

    const/16 v2, 0x20

    .line 60
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    :goto_2
    const-string/jumbo v5, "1234567890"

    .line 61
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v8, :cond_2

    .line 64
    add-int/lit8 v2, v2, 0x1

    const-string/jumbo v5, "kB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 65
    sget-object v4, Lcom/lenovo/memoryclean/RamSize;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x400

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/lenovo/memoryclean/RamSize$RAMSize;->getTotalRAMbySize(J)Lcom/lenovo/memoryclean/RamSize$RAMSize;

    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lcom/lenovo/memoryclean/RamSize$RAMSize;->name()Ljava/lang/String;

    move-result-object v2

    .line 69
    if-eqz v2, :cond_0

    const-string/jumbo v4, "SIZE_0G"

    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "SIZE_0_5G"

    .line 73
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "SIZE_1G"

    .line 76
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "SIZE_1_5G"

    .line 79
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "SIZE_2G"

    .line 82
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "SIZE_3G"

    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string/jumbo v4, "SIZE_4G"

    .line 88
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 92
    goto/16 :goto_0

    .line 62
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 72
    goto/16 :goto_0

    :cond_4
    const/high16 v0, 0x3f000000    # 0.5f

    .line 75
    goto/16 :goto_0

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 78
    goto/16 :goto_0

    :cond_6
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 81
    goto/16 :goto_0

    :cond_7
    const/high16 v0, 0x40000000    # 2.0f

    .line 84
    goto/16 :goto_0

    :cond_8
    const/high16 v0, 0x40400000    # 3.0f

    .line 87
    goto/16 :goto_0

    :cond_9
    const/high16 v0, 0x40800000    # 4.0f

    .line 90
    goto/16 :goto_0

    .line 101
    :catchall_0
    move-exception v1

    .line 100
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 104
    :catch_0
    move-exception v1

    .line 103
    :goto_3
    sget-object v1, Lcom/lenovo/memoryclean/RamSize;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "IO Exception when getting memory information for phone information."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 104
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_3
.end method
