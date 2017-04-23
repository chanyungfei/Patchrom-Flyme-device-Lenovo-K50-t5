.class public Lcom/mediatek/drm/OmaDrmUtils;
.super Ljava/lang/Object;
.source "OmaDrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;,
        Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;,
        Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;
    }
.end annotation


# static fields
.field private static final CID_URIS:[Landroid/net/Uri;

.field private static final OMA_DRM_EXTEND_SUFFIX:Z

.field private static final TAG:Ljava/lang/String; = "OmaDrmUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 60
    const/4 v2, 0x6

    new-array v2, v2, [Landroid/net/Uri;

    .line 61
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 62
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v3, v2, v1

    .line 63
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 64
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 65
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 66
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 60
    sput-object v2, Lcom/mediatek/drm/OmaDrmUtils;->CID_URIS:[Landroid/net/Uri;

    .line 73
    const-string/jumbo v2, "drm.extend.suffix"

    const-string/jumbo v3, "no"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "drmExtendSuffix":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 74
    :cond_0
    sput-boolean v1, Lcom/mediatek/drm/OmaDrmUtils;->OMA_DRM_EXTEND_SUFFIX:Z

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertUriToPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 387
    const-string/jumbo v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "convertUriToPath : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " @"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v8, 0x0

    .line 390
    .local v8, "path":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 391
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 392
    .local v10, "scheme":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 418
    .end local v8    # "path":Ljava/lang/String;
    .end local v10    # "scheme":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "convertUriToPath : >"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-object v8

    .line 394
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v10    # "scheme":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "path":Ljava/lang/String;
    goto :goto_0

    .line 396
    .local v8, "path":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 397
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v4

    .line 398
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 400
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 401
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 402
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given Uri could not be found in media store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 407
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 409
    if-eqz v6, :cond_5

    .line 410
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 408
    :cond_5
    throw v0

    .line 401
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_6
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 404
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 405
    .local v9, "pathIndex":I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 409
    .local v8, "path":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 410
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 414
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "pathIndex":I
    .local v8, "path":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given Uri scheme is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateDcfFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 574
    const-string/jumbo v3, "OmaDrmUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "generateDcfFilePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const-string/jumbo v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 577
    .local v0, "index":I
    const/4 v1, 0x0

    .line 578
    .local v1, "raw":Ljava/lang/String;
    const-string/jumbo v2, ".dcf.tmp"

    .line 579
    .local v2, "suffix":Ljava/lang/String;
    const/4 v3, -0x1

    if-eq v3, v0, :cond_0

    .line 580
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, "raw":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 582
    .local v1, "raw":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getDrmProfile(Landroid/content/Context;Landroid/net/Uri;Lcom/mediatek/drm/OmaDrmClient;)Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "client"    # Lcom/mediatek/drm/OmaDrmClient;

    .prologue
    .line 229
    const-string/jumbo v2, "OmaDrmUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDrmProfile : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 232
    :cond_0
    const-string/jumbo v2, "OmaDrmUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDrmProfile : invalid parameters client="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " context="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " uri="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 231
    :cond_1
    if-eqz p2, :cond_0

    .line 236
    const/4 v11, 0x0

    .line 237
    .local v11, "isDrm":Z
    const/4 v12, 0x0

    .line 239
    .local v12, "method":I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    .line 240
    .local v15, "scheme":Ljava/lang/String;
    const-string/jumbo v2, "content"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 242
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    .line 243
    const-string/jumbo v2, "is_drm"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    .line 244
    const-string/jumbo v2, "drm_method"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    .line 250
    .local v4, "projection":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 252
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    .line 253
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    .line 252
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 254
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 255
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 257
    const-string/jumbo v2, "is_drm"

    .line 256
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 258
    .local v9, "columnIndex":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_2

    .line 259
    const-string/jumbo v2, "1"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 263
    .end local v11    # "isDrm":Z
    :cond_2
    const-string/jumbo v2, "drm_method"

    .line 262
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 264
    const/4 v2, -0x1

    if-eq v9, v2, :cond_3

    .line 265
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 278
    .end local v9    # "columnIndex":I
    :cond_3
    if-eqz v8, :cond_4

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 280
    .end local v8    # "c":Landroid/database/Cursor;
    :goto_0
    const/4 v8, 0x0

    .line 299
    .end local v4    # "projection":[Ljava/lang/String;
    :cond_4
    :goto_1
    new-instance v14, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;

    invoke-direct {v14, v12, v11}, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;-><init>(IZ)V

    .line 300
    .local v14, "profile":Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;
    const-string/jumbo v2, "OmaDrmUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDrmProfile : isDrm="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->isDrm()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " method="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->getMethod()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-object v14

    .line 275
    .end local v14    # "profile":Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;
    .restart local v4    # "projection":[Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 276
    .local v13, "oce":Landroid/os/OperationCanceledException;
    :try_start_1
    const-string/jumbo v2, "OmaDrmUtils"

    invoke-static {v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    if-eqz v8, :cond_4

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 273
    .end local v13    # "oce":Landroid/os/OperationCanceledException;
    :catch_1
    move-exception v16

    .line 274
    .local v16, "se":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string/jumbo v2, "OmaDrmUtils"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    if-eqz v8, :cond_4

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 271
    .end local v16    # "se":Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v17

    .line 272
    .local v17, "ue":Ljava/lang/UnsupportedOperationException;
    :try_start_3
    const-string/jumbo v2, "OmaDrmUtils"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 278
    if-eqz v8, :cond_4

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 269
    .end local v17    # "ue":Ljava/lang/UnsupportedOperationException;
    :catch_3
    move-exception v10

    .line 270
    .local v10, "ie":Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string/jumbo v2, "OmaDrmUtils"

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 278
    if-eqz v8, :cond_4

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 277
    .end local v10    # "ie":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    .line 278
    if-eqz v8, :cond_5

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 280
    const/4 v8, 0x0

    .line 277
    :cond_5
    throw v2

    .line 283
    .end local v4    # "projection":[Ljava/lang/String;
    .restart local v11    # "isDrm":Z
    :cond_6
    const-string/jumbo v2, "file"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/drm/OmaDrmUtils;->isDrmSuffix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 286
    const/4 v11, 0x1

    .line 287
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mediatek/drm/OmaDrmClient;->getMethod(Landroid/net/Uri;)I

    move-result v12

    goto/16 :goto_1

    .line 289
    :cond_7
    const/4 v11, 0x0

    .line 292
    sget-boolean v2, Lcom/mediatek/drm/OmaDrmUtils;->OMA_DRM_EXTEND_SUFFIX:Z

    if-eqz v2, :cond_4

    .line 293
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mediatek/drm/OmaDrmClient;->getMethod(Landroid/net/Uri;)I

    move-result v12

    .line 294
    if-eqz v12, :cond_8

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1
.end method

.method public static getDrmStorageFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 439
    const-string/jumbo v4, "OmaDrmUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDrmStorageFileName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string/jumbo v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 442
    .local v0, "index":I
    const/4 v1, 0x0

    .line 443
    .local v1, "raw":Ljava/lang/String;
    const/4 v3, 0x0

    .line 444
    .local v3, "suffix":Ljava/lang/String;
    const/4 v4, -0x1

    if-eq v4, v0, :cond_1

    .line 445
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "raw":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 452
    .local v3, "suffix":Ljava/lang/String;
    :goto_0
    move-object v2, p0

    .line 453
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v4, ".dm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".dcf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    :cond_0
    :goto_1
    return-object v2

    .line 448
    .end local v2    # "result":Ljava/lang/String;
    .local v1, "raw":Ljava/lang/String;
    .local v3, "suffix":Ljava/lang/String;
    :cond_1
    move-object v1, p0

    .line 449
    .local v1, "raw":Ljava/lang/String;
    const-string/jumbo v3, ""

    .local v3, "suffix":Ljava/lang/String;
    goto :goto_0

    .line 455
    .restart local v2    # "result":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, ".dcf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 456
    move-object v2, p0

    goto :goto_1

    .line 459
    :cond_3
    const-string/jumbo v4, "application/vnd.oma.drm.message"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 460
    const-string/jumbo v4, "application/vnd.oma.drm.content"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 459
    if-eqz v4, :cond_0

    .line 463
    :cond_4
    sget-boolean v4, Lcom/mediatek/drm/OmaDrmUtils;->OMA_DRM_EXTEND_SUFFIX:Z

    if-eqz v4, :cond_5

    .line 464
    move-object v2, p0

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".dcf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getImageThumbnail(Lcom/mediatek/drm/OmaDrmClient;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "drmClient"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 595
    const-string/jumbo v10, "OmaDrmUtils"

    const-string/jumbo v11, "getImageThumbnail"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v8, 0x0

    .line 597
    .local v8, "result":Landroid/graphics/Bitmap;
    if-nez p0, :cond_0

    .line 598
    const-string/jumbo v10, "OmaDrmUtils"

    const-string/jumbo v11, "omadrmclient instance is null."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return-object v8

    .line 603
    :cond_0
    if-nez p1, :cond_1

    .line 604
    const-string/jumbo v10, "OmaDrmUtils"

    const-string/jumbo v11, "getImageThumbnail() path is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return-object v8

    .line 610
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {p0, p1, v10}, Lcom/mediatek/drm/OmaDrmClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 613
    new-instance v5, Lcom/mediatek/dcfdecoder/DcfDecoder;

    invoke-direct {v5}, Lcom/mediatek/dcfdecoder/DcfDecoder;-><init>()V

    .line 614
    .local v5, "dcfDecoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    const/4 v10, 0x0

    invoke-virtual {v5, p1, v10}, Lcom/mediatek/dcfdecoder/DcfDecoder;->forceDecryptFile(Ljava/lang/String;Z)[B

    move-result-object v4

    .line 615
    .local v4, "buffer":[B
    if-nez v4, :cond_2

    .line 616
    const-string/jumbo v10, "OmaDrmUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getImageThumbnail() file is not exist:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v10, 0x0

    return-object v10

    .line 619
    :cond_2
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 620
    .local v7, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 621
    array-length v10, v4

    const/4 v11, 0x0

    invoke-static {v4, v11, v10, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 623
    const/4 v10, 0x0

    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 625
    iget v6, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 626
    .local v6, "h":I
    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 627
    .local v9, "w":I
    div-int/lit8 v2, v9, 0x60

    .line 628
    .local v2, "beW":I
    div-int/lit8 v1, v6, 0x60

    .line 629
    .local v1, "beH":I
    if-ge v2, v1, :cond_3

    move v0, v1

    .line 632
    .local v0, "be":I
    :goto_0
    iput v0, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 633
    array-length v10, v4

    const/4 v11, 0x0

    invoke-static {v4, v11, v10, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 635
    .local v3, "btm":Landroid/graphics/Bitmap;
    return-object v3

    .line 629
    .end local v0    # "be":I
    .end local v3    # "btm":Landroid/graphics/Bitmap;
    :cond_3
    move v0, v2

    .restart local v0    # "be":I
    goto :goto_0

    .line 661
    .end local v0    # "be":I
    .end local v1    # "beH":I
    .end local v2    # "beW":I
    .end local v4    # "buffer":[B
    .end local v5    # "dcfDecoder":Lcom/mediatek/dcfdecoder/DcfDecoder;
    .end local v6    # "h":I
    .end local v7    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v9    # "w":I
    :cond_4
    return-object v8
.end method

.method public static getMediaActionType(Ljava/lang/String;)I
    .locals 2
    .param p0, "mime"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 88
    const-string/jumbo v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x7

    return v0

    .line 90
    :cond_0
    const-string/jumbo v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    const-string/jumbo v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 90
    if-eqz v0, :cond_2

    .line 92
    :cond_1
    return v1

    .line 95
    :cond_2
    return v1
.end method

.method public static getMsgFromInfoStatus(Landroid/drm/DrmInfoStatus;)Ljava/lang/String;
    .locals 6
    .param p0, "status"    # Landroid/drm/DrmInfoStatus;

    .prologue
    .line 370
    iget-object v3, p0, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v3}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v0

    .line 371
    .local v0, "data":[B
    const-string/jumbo v2, ""

    .line 372
    .local v2, "message":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 375
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2    # "message":Ljava/lang/String;
    const-string/jumbo v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .restart local v2    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v3, "OmaDrmUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMsgFromInfoStatus : >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-object v2

    .line 376
    .end local v2    # "message":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "OmaDrmUtils"

    const-string/jumbo v4, "Unsupported encoding type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string/jumbo v2, ""

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getVideoThumbnail(Lcom/mediatek/drm/OmaDrmClient;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "drmClient"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "targetWidth"    # I

    .prologue
    const/4 v12, 0x0

    .line 672
    const-string/jumbo v9, "OmaDrmUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getVideoThumbnail honge ,targetWidth: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v0, 0x0

    .line 674
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez p0, :cond_0

    .line 675
    const-string/jumbo v9, "OmaDrmUtils"

    const-string/jumbo v10, "omadrmclient instance is null."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-object v0

    .line 678
    :cond_0
    invoke-virtual {p0, p1, v12}, Lcom/mediatek/drm/OmaDrmClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 679
    const-string/jumbo v9, "OmaDrmUtils"

    const-string/jumbo v10, "getVideoThumbnail honge ,not drm file"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return-object v0

    .line 682
    :cond_1
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 684
    .local v5, "retriever":Landroid/media/MediaMetadataRetriever;
    if-eqz p1, :cond_2

    .line 685
    :try_start_0
    invoke-virtual {v5, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 687
    :cond_2
    const-wide/16 v10, -0x1

    invoke-virtual {v5, v10, v11}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 694
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 700
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_3

    .line 701
    return-object v12

    .line 695
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 697
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v9, "OmaDrmUtils"

    const-string/jumbo v10, "retriever release error."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 690
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v2

    .line 694
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 695
    :catch_2
    move-exception v2

    .line 697
    const-string/jumbo v9, "OmaDrmUtils"

    const-string/jumbo v10, "retriever release error."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 688
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 694
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 695
    :catch_4
    move-exception v2

    .line 697
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v9, "OmaDrmUtils"

    const-string/jumbo v10, "retriever release error."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 692
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v9

    .line 694
    :try_start_4
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 692
    :goto_1
    throw v9

    .line 695
    :catch_5
    move-exception v2

    .line 697
    .restart local v2    # "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v10, "OmaDrmUtils"

    const-string/jumbo v11, "retriever release error."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 704
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 705
    .local v8, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 706
    .local v4, "height":I
    if-le v8, p2, :cond_4

    .line 707
    int-to-float v9, p2

    int-to-float v10, v8

    div-float v6, v9, v10

    .line 708
    .local v6, "scale":F
    int-to-float v9, v8

    mul-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 709
    .local v7, "w":I
    int-to-float v9, v4

    mul-float/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 710
    .local v3, "h":I
    const/4 v9, 0x1

    invoke-static {v0, v7, v3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 712
    .end local v3    # "h":I
    .end local v6    # "scale":F
    .end local v7    # "w":I
    :cond_4
    return-object v0
.end method

.method public static isDrmDcfFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 533
    const-string/jumbo v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDrmDcfFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    if-eqz p0, :cond_0

    .line 535
    const-string/jumbo v0, "application/vnd.oma.drm.content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 537
    :cond_0
    if-eqz p1, :cond_1

    .line 538
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".dcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 540
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isDrmFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 477
    const-string/jumbo v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDrmFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    if-eqz p0, :cond_1

    .line 479
    const-string/jumbo v0, "application/vnd.oma.drm.message"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    const-string/jumbo v0, "application/vnd.oma.drm.content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 479
    if-nez v0, :cond_0

    .line 481
    const-string/jumbo v0, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 479
    if-nez v0, :cond_0

    .line 482
    const-string/jumbo v0, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 478
    :goto_0
    return v0

    .line 479
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 478
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrmMsgFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 512
    const-string/jumbo v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDrmMsgFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    if-eqz p0, :cond_0

    .line 514
    const-string/jumbo v0, "application/vnd.oma.drm.message"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 516
    :cond_0
    if-eqz p1, :cond_1

    .line 517
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 519
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isDrmRightsFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 555
    const-string/jumbo v1, "OmaDrmUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDrmRightsFile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    if-eqz p0, :cond_1

    .line 557
    const-string/jumbo v1, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    const-string/jumbo v0, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 557
    :cond_0
    return v0

    .line 560
    :cond_1
    if-eqz p1, :cond_3

    .line 561
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".dr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 562
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".drc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 561
    :cond_2
    return v0

    .line 564
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static isDrmSuffix(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 495
    const-string/jumbo v0, "OmaDrmUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDrmSuffix : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    if-eqz p0, :cond_1

    .line 497
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".dcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 496
    :goto_0
    return v0

    .line 497
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 496
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static rescanDrmMediaFiles(Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;)I
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drmContentUri"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;

    .prologue
    .line 108
    const-string/jumbo v3, "OmaDrmUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "rescanDrmMediaFiles : "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v15, " with callback "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 111
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "drm_content_uri=?"

    .line 112
    .local v4, "where":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v5, v3

    .line 113
    .local v5, "whereArgs":[Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v11, "pathArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/mediatek/drm/OmaDrmUtils;->CID_URIS:[Landroid/net/Uri;

    array-length v10, v3

    .line 115
    .local v10, "length":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_2

    .line 116
    sget-object v3, Lcom/mediatek/drm/OmaDrmUtils;->CID_URIS:[Landroid/net/Uri;

    aget-object v2, v3, v9

    .line 117
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v6, "_data"

    const/4 v15, 0x0

    aput-object v6, v3, v15

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 118
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 119
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 127
    .local v14, "total":I
    const/4 v3, 0x1

    if-ge v14, v3, :cond_4

    .line 128
    if-eqz p2, :cond_3

    .line 129
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;->onScanCompletedAll(I)V

    .line 147
    :cond_3
    return v14

    .line 132
    :cond_4
    new-array v12, v14, [Ljava/lang/String;

    .line 133
    .local v12, "paths":[Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 134
    if-eqz p2, :cond_5

    .line 135
    new-instance v7, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;

    move-object/from16 v0, p2

    invoke-direct {v7, v0, v14}, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;-><init>(Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;I)V

    .line 136
    .local v7, "clientProxy":Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v3, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 141
    .end local v7    # "clientProxy":Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 142
    .local v13, "size":I
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v13, :cond_3

    .line 143
    const-string/jumbo v6, "OmaDrmUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "rescanDrmMediaFiles : #"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v15, " path="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 138
    .end local v13    # "size":I
    :cond_5
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v3, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_2
.end method

.method public static scanDrmMediaFile(Landroid/content/Context;Ljava/lang/String;Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;

    .prologue
    const/4 v5, 0x0

    .line 160
    const-string/jumbo v2, "OmaDrmUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scanDrmMediaFile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 163
    .local v1, "paths":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 164
    new-instance v0, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;

    array-length v2, v1

    invoke-direct {v0, p2, v2}, Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;-><init>(Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;I)V

    .line 165
    .local v0, "clientProxy":Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;
    invoke-static {p0, v1, v5, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 170
    .end local v0    # "clientProxy":Lcom/mediatek/drm/OmaDrmUtils$DrmScanCompletedProxy;
    :goto_0
    array-length v2, v1

    return v2

    .line 167
    :cond_0
    invoke-static {p0, v1, v5, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0
.end method
