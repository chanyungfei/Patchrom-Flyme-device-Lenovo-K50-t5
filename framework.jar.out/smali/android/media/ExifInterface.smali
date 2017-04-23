.class public Landroid/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# static fields
.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE:Ljava/lang/String; = "FNumber"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field public static final TAG_ISO:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_MTK_CAMERA_REFOCUS:Ljava/lang/String; = "MTKCameraRefocus"

.field public static final TAG_MTK_CONSHOT_FOCUS_HIGH:Ljava/lang/String; = "MTKConshotFocusHigh"

.field public static final TAG_MTK_CONSHOT_FOCUS_LOW:Ljava/lang/String; = "MTKConshotFocusLow"

.field public static final TAG_MTK_CONSHOT_GROUP_ID:Ljava/lang/String; = "MTKConshotGroupID"

.field public static final TAG_MTK_CONSHOT_PIC_INDEX:Ljava/lang/String; = "MTKConshotPicIndex"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_SUBSECTIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIG:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIG:Ljava/lang/String; = "SubSecTimeOriginal"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final WHITEBALANCE_AUTO:I = 0x0

.field public static final WHITEBALANCE_MANUAL:I = 0x1

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 156
    const-string/jumbo v0, "jhead_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 158
    sget-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Landroid/media/ExifInterface;->mInputStream:Ljava/io/InputStream;

    .line 191
    invoke-direct {p0}, Landroid/media/ExifInterface;->loadAttributes()V

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    if-nez p1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iput-object p1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Landroid/media/ExifInterface;->loadAttributes()V

    .line 177
    return-void
.end method

.method private native appendThumbnailNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native commitChangesNative(Ljava/lang/String;)V
.end method

.method private static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 18
    .param p0, "rationalString"    # Ljava/lang/String;
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 486
    :try_start_0
    const-string/jumbo v14, ","

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 489
    .local v9, "parts":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v14, v9, v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 490
    .local v8, "pair":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v14, v8, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 491
    const/16 v16, 0x1

    aget-object v16, v8, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 490
    div-double v2, v14, v16

    .line 493
    .local v2, "degrees":D
    const/4 v14, 0x1

    aget-object v14, v9, v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 494
    const/4 v14, 0x0

    aget-object v14, v8, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 495
    const/16 v16, 0x1

    aget-object v16, v8, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 494
    div-double v6, v14, v16

    .line 497
    .local v6, "minutes":D
    const/4 v14, 0x2

    aget-object v14, v9, v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 498
    const/4 v14, 0x0

    aget-object v14, v8, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 499
    const/16 v16, 0x1

    aget-object v16, v8, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 498
    div-double v12, v14, v16

    .line 501
    .local v12, "seconds":D
    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    div-double v14, v6, v14

    add-double/2addr v14, v2

    const-wide v16, 0x40ac200000000000L    # 3600.0

    div-double v16, v12, v16

    add-double v10, v14, v16

    .line 502
    .local v10, "result":D
    const-string/jumbo v14, "S"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string/jumbo v14, "W"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-eqz v14, :cond_1

    .line 503
    :cond_0
    neg-double v14, v10

    double-to-float v14, v14

    return v14

    .line 505
    :cond_1
    double-to-float v14, v10

    return v14

    .line 509
    .end local v2    # "degrees":D
    .end local v6    # "minutes":D
    .end local v8    # "pair":[Ljava/lang/String;
    .end local v9    # "parts":[Ljava/lang/String;
    .end local v10    # "result":D
    .end local v12    # "seconds":D
    :catch_0
    move-exception v4

    .line 511
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 506
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v5

    .line 508
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14
.end method

