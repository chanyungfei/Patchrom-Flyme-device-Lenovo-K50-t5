.class public Landroid/graphics/Movie;
.super Ljava/lang/Object;
.source "Movie.java"


# instance fields
.field private mNativeMovie:J


# direct methods
.method private constructor <init>(J)V
    .locals 3
    .param p1, "nativeMovie"    # J

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native movie creation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Movie;->mNativeMovie:J

    .line 35
    return-void
.end method

.method public static native decodeByteArray([BII)Landroid/graphics/Movie;
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;
    .locals 3
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 153
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/Movie;->decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v2

    return-object v2

    .line 155
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    return-object v2
.end method

.method private static native decodeMarkedStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    .line 114
    if-nez p0, :cond_0

    .line 115
    return-object v3

    .line 117
    :cond_0
    instance-of v3, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v3, :cond_1

    .line 118
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0    # "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v0

    .line 119
    .local v0, "asset":J
    invoke-static {v0, v1}, Landroid/graphics/Movie;->nativeDecodeAsset(J)Landroid/graphics/Movie;

    move-result-object v3

    return-object v3

    .line 125
    .end local v0    # "asset":J
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_2

    .line 128
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v3, 0x2000

    invoke-direct {v2, p0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    move-object p0, v2

    .line 134
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_2
    const/16 v3, 0x400

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 136
    invoke-static {p0}, Landroid/graphics/Movie;->decodeMarkedStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v3

    return-object v3
.end method

.method private static decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 174
    .local v1, "moov":Landroid/graphics/Movie;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    .line 175
    .local v1, "moov":Landroid/graphics/Movie;
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v1    # "moov":Landroid/graphics/Movie;
    :goto_0
    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private native nDraw(JFFJ)V
.end method

.method private static native nativeDecodeAsset(J)Landroid/graphics/Movie;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
.end method

.method private static native nativeDestructor(J)V
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/graphics/Movie;->closeGif()V

    .line 106
    invoke-virtual {p0}, Landroid/graphics/Movie;->setNativeMovie2Zero()V

    .line 107
    const-string/jumbo v0, "movie"

    const-string/jumbo v1, "SkMovie obj is destructed by close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public native closeGif()V
.end method

.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v7}, Landroid/graphics/Movie;->nDraw(JFFJ)V

    .line 56
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v2

    .line 53
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_0
    move-object v1, p0

    move v4, p2

    move v5, p3

    .line 52
    invoke-direct/range {v1 .. v7}, Landroid/graphics/Movie;->nDraw(JFFJ)V

    .line 51
    return-void

    .line 53
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public native duration()I
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 164
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Movie;->mNativeMovie:J

    invoke-static {v0, v1}, Landroid/graphics/Movie;->nativeDestructor(J)V

    .line 165
    const-string/jumbo v0, "movie"

    const-string/jumbo v1, "SkMovie obj is destructed by finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 162
    return-void

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 166
    throw v0
.end method

.method public native gifFrameBitmap(I)Landroid/graphics/Bitmap;
.end method

.method public native gifFrameDuration(I)I
.end method

.method public native gifTotalFrameCount()I
.end method

.method public native height()I
.end method

.method public native isOpaque()Z
.end method

.method public setNativeMovie2Zero()V
    .locals 2

    .prologue
    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Movie;->mNativeMovie:J

    .line 95
    return-void
.end method

.method public native setTime(I)Z
.end method

.method public native width()I
.end method
