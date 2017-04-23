.class public Landroid/text/Hyphenator;
.super Ljava/lang/Object;
.source "Hyphenator.java"


# static fields
.field private static final LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field static final sEmptyHyphenator:Landroid/text/Hyphenator;

.field private static final sLock:Ljava/lang/Object;

.field static final sMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/Locale;",
            "Landroid/text/Hyphenator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mNativePtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    const-string/jumbo v0, "Hyphenator"

    sput-object v0, Landroid/text/Hyphenator;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/Hyphenator;->sLock:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    .line 48
    new-instance v0, Landroid/text/Hyphenator;

    const-string/jumbo v1, ""

    invoke-static {v1}, Landroid/text/StaticLayout;->nLoadHyphenator(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Landroid/text/Hyphenator;-><init>(J)V

    sput-object v0, Landroid/text/Hyphenator;->sEmptyHyphenator:Landroid/text/Hyphenator;

    .line 114
    const/16 v0, 0xd

    new-array v0, v0, [[Ljava/lang/String;

    .line 119
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "en-AS"

    aput-object v2, v1, v4

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 120
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "en-GU"

    aput-object v2, v1, v4

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 121
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "en-MH"

    aput-object v2, v1, v4

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    .line 122
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "en-MP"

    aput-object v2, v1, v4

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 123
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "en-PR"

    aput-object v2, v1, v4

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 124
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "en-UM"

    aput-object v2, v1, v4

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 125
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "en-VI"

    aput-object v2, v1, v4

    const-string/jumbo v2, "en-US"

    aput-object v2, v1, v5

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 128
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "no"

    aput-object v2, v1, v4

    const-string/jumbo v2, "nb"

    aput-object v2, v1, v5

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 133
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "am"

    aput-object v2, v1, v4

    const-string/jumbo v2, "und-Ethi"

    aput-object v2, v1, v5

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 134
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "byn"

    aput-object v2, v1, v4

    const-string/jumbo v2, "und-Ethi"

    aput-object v2, v1, v5

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 135
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "gez"

    aput-object v2, v1, v4

    const-string/jumbo v2, "und-Ethi"

    aput-object v2, v1, v5

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 136
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "ti"

    aput-object v2, v1, v4

    const-string/jumbo v2, "und-Ethi"

    aput-object v2, v1, v5

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 137
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "wal"

    aput-object v2, v1, v4

    const-string/jumbo v2, "und-Ethi"

    aput-object v2, v1, v5

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 114
    sput-object v0, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    .line 37
    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativePtr"    # J

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Landroid/text/Hyphenator;->mNativePtr:J

    .line 52
    return-void
.end method

.method public static get(Ljava/util/Locale;)J
    .locals 8
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 57
    sget-object v5, Landroid/text/Hyphenator;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 58
    :try_start_0
    sget-object v4, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/Hyphenator;

    .line 59
    .local v1, "result":Landroid/text/Hyphenator;
    if-eqz v1, :cond_0

    .line 60
    iget-wide v6, v1, Landroid/text/Hyphenator;->mNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-wide v6

    .line 66
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "languageOnlyLocale":Ljava/util/Locale;
    sget-object v4, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Landroid/text/Hyphenator;
    check-cast v1, Landroid/text/Hyphenator;

    .line 68
    .restart local v1    # "result":Landroid/text/Hyphenator;
    if-eqz v1, :cond_1

    .line 69
    sget-object v4, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-wide v6, v1, Landroid/text/Hyphenator;->mNativePtr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-wide v6

    .line 74
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "script":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 76
    new-instance v4, Ljava/util/Locale$Builder;

    invoke-direct {v4}, Ljava/util/Locale$Builder;-><init>()V

    .line 77
    const-string/jumbo v6, "und"

    .line 76
    invoke-virtual {v4, v6}, Ljava/util/Locale$Builder;->setLanguage(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Locale$Builder;->setScript(Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v3

    .line 80
    .local v3, "scriptOnlyLocale":Ljava/util/Locale;
    sget-object v4, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Landroid/text/Hyphenator;
    check-cast v1, Landroid/text/Hyphenator;

    .line 81
    .restart local v1    # "result":Landroid/text/Hyphenator;
    if-eqz v1, :cond_2

    .line 82
    sget-object v4, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-wide v6, v1, Landroid/text/Hyphenator;->mNativePtr:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-wide v6

    .line 87
    .end local v3    # "scriptOnlyLocale":Ljava/util/Locale;
    :cond_2
    :try_start_3
    sget-object v4, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    sget-object v6, Landroid/text/Hyphenator;->sEmptyHyphenator:Landroid/text/Hyphenator;

    invoke-virtual {v4, p0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 89
    sget-object v4, Landroid/text/Hyphenator;->sEmptyHyphenator:Landroid/text/Hyphenator;

    iget-wide v4, v4, Landroid/text/Hyphenator;->mNativePtr:J

    return-wide v4

    .line 57
    .end local v0    # "languageOnlyLocale":Ljava/util/Locale;
    .end local v1    # "result":Landroid/text/Hyphenator;
    .end local v2    # "script":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static getSystemHyphenatorLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/usr/hyphen-data"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static init()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 148
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/16 v6, 0x8

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v6, "en-US"

    aput-object v6, v0, v10

    const-string/jumbo v6, "eu"

    aput-object v6, v0, v11

    const-string/jumbo v6, "hu"

    const/4 v7, 0x2

    aput-object v6, v0, v7

    const-string/jumbo v6, "hy"

    const/4 v7, 0x3

    aput-object v6, v0, v7

    const-string/jumbo v6, "nb"

    const/4 v7, 0x4

    aput-object v6, v0, v7

    const-string/jumbo v6, "nn"

    const/4 v7, 0x5

    aput-object v6, v0, v7

    const-string/jumbo v6, "sa"

    const/4 v7, 0x6

    aput-object v6, v0, v7

    const-string/jumbo v6, "und-Ethi"

    const/4 v7, 0x7

    aput-object v6, v0, v7

    .line 152
    .local v0, "availableLanguages":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_1

    .line 153
    aget-object v5, v0, v3

    .line 154
    .local v5, "languageTag":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/Hyphenator;->loadHyphenator(Ljava/lang/String;)Landroid/text/Hyphenator;

    move-result-object v2

    .line 155
    .local v2, "h":Landroid/text/Hyphenator;
    if-eqz v2, :cond_0

    .line 156
    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    .end local v2    # "h":Landroid/text/Hyphenator;
    .end local v5    # "languageTag":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    :goto_1
    sget-object v6, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 161
    sget-object v6, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v4, v6, v10

    .line 162
    .local v4, "language":Ljava/lang/String;
    sget-object v6, Landroid/text/Hyphenator;->LOCALE_FALLBACK_DATA:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v1, v6, v11

    .line 163
    .local v1, "fallback":Ljava/lang/String;
    sget-object v7, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    sget-object v6, Landroid/text/Hyphenator;->sMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/Hyphenator;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 147
    .end local v1    # "fallback":Ljava/lang/String;
    .end local v4    # "language":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static loadHyphenator(Ljava/lang/String;)Landroid/text/Hyphenator;
    .locals 9
    .param p0, "languageTag"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hyph-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".pat.txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, "patternFilename":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/text/Hyphenator;->getSystemHyphenatorLocation()Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .local v4, "patternFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "patternData":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/StaticLayout;->nLoadHyphenator(Ljava/lang/String;)J

    move-result-wide v2

    .line 98
    .local v2, "nativePtr":J
    new-instance v6, Landroid/text/Hyphenator;

    invoke-direct {v6, v2, v3}, Landroid/text/Hyphenator;-><init>(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 99
    .end local v1    # "patternData":Ljava/lang/String;
    .end local v2    # "nativePtr":J
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    sget-object v6, Landroid/text/Hyphenator;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "error loading hyphenation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    const/4 v6, 0x0

    return-object v6
.end method