.method private native getAttributesFromStreamNative(Ljava/io/InputStream;[B)Ljava/lang/String;
.end method

.method private native getAttributesNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native getThumbnailNative(Ljava/lang/String;)[B
.end method

.method private native getThumbnailRangeNative(Ljava/lang/String;)[J
.end method

.method private loadAttributes()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x20

    .line 270
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    .line 273
    sget-object v11, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    monitor-enter v11

    .line 274
    :try_start_0
    iget-object v10, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 275
    iget-object v10, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v10}, Landroid/media/ExifInterface;->getAttributesNative(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .local v2, "attrStr":Ljava/lang/String;
    :goto_0
    monitor-exit v11

    .line 282
    if-nez v2, :cond_1

    .line 283
    return-void

    .line 277
    .end local v2    # "attrStr":Ljava/lang/String;
    :cond_0
    const/16 v10, 0x400

    :try_start_1
    new-array v4, v10, [B

    .line 278
    .local v4, "buf":[B
    iget-object v10, p0, Landroid/media/ExifInterface;->mInputStream:Ljava/io/InputStream;

    invoke-direct {p0, v10, v4}, Landroid/media/ExifInterface;->getAttributesFromStreamNative(Ljava/io/InputStream;[B)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .restart local v2    # "attrStr":Ljava/lang/String;
    goto :goto_0

    .line 273
    .end local v2    # "attrStr":Ljava/lang/String;
    .end local v4    # "buf":[B
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 287
    .restart local v2    # "attrStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 288
    .local v9, "ptr":I
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 290
    .local v5, "count":I
    add-int/lit8 v9, v9, 0x1

    .line 292
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_3

    .line 294
    const/16 v10, 0x3d

    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 295
    .local v6, "equalPos":I
    invoke-virtual {v2, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "attrName":Ljava/lang/String;
    add-int/lit8 v9, v6, 0x1

    .line 299
    invoke-virtual {v2, v12, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 300
    .local v8, "lenPos":I
    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 301
    .local v0, "attrLen":I
    add-int/lit8 v9, v8, 0x1

    .line 304
    add-int v10, v9, v0

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "attrValue":Ljava/lang/String;
    add-int/2addr v9, v0

    .line 307
    const-string/jumbo v10, "hasThumbnail"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 308
    const-string/jumbo v10, "true"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 292
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 310
    :cond_2
    iget-object v10, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v10, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 265
    .end local v0    # "attrLen":I
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v3    # "attrValue":Ljava/lang/String;
    .end local v6    # "equalPos":I
    .end local v8    # "lenPos":I
    :cond_3
    return-void
.end method

.method private native saveAttributesNative(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public getAltitude(D)D
    .locals 9
    .param p1, "defaultValue"    # D

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 415
    const-string/jumbo v5, "GPSAltitude"

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v5, v6, v7}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 416
    .local v0, "altitude":D
    const-string/jumbo v5, "GPSAltitudeRef"

    invoke-virtual {p0, v5, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 418
    .local v2, "ref":I
    const-wide/16 v6, 0x0

    cmpl-double v5, v0, v6

    if-ltz v5, :cond_1

    if-ltz v2, :cond_1

    .line 419
    if-ne v2, v4, :cond_0

    :goto_0
    int-to-double v4, v3

    mul-double/2addr v4, v0

    return-wide v4

    :cond_0
    move v3, v4

    goto :goto_0

    .line 421
    :cond_1
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .locals 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 231
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 232
    .local v6, "value":Ljava/lang/String;
    if-nez v6, :cond_0

    return-wide p2

    .line 234
    :cond_0
    :try_start_0
    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 235
    .local v3, "index":I
    const/4 v7, -0x1

    if-ne v3, v7, :cond_1

    return-wide p2

    .line 236
    :cond_1
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 237
    .local v0, "denom":D
    const-wide/16 v8, 0x0

    cmpl-double v7, v0, v8

    if-nez v7, :cond_2

    return-wide p2

    .line 238
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 239
    .local v4, "num":D
    div-double v8, v4, v0

    return-wide v8

    .line 240
    .end local v0    # "denom":D
    .end local v3    # "index":I
    .end local v4    # "num":D
    :catch_0
    move-exception v2

    .line 241
    .local v2, "ex":Ljava/lang/NumberFormatException;
    return-wide p2
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 213
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 214
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    return p2

    .line 216
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public getDateTime()J
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    .line 431
    iget-object v10, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string/jumbo v11, "DateTime"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 432
    .local v0, "dateTimeString":Ljava/lang/String;
    if-nez v0, :cond_0

    return-wide v12

    .line 434
    :cond_0
    new-instance v6, Ljava/text/ParsePosition;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Ljava/text/ParsePosition;-><init>(I)V

    .line 438
    .local v6, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v10, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10, v0, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 439
    .local v1, "datetime":Ljava/util/Date;
    if-nez v1, :cond_1

    return-wide v12

    .line 440
    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 442
    .local v4, "msecs":J
    iget-object v10, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string/jumbo v11, "SubSecTime"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    .local v7, "subSecs":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 445
    :try_start_1
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 446
    .local v8, "sub":J
    :goto_0
    const-wide/16 v10, 0x3e8

    cmp-long v10, v8, v10

    if-lez v10, :cond_2

    .line 447
    const-wide/16 v10, 0xa

    div-long/2addr v8, v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 449
    :cond_2
    add-long/2addr v4, v8

    .line 453
    .end local v8    # "sub":J
    :cond_3
    :goto_1
    return-wide v4

    .line 454
    .end local v1    # "datetime":Ljava/util/Date;
    .end local v4    # "msecs":J
    .end local v7    # "subSecs":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 455
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v10, "ExifInterface"

    const-string/jumbo v11, "getDateTime: IllegalArgumentException!"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    return-wide v12

    .line 450
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "datetime":Ljava/util/Date;
    .restart local v4    # "msecs":J
    .restart local v7    # "subSecs":Ljava/lang/String;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method public getGpsDateTime()J
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 466
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string/jumbo v7, "GPSDateStamp"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 467
    .local v0, "date":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string/jumbo v7, "GPSTimeStamp"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 468
    .local v5, "time":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v5, :cond_1

    :cond_0
    return-wide v8

    .line 470
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "dateTimeString":Ljava/lang/String;
    new-instance v4, Ljava/text/ParsePosition;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 474
    .local v4, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v6, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 475
    .local v2, "datetime":Ljava/util/Date;
    if-nez v2, :cond_2

    return-wide v8

    .line 476
    :cond_2
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    return-wide v6

    .line 477
    .end local v2    # "datetime":Ljava/util/Date;
    :catch_0
    move-exception v3

    .line 478
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "ExifInterface"

    const-string/jumbo v7, "getGpsDateTime: IllegalArgumentException!"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    return-wide v8
.end method

.method public getLatLong([F)Z
    .locals 9
    .param p1, "output"    # [F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 389
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string/jumbo v6, "GPSLatitude"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 390
    .local v2, "latValue":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string/jumbo v6, "GPSLatitudeRef"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 391
    .local v1, "latRef":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string/jumbo v6, "GPSLongitude"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 392
    .local v4, "lngValue":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string/jumbo v6, "GPSLongitudeRef"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 394
    .local v3, "lngRef":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 396
    :try_start_0
    invoke-static {v2, v1}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x0

    aput v5, p1, v6

    .line 397
    invoke-static {v4, v3}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x1

    aput v5, p1, v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    return v8

    .line 399
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "ExifInterface"

    const-string/jumbo v6, "getLatLong: IllegalArgumentException!"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    return v7
.end method

.method public getThumbnail()[B
    .locals 2

    .prologue
    .line 364
    sget-object v1, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 365
    :try_start_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getThumbnailNative(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getThumbnailRange()[J
    .locals 2

    .prologue
    .line 378
    sget-object v1, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_0
    iget-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getThumbnailRangeNative(Ljava/lang/String;)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public saveAttributes()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 329
    .local v5, "size":I
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    const-string/jumbo v8, "hasThumbnail"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 330
    add-int/lit8 v5, v5, -0x1

    .line 332
    :cond_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 334
    .local v0, "iter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 335
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v7, "hasThumbnail"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 340
    .local v6, "val":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 344
    .end local v0    # "iter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "val":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, "s":Ljava/lang/String;
    sget-object v8, Landroid/media/ExifInterface;->sLock:Ljava/lang/Object;

    monitor-enter v8

    .line 346
    :try_start_0
    iget-object v7, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v7, v3}, Landroid/media/ExifInterface;->saveAttributesNative(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v7, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->commitChangesNative(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 322
    return-void

    .line 345
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 252
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method
