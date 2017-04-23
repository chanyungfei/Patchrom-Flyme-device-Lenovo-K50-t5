.class Landroid/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalThumbnails"
.end annotation


# static fields
.field static final DEFAULT_GROUP_ID:I = 0x0

.field private static final FULL_SCREEN_KIND:I = 0x2

.field private static final MICRO_KIND:I = 0x3

.field private static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION:[Ljava/lang/String;

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 700
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 701
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "width"

    aput-object v1, v0, v4

    .line 702
    const-string/jumbo v1, "height"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 701
    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->SELECTION:[Ljava/lang/String;

    .line 704
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    .line 696
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "baseUri"    # Landroid/net/Uri;
    .param p4, "groupId"    # J

    .prologue
    .line 742
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "cancel"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 743
    const-string/jumbo v2, "orig_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 742
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 744
    const-string/jumbo v2, "group_id"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 742
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 745
    .local v1, "cancelUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 747
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 750
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 741
    :cond_0
    return-void

    .line 749
    .local v6, "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 709
    const/4 v0, 0x0

    .line 710
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 712
    .local v8, "thumbUri":Landroid/net/Uri;
    const/4 v9, 0x0

    :try_start_0
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 713
    .local v6, "thumbId":J
    const/4 v9, 0x1

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 714
    .local v4, "filePath":Ljava/lang/String;
    invoke-static {p1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 715
    .local v8, "thumbUri":Landroid/net/Uri;
    const-string/jumbo v9, "r"

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 717
    .local v5, "pfdInput":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    .line 716
    invoke-static {v9, v10, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 718
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v5    # "pfdInput":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "thumbId":J
    .end local v8    # "thumbUri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 723
    :catch_0
    move-exception v3

    .line 724
    .local v3, "ex":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v9, "MediaStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed to allocate memory for thumbnail "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 725
    const-string/jumbo v11, "; "

    .line 724
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 721
    .end local v3    # "ex":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 722
    .local v2, "ex":Ljava/io/IOException;
    const-string/jumbo v9, "MediaStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "couldn\'t open thumbnail "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 719
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 720
    .local v1, "ex":Ljava/io/FileNotFoundException;
    const-string/jumbo v9, "MediaStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "couldn\'t open thumbnail "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "; "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 31
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "origId"    # J
    .param p3, "groupId"    # J
    .param p5, "kind"    # I
    .param p6, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p7, "baseUri"    # Landroid/net/Uri;
    .param p8, "isVideo"    # Z

    .prologue
    .line 771
    const/4 v13, 0x0

    .line 772
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    const-wide/16 v24, 0x0

    .line 773
    .local v24, "thumb_ID":J
    const-string/jumbo v4, "MediaStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getThumbnail: origId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", kind="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", Uri="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", isVideo="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    new-instance v23, Landroid/media/MiniThumbFile;

    if-eqz p8, :cond_5

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 778
    .local v23, "thumbFile":Landroid/media/MiniThumbFile;
    const/4 v14, 0x0

    .line 779
    .local v14, "c":Landroid/database/Cursor;
    new-instance v22, Landroid/media/MiniThumbFile$ThumbResult;

    invoke-direct/range {v22 .. v22}, Landroid/media/MiniThumbFile$ThumbResult;-><init>()V

    .line 781
    .local v22, "result":Landroid/media/MiniThumbFile$ThumbResult;
    :try_start_0
    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v20

    .line 782
    .local v20, "magic":J
    const-wide/16 v8, 0x0

    cmp-long v4, v20, v8

    if-eqz v4, :cond_2

    .line 783
    const/4 v4, 0x3

    move/from16 v0, p5

    if-ne v0, v4, :cond_b

    .line 784
    if-nez p8, :cond_6

    .line 785
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore;->-wrap0(Landroid/content/ContentResolver;Landroid/net/Uri;J)J

    move-result-wide v24

    .line 790
    :goto_1
    cmp-long v4, v20, v24

    if-nez v4, :cond_2

    .line 791
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 792
    :try_start_1
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v4, :cond_0

    .line 793
    const/16 v4, 0x4000

    new-array v4, v4, [B

    sput-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 795
    :cond_0
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[BLandroid/media/MiniThumbFile$ThumbResult;)[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 797
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v8, v8

    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-static {v4, v9, v8, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 798
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    if-nez v13, :cond_1

    .line 799
    const-string/jumbo v4, "MediaStore"

    const-string/jumbo v8, "couldn\'t decode byte array."

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_2
    monitor-exit v6

    .line 803
    invoke-virtual/range {v22 .. v22}, Landroid/media/MiniThumbFile$ThumbResult;->getDetail()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_a

    .line 805
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 806
    .local v28, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "mini_thumb_magic"

    const-string/jumbo v6, "0"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string/jumbo v29, "_id=? "

    .line 808
    .local v29, "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v30, v6

    .line 809
    .local v30, "whereArgs":[Ljava/lang/String;
    if-nez p8, :cond_8

    .line 810
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 815
    :goto_2
    const-wide/16 v24, 0x0

    .line 833
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v28    # "values":Landroid/content/ContentValues;
    .end local v29    # "where":Ljava/lang/String;
    .end local v30    # "whereArgs":[Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v6, "blocking"

    const-string/jumbo v8, "1"

    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 834
    const-string/jumbo v6, "orig_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 833
    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 835
    const-string/jumbo v6, "group_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 833
    invoke-virtual {v4, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 836
    .local v5, "blockingUri":Landroid/net/Uri;
    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 838
    :cond_3
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->SELECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v14

    .line 840
    .local v14, "c":Landroid/database/Cursor;
    if-nez v14, :cond_e

    const/4 v4, 0x0

    .line 919
    if-eqz v14, :cond_4

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 921
    :cond_4
    invoke-virtual/range {v23 .. v23}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 922
    const/16 v23, 0x0

    .line 840
    .local v23, "thumbFile":Landroid/media/MiniThumbFile;
    return-object v4

    .line 777
    .end local v5    # "blockingUri":Landroid/net/Uri;
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v20    # "magic":J
    .end local v22    # "result":Landroid/media/MiniThumbFile$ThumbResult;
    .end local v23    # "thumbFile":Landroid/media/MiniThumbFile;
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 787
    .local v14, "c":Landroid/database/Cursor;
    .restart local v20    # "magic":J
    .restart local v22    # "result":Landroid/media/MiniThumbFile$ThumbResult;
    .local v23, "thumbFile":Landroid/media/MiniThumbFile;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore;->-wrap1(Landroid/content/ContentResolver;Landroid/net/Uri;J)J

    move-result-wide v24

    goto/16 :goto_1

    .line 791
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 916
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v20    # "magic":J
    :catch_0
    move-exception v17

    .line 917
    .local v17, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string/jumbo v4, "MediaStore"

    const-string/jumbo v6, ""

    move-object/from16 v0, v17

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 919
    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 921
    :cond_7
    invoke-virtual/range {v23 .. v23}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 922
    .end local v17    # "ex":Landroid/database/sqlite/SQLiteException;
    :goto_3
    const/16 v23, 0x0

    .line 924
    .local v23, "thumbFile":Landroid/media/MiniThumbFile;
    return-object v13

    .line 812
    .restart local v14    # "c":Landroid/database/Cursor;
    .restart local v20    # "magic":J
    .local v23, "thumbFile":Landroid/media/MiniThumbFile;
    .restart local v28    # "values":Landroid/content/ContentValues;
    .restart local v29    # "where":Ljava/lang/String;
    .restart local v30    # "whereArgs":[Ljava/lang/String;
    :cond_8
    :try_start_5
    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 918
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v20    # "magic":J
    .end local v28    # "values":Landroid/content/ContentValues;
    .end local v29    # "where":Ljava/lang/String;
    .end local v30    # "whereArgs":[Ljava/lang/String;
    :catchall_1
    move-exception v4

    .line 919
    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 921
    :cond_9
    invoke-virtual/range {v23 .. v23}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 922
    const/16 v23, 0x0

    .line 918
    .local v23, "thumbFile":Landroid/media/MiniThumbFile;
    throw v4

    .line 921
    .restart local v14    # "c":Landroid/database/Cursor;
    .restart local v20    # "magic":J
    .local v23, "thumbFile":Landroid/media/MiniThumbFile;
    :cond_a
    invoke-virtual/range {v23 .. v23}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 922
    const/16 v23, 0x0

    .line 818
    .local v23, "thumbFile":Landroid/media/MiniThumbFile;
    return-object v13

    .line 821
    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    .local v23, "thumbFile":Landroid/media/MiniThumbFile;
    :cond_b
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_2

    .line 822
    if-eqz p8, :cond_d

    :try_start_6
    const-string/jumbo v16, "video_id="

    .line 823
    .local v16, "column":Ljava/lang/String;
    :goto_4
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p7

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 824
    .local v14, "c":Landroid/database/Cursor;
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 825
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v14, v0, v1, v2}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v13

    .line 826
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_2

    .line 919
    if-eqz v14, :cond_c

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 921
    :cond_c
    invoke-virtual/range {v23 .. v23}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 922
    const/16 v23, 0x0

    .line 827
    .local v23, "thumbFile":Landroid/media/MiniThumbFile;
    return-object v13

    .line 822
    .end local v16    # "column":Ljava/lang/String;
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    .local v14, "c":Landroid/database/Cursor;
    .local v23, "thumbFile":Landroid/media/MiniThumbFile;
    :cond_d
    :try_start_7
    const-string/jumbo v16, "image_id="

    .restart local v16    # "column":Ljava/lang/String;
    goto :goto_4

    .line 844
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .end local v16    # "column":Ljava/lang/String;
    .restart local v5    # "blockingUri":Landroid/net/Uri;
    .local v14, "c":Landroid/database/Cursor;
    :cond_e
    const/4 v4, 0x3

    move/from16 v0, p5

    if-ne v0, v4, :cond_16

    const-wide/16 v8, 0x0

    cmp-long v4, v24, v8

    if-nez v4, :cond_16

    .line 845
    if-nez p8, :cond_15

    .line 846
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore;->-wrap0(Landroid/content/ContentResolver;Landroid/net/Uri;J)J

    move-result-wide v24

    .line 851
    :goto_5
    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v26

    .line 852
    .local v26, "thumb_id":J
    const-wide/16 v8, 0x0

    cmp-long v4, v8, v24

    if-eqz v4, :cond_11

    cmp-long v4, v26, v24

    if-nez v4, :cond_11

    .line 853
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 854
    :try_start_8
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v4, :cond_f

    .line 855
    const/16 v4, 0x4000

    new-array v4, v4, [B

    sput-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 857
    :cond_f
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v4

    if-eqz v4, :cond_10

    .line 859
    sget-object v4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v8, v8

    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-static {v4, v9, v8, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 860
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    if-nez v13, :cond_10

    .line 861
    const-string/jumbo v4, "MediaStore"

    const-string/jumbo v8, "couldn\'t decode byte array."

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    :cond_10
    :try_start_9
    monitor-exit v6

    .line 877
    .end local v26    # "thumb_id":J
    :cond_11
    :goto_6
    if-nez v13, :cond_13

    .line 878
    const-string/jumbo v4, "MediaStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Create the thumbnail in memory: origId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 879
    const-string/jumbo v8, ", kind="

    .line 878
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 879
    const-string/jumbo v8, ", isVideo="

    .line 878
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 882
    const-string/jumbo v6, "thumbnails"

    const-string/jumbo v8, "media"

    .line 881
    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 880
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 883
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v14, :cond_12

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 884
    :cond_12
    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 885
    if-eqz v14, :cond_19

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 888
    const/4 v4, 0x1

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 889
    .local v18, "filePath":Ljava/lang/String;
    if-eqz v18, :cond_13

    .line 890
    if-eqz p8, :cond_1b

    .line 891
    move-object/from16 v0, v18

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 898
    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    :goto_7
    invoke-static/range {v18 .. v18}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 899
    .local v19, "mimeType":Ljava/lang/String;
    if-eqz v13, :cond_13

    const-string/jumbo v4, "image/gif"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 900
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 901
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 900
    invoke-static {v4, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 902
    .local v12, "b":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_13

    .line 903
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 905
    .local v15, "canvas":Landroid/graphics/Canvas;
    const/4 v4, -0x1

    invoke-virtual {v15, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 907
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v15, v13, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 908
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 909
    move-object v13, v12

    .line 910
    const/4 v12, 0x0

    .line 919
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v12    # "b":Landroid/graphics/Bitmap;
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .end local v15    # "canvas":Landroid/graphics/Canvas;
    .end local v18    # "filePath":Ljava/lang/String;
    .end local v19    # "mimeType":Ljava/lang/String;
    :cond_13
    if-eqz v14, :cond_14

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 921
    :cond_14
    invoke-virtual/range {v23 .. v23}, Landroid/media/MiniThumbFile;->deactivate()V

    goto/16 :goto_3

    .line 848
    :cond_15
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore;->-wrap1(Landroid/content/ContentResolver;Landroid/net/Uri;J)J

    move-result-wide v24

    goto/16 :goto_5

    .line 853
    .restart local v26    # "thumb_id":J
    :catchall_2
    move-exception v4

    monitor-exit v6

    throw v4

    .line 866
    .end local v26    # "thumb_id":J
    :cond_16
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_17

    .line 867
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 868
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v14, v0, v1, v2}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_6

    .line 870
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    :cond_17
    const-wide/16 v8, 0x0

    cmp-long v4, v24, v8

    if-eqz v4, :cond_18

    .line 871
    const-string/jumbo v4, "MediaStore"

    const-string/jumbo v6, "------for thumb_ID !=null------"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 873
    :cond_18
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported kind: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 886
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_19
    const/4 v4, 0x0

    .line 919
    if-eqz v14, :cond_1a

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 921
    :cond_1a
    invoke-virtual/range {v23 .. v23}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 922
    const/16 v23, 0x0

    .line 886
    .local v23, "thumbFile":Landroid/media/MiniThumbFile;
    return-object v4

    .line 893
    .restart local v18    # "filePath":Ljava/lang/String;
    .local v23, "thumbFile":Landroid/media/MiniThumbFile;
    :cond_1b
    :try_start_b
    move-object/from16 v0, v18

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v13

    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_7
.end method
