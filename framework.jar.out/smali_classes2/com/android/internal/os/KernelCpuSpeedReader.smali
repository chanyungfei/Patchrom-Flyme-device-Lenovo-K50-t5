.class public Lcom/android/internal/os/KernelCpuSpeedReader;
.super Ljava/lang/Object;
.source "KernelCpuSpeedReader.java"


# static fields
.field private static final MAX_SPEEDS:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "KernelCpuSpeedReader"

.field private static final sProcFile:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

.field private static final sProcFileCpu4:Ljava/lang/String; = "/sys/devices/system/cpu/cpu4/cpufreq/stats/time_in_state"


# instance fields
.field private mDeltaSpeedTimes:[J

.field private mLastSpeedTimes:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x3c

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    .line 44
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    .line 35
    return-void
.end method


# virtual methods
.method public readDelta()[J
    .locals 21

    .prologue
    .line 52
    const/4 v5, 0x0

    .line 54
    .local v5, "fileReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    const-string/jumbo v14, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {v6, v14}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .local v6, "fileReader":Ljava/io/FileReader;
    :try_start_1
    const-string/jumbo v14, "KernelCpuSpeedReader"

    .end local v5    # "fileReader":Ljava/io/FileReader;
    const-string/jumbo v15, "cpu0 time_in_state exist."

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9

    :goto_0
    move-object v5, v6

    .line 68
    .end local v6    # "fileReader":Ljava/io/FileReader;
    .local v5, "fileReader":Ljava/io/FileReader;
    const/4 v15, 0x0

    const/4 v8, 0x0

    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v11, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v14, 0x20

    invoke-direct {v11, v14}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 71
    .local v11, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    const/4 v10, 0x0

    .line 72
    .local v10, "speedIndex":I
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 73
    invoke-virtual {v11, v7}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v11}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 77
    invoke-virtual {v11}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0xa

    mul-long v12, v16, v18

    .line 78
    .local v12, "time":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    move-object/from16 v16, v0

    aget-wide v16, v16, v10

    sub-long v16, v12, v16

    aput-wide v16, v14, v10

    .line 79
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimes:[J

    aput-wide v12, v14, v10
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 80
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 56
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "speedIndex":I
    .end local v11    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v12    # "time":J
    .local v5, "fileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v3

    .line 57
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .local v3, "e1":Ljava/io/FileNotFoundException;
    :goto_2
    const-string/jumbo v14, "KernelCpuSpeedReader"

    const-string/jumbo v15, "cpu0 time_in_state not exist, read cpu4 time_in_state..."

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :try_start_4
    new-instance v6, Ljava/io/FileReader;

    const-string/jumbo v14, "/sys/devices/system/cpu/cpu4/cpufreq/stats/time_in_state"

    invoke-direct {v6, v14}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_8

    .line 60
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :try_start_5
    const-string/jumbo v14, "KernelCpuSpeedReader"

    const-string/jumbo v15, "cpu4 time_in_state exist."

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 61
    :catch_1
    move-exception v4

    .local v4, "e2":Ljava/io/FileNotFoundException;
    move-object v5, v6

    .line 62
    .end local v6    # "fileReader":Ljava/io/FileReader;
    :goto_3
    const-string/jumbo v14, "KernelCpuSpeedReader"

    const-string/jumbo v15, "cpu4 time_in_state not exist, is it a BUG??!!"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 64
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    return-object v14

    .line 85
    .end local v3    # "e1":Ljava/io/FileNotFoundException;
    .end local v4    # "e2":Ljava/io/FileNotFoundException;
    .local v5, "fileReader":Ljava/io/FileReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "speedIndex":I
    .restart local v11    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_0
    if-eqz v9, :cond_1

    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_1
    :goto_4
    if-eqz v15, :cond_2

    :try_start_7
    throw v15
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 82
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v8, v9

    .line 83
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "speedIndex":I
    .end local v11    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :goto_5
    const-string/jumbo v14, "KernelCpuSpeedReader"

    const-string/jumbo v15, "Failed to read cpu-freq"

    invoke-static {v14, v15, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 86
    .end local v2    # "e":Ljava/io/IOException;
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimes:[J

    return-object v14

    .line 85
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "speedIndex":I
    .restart local v11    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_3
    move-exception v15

    goto :goto_4

    :cond_2
    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .end local v7    # "line":Ljava/lang/String;
    .end local v10    # "speedIndex":I
    .end local v11    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .local v8, "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v14

    .end local v8    # "reader":Ljava/io/BufferedReader;
    :goto_7
    :try_start_8
    throw v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v15

    move-object/from16 v20, v15

    move-object v15, v14

    move-object/from16 v14, v20

    :goto_8
    if-eqz v8, :cond_3

    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_3
    :goto_9
    if-eqz v15, :cond_5

    :try_start_a
    throw v15

    .line 82
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 85
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v16

    if-nez v15, :cond_4

    move-object/from16 v15, v16

    goto :goto_9

    :cond_4
    move-object/from16 v0, v16

    if-eq v15, v0, :cond_3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_5
    throw v14
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v14

    goto :goto_8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v14

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    goto :goto_8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v14

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 61
    .end local v5    # "fileReader":Ljava/io/FileReader;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "e1":Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v4

    .restart local v4    # "e2":Ljava/io/FileNotFoundException;
    goto :goto_3

    .line 56
    .end local v3    # "e1":Ljava/io/FileNotFoundException;
    .end local v4    # "e2":Ljava/io/FileNotFoundException;
    .restart local v6    # "fileReader":Ljava/io/FileReader;
    :catch_9
    move-exception v3

    .restart local v3    # "e1":Ljava/io/FileNotFoundException;
    move-object v5, v6

    .end local v6    # "fileReader":Ljava/io/FileReader;
    .restart local v5    # "fileReader":Ljava/io/FileReader;
    goto/16 :goto_2
.end method
