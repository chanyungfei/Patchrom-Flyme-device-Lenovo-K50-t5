.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field static final FONTS_CONFIG:Ljava/lang/String; = "fonts.xml"

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field public static final NORMAL:I

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static TAG:Ljava/lang/String;

.field private static isForceToSystemDefault:Z

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field static sFallbackFonts:[Landroid/graphics/FontFamily;

.field static sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static sThemeFontPath:Ljava/lang/String;

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mStyle:I

.field public native_instance:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 51
    const-string/jumbo v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 70
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v4}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 69
    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    .line 351
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    move-object v0, v1

    .line 353
    nop

    nop

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 354
    nop

    nop

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 357
    invoke-static {}, Landroid/graphics/Typeface;->isFontSystemDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 364
    const-string/jumbo v0, "serif"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 365
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 369
    :goto_0
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    .line 370
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v3

    .line 371
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v5

    move-object v0, v1

    .line 372
    nop

    nop

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    move-object v0, v1

    .line 373
    nop

    nop

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v4

    .line 369
    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 414
    sput-object v1, Landroid/graphics/Typeface;->sThemeFontPath:Ljava/lang/String;

    .line 49
    return-void

    :cond_0
    move-object v0, v1

    .line 358
    nop

    nop

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 359
    nop

    nop

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 360
    nop

    nop

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 361
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    const-string/jumbo v2, "sans-serif-condensed"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "ni"    # J

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 261
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 266
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 260
    return-void
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .prologue
    .line 141
    if-ltz p1, :cond_0

    const/4 v4, 0x3

    if-le p1, v4, :cond_1

    .line 142
    :cond_0
    const/4 p1, 0x0

    .line 144
    :cond_1
    const-wide/16 v0, 0x0

    .line 145
    .local v0, "ni":J
    if-eqz p0, :cond_3

    .line 147
    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v4, p1, :cond_2

    .line 148
    return-object p0

    .line 151
    :cond_2
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 155
    :cond_3
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 157
    .local v2, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v2, :cond_4

    .line 158
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 159
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_4

    .line 160
    return-object v3

    .line 164
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_4
    new-instance v3, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .line 165
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    if-nez v2, :cond_5

    .line 166
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v4, 0x4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 167
    .restart local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 169
    :cond_5
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    return-object v3
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    const/4 v1, 0x0

    .line 123
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    return-object v1
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 190
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 191
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 192
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, p1}, Landroid/graphics/FontFamily;->addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 194
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 197
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Font asset not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 234
    array-length v2, p0

    new-array v1, v2, [J

    .line 235
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 236
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 249
    array-length v2, p0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v1, v2, [J

    .line 250
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 251
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 254
    array-length v2, p0

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v2

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    :cond_1
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 207
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 217
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 218
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 219
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 221
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 224
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Font not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "style"    # I

    .prologue
    .line 180
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static forceToSystemDefault()V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x1

    sput-boolean v0, Landroid/graphics/Typeface;->isForceToSystemDefault:Z

    .line 463
    invoke-static {}, Landroid/graphics/Typeface;->setThemeFont()V

    .line 461
    return-void
.end method

.method private static getSystemFontConfigLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 379
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getThemeFontPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 471
    invoke-static {}, Landroid/content/res/ThemeExtraConfiguration;->getThemeFontPath()Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "fontPath":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/ThemeExtraConfiguration;->getThemeFontName()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "fontName":Ljava/lang/String;
    sget-boolean v2, Landroid/graphics/Typeface;->isForceToSystemDefault:Z

    if-eqz v2, :cond_0

    .line 474
    const-string/jumbo v1, ""

    .line 476
    :cond_0
    return-object v1
.end method

.method private static init()V
    .locals 27

    .prologue
    .line 284
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    move-result-object v20

    .line 285
    .local v20, "systemFontConfigLocation":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string/jumbo v24, "fonts.xml"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    .local v7, "configFilename":Ljava/io/File;
    :try_start_0
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 288
    .local v17, "fontsIn":Ljava/io/FileInputStream;
    invoke-static/range {v17 .. v17}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/graphics/FontListParser$Config;

    move-result-object v15

    .line 290
    .local v15, "fontConfig":Landroid/graphics/FontListParser$Config;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v14, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    iget-object v0, v15, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 294
    iget-object v0, v15, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/FontListParser$Family;

    .line 295
    .local v12, "f":Landroid/graphics/FontListParser$Family;
    if-eqz v18, :cond_0

    iget-object v0, v12, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 296
    :cond_0
    invoke-static {v12}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 299
    .end local v12    # "f":Landroid/graphics/FontListParser$Family;
    :cond_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Landroid/graphics/FontFamily;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Landroid/graphics/FontFamily;

    sput-object v24, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    .line 303
    invoke-static {}, Landroid/graphics/Typeface;->setDefaultFont()V

    .line 310
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v21, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const/16 v18, 0x0

    :goto_1
    iget-object v0, v15, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 313
    iget-object v0, v15, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/FontListParser$Family;

    .line 314
    .restart local v12    # "f":Landroid/graphics/FontListParser$Family;
    iget-object v0, v12, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    .line 315
    if-nez v18, :cond_4

    .line 318
    sget-object v22, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 324
    .local v22, "typeface":Landroid/graphics/Typeface;
    :goto_2
    iget-object v0, v12, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .end local v22    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 320
    :cond_4
    invoke-static {v12}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v16

    .line 321
    .local v16, "fontFamily":Landroid/graphics/FontFamily;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v13, v0, [Landroid/graphics/FontFamily;

    const/16 v24, 0x0

    aput-object v16, v13, v24

    .line 322
    .local v13, "families":[Landroid/graphics/FontFamily;
    invoke-static {v13}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v22

    .restart local v22    # "typeface":Landroid/graphics/Typeface;
    goto :goto_2

    .line 327
    .end local v12    # "f":Landroid/graphics/FontListParser$Family;
    .end local v13    # "families":[Landroid/graphics/FontFamily;
    .end local v16    # "fontFamily":Landroid/graphics/FontFamily;
    .end local v22    # "typeface":Landroid/graphics/Typeface;
    :cond_5
    iget-object v0, v15, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "alias$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/FontListParser$Alias;

    .line 328
    .local v4, "alias":Landroid/graphics/FontListParser$Alias;
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Typeface;

    .line 329
    .local v6, "base":Landroid/graphics/Typeface;
    move-object/from16 v19, v6

    .line 330
    .local v19, "newFace":Landroid/graphics/Typeface;
    iget v0, v4, Landroid/graphics/FontListParser$Alias;->weight:I

    move/from16 v23, v0

    .line 331
    .local v23, "weight":I
    const/16 v24, 0x190

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    .line 332
    new-instance v19, Landroid/graphics/Typeface;

    .end local v19    # "newFace":Landroid/graphics/Typeface;
    iget-wide v0, v6, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v24

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    .line 334
    .restart local v19    # "newFace":Landroid/graphics/Typeface;
    :cond_6
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    .line 338
    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    .end local v6    # "base":Landroid/graphics/Typeface;
    .end local v14    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v15    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v17    # "fontsIn":Ljava/io/FileInputStream;
    .end local v18    # "i":I
    .end local v19    # "newFace":Landroid/graphics/Typeface;
    .end local v21    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v23    # "weight":I
    :catch_0
    move-exception v10

    .line 339
    .local v10, "e":Ljava/lang/RuntimeException;
    sget-object v24, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string/jumbo v25, "Didn\'t create default family (most likely, non-Minikin build)"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :goto_4
    return-void

    .line 336
    .restart local v5    # "alias$iterator":Ljava/util/Iterator;
    .restart local v14    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v15    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v17    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v18    # "i":I
    .restart local v21    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :cond_7
    :try_start_1
    sput-object v21, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    .line 341
    .end local v5    # "alias$iterator":Ljava/util/Iterator;
    .end local v14    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v15    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v17    # "fontsIn":Ljava/io/FileInputStream;
    .end local v18    # "i":I
    .end local v21    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catch_1
    move-exception v8

    .line 342
    .local v8, "e":Ljava/io/FileNotFoundException;
    sget-object v24, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Error opening "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 345
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v11

    .line 346
    .local v11, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v24, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "XML parse exception for "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 343
    .end local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v9

    .line 344
    .local v9, "e":Ljava/io/IOException;
    sget-object v24, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Error reading "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private static isFontSystemDefault()Z
    .locals 2

    .prologue
    .line 485
    const-string/jumbo v0, ""

    sget-object v1, Landroid/graphics/Typeface;->sThemeFontPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isStrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 467
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;
    .locals 6
    .param p0, "family"    # Landroid/graphics/FontListParser$Family;

    .prologue
    .line 270
    new-instance v2, Landroid/graphics/FontFamily;

    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->lang:Ljava/lang/String;

    iget-object v4, p0, Landroid/graphics/FontListParser$Family;->variant:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .local v2, "fontFamily":Landroid/graphics/FontFamily;
    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "font$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/FontListParser$Font;

    .line 272
    .local v0, "font":Landroid/graphics/FontListParser$Font;
    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    iget v4, v0, Landroid/graphics/FontListParser$Font;->weight:I

    iget-boolean v5, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/lang/String;IZ)Z

    goto :goto_0

    .line 274
    .end local v0    # "font":Landroid/graphics/FontListParser$Font;
    :cond_0
    return-object v2
.end method

.method private static native nativeCreateFromArray([J)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetStyle(J)I
.end method

.method private static native nativeSetDefault(J)V
.end method

.method private static native nativeUnref(J)V
.end method

.method private static reInit()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 418
    sget-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 419
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    .line 420
    const-string/jumbo v2, "DEFAULT"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->setFinalStaticField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    const-string/jumbo v2, "DEFAULT_BOLD"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->setFinalStaticField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 422
    invoke-static {}, Landroid/graphics/Typeface;->isFontSystemDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const-string/jumbo v0, "SANS_SERIF"

    const-string/jumbo v2, "sans-serif"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->setFinalStaticField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    const-string/jumbo v0, "SERIF"

    const-string/jumbo v2, "serif"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->setFinalStaticField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 425
    const-string/jumbo v0, "MONOSPACE"

    const-string/jumbo v2, "monospace"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->setFinalStaticField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 432
    :goto_0
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    .line 433
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v3

    .line 434
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v4

    move-object v0, v1

    .line 435
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v5

    .line 436
    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    .line 432
    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 417
    return-void

    .line 427
    :cond_0
    const-string/jumbo v2, "SANS_SERIF"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->setFinalStaticField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    const-string/jumbo v2, "SERIF"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->setFinalStaticField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 429
    const-string/jumbo v2, "MONOSPACE"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->setFinalStaticField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 430
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    const-string/jumbo v2, "sans-serif-condensed"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .locals 2
    .param p0, "t"    # Landroid/graphics/Typeface;

    .prologue
    .line 92
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 93
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 91
    return-void
.end method

.method private static setDefaultFont()V
    .locals 7

    .prologue
    .line 489
    invoke-static {}, Landroid/graphics/Typeface;->getThemeFontPath()Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "fontPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/graphics/Typeface;->isStrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 491
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 494
    :try_start_0
    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 495
    .local v3, "themeFont":Landroid/graphics/Typeface;
    if-eqz v3, :cond_1

    .line 496
    invoke-static {}, Landroid/content/res/ThemeExtraConfiguration;->isDefaultAndroidFont()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 497
    invoke-static {}, Landroid/graphics/Typeface;->setDefaultFontToSystemDefault()V

    .line 501
    :goto_0
    sput-object v2, Landroid/graphics/Typeface;->sThemeFontPath:Ljava/lang/String;

    .line 502
    return-void

    .line 499
    :cond_0
    invoke-static {v3}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    .end local v3    # "themeFont":Landroid/graphics/Typeface;
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createFromFile("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") Failed!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 509
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-nez v4, :cond_2

    .line 511
    invoke-static {}, Landroid/graphics/Typeface;->setDefaultFontToSystemDefault()V

    .line 488
    .end local v1    # "f":Ljava/io/File;
    :goto_1
    return-void

    .line 513
    .restart local v1    # "f":Ljava/io/File;
    :cond_2
    sget-object v4, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "THEME Font not found, Font left untouched! path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 516
    .end local v1    # "f":Ljava/io/File;
    :cond_3
    invoke-static {}, Landroid/graphics/Typeface;->setDefaultFontToSystemDefault()V

    goto :goto_1
.end method

.method private static setDefaultFontToSystemDefault()V
    .locals 1

    .prologue
    .line 480
    sget-object v0, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 481
    const-string/jumbo v0, ""

    sput-object v0, Landroid/graphics/Typeface;->sThemeFontPath:Ljava/lang/String;

    .line 479
    return-void
.end method

.method private static setFinalStaticField(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 525
    :try_start_0
    const-class v3, Landroid/graphics/Typeface;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 526
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 527
    .local v0, "accessibleBackup":Z
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 528
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 529
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v0    # "accessibleBackup":Z
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v1

    .line 531
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setThemeFont()V
    .locals 5

    .prologue
    .line 444
    invoke-static {}, Landroid/graphics/Typeface;->getThemeFontPath()Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "fontPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/graphics/Typeface;->isStrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 446
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 448
    sget-object v2, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setThemeFont(): Is Not a file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void

    .line 452
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    sget-object v2, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setThemeFont(): sThemeFontPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/graphics/Typeface;->sThemeFontPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",fontPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    sget-object v2, Landroid/graphics/Typeface;->sThemeFontPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Landroid/graphics/Typeface;->sThemeFontPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Landroid/graphics/Typeface;->sThemeFontPath:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    :cond_1
    sget-object v2, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setThemeFont(): FontPath Not Changed!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_0
    return-void

    .line 454
    :cond_2
    invoke-static {}, Landroid/graphics/Typeface;->reInit()V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 393
    if-ne p0, p1, :cond_0

    return v1

    .line 394
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 396
    check-cast v0, Landroid/graphics/Typeface;

    .line 398
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v6, v0, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 385
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 383
    return-void

    .line 386
    :catchall_0
    move-exception v0

    .line 387
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 386
    throw v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 408
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 409
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    .line 410
    return v0
.end method

.method public final isBold()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 103
    iget v1, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isItalic()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 108
    iget v1, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
