.class public Lcom/mediatek/camcorder/CamcorderProfileEx;
.super Ljava/lang/Object;
.source "CamcorderProfileEx.java"


# static fields
.field public static final QUALITY_FINE:I = 0x6f

.field public static final QUALITY_FINE_4K2K:I = 0x7b

.field public static final QUALITY_H264_HIGH:I = 0x75

.field public static final QUALITY_HIGH:I = 0x6e

.field public static final QUALITY_LIST_END:I = 0x7b

.field private static final QUALITY_LIST_START:I

.field public static final QUALITY_LIVE_EFFECT:I = 0x74

.field public static final QUALITY_LOW:I = 0x6c

.field public static final QUALITY_MEDIUM:I = 0x6d

.field public static final QUALITY_NIGHT_FINE:I = 0x73

.field public static final QUALITY_NIGHT_HIGH:I = 0x72

.field public static final QUALITY_NIGHT_LOW:I = 0x70

.field public static final QUALITY_NIGHT_MEDIUM:I = 0x71

.field public static final QUALITY_TIME_LAPSE_LIST_END:I

.field public static final QUALITY_TIME_LAPSE_LIST_START:I

.field public static final SLOW_MOTION_FHD_120FPS:I = 0x8cb

.field public static final SLOW_MOTION_FHD_60FPS:I = 0x8ca

.field public static final SLOW_MOTION_HD_120FPS:I = 0x8c1

.field public static final SLOW_MOTION_HD_180FPS:I = 0x8c2

.field public static final SLOW_MOTION_HD_60FPS:I = 0x8c0

.field private static final SLOW_MOTION_LIST_END:I = 0x8cb

.field private static final SLOW_MOTION_LIST_START:I = 0x8b7

.field public static final SLOW_MOTION_VGA_120FPS:I = 0x8b7

.field private static final TAG:Ljava/lang/String; = "CamcorderProfileEx"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    const-string/jumbo v0, "QUALITY_TIME_LAPSE_LIST_START"

    invoke-static {v0}, Lcom/mediatek/camcorder/CamcorderProfileEx;->getQualityNum(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_TIME_LAPSE_LIST_START:I

    .line 166
    const-string/jumbo v0, "QUALITY_LIST_START"

    invoke-static {v0}, Lcom/mediatek/camcorder/CamcorderProfileEx;->getQualityNum(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_LIST_START:I

    .line 167
    sget v0, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_TIME_LAPSE_LIST_START:I

    add-int/lit8 v0, v0, 0x7b

    sput v0, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_TIME_LAPSE_LIST_END:I

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProfile(I)Landroid/media/CamcorderProfile;
    .locals 4
    .param p0, "quality"    # I

    .prologue
    .line 202
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 203
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 204
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 205
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 206
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 207
    invoke-static {v1, p0}, Lcom/mediatek/camcorder/CamcorderProfileEx;->getProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    return-object v3

    .line 204
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getProfile(II)Landroid/media/CamcorderProfile;
    .locals 3
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .prologue
    .line 225
    sget v1, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_LIST_START:I

    if-lt p1, v1, :cond_0

    .line 226
    const/16 v1, 0x7b

    if-le p1, v1, :cond_3

    .line 227
    :cond_0
    sget v1, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_TIME_LAPSE_LIST_START:I

    if-lt p1, v1, :cond_1

    .line 228
    sget v1, Lcom/mediatek/camcorder/CamcorderProfileEx;->QUALITY_TIME_LAPSE_LIST_END:I

    if-le p1, v1, :cond_3

    .line 229
    :cond_1
    const/16 v1, 0x8b7

    if-lt p1, v1, :cond_2

    .line 230
    const/16 v1, 0x8cb

    if-le p1, v1, :cond_3

    .line 231
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported quality level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "errMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    .end local v0    # "errMessage":Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1}, Lcom/mediatek/camcorder/CamcorderProfileEx;->native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    return-object v1
.end method

.method private static getQualityNum(Ljava/lang/String;)I
    .locals 8
    .param p0, "qualityName"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v5, 0x0

    .line 176
    .local v5, "qualityValue":I
    :try_start_0
    const-class v6, Landroid/media/CamcorderProfile;

    invoke-virtual {v6, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 177
    .local v4, "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 178
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 188
    .end local v4    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return v5

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v6, "CamcorderProfileEx"

    const-string/jumbo v7, "getQualityNum error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "CamcorderProfileEx"

    const-string/jumbo v7, "getQualityNum error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v6, "CamcorderProfileEx"

    const-string/jumbo v7, "getQualityNum error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3
    move-exception v3

    .line 180
    .local v3, "e":Ljava/lang/SecurityException;
    const-string/jumbo v6, "CamcorderProfileEx"

    const-string/jumbo v7, "getQualityNum error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final native_get_camcorder_profile(II)Landroid/media/CamcorderProfile;
    .locals 12
    .param p0, "cameraId"    # I
    .param p1, "quality"    # I

    .prologue
    const/4 v11, 0x0

    .line 241
    :try_start_0
    const-class v6, Landroid/media/CamcorderProfile;

    const-string/jumbo v7, "native_get_camcorder_profile"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 242
    .local v5, "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 243
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 252
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 253
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v6, "CamcorderProfileEx"

    const-string/jumbo v7, "native_get_camcorder_profile error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    return-object v11

    .line 250
    :catch_1
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v6, "CamcorderProfileEx"

    const-string/jumbo v7, "native_get_camcorder_profile error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "CamcorderProfileEx"

    const-string/jumbo v7, "native_get_camcorder_profile error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v6, "CamcorderProfileEx"

    const-string/jumbo v7, "native_get_camcorder_profile error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v3

    .line 245
    .local v3, "e":Ljava/lang/SecurityException;
    const-string/jumbo v6, "CamcorderProfileEx"

    const-string/jumbo v7, "native_get_camcorder_profile error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
