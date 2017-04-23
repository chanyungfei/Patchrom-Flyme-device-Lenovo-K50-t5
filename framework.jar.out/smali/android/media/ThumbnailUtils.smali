.class public Landroid/media/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    }
.end annotation


# static fields
.field private static final IS_DENSITY_XXXHIGH:Z

.field private static final MAX_NUM_PIXELS_MICRO_THUMBNAIL:I = 0x4b00

.field private static final MAX_NUM_PIXELS_THUMBNAIL:I

.field private static final OPTIONS_NONE:I = 0x0

.field public static final OPTIONS_RECYCLE_INPUT:I = 0x2

.field private static final OPTIONS_SCALE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailUtils"

.field public static final TARGET_SIZE_MICRO_THUMBNAIL:I = 0x60

.field public static final TARGET_SIZE_MINI_THUMBNAIL:I

.field private static final UNCONSTRAINED:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/16 v1, 0x280

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/media/ThumbnailUtils;->IS_DENSITY_XXXHIGH:Z

    .line 61
    sget-boolean v0, Landroid/media/ThumbnailUtils;->IS_DENSITY_XXXHIGH:Z

    if-eqz v0, :cond_1

    const v0, 0x6c000

    :goto_1
    sput v0, Landroid/media/ThumbnailUtils;->MAX_NUM_PIXELS_THUMBNAIL:I

    .line 80
    sget-boolean v0, Landroid/media/ThumbnailUtils;->IS_DENSITY_XXXHIGH:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x1e0

    :goto_2
    sput v0, Landroid/media/ThumbnailUtils;->TARGET_SIZE_MINI_THUMBNAIL:I

    .line 49
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :cond_1
    const/high16 v0, 0x30000

    goto :goto_1

    .line 80
    :cond_2
    const/16 v0, 0x140

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adustSampleSize(ILandroid/graphics/BitmapFactory$Options;)I
    .locals 4
    .param p0, "inSampleSize"    # I
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v3, 0x1

    .line 797
    if-lt p0, v3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v3

    .line 798
    :cond_1
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v1, v2, :cond_2

    .line 799
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 800
    .local v0, "imageShortterDimension":I
    :goto_0
    if-le p0, v3, :cond_3

    .line 801
    div-int v1, v0, p0

    const/16 v2, 0x60

    if-ge v1, v2, :cond_3

    .line 802
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 799
    .end local v0    # "imageShortterDimension":I
    :cond_2
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .restart local v0    # "imageShortterDimension":I
    goto :goto_0

    .line 804
    :cond_3
    return p0
.end method

.method private static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p0, "c"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 391
    if-nez p0, :cond_0

    return-void

    .line 393
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v0

    .local v0, "t":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v10, -0x1

    .line 325
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v6

    .line 326
    .local v4, "w":D
    iget v6, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v6

    .line 328
    .local v0, "h":D
    if-ne p2, v10, :cond_0

    const/4 v2, 0x1

    .line 330
    .local v2, "lowerBound":I
    :goto_0
    if-ne p1, v10, :cond_1

    const/16 v3, 0x80

    .line 334
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 336
    return v2

    .line 329
    .end local v2    # "lowerBound":I
    .end local v3    # "upperBound":I
    :cond_0
    mul-double v6, v4, v0

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .restart local v2    # "lowerBound":I
    goto :goto_0

    .line 331
    :cond_1
    int-to-double v6, p1

    div-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 332
    int-to-double v8, p1

    div-double v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 331
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-int v3, v6

    .restart local v3    # "upperBound":I
    goto :goto_1

    .line 339
    :cond_2
    if-ne p2, v10, :cond_3

    .line 340
    if-ne p1, v10, :cond_3

    .line 341
    const/4 v6, 0x1

    return v6

    .line 342
    :cond_3
    if-ne p1, v10, :cond_4

    .line 343
    return v2

    .line 345
    :cond_4
    return v3
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 307
    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 311
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 312
    const/4 v1, 0x1

    .line 313
    .local v1, "roundedSize":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 314
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "roundedSize":I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 320
    .restart local v1    # "roundedSize":I
    :cond_1
    return v1
.end method

