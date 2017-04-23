.class public Lcom/mediatek/archHelper/ArchHelper;
.super Ljava/lang/Object;
.source "ArchHelper.java"


# static fields
.field public static final ARCH_ARM:I = 0x20

.field public static final ARCH_ARM64:I = 0x40

.field public static final ARCH_MULTI:I = 0xcc0

.field public static final ARCH_SYSTEM:I

.field private static final DEBUG:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mApkPath:Ljava/lang/String;

.field private mSupportedArch:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ArchHelper"

    .line 19
    iput-object v0, p0, Lcom/mediatek/archHelper/ArchHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/mediatek/archHelper/ArchHelper;->mSupportedArch:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/mediatek/archHelper/ArchHelper;->mApkPath:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/mediatek/archHelper/ArchHelper;->mApkPath:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private traversalApk(Ljava/util/jar/StrictJarFile;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/StrictJarFile;",
            "Ljava/util/List",
            "<",
            "Ljava/util/zip/ZipEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p1}, Ljava/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 107
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    return-void

    .line 108
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 110
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "lib/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private traversalAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 119
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 120
    array-length v1, v2

    if-gtz v1, :cond_1

    const-string/jumbo v0, ".so"

    .line 134
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    const-string/jumbo v4, ""

    .line 124
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    :goto_2
    invoke-direct {p0, p1, v0, p3}, Lcom/mediatek/archHelper/ArchHelper;->traversalAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/util/List;)V

    .line 122
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 125
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 136
    :cond_3
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public findSupportedArch()I
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 57
    :try_start_0
    new-instance v2, Ljava/util/jar/StrictJarFile;

    iget-object v3, p0, Lcom/mediatek/archHelper/ArchHelper;->mApkPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/jar/StrictJarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 58
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-direct {p0, v2, v5}, Lcom/mediatek/archHelper/ArchHelper;->traversalApk(Ljava/util/jar/StrictJarFile;Ljava/util/List;)V

    move v4, v0

    move v1, v0

    move v3, v0

    .line 62
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v4, v0, :cond_3

    .line 82
    mul-int v0, v3, v1

    if-nez v0, :cond_a

    .line 84
    if-eqz v3, :cond_b

    .line 86
    :cond_0
    if-nez v3, :cond_c

    :cond_1
    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/mediatek/archHelper/ArchHelper;->mSupportedArch:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    :goto_1
    if-nez v2, :cond_d

    .line 102
    :cond_2
    :goto_2
    iget v0, p0, Lcom/mediatek/archHelper/ArchHelper;->mSupportedArch:I

    return v0

    .line 64
    :cond_3
    :try_start_2
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2, v0}, Ljava/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 66
    :try_start_3
    new-instance v7, Lcom/mediatek/archHelper/ElfUtil;

    invoke-direct {v7, v6}, Lcom/mediatek/archHelper/ElfUtil;-><init>(Ljava/io/InputStream;)V

    .line 67
    invoke-virtual {v7}, Lcom/mediatek/archHelper/ElfUtil;->readElf()V

    .line 68
    invoke-virtual {v7}, Lcom/mediatek/archHelper/ElfUtil;->getMachine()I

    move-result v0

    const/16 v8, 0x28

    if-eq v0, v8, :cond_6

    .line 72
    :cond_4
    :goto_3
    invoke-virtual {v7}, Lcom/mediatek/archHelper/ElfUtil;->getMachine()I

    move-result v0

    const/16 v8, 0xb7

    if-eq v0, v8, :cond_7

    :cond_5
    move v0, v1

    .line 77
    :goto_4
    if-nez v6, :cond_8

    .line 62
    :goto_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    .line 68
    :cond_6
    invoke-virtual {v7}, Lcom/mediatek/archHelper/ElfUtil;->getElfClass()I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_4

    .line 70
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 72
    :cond_7
    invoke-virtual {v7}, Lcom/mediatek/archHelper/ElfUtil;->getElfClass()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_5

    .line 74
    add-int/lit8 v0, v1, 0x1

    goto :goto_4

    .line 78
    :cond_8
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 99
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_6
    :try_start_5
    const-string/jumbo v2, "ArchHelper"

    const-string/jumbo v3, "Error while reading apk"

    .line 92
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/mediatek/archHelper/ArchHelper;->mSupportedArch:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 95
    if-eqz v1, :cond_2

    .line 97
    :try_start_6
    invoke-virtual {v1}, Ljava/util/jar/StrictJarFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 99
    :catch_1
    move-exception v0

    goto :goto_2

    .line 78
    :catchall_0
    move-exception v0

    .line 77
    if-nez v6, :cond_9

    .line 78
    :goto_7
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 99
    :catchall_1
    move-exception v0

    .line 95
    :goto_8
    if-nez v2, :cond_e

    .line 99
    :goto_9
    throw v0

    .line 78
    :cond_9
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :cond_a
    const/16 v0, 0xcc0

    .line 83
    iput v0, p0, Lcom/mediatek/archHelper/ArchHelper;->mSupportedArch:I

    goto :goto_1

    .line 84
    :cond_b
    if-eqz v1, :cond_0

    const/16 v0, 0x40

    .line 85
    iput v0, p0, Lcom/mediatek/archHelper/ArchHelper;->mSupportedArch:I

    goto :goto_1

    .line 86
    :cond_c
    if-nez v1, :cond_1

    const/16 v0, 0x20

    .line 87
    iput v0, p0, Lcom/mediatek/archHelper/ArchHelper;->mSupportedArch:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 97
    :cond_d
    :try_start_9
    invoke-virtual {v2}, Ljava/util/jar/StrictJarFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 99
    :catch_2
    move-exception v0

    goto :goto_2

    .line 97
    :cond_e
    :try_start_a
    invoke-virtual {v2}, Ljava/util/jar/StrictJarFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_9

    .line 99
    :catch_3
    move-exception v1

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_6
.end method
