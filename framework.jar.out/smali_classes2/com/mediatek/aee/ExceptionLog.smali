.class public Lcom/mediatek/aee/ExceptionLog;
.super Ljava/lang/Object;
.source "ExceptionLog.java"


# static fields
.field public static final AEE_EXCEPTION_JNI:B = 0x1t

.field public static final AEE_WARNING_JNI:B = 0x0t

.field public static final TAG:Ljava/lang/String; = "AES"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string/jumbo v0, "AES"

    const-string/jumbo v1, "load Exception Log jni"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string/jumbo v0, "mediatek_exceptionlog"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native SFMatter(JJ)J
.end method

.method private static native WDTMatter(J)V
.end method

.method private static getAllThreadStackTraces()Ljava/lang/String;
    .locals 14

    .prologue
    .line 143
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v7

    .line 144
    .local v7, "st":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    new-instance v9, Ljava/io/StringWriter;

    invoke-direct {v9}, Ljava/io/StringWriter;-><init>()V

    .line 145
    .local v9, "traces":Ljava/io/Writer;
    const-string/jumbo v6, ""

    .line 148
    .local v6, "ret_traces":Ljava/lang/String;
    :try_start_0
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 149
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    .line 150
    .local v3, "el":[Ljava/lang/StackTraceElement;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Thread;

    .line 152
    .local v8, "th":Ljava/lang/Thread;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 153
    const-string/jumbo v11, " "

    .line 152
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 153
    invoke-virtual {v8}, Ljava/lang/Thread;->isDaemon()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, "daemon"

    .line 152
    :goto_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 154
    const-string/jumbo v11, " prio="

    .line 152
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 154
    invoke-virtual {v8}, Ljava/lang/Thread;->getPriority()I

    move-result v11

    .line 152
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 155
    const-string/jumbo v11, " Thread id="

    .line 152
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 155
    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    .line 152
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 155
    const-string/jumbo v11, " "

    .line 152
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 155
    invoke-virtual {v8}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v11

    .line 152
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 155
    const-string/jumbo v11, "\n"

    .line 152
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 157
    const/4 v10, 0x0

    array-length v11, v3

    :goto_2
    if-ge v10, v11, :cond_1

    aget-object v5, v3, v10

    .line 158
    .local v5, "line":Ljava/lang/StackTraceElement;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\t"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 157
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 153
    .end local v5    # "line":Ljava/lang/StackTraceElement;
    :cond_0
    const-string/jumbo v10, ""

    goto :goto_1

    .line 160
    :cond_1
    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 165
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v2    # "e$iterator":Ljava/util/Iterator;
    .end local v3    # "el":[Ljava/lang/StackTraceElement;
    .end local v8    # "th":Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v10, "IOException"

    return-object v10

    .line 162
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "e$iterator":Ljava/util/Iterator;
    :cond_2
    if-eqz v9, :cond_3

    .line 163
    :try_start_1
    invoke-virtual {v9}, Ljava/io/Writer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 171
    :cond_3
    return-object v6

    .line 167
    .end local v2    # "e$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v4

    .line 168
    .local v4, "err":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v10, "java.lang.OutOfMemoryError"

    return-object v10
.end method

.method private static native getNativeExceptionPidListImpl([I)Z
.end method

.method private static getThreadStackTrace()Ljava/lang/String;
    .locals 11

    .prologue
    .line 111
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 112
    .local v6, "traces":Ljava/io/Writer;
    const-string/jumbo v3, ""

    .line 115
    .local v3, "ret_trace":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 116
    .local v5, "th":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 118
    .local v4, "st":[Ljava/lang/StackTraceElement;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 119
    const-string/jumbo v8, " "

    .line 118
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 119
    invoke-virtual {v5}, Ljava/lang/Thread;->isDaemon()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "daemon"

    .line 118
    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 120
    const-string/jumbo v8, " prio="

    .line 118
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 120
    invoke-virtual {v5}, Ljava/lang/Thread;->getPriority()I

    move-result v8

    .line 118
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 121
    const-string/jumbo v8, " Thread id="

    .line 118
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 121
    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    .line 118
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 121
    const-string/jumbo v8, " "

    .line 118
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 121
    invoke-virtual {v5}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v8

    .line 118
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 121
    const-string/jumbo v8, "\n"

    .line 118
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 122
    const/4 v7, 0x0

    array-length v8, v4

    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v2, v4, v7

    .line 123
    .local v2, "line":Ljava/lang/StackTraceElement;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 122
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 119
    .end local v2    # "line":Ljava/lang/StackTraceElement;
    :cond_0
    const-string/jumbo v7, ""

    goto :goto_0

    .line 125
    :cond_1
    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 126
    if-eqz v6, :cond_2

    .line 127
    invoke-virtual {v6}, Ljava/io/Writer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 135
    :cond_2
    return-object v3

    .line 131
    .end local v4    # "st":[Ljava/lang/StackTraceElement;
    .end local v5    # "th":Ljava/lang/Thread;
    :catch_0
    move-exception v1

    .line 132
    .local v1, "err":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v7, "java.lang.OutOfMemoryError"

    return-object v7

    .line 129
    .end local v1    # "err":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v7, "IOException"

    return-object v7
.end method

.method private static native isExceptionImpl()Z
.end method

.method private static native isNativeExceptionImpl(I)Z
.end method

.method private static native report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method private static native systemreportImpl(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public SFMatterJava(JJ)J
    .locals 3
    .param p1, "setorget"    # J
    .param p3, "lParam"    # J

    .prologue
    .line 177
    invoke-static {p1, p2, p3, p4}, Lcom/mediatek/aee/ExceptionLog;->SFMatter(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public WDTMatterJava(J)V
    .locals 1
    .param p1, "lParam"    # J

    .prologue
    .line 174
    invoke-static {p1, p2}, Lcom/mediatek/aee/ExceptionLog;->WDTMatter(J)V

    .line 173
    return-void
.end method

.method public getNativeExceptionPidList([I)Z
    .locals 1
    .param p1, "pidList"    # [I

    .prologue
    .line 95
    invoke-static {p1}, Lcom/mediatek/aee/ExceptionLog;->getNativeExceptionPidListImpl([I)Z

    move-result v0

    return v0
.end method

.method public handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "pid"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string/jumbo v5, "AES"

    const-string/jumbo v7, "Exception Log handling..."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string/jumbo v3, ""

    .line 60
    .local v3, "proc":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 61
    .local v4, "pkgs":Ljava/lang/String;
    const-string/jumbo v17, ""

    .line 62
    .local v17, "traceback":Ljava/lang/String;
    const-string/jumbo v11, ""

    .line 63
    .local v11, "cause":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 64
    .local v6, "detail":Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 66
    .local v8, "lpid":J
    const-string/jumbo v5, "\n+"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 67
    .local v16, "splitInfo":[Ljava/lang/String;
    const-string/jumbo v10, "^Process:\\s+(.*)"

    .line 68
    .local v10, "PROC_REGEX":Ljava/lang/String;
    const-string/jumbo v2, "^Package:\\s+(.*)"

    .line 69
    .local v2, "PKG_REGEX":Ljava/lang/String;
    const-string/jumbo v5, "^Process:\\s+(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 70
    .local v14, "procMatcher":Ljava/util/regex/Pattern;
    const-string/jumbo v5, "^Package:\\s+(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 73
    .local v13, "pkgMatcher":Ljava/util/regex/Pattern;
    const/4 v5, 0x0

    move-object/from16 v0, v16

    array-length v7, v0

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v15, v16, v5

    .line 74
    .local v15, "s":Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 75
    .local v12, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 76
    :cond_0
    invoke-virtual {v13, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 77
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18

    if-eqz v18, :cond_1

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 81
    .end local v12    # "m":Ljava/util/regex/Matcher;
    .end local v15    # "s":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "Backtrace of all threads:\n\n"

    .line 82
    const-string/jumbo v5, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 83
    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    :cond_3
    move-object/from16 v5, p2

    move-object/from16 v7, p1

    .line 85
    invoke-static/range {v3 .. v9}, Lcom/mediatek/aee/ExceptionLog;->report(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 56
    return-void
.end method

.method public isException()Z
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/mediatek/aee/ExceptionLog;->isExceptionImpl()Z

    move-result v0

    return v0
.end method

.method public isNativeException(I)Z
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 99
    invoke-static {p1}, Lcom/mediatek/aee/ExceptionLog;->isNativeExceptionImpl(I)Z

    move-result v0

    return v0
.end method

.method public systemreport(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "Type"    # B
    .param p2, "Module"    # Ljava/lang/String;
    .param p3, "Msg"    # Ljava/lang/String;
    .param p4, "Path"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {}, Lcom/mediatek/aee/ExceptionLog;->getThreadStackTrace()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "Backtrace":Ljava/lang/String;
    invoke-static {p1, p2, v0, p3, p4}, Lcom/mediatek/aee/ExceptionLog;->systemreportImpl(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method
