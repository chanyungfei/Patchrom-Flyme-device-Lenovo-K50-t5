.class public final Landroid/provider/MediaStore;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$MediaColumns;,
        Landroid/provider/MediaStore$Files;,
        Landroid/provider/MediaStore$InternalThumbnails;,
        Landroid/provider/MediaStore$Images;,
        Landroid/provider/MediaStore$Audio;,
        Landroid/provider/MediaStore$Video;,
        Landroid/provider/MediaStore$Streaming;
    }
.end annotation


# static fields
.field public static final ACTION_IMAGE_CAPTURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE"

.field public static final ACTION_IMAGE_CAPTURE_SECURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE_SECURE"

.field public static final ACTION_MTP_SESSION_END:Ljava/lang/String; = "android.provider.action.MTP_SESSION_END"

.field public static final ACTION_VIDEO_CAPTURE:Ljava/lang/String; = "android.media.action.VIDEO_CAPTURE"

.field public static final AUTHORITY:Ljava/lang/String; = "media"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://media/"

.field public static final EXTRA_DURATION_LIMIT:Ljava/lang/String; = "android.intent.extra.durationLimit"

.field public static final EXTRA_FINISH_ON_COMPLETION:Ljava/lang/String; = "android.intent.extra.finishOnCompletion"

.field public static final EXTRA_FULL_SCREEN:Ljava/lang/String; = "android.intent.extra.fullScreen"

.field public static final EXTRA_LOOP_PLAYBACK:Ljava/lang/String; = "android.intent.extra.loopPlayback"

.field public static final EXTRA_MEDIA_ALBUM:Ljava/lang/String; = "android.intent.extra.album"

.field public static final EXTRA_MEDIA_ARTIST:Ljava/lang/String; = "android.intent.extra.artist"

.field public static final EXTRA_MEDIA_FOCUS:Ljava/lang/String; = "android.intent.extra.focus"

.field public static final EXTRA_MEDIA_GENRE:Ljava/lang/String; = "android.intent.extra.genre"

.field public static final EXTRA_MEDIA_PLAYLIST:Ljava/lang/String; = "android.intent.extra.playlist"

.field public static final EXTRA_MEDIA_RADIO_CHANNEL:Ljava/lang/String; = "android.intent.extra.radio_channel"

.field public static final EXTRA_MEDIA_TITLE:Ljava/lang/String; = "android.intent.extra.title"

.field public static final EXTRA_OUTPUT:Ljava/lang/String; = "output"

.field public static final EXTRA_SCREEN_ORIENTATION:Ljava/lang/String; = "android.intent.extra.screenOrientation"

.field public static final EXTRA_SHOW_ACTION_ICONS:Ljava/lang/String; = "android.intent.extra.showActionIcons"

.field public static final EXTRA_SIZE_LIMIT:Ljava/lang/String; = "android.intent.extra.sizeLimit"

.field public static final EXTRA_URI_LIST:Ljava/lang/String; = "android.intent.extra.uriList"

.field public static final EXTRA_VIDEO_QUALITY:Ljava/lang/String; = "android.intent.extra.videoQuality"

.field public static final INTENT_ACTION_MEDIA_PLAY_FROM_SEARCH:Ljava/lang/String; = "android.media.action.MEDIA_PLAY_FROM_SEARCH"

.field public static final INTENT_ACTION_MEDIA_SEARCH:Ljava/lang/String; = "android.intent.action.MEDIA_SEARCH"

.field public static final INTENT_ACTION_MUSIC_PLAYER:Ljava/lang/String; = "android.intent.action.MUSIC_PLAYER"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTENT_ACTION_STILL_IMAGE_CAMERA:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA"

.field public static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field public static final INTENT_ACTION_TEXT_OPEN_FROM_SEARCH:Ljava/lang/String; = "android.media.action.TEXT_OPEN_FROM_SEARCH"

.field public static final INTENT_ACTION_VIDEO_CAMERA:Ljava/lang/String; = "android.media.action.VIDEO_CAMERA"

.field public static final INTENT_ACTION_VIDEO_PLAY_FROM_SEARCH:Ljava/lang/String; = "android.media.action.VIDEO_PLAY_FROM_SEARCH"

.field public static final MEDIA_IGNORE_FILENAME:Ljava/lang/String; = ".nomedia"

.field public static final MEDIA_SCANNER_VOLUME:Ljava/lang/String; = "volume"