.method public static createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "kind"    # I

    .prologue
    .line 103
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    const/16 v16, 0x1

    .line 104
    .local v16, "wantMini":Z
    :goto_0
    if-eqz v16, :cond_5

    .line 105
    sget v15, Landroid/media/ThumbnailUtils;->TARGET_SIZE_MINI_THUMBNAIL:I

    .line 107
    .local v15, "targetSize":I
    :goto_1
    if-eqz v16, :cond_6

    .line 108
    sget v9, Landroid/media/ThumbnailUtils;->MAX_NUM_PIXELS_THUMBNAIL:I

    .line 110
    .local v9, "maxPixels":I
    :goto_2
    new-instance v12, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;-><init>(Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V

    .line 111
    .local v12, "sizedThumbnailBitmap":Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    const/4 v3, 0x0

    .line 112
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-static/range {p0 .. p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v7

    .line 113
    .local v7, "fileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v7, :cond_0

    iget v0, v7, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v17, v0

    const/16 v18, 0x191

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 114
    move-object/from16 v0, p0

    invoke-static {v0, v15, v9, v12}, Landroid/media/ThumbnailUtils;->createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V

    .line 115
    iget-object v3, v12, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 118
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    if-nez v3, :cond_9

    .line 119
    const/4 v13, 0x0

    .line 121
    .local v13, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .local v14, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v14}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    .line 123
    .local v6, "fd":Ljava/io/FileDescriptor;
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 124
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 125
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 128
    const/4 v8, 0x0

    .line 129
    .local v8, "isDcfImage":Z
    const-string/jumbo v17, ".dcf"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 130
    const/4 v8, 0x1

    .line 133
    :cond_1
    if-eqz v8, :cond_7

    sget-boolean v17, Landroid/media/MediaScanner;->IS_SUPPORT_DRM:Z

    :goto_3
    if-nez v17, :cond_8

    .line 134
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v6, v0, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 141
    :goto_4
    iget-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 143
    :cond_2
    const/16 v17, 0x0

    .line 171
    if-eqz v14, :cond_3

    .line 172
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 143
    :cond_3
    :goto_5
    return-object v17

    .line 103
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v7    # "fileType":Landroid/media/MediaFile$MediaFileType;
    .end local v8    # "isDcfImage":Z
    .end local v9    # "maxPixels":I
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "sizedThumbnailBitmap":Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .end local v15    # "targetSize":I
    .end local v16    # "wantMini":Z
    :cond_4
    const/16 v16, 0x0

    .restart local v16    # "wantMini":Z
    goto/16 :goto_0

    .line 106
    :cond_5
    const/16 v15, 0x60

    .restart local v15    # "targetSize":I
    goto/16 :goto_1

    .line 109
    :cond_6
    const/16 v9, 0x4b00

    .restart local v9    # "maxPixels":I
    goto/16 :goto_2

    .line 133
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local v7    # "fileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v8    # "isDcfImage":Z
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v12    # "sizedThumbnailBitmap":Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :cond_7
    const/16 v17, 0x0

    goto :goto_3

    .line 137
    :cond_8
    :try_start_3
    new-instance v4, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v4}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 138
    .local v4, "decoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v4, v0, v11, v1}, Lcom/mediatek/dcfdecoder/DcfDecoder;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 165
    .end local v4    # "decoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v8    # "isDcfImage":Z
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v5

    .local v5, "ex":Ljava/io/IOException;
    move-object v13, v14

    .line 166
    .end local v14    # "stream":Ljava/io/FileInputStream;
    :goto_6
    :try_start_4
    const-string/jumbo v17, "ThumbnailUtils"

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    if-eqz v13, :cond_9

    .line 172
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 180
    .end local v5    # "ex":Ljava/io/IOException;
    :cond_9
    :goto_7
    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 183
    const/16 v17, 0x60

    .line 184
    const/16 v18, 0x60

    const/16 v19, 0x2

    .line 182
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v3, v0, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 186
    :cond_a
    return-object v3

    .line 142
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local v8    # "isDcfImage":Z
    .restart local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :cond_b
    :try_start_6
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 149
    invoke-static {v11, v15, v9}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v17

    .line 148
    move/from16 v0, v17

    invoke-static {v0, v11}, Landroid/media/ThumbnailUtils;->adustSampleSize(ILandroid/graphics/BitmapFactory$Options;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 152
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 154
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 155
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 159
    if-eqz v8, :cond_c

    sget-boolean v17, Landroid/media/MediaScanner;->IS_SUPPORT_DRM:Z

    :goto_8
    if-nez v17, :cond_d

    .line 160
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-static {v6, v0, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    .line 171
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    :goto_9
    if-eqz v14, :cond_9

    .line 172
    :try_start_7
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_7

    .line 174
    :catch_1
    move-exception v5

    .line 175
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string/jumbo v17, "ThumbnailUtils"

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 174
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 175
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string/jumbo v18, "ThumbnailUtils"

    const-string/jumbo v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 159
    .end local v5    # "ex":Ljava/io/IOException;
    :cond_c
    const/16 v17, 0x0

    goto :goto_8

    .line 162
    :cond_d
    :try_start_8
    new-instance v4, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v4}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 163
    .restart local v4    # "decoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v4, v0, v11, v1}, Lcom/mediatek/dcfdecoder/DcfDecoder;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v3

    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_9

    .line 167
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "decoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v8    # "isDcfImage":Z
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v14    # "stream":Ljava/io/FileInputStream;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v10

    .line 168
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .local v10, "oom":Ljava/lang/OutOfMemoryError;
    :goto_a
    :try_start_9
    const-string/jumbo v17, "ThumbnailUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Unable to decode file "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ". OutOfMemoryError."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 171
    if-eqz v13, :cond_9

    .line 172
    :try_start_a
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_7

    .line 174
    :catch_4
    move-exception v5

    .line 175
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string/jumbo v17, "ThumbnailUtils"

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 174
    .end local v10    # "oom":Ljava/lang/OutOfMemoryError;
    :catch_5
    move-exception v5

    .line 175
    const-string/jumbo v17, "ThumbnailUtils"

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 169
    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 171
    :goto_b
    if-eqz v13, :cond_e

    .line 172
    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 169
    :cond_e
    :goto_c
    throw v17

    .line 174
    :catch_6
    move-exception v5

    .line 175
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string/jumbo v18, "ThumbnailUtils"

    const-string/jumbo v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 169
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v17

    move-object v13, v14

    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v13, "stream":Ljava/io/FileInputStream;
    goto :goto_b

    .line 165
    .local v13, "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v5

    .restart local v5    # "ex":Ljava/io/IOException;
    goto/16 :goto_6

    .line 167
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v10

    .restart local v10    # "oom":Ljava/lang/OutOfMemoryError;
    move-object v13, v14

    .end local v14    # "stream":Ljava/io/FileInputStream;
    .local v13, "stream":Ljava/io/FileInputStream;
    goto :goto_a
.end method

.method private static createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V
    .locals 12
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "targetSize"    # I
    .param p2, "maxPixels"    # I
    .param p3, "sizedThumbBitmap"    # Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    .prologue
    .line 529
    if-nez p0, :cond_0

    return-void

    .line 531
    :cond_0
    const/4 v1, 0x0

    .line 532
    .local v1, "exif":Landroid/media/ExifInterface;
    const/4 v8, 0x0

    .line 534
    .local v8, "thumbData":[B
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_1
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "exif":Landroid/media/ExifInterface;
    move-result-object v8

    .local v8, "thumbData":[B
    move-object v1, v2

    .line 540
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .end local v8    # "thumbData":[B
    :goto_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 541
    .local v5, "fullOptions":Landroid/graphics/BitmapFactory$Options;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 542
    .local v3, "exifOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    .line 543
    .local v4, "exifThumbWidth":I
    const/4 v6, 0x0

    .line 546
    .local v6, "fullThumbWidth":I
    if-eqz v8, :cond_1

    .line 547
    const/4 v10, 0x1

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 548
    array-length v10, v8

    const/4 v11, 0x0

    invoke-static {v8, v11, v10, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 552
    invoke-static {v3, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v10

    .line 551
    invoke-static {v10, v3}, Landroid/media/ThumbnailUtils;->adustSampleSize(ILandroid/graphics/BitmapFactory$Options;)I

    move-result v10

    iput v10, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 555
    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v4, v10, v11

    .line 559
    :cond_1
    const/4 v10, 0x1

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 560
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 564
    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    .line 565
    :cond_2
    const/4 v10, 0x0

    iput-object v10, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 566
    return-void

    .line 536
    .end local v3    # "exifOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "exifThumbWidth":I
    .end local v5    # "fullOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "fullThumbWidth":I
    .restart local v1    # "exif":Landroid/media/ExifInterface;
    .local v8, "thumbData":[B
    :catch_0
    move-exception v0

    .line 537
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .local v0, "ex":Ljava/io/IOException;
    :goto_1
    const-string/jumbo v10, "ThumbnailUtils"

    const-string/jumbo v11, ""

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 572
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v8    # "thumbData":[B
    .restart local v3    # "exifOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v4    # "exifThumbWidth":I
    .restart local v5    # "fullOptions":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "fullThumbWidth":I
    :cond_3
    invoke-static {v5, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v10

    .line 571
    invoke-static {v10, v5}, Landroid/media/ThumbnailUtils;->adustSampleSize(ILandroid/graphics/BitmapFactory$Options;)I

    move-result v10

    iput v10, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 575
    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v6, v10, v11

    .line 578
    if-eqz v8, :cond_5

    if-lt v4, v6, :cond_5

    .line 579
    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 580
    .local v9, "width":I
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 581
    .local v7, "height":I
    const/4 v10, 0x0

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 583
    array-length v10, v8

    .line 582
    const/4 v11, 0x0

    invoke-static {v8, v11, v10, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 584
    iget-object v10, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_4

    .line 585
    iput-object v8, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailData:[B

    .line 586
    iput v9, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailWidth:I

    .line 587
    iput v7, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailHeight:I

    .line 528
    .end local v7    # "height":I
    .end local v9    # "width":I
    :cond_4
    :goto_2
    return-void

    .line 590
    :cond_5
    const/4 v10, 0x0

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 591
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 536
    .end local v3    # "exifOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "exifThumbWidth":I
    .end local v5    # "fullOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "fullThumbWidth":I
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v8    # "thumbData":[B
    :catch_1
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v1, "exif":Landroid/media/ExifInterface;
    goto :goto_1
.end method

.method public static createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "kind"    # I

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 200
    .local v6, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v6, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 201
    const-wide/16 v10, -0x1

    invoke-virtual {v6, v10, v11}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 208
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 214
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_0

    const/4 v10, 0x0

    return-object v10

    .line 209
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 204
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 208
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 209
    :catch_2
    move-exception v2

    goto :goto_0

    .line 202
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 208
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 209
    :catch_4
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 206
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v10

    .line 208
    :try_start_4
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 206
    :goto_1
    throw v10

    .line 209
    :catch_5
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 216
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v10, 0x1

    if-ne p1, v10, :cond_2

    .line 218
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 219
    .local v9, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 220
    .local v4, "height":I
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 221
    .local v5, "max":I
    const/16 v10, 0x200

    if-le v5, v10, :cond_1

    .line 222
    int-to-float v10, v5

    const/high16 v11, 0x44000000    # 512.0f

    div-float v7, v11, v10

    .line 223
    .local v7, "scale":F
    int-to-float v10, v9

    mul-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 224
    .local v8, "w":I
    int-to-float v10, v4

    mul-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 225
    .local v3, "h":I
    const/4 v10, 0x1

    invoke-static {v0, v8, v3, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    .end local v3    # "h":I
    .end local v4    # "height":I
    .end local v5    # "max":I
    .end local v7    # "scale":F
    .end local v8    # "w":I
    .end local v9    # "width":I
    :cond_1
    :goto_2
    return-object v0

    .line 227
    :cond_2
    const/4 v10, 0x3

    if-ne p1, v10, :cond_1

    .line 229
    const/16 v10, 0x60

    .line 230
    const/16 v11, 0x60

    .line 231
    const/4 v12, 0x2

    .line 228
    invoke-static {v0, v10, v11, v12}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2
.end method

.method public static extractBufferThumbnail([BIIIII)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "source"    # [B
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I
    .param p3, "dstWidth"    # I
    .param p4, "dstHeight"    # I
    .param p5, "options"    # I

    .prologue
    .line 610
    if-nez p0, :cond_0

    .line 611
    const/4 v1, 0x0

    return-object v1

    .line 615
    :cond_0
    if-ge p1, p2, :cond_1

    .line 616
    int-to-float v1, p3

    int-to-float v2, p1

    div-float v8, v1, v2

    .line 620
    .local v8, "scale":F
    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 621
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 623
    const/4 v10, 0x0

    .line 625
    .local v10, "thumbnail":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-direct {v9, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 626
    .local v9, "srcR":Landroid/graphics/RectF;
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 627
    .local v7, "deviceR":Landroid/graphics/RectF;
    invoke-virtual {v0, v7, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 628
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x49800000    # 1048576.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    .line 629
    invoke-static/range {v0 .. v6}, Landroid/media/ThumbnailUtils;->transformBuffer(Landroid/graphics/Matrix;[BIIIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 636
    .local v10, "thumbnail":Landroid/graphics/Bitmap;
    :goto_1
    return-object v10

    .line 618
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "deviceR":Landroid/graphics/RectF;
    .end local v8    # "scale":F
    .end local v9    # "srcR":Landroid/graphics/RectF;
    .end local v10    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_1
    int-to-float v1, p4

    int-to-float v2, p2

    div-float v8, v1, v2

    .restart local v8    # "scale":F
    goto :goto_0

    .line 633
    .restart local v0    # "matrix":Landroid/graphics/Matrix;
    .restart local v7    # "deviceR":Landroid/graphics/RectF;
    .restart local v9    # "srcR":Landroid/graphics/RectF;
    .local v10, "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    or-int/lit8 v6, p5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 632
    invoke-static/range {v0 .. v6}, Landroid/media/ThumbnailUtils;->transformBuffer(Landroid/graphics/Matrix;[BIIIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .local v10, "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "source"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "options"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 258
    if-nez p0, :cond_0

    .line 259
    return-object v5

    .line 263
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 264
    int-to-float v5, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 268
    .local v2, "scale":F
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 269
    .local v1, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 272
    const/4 v4, 0x0

    .line 273
    .local v4, "thumbnail":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 274
    .local v3, "srcR":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 275
    .local v0, "deviceR":Landroid/graphics/RectF;
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 276
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x49800000    # 1048576.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    .line 277
    invoke-static {v1, p0, p1, p2, p3}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 283
    .local v4, "thumbnail":Landroid/graphics/Bitmap;
    :goto_1
    return-object v4

    .line 266
    .end local v0    # "deviceR":Landroid/graphics/RectF;
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .end local v2    # "scale":F
    .end local v3    # "srcR":Landroid/graphics/RectF;
    .end local v4    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_1
    int-to-float v5, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .restart local v2    # "scale":F
    goto :goto_0

    .line 280
    .restart local v0    # "deviceR":Landroid/graphics/RectF;
    .restart local v1    # "matrix":Landroid/graphics/Matrix;
    .restart local v3    # "srcR":Landroid/graphics/RectF;
    .local v4, "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    or-int/lit8 v5, p3, 0x1

    .line 279
    invoke-static {v1, p0, p1, p2, v5}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "minSideLength"    # I
    .param p1, "maxNumOfPixels"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "cr"    # Landroid/content/ContentResolver;
    .param p4, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, "b":Landroid/graphics/Bitmap;
    if-nez p4, :cond_0

    :try_start_0
    invoke-static {p2, p3}, Landroid/media/ThumbnailUtils;->makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 363
    :cond_0
    if-nez p4, :cond_1

    .line 385
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 363
    return-object v6

    .line 364
    :cond_1
    if-nez p5, :cond_2

    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p5    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    move-object p5, v3

    .line 366
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local p5    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 367
    .local v2, "fd":Ljava/io/FileDescriptor;
    const/4 v4, 0x1

    iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 368
    const/4 v4, 0x1

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 369
    const/4 v4, 0x0

    invoke-static {v2, v4, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 370
    iget-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v4, :cond_3

    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v5, :cond_4

    .line 385
    :cond_3
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 372
    return-object v6

    .line 371
    :cond_4
    :try_start_2
    iget v4, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v4, v5, :cond_3

    .line 374
    invoke-static {p5, p0, p1}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 376
    const/4 v4, 0x0

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 378
    const/4 v4, 0x0

    iput-boolean v4, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 379
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 380
    const/4 v4, 0x0

    invoke-static {v2, v4, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 385
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 387
    return-object v0

    .line 381
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .local v0, "b":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 382
    .local v1, "ex":Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string/jumbo v4, "ThumbnailUtils"

    const-string/jumbo v5, "Got oom exception "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 385
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 383
    return-object v6

    .line 384
    .end local v1    # "ex":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    .line 385
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 384
    throw v4
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 402
    :try_start_0
    const-string/jumbo v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "ex":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 30
    .param p0, "scaler"    # Landroid/graphics/Matrix;
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "targetWidth"    # I
    .param p3, "targetHeight"    # I
    .param p4, "options"    # I

    .prologue
    .line 416
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_2

    const/16 v27, 0x1

    .line 417
    .local v27, "scaleUp":Z
    :goto_0
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_3

    const/16 v25, 0x1

    .line 419
    .local v25, "recycle":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    .line 420
    .local v16, "deltaX":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    .line 421
    .local v18, "deltaY":I
    if-nez v27, :cond_4

    if-ltz v16, :cond_0

    if-gez v18, :cond_4

    .line 429
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 428
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 430
    .local v11, "b2":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 432
    .local v15, "c":Landroid/graphics/Canvas;
    div-int/lit8 v3, v16, 0x2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 433
    .local v17, "deltaXHalf":I
    div-int/lit8 v3, v18, 0x2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 434
    .local v19, "deltaYHalf":I
    new-instance v28, Landroid/graphics/Rect;

    .line 437
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v17

    .line 438
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v19

    .line 434
    move-object/from16 v0, v28

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 439
    .local v28, "src":Landroid/graphics/Rect;
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p2, v3

    div-int/lit8 v21, v3, 0x2

    .line 440
    .local v21, "dstX":I
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v22, v3, 0x2

    .line 441
    .local v22, "dstY":I
    new-instance v20, Landroid/graphics/Rect;

    .line 444
    sub-int v3, p2, v21

    .line 445
    sub-int v4, p3, v22

    .line 441
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 446
    .local v20, "dst":Landroid/graphics/Rect;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 447
    if-eqz v25, :cond_1

    .line 448
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 450
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 451
    return-object v11

    .line 416
    .end local v11    # "b2":Landroid/graphics/Bitmap;
    .end local v15    # "c":Landroid/graphics/Canvas;
    .end local v16    # "deltaX":I
    .end local v17    # "deltaXHalf":I
    .end local v18    # "deltaY":I
    .end local v19    # "deltaYHalf":I
    .end local v20    # "dst":Landroid/graphics/Rect;
    .end local v21    # "dstX":I
    .end local v22    # "dstY":I
    .end local v25    # "recycle":Z
    .end local v27    # "scaleUp":Z
    .end local v28    # "src":Landroid/graphics/Rect;
    :cond_2
    const/16 v27, 0x0

    .restart local v27    # "scaleUp":Z
    goto/16 :goto_0

    .line 417
    :cond_3
    const/16 v25, 0x0

    .restart local v25    # "recycle":Z
    goto/16 :goto_1

    .line 453
    .restart local v16    # "deltaX":I
    .restart local v18    # "deltaY":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    .line 454
    .local v14, "bitmapWidthF":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 456
    .local v13, "bitmapHeightF":F
    div-float v12, v14, v13

    .line 457
    .local v12, "bitmapAspect":F
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v29, v3, v4

    .line 459
    .local v29, "viewAspect":F
    cmpl-float v3, v12, v29

    if-lez v3, :cond_a

    .line 460
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v26, v3, v13

    .line 461
    .local v26, "scale":F
    const v3, 0x3f666666    # 0.9f

    cmpg-float v3, v26, v3

    if-ltz v3, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v26, v3

    if-lez v3, :cond_9

    .line 462
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 476
    .end local p0    # "scaler":Landroid/graphics/Matrix;
    :goto_2
    if-eqz p0, :cond_d

    .line 479
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 478
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 479
    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    .line 478
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 484
    .local v10, "b1":Landroid/graphics/Bitmap;
    :goto_3
    if-eqz v25, :cond_6

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_6

    .line 485
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 488
    :cond_6
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v3, p2

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 489
    .local v23, "dx1":I
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, v3, p3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 493
    .local v24, "dy1":I
    div-int/lit8 v3, v23, 0x2

    .line 494
    div-int/lit8 v4, v24, 0x2

    .line 491
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 498
    .restart local v11    # "b2":Landroid/graphics/Bitmap;
    if-eq v11, v10, :cond_8

    .line 499
    if-nez v25, :cond_7

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_8

    .line 500
    :cond_7
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 504
    :cond_8
    return-object v11

    .line 464
    .end local v10    # "b1":Landroid/graphics/Bitmap;
    .end local v11    # "b2":Landroid/graphics/Bitmap;
    .end local v23    # "dx1":I
    .end local v24    # "dy1":I
    .restart local p0    # "scaler":Landroid/graphics/Matrix;
    :cond_9
    const/16 p0, 0x0

    .local p0, "scaler":Landroid/graphics/Matrix;
    goto :goto_2

    .line 467
    .end local v26    # "scale":F
    .local p0, "scaler":Landroid/graphics/Matrix;
    :cond_a
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v26, v3, v14

    .line 468
    .restart local v26    # "scale":F
    const v3, 0x3f666666    # 0.9f

    cmpg-float v3, v26, v3

    if-ltz v3, :cond_b

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v26, v3

    if-lez v3, :cond_c

    .line 469
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_2

    .line 471
    :cond_c
    const/16 p0, 0x0

    .local p0, "scaler":Landroid/graphics/Matrix;
    goto :goto_2

    .line 481
    .end local p0    # "scaler":Landroid/graphics/Matrix;
    :cond_d
    move-object/from16 v10, p1

    .restart local v10    # "b1":Landroid/graphics/Bitmap;
    goto :goto_3
.end method

.method private static transformBuffer(Landroid/graphics/Matrix;[BIIIII)Landroid/graphics/Bitmap;
    .locals 36
    .param p0, "scaler"    # Landroid/graphics/Matrix;
    .param p1, "source"    # [B
    .param p2, "srcWidth"    # I
    .param p3, "srcHeight"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "options"    # I

    .prologue
    .line 649
    and-int/lit8 v32, p6, 0x1

    if-eqz v32, :cond_2

    const/16 v27, 0x1

    .line 653
    .local v27, "scaleUp":Z
    :goto_0
    sub-int v14, p2, p4

    .line 654
    .local v14, "deltaX":I
    sub-int v16, p3, p5

    .line 655
    .local v16, "deltaY":I
    if-nez v27, :cond_4

    if-ltz v14, :cond_0

    if-gez v16, :cond_4

    .line 663
    :cond_0
    sget-object v32, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 662
    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 664
    .local v7, "b2":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 666
    .local v11, "c":Landroid/graphics/Canvas;
    div-int/lit8 v32, v14, 0x2

    const/16 v33, 0x0

    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 667
    .local v15, "deltaXHalf":I
    div-int/lit8 v32, v16, 0x2

    const/16 v33, 0x0

    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 668
    .local v17, "deltaYHalf":I
    new-instance v30, Landroid/graphics/Rect;

    .line 671
    move/from16 v0, p4

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v32

    add-int v32, v32, v15

    .line 672
    move/from16 v0, p5

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v33

    add-int v33, v33, v17

    .line 668
    move-object/from16 v0, v30

    move/from16 v1, v17

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-direct {v0, v15, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 673
    .local v30, "src":Landroid/graphics/Rect;
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v32

    sub-int v32, p4, v32

    div-int/lit8 v20, v32, 0x2

    .line 674
    .local v20, "dstX":I
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v32

    sub-int v32, p5, v32

    div-int/lit8 v21, v32, 0x2

    .line 675
    .local v21, "dstY":I
    new-instance v18, Landroid/graphics/Rect;

    .line 678
    sub-int v32, p4, v20

    .line 679
    sub-int v33, p5, v21

    .line 675
    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 683
    .local v18, "dst":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 684
    .local v5, "Options":Landroid/graphics/BitmapFactory$Options;
    const/16 v32, 0x0

    move/from16 v0, v32

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 685
    const/16 v32, 0x1

    move/from16 v0, v32

    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 686
    sget-object v32, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v32

    iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 688
    const/4 v6, 0x0

    .line 689
    .local v6, "b1":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    .line 690
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v32

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 692
    .end local v6    # "b1":Landroid/graphics/Bitmap;
    :cond_1
    if-nez v6, :cond_3

    .line 693
    const/16 v32, 0x0

    return-object v32

    .line 649
    .end local v5    # "Options":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v14    # "deltaX":I
    .end local v15    # "deltaXHalf":I
    .end local v16    # "deltaY":I
    .end local v17    # "deltaYHalf":I
    .end local v18    # "dst":Landroid/graphics/Rect;
    .end local v20    # "dstX":I
    .end local v21    # "dstY":I
    .end local v27    # "scaleUp":Z
    .end local v30    # "src":Landroid/graphics/Rect;
    :cond_2
    const/16 v27, 0x0

    .restart local v27    # "scaleUp":Z
    goto/16 :goto_0

    .line 696
    .restart local v5    # "Options":Landroid/graphics/BitmapFactory$Options;
    .restart local v7    # "b2":Landroid/graphics/Bitmap;
    .restart local v11    # "c":Landroid/graphics/Canvas;
    .restart local v14    # "deltaX":I
    .restart local v15    # "deltaXHalf":I
    .restart local v16    # "deltaY":I
    .restart local v17    # "deltaYHalf":I
    .restart local v18    # "dst":Landroid/graphics/Rect;
    .restart local v20    # "dstX":I
    .restart local v21    # "dstY":I
    .restart local v30    # "src":Landroid/graphics/Rect;
    :cond_3
    const/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    move-object/from16 v2, v32

    invoke-virtual {v11, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 697
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 698
    return-object v7

    .line 700
    .end local v5    # "Options":Landroid/graphics/BitmapFactory$Options;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v15    # "deltaXHalf":I
    .end local v17    # "deltaYHalf":I
    .end local v18    # "dst":Landroid/graphics/Rect;
    .end local v20    # "dstX":I
    .end local v21    # "dstY":I
    .end local v30    # "src":Landroid/graphics/Rect;
    :cond_4
    move/from16 v0, p2

    int-to-float v10, v0

    .line 701
    .local v10, "bitmapWidthF":F
    move/from16 v0, p3

    int-to-float v9, v0

    .line 703
    .local v9, "bitmapHeightF":F
    div-float v8, v10, v9

    .line 704
    .local v8, "bitmapAspect":F
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v31, v32, v33

    .line 706
    .local v31, "viewAspect":F
    const/high16 v22, 0x3f800000    # 1.0f

    .line 708
    .local v22, "finalScale":F
    cmpl-float v32, v8, v31

    if-lez v32, :cond_8

    .line 709
    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v26, v32, v9

    .line 710
    .local v26, "scale":F
    const v32, 0x3f666666    # 0.9f

    cmpg-float v32, v26, v32

    if-ltz v32, :cond_5

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v32, v26, v32

    if-lez v32, :cond_7

    .line 711
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 713
    move/from16 v22, v26

    .line 728
    .end local p0    # "scaler":Landroid/graphics/Matrix;
    :goto_1
    const/4 v6, 0x0

    .line 731
    .restart local v6    # "b1":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 732
    .restart local v5    # "Options":Landroid/graphics/BitmapFactory$Options;
    const/16 v32, 0x0

    move/from16 v0, v32

    iput-boolean v0, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 733
    sget-object v32, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v32

    iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 735
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v22

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v33, v33, v22

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(FF)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v23, v0

    .line 738
    .local v23, "inPreferSize":I
    if-eqz p1, :cond_6

    .line 739
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move/from16 v2, v32

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 741
    .end local v6    # "b1":Landroid/graphics/Bitmap;
    :cond_6
    if-nez v6, :cond_b

    .line 742
    const/16 v32, 0x0

    return-object v32

    .line 715
    .end local v5    # "Options":Landroid/graphics/BitmapFactory$Options;
    .end local v23    # "inPreferSize":I
    .restart local p0    # "scaler":Landroid/graphics/Matrix;
    :cond_7
    const/16 p0, 0x0

    .local p0, "scaler":Landroid/graphics/Matrix;
    goto :goto_1

    .line 718
    .end local v26    # "scale":F
    .local p0, "scaler":Landroid/graphics/Matrix;
    :cond_8
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v26, v32, v10

    .line 719
    .restart local v26    # "scale":F
    const v32, 0x3f666666    # 0.9f

    cmpg-float v32, v26, v32

    if-ltz v32, :cond_9

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v32, v26, v32

    if-lez v32, :cond_a

    .line 720
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 722
    move/from16 v22, v26

    .line 719
    goto :goto_1

    .line 724
    :cond_a
    const/16 p0, 0x0

    .local p0, "scaler":Landroid/graphics/Matrix;
    goto :goto_1

    .line 744
    .end local p0    # "scaler":Landroid/graphics/Matrix;
    .restart local v5    # "Options":Landroid/graphics/BitmapFactory$Options;
    .restart local v23    # "inPreferSize":I
    :cond_b
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    .line 745
    .local v29, "scaledBitmapWidth":I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    .line 748
    .local v28, "scaledBitmapHeight":I
    sget-object v32, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 747
    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 749
    .restart local v7    # "b2":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 751
    .restart local v11    # "c":Landroid/graphics/Canvas;
    new-instance v19, Landroid/graphics/RectF;

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 752
    .local v19, "dst":Landroid/graphics/RectF;
    const/16 v30, 0x0

    .line 753
    .local v30, "src":Landroid/graphics/Rect;
    move/from16 v0, v29

    move/from16 v1, v28

    if-le v0, v1, :cond_c

    .line 754
    move/from16 v24, v29

    .line 755
    .local v24, "maxSize":I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 757
    sub-int v32, v29, p4

    div-int/lit8 v32, v32, 0x2

    const/16 v33, 0x0

    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 758
    .local v12, "croppedX":I
    sub-int v32, v28, p5

    div-int/lit8 v32, v32, 0x2

    const/16 v33, 0x0

    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 759
    .local v13, "croppedY":I
    new-instance v30, Landroid/graphics/Rect;

    .line 761
    .end local v30    # "src":Landroid/graphics/Rect;
    add-int v32, v12, p4

    move/from16 v0, v32

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v32

    .line 762
    add-int v33, v13, p5

    move/from16 v0, v33

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v33

    .line 759
    move-object/from16 v0, v30

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v12, v13, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 777
    .local v30, "src":Landroid/graphics/Rect;
    :goto_3
    new-instance v25, Landroid/graphics/Paint;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    .line 778
    .local v25, "paint":Landroid/graphics/Paint;
    const/16 v32, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 779
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v11, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 781
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 782
    return-object v7

    .line 754
    .end local v12    # "croppedX":I
    .end local v13    # "croppedY":I
    .end local v24    # "maxSize":I
    .end local v25    # "paint":Landroid/graphics/Paint;
    .local v30, "src":Landroid/graphics/Rect;
    :cond_c
    move/from16 v24, v28

    .restart local v24    # "maxSize":I
    goto :goto_2

    .line 766
    :cond_d
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v32, v32, v22

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    sub-int v32, p2, v32

    div-int/lit8 v32, v32, 0x2

    const/16 v33, 0x0

    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 767
    .restart local v12    # "croppedX":I
    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v32, v32, v22

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    sub-int v32, p3, v32

    div-int/lit8 v32, v32, 0x2

    const/16 v33, 0x0

    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 768
    .restart local v13    # "croppedY":I
    new-instance v30, Landroid/graphics/Rect;

    .line 770
    .end local v30    # "src":Landroid/graphics/Rect;
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v32, v32, v22

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    add-int v32, v32, v12

    move/from16 v0, v32

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v32

    .line 771
    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v33, v33, v22

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    add-int v33, v33, v13

    move/from16 v0, v33

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v33

    .line 768
    move-object/from16 v0, v30

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v12, v13, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v30, "src":Landroid/graphics/Rect;
    goto/16 :goto_3
.end method