.field public static final META_DATA_STILL_IMAGE_CAMERA_PREWARM_SERVICE:Ljava/lang/String; = "android.media.still_image_camera_preview_service"

.field public static final MTP_TRANSFER_FILE_PATH:Ljava/lang/String; = "mtp_transfer_file_path"

.field public static final PARAM_DELETE_DATA:Ljava/lang/String; = "deletedata"

.field private static final TAG:Ljava/lang/String; = "MediaStore"

.field public static final UNHIDE_CALL:Ljava/lang/String; = "unhide"

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"


# direct methods
.method static synthetic -wrap0(Landroid/content/ContentResolver;Landroid/net/Uri;J)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "origId"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/provider/MediaStore;->getImageThumbnailId(Landroid/content/ContentResolver;Landroid/net/Uri;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(Landroid/content/ContentResolver;Landroid/net/Uri;J)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "origId"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/provider/MediaStore;->getVideoThumbnailId(Landroid/content/ContentResolver;Landroid/net/Uri;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getImageThumbnailId(Landroid/content/ContentResolver;Landroid/net/Uri;J)J
    .locals 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "origId"    # J

    .prologue
    .line 2856
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2857
    .local v10, "tmpUri":Ljava/lang/String;
    const-string/jumbo v0, "content://media/external/images/media/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2858
    .local v1, "imagesUri":Landroid/net/Uri;
    const-wide/16 v8, 0x0

    .line 2859
    .local v8, "thumb_Id":J
    const/4 v6, 0x0

    .line 2861
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "mini_thumb_magic"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2862
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 2863
    const-string/jumbo v0, "MediaStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getImageThumbnailId: Null cursor! id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2858
    const-wide/16 v2, 0x0

    .line 2872
    if-eqz v6, :cond_0

    .line 2873
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2864
    :cond_0
    return-wide v2

    .line 2866
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2867
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 2872
    :cond_2
    if-eqz v6, :cond_3

    .line 2873
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2876
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_0
    return-wide v8

    .line 2869
    :catch_0
    move-exception v7

    .line 2870
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string/jumbo v0, "MediaStore"

    const-string/jumbo v2, "getImageThumbnailId: SQLiteException!"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2872
    if-eqz v6, :cond_3

    .line 2873
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2871
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 2872
    if-eqz v6, :cond_4

    .line 2873
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2871
    :cond_4
    throw v0
.end method

.method public static getMediaScannerUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2648
    const-string/jumbo v0, "content://media/none/media_scanner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getMtpTransferFileUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2841
    const-string/jumbo v0, "content://media/none/mtp_transfer_file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 2673
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2674
    const-string/jumbo v1, "content://media/none/version"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 2673
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2676
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 2678
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2679
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2682
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2679
    return-object v0

    .line 2682
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2685
    :cond_1
    return-object v2

    .line 2681
    :catchall_0
    move-exception v0

    .line 2682
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2681
    throw v0
.end method

.method private static getVideoThumbnailId(Landroid/content/ContentResolver;Landroid/net/Uri;J)J
    .locals 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "baseUri"    # Landroid/net/Uri;
    .param p2, "origId"    # J

    .prologue
    .line 2883
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2884
    .local v10, "tmpUri":Ljava/lang/String;
    const-string/jumbo v0, "content://media/external/video/media/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2885
    .local v1, "imagesUri":Landroid/net/Uri;
    const-wide/16 v8, 0x0

    .line 2886
    .local v8, "thumb_Id":J
    const/4 v6, 0x0

    .line 2888
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "mini_thumb_magic"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2889
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 2890
    const-string/jumbo v0, "MediaStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVideoThumbnailId: Null cursor! id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2885
    const-wide/16 v2, 0x0

    .line 2899
    if-eqz v6, :cond_0

    .line 2900
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2891
    :cond_0
    return-wide v2

    .line 2893
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2894
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 2899
    :cond_2
    if-eqz v6, :cond_3

    .line 2900
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2903
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_0
    return-wide v8

    .line 2896
    :catch_0
    move-exception v7

    .line 2897
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string/jumbo v0, "MediaStore"

    const-string/jumbo v2, "getVideoThumbnailId: SQLiteException!"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2899
    if-eqz v6, :cond_3

    .line 2900
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2898
    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 2899
    if-eqz v6, :cond_4

    .line 2900
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2898
    :cond_4
    throw v0
.end method
