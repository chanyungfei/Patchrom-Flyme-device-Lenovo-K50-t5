.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$FileEntry;,
        Landroid/media/MediaScanner$PlaylistEntry;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$MediaBulkDeleter;,
        Landroid/media/MediaScanner$WplHandler;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final ALARM_SET:Ljava/lang/String; = "alarm_set"

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static final IS_SUPPORT_DRM:Z

.field private static final MIME_APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final NOTIFICATION_SET:Ljava/lang/String; = "notification_set"

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final RINGTONE_SET:Ljava/lang/String; = "ringtone_set"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static mMediaPaths:Ljava/util/HashMap;
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

.field private static mNoMediaPaths:Ljava/util/HashMap;
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


# instance fields
.field private mAudioUri:Landroid/net/Uri;

.field private final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private final mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mContext1:I

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneFilename_2:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDefaultRingtoneSet_2:Z

.field private mDefaultSmsNotiFilename:Ljava/lang/String;

.field private mDefaultSmsNotiFilename_2:Ljava/lang/String;

.field private mDefaultSmsNotiSet:Z

.field private mDefaultSmsNotiSet_2:Z

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private final mExternalIsEmulated:Z

.field private final mExternalStoragePath:Ljava/lang/String;

.field private mFilesUri:Landroid/net/Uri;

.field private mFilesUriNoNotify:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mLimitBmpFileSize:J

.field private mLimitGifFileSize:J

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mMtpObjectHandle:I

.field private mNativeContext:J

.field private mOriginalCount:I

.field private mOriginalVideoCount:I

.field private mPackageName:Ljava/lang/String;

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistFilePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mThumbsUri:Landroid/net/Uri;

.field private mVideoThumbsUri:Landroid/net/Uri;

.field private mVideoUri:Landroid/net/Uri;

.field private mWasEmptyPriorToScan:Z


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get10(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic -get11(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet_2:Z

    return v0
.end method

.method static synthetic -get12(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultSmsNotiFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultSmsNotiFilename_2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get14(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultSmsNotiSet:Z

    return v0
.end method

.method static synthetic -get15(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultSmsNotiSet_2:Z

    return v0
.end method

.method static synthetic -get16(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic -get17(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get18(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get19(Landroid/media/MediaScanner;)J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaScanner;->mLimitBmpFileSize:J

    return-wide v0
.end method

.method static synthetic -get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic -get20(Landroid/media/MediaScanner;)J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaScanner;->mLimitGifFileSize:J

    return-wide v0
.end method

.method static synthetic -get21(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method

.method static synthetic -get22(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic -get23(Landroid/media/MediaScanner;)I
    .locals 1

    iget v0, p0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    return v0
.end method

.method static synthetic -get24(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get25(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get26(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mPlaylistFilePathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get27(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic -get28(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic -get29(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/MediaScanner;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get30(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    return v0
.end method

.method static synthetic -get4(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic -get6(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic -get8(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename_2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Landroid/media/MediaScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic -set1(Landroid/media/MediaScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic -set2(Landroid/media/MediaScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic -set3(Landroid/media/MediaScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet_2:Z

    return p1
.end method

.method static synthetic -set4(Landroid/media/MediaScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultSmsNotiSet:Z

    return p1
.end method

.method static synthetic -set5(Landroid/media/MediaScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultSmsNotiSet_2:Z

    return p1
.end method

.method static synthetic -set6(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/media/MediaScanner;)Z
    .locals 1

    invoke-direct {p0}, Landroid/media/MediaScanner;->isDrmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/media/MediaScanner;Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimetype"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->isValueslessMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "client"    # Landroid/media/MediaScannerClient;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 128
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    .line 134
    new-array v0, v6, [Ljava/lang/String;

    .line 135
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 136
    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    .line 137
    const-string/jumbo v1, "format"

    aput-object v1, v0, v4

    .line 138
    const-string/jumbo v1, "date_modified"

    aput-object v1, v0, v5

    .line 134
    sput-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 141
    new-array v0, v3, [Ljava/lang/String;

    .line 142
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 141
    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 150
    new-array v0, v3, [Ljava/lang/String;

    .line 151
    const-string/jumbo v1, "playlist_id"

    aput-object v1, v0, v2

    .line 150
    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 164
    const/16 v0, 0x94

    new-array v0, v0, [Ljava/lang/String;

    .line 166
    const-string/jumbo v1, "Blues"

    aput-object v1, v0, v2

    .line 167
    const-string/jumbo v1, "Classic Rock"

    aput-object v1, v0, v3

    .line 168
    const-string/jumbo v1, "Country"

    aput-object v1, v0, v4

    .line 169
    const-string/jumbo v1, "Dance"

    aput-object v1, v0, v5

    .line 170
    const-string/jumbo v1, "Disco"

    aput-object v1, v0, v6

    .line 171
    const-string/jumbo v1, "Funk"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 172
    const-string/jumbo v1, "Grunge"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 173
    const-string/jumbo v1, "Hip-Hop"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 174
    const-string/jumbo v1, "Jazz"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 175
    const-string/jumbo v1, "Metal"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 176
    const-string/jumbo v1, "New Age"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 177
    const-string/jumbo v1, "Oldies"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 178
    const-string/jumbo v1, "Other"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 179
    const-string/jumbo v1, "Pop"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 180
    const-string/jumbo v1, "R&B"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 181
    const-string/jumbo v1, "Rap"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 182
    const-string/jumbo v1, "Reggae"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 183
    const-string/jumbo v1, "Rock"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 184
    const-string/jumbo v1, "Techno"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 185
    const-string/jumbo v1, "Industrial"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 186
    const-string/jumbo v1, "Alternative"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 187
    const-string/jumbo v1, "Ska"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 188
    const-string/jumbo v1, "Death Metal"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 189
    const-string/jumbo v1, "Pranks"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 190
    const-string/jumbo v1, "Soundtrack"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 191
    const-string/jumbo v1, "Euro-Techno"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 192
    const-string/jumbo v1, "Ambient"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 193
    const-string/jumbo v1, "Trip-Hop"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 194
    const-string/jumbo v1, "Vocal"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 195
    const-string/jumbo v1, "Jazz+Funk"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 196
    const-string/jumbo v1, "Fusion"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 197
    const-string/jumbo v1, "Trance"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 198
    const-string/jumbo v1, "Classical"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 199
    const-string/jumbo v1, "Instrumental"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 200
    const-string/jumbo v1, "Acid"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 201
    const-string/jumbo v1, "House"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 202
    const-string/jumbo v1, "Game"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 203
    const-string/jumbo v1, "Sound Clip"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 204
    const-string/jumbo v1, "Gospel"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 205
    const-string/jumbo v1, "Noise"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 206
    const-string/jumbo v1, "AlternRock"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 207
    const-string/jumbo v1, "Bass"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 208
    const-string/jumbo v1, "Soul"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 209
    const-string/jumbo v1, "Punk"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 210
    const-string/jumbo v1, "Space"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 211
    const-string/jumbo v1, "Meditative"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 212
    const-string/jumbo v1, "Instrumental Pop"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 213
    const-string/jumbo v1, "Instrumental Rock"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 214
    const-string/jumbo v1, "Ethnic"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 215
    const-string/jumbo v1, "Gothic"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 216
    const-string/jumbo v1, "Darkwave"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 217
    const-string/jumbo v1, "Techno-Industrial"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 218
    const-string/jumbo v1, "Electronic"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 219
    const-string/jumbo v1, "Pop-Folk"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 220
    const-string/jumbo v1, "Eurodance"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 221
    const-string/jumbo v1, "Dream"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 222
    const-string/jumbo v1, "Southern Rock"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 223
    const-string/jumbo v1, "Comedy"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 224
    const-string/jumbo v1, "Cult"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 225
    const-string/jumbo v1, "Gangsta"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 226
    const-string/jumbo v1, "Top 40"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 227
    const-string/jumbo v1, "Christian Rap"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 228
    const-string/jumbo v1, "Pop/Funk"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 229
    const-string/jumbo v1, "Jungle"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 230
    const-string/jumbo v1, "Native American"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 231
    const-string/jumbo v1, "Cabaret"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 232
    const-string/jumbo v1, "New Wave"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 233
    const-string/jumbo v1, "Psychadelic"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 234
    const-string/jumbo v1, "Rave"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 235
    const-string/jumbo v1, "Showtunes"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 236
    const-string/jumbo v1, "Trailer"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 237
    const-string/jumbo v1, "Lo-Fi"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 238
    const-string/jumbo v1, "Tribal"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 239
    const-string/jumbo v1, "Acid Punk"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 240
    const-string/jumbo v1, "Acid Jazz"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 241
    const-string/jumbo v1, "Polka"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 242
    const-string/jumbo v1, "Retro"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 243
    const-string/jumbo v1, "Musical"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 244
    const-string/jumbo v1, "Rock & Roll"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    .line 245
    const-string/jumbo v1, "Hard Rock"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    .line 247
    const-string/jumbo v1, "Folk"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    .line 248
    const-string/jumbo v1, "Folk-Rock"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    .line 249
    const-string/jumbo v1, "National Folk"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    .line 250
    const-string/jumbo v1, "Swing"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    .line 251
    const-string/jumbo v1, "Fast Fusion"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    .line 252
    const-string/jumbo v1, "Bebob"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    .line 253
    const-string/jumbo v1, "Latin"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    .line 254
    const-string/jumbo v1, "Revival"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    .line 255
    const-string/jumbo v1, "Celtic"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    .line 256
    const-string/jumbo v1, "Bluegrass"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    .line 257
    const-string/jumbo v1, "Avantgarde"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    .line 258
    const-string/jumbo v1, "Gothic Rock"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    .line 259
    const-string/jumbo v1, "Progressive Rock"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    .line 260
    const-string/jumbo v1, "Psychedelic Rock"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    .line 261
    const-string/jumbo v1, "Symphonic Rock"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    .line 262
    const-string/jumbo v1, "Slow Rock"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    .line 263
    const-string/jumbo v1, "Big Band"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    .line 264
    const-string/jumbo v1, "Chorus"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    .line 265
    const-string/jumbo v1, "Easy Listening"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    .line 266
    const-string/jumbo v1, "Acoustic"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    .line 267
    const-string/jumbo v1, "Humour"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    .line 268
    const-string/jumbo v1, "Speech"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    .line 269
    const-string/jumbo v1, "Chanson"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    .line 270
    const-string/jumbo v1, "Opera"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    .line 271
    const-string/jumbo v1, "Chamber Music"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    .line 272
    const-string/jumbo v1, "Sonata"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    .line 273
    const-string/jumbo v1, "Symphony"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    .line 274
    const-string/jumbo v1, "Booty Bass"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    .line 275
    const-string/jumbo v1, "Primus"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    .line 276
    const-string/jumbo v1, "Porn Groove"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    .line 277
    const-string/jumbo v1, "Satire"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    .line 278
    const-string/jumbo v1, "Slow Jam"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    .line 279
    const-string/jumbo v1, "Club"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    .line 280
    const-string/jumbo v1, "Tango"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    .line 281
    const-string/jumbo v1, "Samba"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    .line 282
    const-string/jumbo v1, "Folklore"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    .line 283
    const-string/jumbo v1, "Ballad"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    .line 284
    const-string/jumbo v1, "Power Ballad"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    .line 285
    const-string/jumbo v1, "Rhythmic Soul"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    .line 286
    const-string/jumbo v1, "Freestyle"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    .line 287
    const-string/jumbo v1, "Duet"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    .line 288
    const-string/jumbo v1, "Punk Rock"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    .line 289
    const-string/jumbo v1, "Drum Solo"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    .line 290
    const-string/jumbo v1, "A capella"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    .line 291
    const-string/jumbo v1, "Euro-House"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    .line 292
    const-string/jumbo v1, "Dance Hall"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    .line 294
    const-string/jumbo v1, "Goa"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    .line 295
    const-string/jumbo v1, "Drum & Bass"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    .line 296
    const-string/jumbo v1, "Club-House"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    .line 297
    const-string/jumbo v1, "Hardcore"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    .line 298
    const-string/jumbo v1, "Terror"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    .line 299
    const-string/jumbo v1, "Indie"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    .line 300
    const-string/jumbo v1, "Britpop"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    .line 301
    const/4 v1, 0x0

    const/16 v2, 0x85

    aput-object v1, v0, v2

    .line 302
    const-string/jumbo v1, "Polsk Punk"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    .line 303
    const-string/jumbo v1, "Beat"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    .line 304
    const-string/jumbo v1, "Christian Gangsta"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    .line 305
    const-string/jumbo v1, "Heavy Metal"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    .line 306
    const-string/jumbo v1, "Black Metal"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    .line 307
    const-string/jumbo v1, "Crossover"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    .line 308
    const-string/jumbo v1, "Contemporary Christian"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    .line 309
    const-string/jumbo v1, "Christian Rock"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    .line 310
    const-string/jumbo v1, "Merengue"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    .line 311
    const-string/jumbo v1, "Salsa"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    .line 312
    const-string/jumbo v1, "Thrash Metal"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    .line 313
    const-string/jumbo v1, "Anime"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    .line 314
    const-string/jumbo v1, "JPop"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    .line 315
    const-string/jumbo v1, "Synthpop"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    .line 164
    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 422
    const-string/jumbo v0, "ro.mtk_oma_drm_support"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaScanner;->IS_SUPPORT_DRM:Z

    .line 1880
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    .line 1881
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 386
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 415
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 421
    iput-object v3, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 429
    iput-wide v4, p0, Landroid/media/MediaScanner;->mLimitBmpFileSize:J

    .line 430
    iput-wide v4, p0, Landroid/media/MediaScanner;->mLimitGifFileSize:J

    .line 481
    new-instance v1, Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {v1, p0, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$MyMediaScannerClient;)V

    iput-object v1, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 2384
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaScanner;->mPlaylistFilePathList:Ljava/util/ArrayList;

    .line 433
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 434
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 435
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 436
    iget-object v1, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 437
    iget-object v1, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 439
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 441
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    .line 442
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/MediaScanner;->mExternalIsEmulated:Z

    .line 446
    const-string/jumbo v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 447
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    const-wide/32 v2, 0x600000

    iput-wide v2, p0, Landroid/media/MediaScanner;->mLimitBmpFileSize:J

    .line 449
    const-wide/32 v2, 0xa00000

    iput-wide v2, p0, Landroid/media/MediaScanner;->mLimitGifFileSize:J

    .line 432
    :goto_0
    return-void

    .line 451
    :cond_0
    const-wide/32 v2, 0x3400000

    iput-wide v2, p0, Landroid/media/MediaScanner;->mLimitBmpFileSize:J

    .line 452
    const-wide/32 v2, 0x1400000

    iput-wide v2, p0, Landroid/media/MediaScanner;->mLimitGifFileSize:J

    goto :goto_0
.end method

.method private cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2081
    new-instance v1, Landroid/media/MediaScanner$PlaylistEntry;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/media/MediaScanner$PlaylistEntry;-><init>(Landroid/media/MediaScanner$PlaylistEntry;)V

    .line 2083
    .local v1, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2084
    .local v2, "entryLength":I
    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2087
    :cond_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    return-void

    .line 2088
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2092
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2093
    .local v0, "ch1":C
    const/16 v4, 0x2f

    if-eq v0, v4, :cond_4

    .line 2094
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_5

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_5

    const/4 v3, 0x1

    .line 2096
    .local v3, "fullPath":Z
    :goto_1
    if-nez v3, :cond_3

    .line 2097
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2098
    :cond_3
    iput-object p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    .line 2101
    iget-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2080
    return-void

    .line 2093
    .end local v3    # "fullPath":Z
    :cond_4
    const/4 v3, 0x1

    .restart local v3    # "fullPath":Z
    goto :goto_1

    .line 2094
    .end local v3    # "fullPath":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "fullPath":Z
    goto :goto_1
.end method

.method public static clearMediaPathCache(ZZ)V
    .locals 2
    .param p0, "clearMediaPaths"    # Z
    .param p1, "clearNoMediaPaths"    # Z

    .prologue
    .line 1885
    const-class v1, Landroid/media/MediaScanner;

    monitor-enter v1

    .line 1886
    if-eqz p0, :cond_0

    .line 1887
    :try_start_0
    sget-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1889
    :cond_0
    if-eqz p1, :cond_1

    .line 1890
    sget-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1884
    return-void

    .line 1885
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "directories"    # [Ljava/lang/String;

    .prologue
    .line 1592
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1593
    aget-object v0, p2, v1

    .line 1594
    .local v0, "directory":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1595
    const/4 v2, 0x1

    return v2

    .line 1592
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1598
    .end local v0    # "directory":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 4
    .param p1, "volumeName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1755
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1757
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 1758
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 1759
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 1760
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1761
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoThumbsUri:Landroid/net/Uri;

    .line 1762
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 1763
    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "nonotify"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    .line 1765
    const-string/jumbo v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1767
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 1768
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 1769
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 1771
    iput-boolean v3, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    .line 1754
    :cond_0
    return-void
.end method

.method private isDrmEnabled()Z
    .locals 2

    .prologue
    .line 484
    const-string/jumbo v1, "drm.service.enabled"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xa

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1847
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1848
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    .line 1853
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1854
    .local v7, "lastSlash":I
    if-ltz v7, :cond_6

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 1856
    add-int/lit8 v0, v7, 0x1

    const-string/jumbo v2, "._"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1857
    return v1

    .line 1863
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x4

    const-string/jumbo v3, ".jpg"

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1864
    add-int/lit8 v2, v7, 0x1

    const-string/jumbo v3, "AlbumArt_{"

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1865
    add-int/lit8 v2, v7, 0x1

    const-string/jumbo v3, "AlbumArt."

    const/16 v5, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    .line 1864
    if-eqz v0, :cond_3

    .line 1866
    :cond_2
    return v1

    .line 1868
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    add-int/lit8 v8, v0, -0x1

    .line 1869
    .local v8, "length":I
    const/16 v0, 0x11

    if-ne v8, v0, :cond_4

    .line 1870
    add-int/lit8 v2, v7, 0x1

    const-string/jumbo v3, "AlbumArtSmall"

    const/16 v5, 0xd

    move-object v0, p0

    .line 1869
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1871
    :cond_4
    if-ne v8, v9, :cond_6

    .line 1872
    add-int/lit8 v2, v7, 0x1

    const-string/jumbo v3, "Folder"

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    .line 1869
    if-eqz v0, :cond_6

    .line 1873
    :cond_5
    return v1

    .line 1877
    .end local v8    # "length":I
    :cond_6
    return v4
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2f

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1896
    if-nez p0, :cond_0

    .line 1897
    return v6

    .line 1900
    :cond_0
    const-string/jumbo v5, "/."

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 1901
    return v8

    .line 1904
    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1905
    .local v1, "firstSlash":I
    if-gtz v1, :cond_2

    .line 1906
    return v6

    .line 1908
    :cond_2
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1910
    .local v3, "parent":Ljava/lang/String;
    const-class v6, Landroid/media/MediaScanner;

    monitor-enter v6

    .line 1911
    :try_start_0
    sget-object v5, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    monitor-exit v6

    .line 1912
    return v8

    .line 1913
    :cond_3
    :try_start_1
    sget-object v5, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1916
    const/4 v2, 0x1

    .line 1917
    .local v2, "offset":I
    :goto_0
    if-ltz v2, :cond_6

    .line 1918
    const/16 v5, 0x2f

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1919
    .local v4, "slashIndex":I
    if-le v4, v2, :cond_4

    .line 1920
    add-int/lit8 v4, v4, 0x1

    .line 1921
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ".nomedia"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1922
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1924
    sget-object v5, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    const-string/jumbo v7, ""

    invoke-virtual {v5, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    .line 1925
    return v8

    .line 1929
    .end local v0    # "file":Ljava/io/File;
    :cond_4
    if-ne v4, v2, :cond_5

    .line 1930
    add-int/lit8 v4, v4, 0x1

    .line 1933
    :cond_5
    move v2, v4

    goto :goto_0

    .line 1935
    .end local v4    # "slashIndex":I
    :cond_6
    :try_start_2
    sget-object v5, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    const-string/jumbo v7, ""

    invoke-virtual {v5, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "offset":I
    :cond_7
    monitor-exit v6

    .line 1939
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v5

    return v5

    .line 1910
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private isValueslessMimeType(Ljava/lang/String;)Z
    .locals 4
    .param p1, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 2367
    const/4 v0, 0x0

    .line 2368
    .local v0, "valueless":Z
    const-string/jumbo v1, "application/octet-stream"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2369
    const/4 v0, 0x1

    .line 2370
    const-string/jumbo v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValueslessMimeType: mimetype="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    :cond_0
    return v0
.end method

.method private matchEntries(JLjava/lang/String;)Z
    .locals 7
    .param p1, "rowId"    # J
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const v6, 0x7fffffff

    .line 2057
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2058
    .local v3, "len":I
    const/4 v0, 0x1

    .line 2059
    .local v0, "done":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 2060
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaScanner$PlaylistEntry;

    .line 2061
    .local v1, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-ne v5, v6, :cond_1

    .line 2059
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2064
    :cond_1
    const/4 v0, 0x0

    .line 2065
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2066
    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2067
    iput v6, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 2071
    :cond_2
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2072
    .local v4, "matchLength":I
    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-le v4, v5, :cond_0

    .line 2073
    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 2074
    iput v4, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 2077
    .end local v1    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    .end local v4    # "matchLength":I
    :cond_3
    return v0
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "path1"    # Ljava/lang/String;
    .param p2, "path2"    # Ljava/lang/String;

    .prologue
    .line 2030
    const/4 v10, 0x0

    .line 2031
    .local v10, "result":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 2032
    .local v8, "end1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 2034
    .local v9, "end2":I
    :goto_0
    if-lez v8, :cond_0

    if-lez v9, :cond_0

    .line 2035
    const/16 v0, 0x2f

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 2036
    .local v11, "slash1":I
    const/16 v0, 0x2f

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 2037
    .local v12, "slash2":I
    const/16 v0, 0x5c

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 2038
    .local v6, "backSlash1":I
    const/16 v0, 0x5c

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 2039
    .local v7, "backSlash2":I
    if-le v11, v6, :cond_1

    move v2, v11

    .line 2040
    .local v2, "start1":I
    :goto_1
    if-le v12, v7, :cond_2

    move v4, v12

    .line 2041
    .local v4, "start2":I
    :goto_2
    if-gez v2, :cond_3

    const/4 v2, 0x0

    .line 2042
    :goto_3
    if-gez v4, :cond_4

    const/4 v4, 0x0

    .line 2043
    :goto_4
    sub-int v5, v8, v2

    .line 2044
    .local v5, "length":I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_5

    .line 2052
    .end local v2    # "start1":I
    .end local v4    # "start2":I
    .end local v5    # "length":I
    .end local v6    # "backSlash1":I
    .end local v7    # "backSlash2":I
    .end local v11    # "slash1":I
    .end local v12    # "slash2":I
    :cond_0
    return v10

    .line 2039
    .restart local v6    # "backSlash1":I
    .restart local v7    # "backSlash2":I
    .restart local v11    # "slash1":I
    .restart local v12    # "slash2":I
    :cond_1
    move v2, v6

    .restart local v2    # "start1":I
    goto :goto_1

    .line 2040
    :cond_2
    move v4, v7

    .restart local v4    # "start2":I
    goto :goto_2

    .line 2041
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2042
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2045
    .restart local v5    # "length":I
    :cond_5
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2046
    add-int/lit8 v10, v10, 0x1

    .line 2047
    add-int/lit8 v8, v2, -0x1

    .line 2048
    add-int/lit8 v9, v4, -0x1

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 3
    .param p1, "directories"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1732
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v0, :cond_0

    .line 1733
    invoke-direct {p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 1736
    :cond_0
    iget v0, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/MediaScanner;->mOriginalVideoCount:I

    if-nez v0, :cond_2

    .line 1737
    :cond_1
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string/jumbo v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1736
    if-eqz v0, :cond_2

    .line 1738
    invoke-direct {p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 1742
    :cond_2
    iput-object v2, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1743
    iput-object v2, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1729
    return-void
.end method

.method private prescan(Ljava/lang/String;Z)V
    .locals 46
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "prescanFiles"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1410
    const-string/jumbo v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prescan>>> filePath="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ",prescanFiles="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    const/16 v24, 0x0

    .line 1412
    .local v24, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1413
    .local v8, "where":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1415
    .local v9, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v4, :cond_8

    .line 1416
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1421
    :goto_0
    if-eqz p1, :cond_9

    .line 1423
    const-string/jumbo v8, "_id>? AND _data=?"

    .line 1425
    .local v8, "where":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v9, v4, [Ljava/lang/String;

    .end local v9    # "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v4, ""

    const/4 v5, 0x0

    aput-object v4, v9, v5

    const/4 v4, 0x1

    aput-object p1, v9, v4

    .line 1435
    .local v9, "selectionArgs":[Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v23

    .line 1436
    .local v23, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v4, "deletedata"

    const-string/jumbo v5, "false"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1437
    new-instance v25, Landroid/media/MediaScanner$MediaBulkDeleter;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 1438
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 1437
    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5, v7}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;Landroid/net/Uri;)V

    .line 1441
    .local v25, "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    const/16 v22, 0x0

    .line 1442
    .local v22, "audioCount":I
    const-wide/high16 v32, -0x8000000000000000L

    .line 1446
    .local v32, "lastId":J
    if-eqz p2, :cond_2

    .line 1451
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "limit"

    const-string/jumbo v7, "1000"

    invoke-virtual {v4, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 1452
    .local v6, "limitUri":Landroid/net/Uri;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1453
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 1454
    const-string/jumbo v5, "storage"

    .line 1453
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/storage/StorageManager;

    .line 1455
    .local v45, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual/range {v45 .. v45}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v28

    .line 1456
    .local v28, "externalVolumeList":[Landroid/os/storage/StorageVolume;
    const-string/jumbo v43, ""

    .line 1457
    .local v43, "sdPathOnM":Ljava/lang/String;
    const/16 v44, 0x0

    .line 1458
    .local v44, "storageIdOnM":I
    move-object/from16 v0, v28

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 1459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    aget-object v5, v28, v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 1460
    const/4 v4, 0x1

    aget-object v4, v28, v4

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v44

    .line 1464
    .end local v24    # "c":Landroid/database/Cursor;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v9, v5

    .line 1465
    if-eqz v24, :cond_1

    .line 1466
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1467
    const/16 v24, 0x0

    .line 1469
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    sget-object v7, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 1470
    const-string/jumbo v10, "_id"

    const/4 v11, 0x0

    .line 1469
    invoke-interface/range {v4 .. v11}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v24

    .line 1471
    .local v24, "c":Landroid/database/Cursor;
    if-nez v24, :cond_a

    .line 1546
    .end local v6    # "limitUri":Landroid/net/Uri;
    .end local v24    # "c":Landroid/database/Cursor;
    .end local v28    # "externalVolumeList":[Landroid/os/storage/StorageVolume;
    .end local v43    # "sdPathOnM":Ljava/lang/String;
    .end local v44    # "storageIdOnM":I
    .end local v45    # "storageManager":Landroid/os/storage/StorageManager;
    :cond_2
    if-eqz v24, :cond_3

    .line 1547
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1549
    :cond_3
    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1554
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1555
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    sget-object v17, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v14 .. v21}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v24

    .line 1556
    .restart local v24    # "c":Landroid/database/Cursor;
    if-eqz v24, :cond_4

    .line 1557
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1558
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1560
    const/16 v24, 0x0

    .line 1562
    .end local v24    # "c":Landroid/database/Cursor;
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mOriginalVideoCount:I

    .line 1563
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    sget-object v17, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v14 .. v21}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v24

    .line 1564
    .restart local v24    # "c":Landroid/database/Cursor;
    if-eqz v24, :cond_5

    .line 1565
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mOriginalVideoCount:I

    .line 1566
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1568
    const/16 v24, 0x0

    .line 1571
    .end local v24    # "c":Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    sget-object v17, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v14 .. v21}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v24

    .line 1572
    .restart local v24    # "c":Landroid/database/Cursor;
    if-eqz v24, :cond_6

    .line 1573
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v22

    .line 1574
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1576
    const/16 v24, 0x0

    .line 1580
    .end local v24    # "c":Landroid/database/Cursor;
    :cond_6
    if-eqz v24, :cond_7

    .line 1581
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1587
    :cond_7
    const-string/jumbo v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prescan<<< imageCount="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ",videoCount="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/MediaScanner;->mOriginalVideoCount:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1588
    const-string/jumbo v7, ", audioCount="

    .line 1587
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1588
    const-string/jumbo v7, ", lastId="

    .line 1587
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1588
    const-string/jumbo v7, ",isEmpty="

    .line 1587
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1588
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1587
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    return-void

    .line 1418
    .end local v22    # "audioCount":I
    .end local v23    # "builder":Landroid/net/Uri$Builder;
    .end local v25    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .end local v32    # "lastId":J
    .local v8, "where":Ljava/lang/String;
    .local v9, "selectionArgs":[Ljava/lang/String;
    .local v24, "c":Landroid/database/Cursor;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1427
    :cond_9
    const-string/jumbo v8, "_id>?"

    .line 1428
    .local v8, "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    .end local v9    # "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v4, ""

    const/4 v5, 0x0

    aput-object v4, v9, v5

    .local v9, "selectionArgs":[Ljava/lang/String;
    goto/16 :goto_1

    .line 1475
    .restart local v6    # "limitUri":Landroid/net/Uri;
    .restart local v22    # "audioCount":I
    .restart local v23    # "builder":Landroid/net/Uri$Builder;
    .local v24, "c":Landroid/database/Cursor;
    .restart local v25    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v28    # "externalVolumeList":[Landroid/os/storage/StorageVolume;
    .restart local v32    # "lastId":J
    .restart local v43    # "sdPathOnM":Ljava/lang/String;
    .restart local v44    # "storageIdOnM":I
    .restart local v45    # "storageManager":Landroid/os/storage/StorageManager;
    :cond_a
    :try_start_2
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v37

    .line 1477
    .local v37, "num":I
    if-eqz v37, :cond_2

    .line 1480
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1481
    :cond_b
    :goto_2
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1482
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 1483
    .local v40, "rowId":J
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 1484
    .local v39, "path":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 1485
    .local v30, "format":I
    const/4 v4, 0x3

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 1486
    .local v34, "lastModified":J
    move-wide/from16 v32, v40

    .line 1491
    if-eqz v39, :cond_b

    const-string/jumbo v4, "/"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_b

    .line 1492
    const/16 v27, 0x0

    .line 1494
    .local v27, "exists":Z
    :try_start_3
    sget v4, Landroid/system/OsConstants;->F_OK:I

    move-object/from16 v0, v39

    invoke-static {v0, v4}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result v27

    .line 1500
    .local v27, "exists":Z
    const-string/jumbo v42, "/storage/sdcard1/"

    .line 1501
    .local v42, "sdPathOnL":Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1502
    const/16 v5, 0x17

    .line 1501
    if-lt v4, v5, :cond_c

    .line 1503
    const-string/jumbo v4, "/storage/sdcard1/"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 1501
    if-eqz v4, :cond_c

    .line 1504
    const-string/jumbo v4, "/storage/sdcard1/"

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    .line 1505
    .local v36, "newPath":Ljava/lang/String;
    sget v4, Landroid/system/OsConstants;->F_OK:I

    move-object/from16 v0, v36

    invoke-static {v0, v4}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1506
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    move-wide/from16 v0, v40

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 1507
    .local v12, "realUri":Landroid/net/Uri;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1508
    .local v13, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "_data"

    move-object/from16 v0, v36

    invoke-virtual {v13, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    const-string/jumbo v4, "storage_id"

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 1512
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1511
    invoke-interface/range {v10 .. v15}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1522
    .end local v12    # "realUri":Landroid/net/Uri;
    .end local v13    # "values":Landroid/content/ContentValues;
    .end local v27    # "exists":Z
    .end local v36    # "newPath":Ljava/lang/String;
    .end local v42    # "sdPathOnL":Ljava/lang/String;
    :cond_c
    :goto_3
    if-nez v27, :cond_b

    :try_start_4
    invoke-static/range {v30 .. v30}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1527
    invoke-static/range {v39 .. v39}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v31

    .line 1528
    .local v31, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v31, :cond_f

    const/16 v29, 0x0

    .line 1530
    .local v29, "fileType":I
    :goto_4
    invoke-static/range {v29 .. v29}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1531
    move-object/from16 v0, v25

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    .line 1532
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "/.nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1533
    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1534
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v39

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v38

    .line 1535
    .local v38, "parent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const-string/jumbo v7, "unhide"

    .line 1536
    const/4 v10, 0x0

    .line 1535
    move-object/from16 v0, v38

    invoke-interface {v4, v5, v7, v0, v10}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 1545
    .end local v6    # "limitUri":Landroid/net/Uri;
    .end local v24    # "c":Landroid/database/Cursor;
    .end local v28    # "externalVolumeList":[Landroid/os/storage/StorageVolume;
    .end local v29    # "fileType":I
    .end local v30    # "format":I
    .end local v31    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .end local v34    # "lastModified":J
    .end local v37    # "num":I
    .end local v38    # "parent":Ljava/lang/String;
    .end local v39    # "path":Ljava/lang/String;
    .end local v40    # "rowId":J
    .end local v43    # "sdPathOnM":Ljava/lang/String;
    .end local v44    # "storageIdOnM":I
    .end local v45    # "storageManager":Landroid/os/storage/StorageManager;
    :catchall_0
    move-exception v4

    .line 1546
    if-eqz v24, :cond_d

    .line 1547
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1549
    :cond_d
    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1545
    throw v4

    .line 1514
    .restart local v6    # "limitUri":Landroid/net/Uri;
    .restart local v24    # "c":Landroid/database/Cursor;
    .restart local v27    # "exists":Z
    .restart local v28    # "externalVolumeList":[Landroid/os/storage/StorageVolume;
    .restart local v30    # "format":I
    .restart local v34    # "lastModified":J
    .restart local v36    # "newPath":Ljava/lang/String;
    .restart local v37    # "num":I
    .restart local v39    # "path":Ljava/lang/String;
    .restart local v40    # "rowId":J
    .restart local v42    # "sdPathOnL":Ljava/lang/String;
    .restart local v43    # "sdPathOnM":Ljava/lang/String;
    .restart local v44    # "storageIdOnM":I
    .restart local v45    # "storageManager":Landroid/os/storage/StorageManager;
    :cond_e
    const/16 v27, 0x0

    .local v27, "exists":Z
    goto :goto_3

    .line 1518
    .end local v27    # "exists":Z
    .end local v36    # "newPath":Ljava/lang/String;
    .end local v42    # "sdPathOnL":Ljava/lang/String;
    :catch_0
    move-exception v26

    .line 1520
    .local v26, "e1":Landroid/system/ErrnoException;
    :try_start_5
    const-string/jumbo v4, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prescan: ErrnoException! path="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1528
    .end local v26    # "e1":Landroid/system/ErrnoException;
    .restart local v31    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_f
    move-object/from16 v0, v31

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v29, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v29    # "fileType":I
    goto :goto_4

    .line 1579
    .end local v6    # "limitUri":Landroid/net/Uri;
    .end local v24    # "c":Landroid/database/Cursor;
    .end local v28    # "externalVolumeList":[Landroid/os/storage/StorageVolume;
    .end local v29    # "fileType":I
    .end local v30    # "format":I
    .end local v31    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .end local v34    # "lastModified":J
    .end local v37    # "num":I
    .end local v39    # "path":Ljava/lang/String;
    .end local v40    # "rowId":J
    .end local v43    # "sdPathOnM":Ljava/lang/String;
    .end local v44    # "storageIdOnM":I
    .end local v45    # "storageManager":Landroid/os/storage/StorageManager;
    :catchall_1
    move-exception v4

    .line 1580
    if-eqz v24, :cond_10

    .line 1581
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1579
    :cond_10
    throw v4
.end method

.method private processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 12
    .param p1, "fileList"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "playlistUri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 2105
    const/4 v8, -0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2106
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2107
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2108
    .local v6, "rowId":J
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2109
    .local v0, "data":Ljava/lang/String;
    invoke-direct {p0, v6, v7, v0}, Landroid/media/MediaScanner;->matchEntries(JLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2114
    .end local v0    # "data":Ljava/lang/String;
    .end local v6    # "rowId":J
    :cond_1
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2115
    .local v5, "len":I
    const/4 v4, 0x0

    .line 2116
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 2117
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaScanner$PlaylistEntry;

    .line 2118
    .local v2, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v8, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-lez v8, :cond_2

    .line 2120
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 2121
    const-string/jumbo v8, "play_order"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2122
    const-string/jumbo v8, "audio_id"

    iget-wide v10, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2123
    iget-object v8, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v9, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-interface {v8, v9, p3, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2124
    add-int/lit8 v4, v4, 0x1

    .line 2116
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2125
    :catch_0
    move-exception v1

    .line 2126
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "MediaScanner"

    const-string/jumbo v9, "RemoteException in MediaScanner.processCachedPlaylist()"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2127
    return-void

    .line 2131
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    :cond_3
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2104
    return-void
.end method

.method private native processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2136
    const/4 v3, 0x0

    .line 2138
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2139
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2140
    new-instance v4, Ljava/io/BufferedReader;

    .line 2141
    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x2000

    .line 2140
    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2142
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v3    # "reader":Ljava/io/BufferedReader;
    move-result-object v2

    .line 2143
    .local v2, "line":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2144
    :goto_0
    if-eqz v2, :cond_1

    .line 2146
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_0

    .line 2147
    invoke-direct {p0, v2, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2152
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 2158
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v3, :cond_3

    .line 2159
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2135
    .end local v1    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2160
    .restart local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2161
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2154
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 2155
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2158
    if-eqz v3, :cond_3

    .line 2159
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2160
    :catch_2
    move-exception v0

    .line 2161
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2156
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 2158
    :goto_3
    if-eqz v3, :cond_4

    .line 2159
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2156
    :cond_4
    :goto_4
    throw v5

    .line 2160
    :catch_3
    move-exception v0

    .line 2161
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2156
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2154
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    .locals 20
    .param p1, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p2, "fileList"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2264
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2265
    .local v17, "path":Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2266
    .local v5, "values":Landroid/content/ContentValues;
    const/16 v2, 0x2f

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 2267
    .local v14, "lastSlash":I
    if-gez v14, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bad path "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2269
    :cond_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v18, v0

    .line 2272
    .local v18, "rowId":J
    const-string/jumbo v2, "name"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2273
    .local v16, "name":Ljava/lang/String;
    if-nez v16, :cond_1

    .line 2274
    const-string/jumbo v2, "title"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2275
    if-nez v16, :cond_1

    .line 2277
    const/16 v2, 0x2e

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 2278
    .local v13, "lastDot":I
    if-gez v13, :cond_3

    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 2283
    .end local v13    # "lastDot":I
    :cond_1
    :goto_0
    const-string/jumbo v2, "name"

    move-object/from16 v0, v16

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    const-string/jumbo v2, "date_modified"

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2286
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-nez v2, :cond_4

    .line 2287
    const-string/jumbo v2, "_data"

    move-object/from16 v0, v17

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v6, v5}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 2289
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 2290
    const-string/jumbo v2, "members"

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2300
    .local v9, "membersUri":Landroid/net/Uri;
    :goto_1
    add-int/lit8 v2, v14, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2301
    .local v8, "playListDirectory":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v15

    .line 2302
    .local v15, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v15, :cond_5

    const/4 v12, 0x0

    .line 2304
    .local v12, "fileType":I
    :goto_2
    const/16 v2, 0x1f5

    if-ne v12, v2, :cond_6

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2305
    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 2263
    :cond_2
    :goto_3
    return-void

    .line 2279
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v8    # "playListDirectory":Ljava/lang/String;
    .end local v9    # "membersUri":Landroid/net/Uri;
    .end local v12    # "fileType":I
    .end local v15    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v13    # "lastDot":I
    :cond_3
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 2292
    .end local v13    # "lastDot":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 2293
    .restart local v4    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2296
    const-string/jumbo v2, "members"

    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 2297
    .restart local v9    # "membersUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v2, v3, v9, v6, v7}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2302
    .restart local v8    # "playListDirectory":Ljava/lang/String;
    .restart local v15    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_5
    iget v12, v15, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .restart local v12    # "fileType":I
    goto :goto_2

    .line 2306
    :cond_6
    const/16 v2, 0x1f6

    if-ne v12, v2, :cond_7

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2307
    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3

    .line 2308
    :cond_7
    const/16 v2, 0x1f7

    if-ne v12, v2, :cond_2

    move-object/from16 v6, p0

    move-object/from16 v7, v17

    move-object v10, v5

    move-object/from16 v11, p2

    .line 2309
    invoke-direct/range {v6 .. v11}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3
.end method

.method private processPlayLists()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2314
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2315
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileEntry;>;"
    const/4 v10, 0x0

    .line 2319
    .local v10, "fileList":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v3, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 2320
    const-string/jumbo v4, "media_type=2"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2319
    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 2321
    .local v10, "fileList":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2322
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaScanner$FileEntry;

    .line 2324
    .local v9, "entry":Landroid/media/MediaScanner$FileEntry;
    iget-boolean v0, v9, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-eqz v0, :cond_0

    .line 2325
    invoke-direct {p0, v9, v10}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2328
    .end local v9    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v10    # "fileList":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 2330
    .local v8, "e1":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v0, "MediaScanner"

    const-string/jumbo v1, "processPlayLists: RemoteException!"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2332
    if-eqz v10, :cond_1

    .line 2333
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2313
    .end local v8    # "e1":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void

    .line 2332
    .restart local v10    # "fileList":Landroid/database/Cursor;
    :cond_2
    if-eqz v10, :cond_1

    .line 2333
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2331
    .end local v10    # "fileList":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 2332
    if-eqz v10, :cond_3

    .line 2333
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2331
    :cond_3
    throw v0
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2168
    const/4 v4, 0x0

    .line 2170
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2171
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2172
    new-instance v5, Ljava/io/BufferedReader;

    .line 2173
    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x2000

    .line 2172
    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2174
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v4    # "reader":Ljava/io/BufferedReader;
    move-result-object v3

    .line 2175
    .local v3, "line":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2176
    :goto_0
    if-eqz v3, :cond_1

    .line 2178
    const-string/jumbo v6, "File"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2179
    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2180
    .local v1, "equals":I
    if-lez v1, :cond_0

    .line 2181
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    .end local v1    # "equals":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2187
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    .line 2193
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v4, :cond_3

    .line 2194
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2167
    .end local v2    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2195
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2196
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2189
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 2190
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2193
    if-eqz v4, :cond_3

    .line 2194
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2195
    :catch_2
    move-exception v0

    .line 2196
    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2191
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 2193
    :goto_3
    if-eqz v4, :cond_4

    .line 2194
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2191
    :cond_4
    :goto_4
    throw v6

    .line 2195
    :catch_3
    move-exception v0

    .line 2196
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "MediaScanner"

    const-string/jumbo v8, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2191
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2189
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2237
    const/4 v3, 0x0

    .line 2239
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2240
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2241
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2243
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .end local v3    # "fis":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2244
    const-string/jumbo v5, "UTF-8"

    invoke-static {v5}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v5

    .line 2245
    new-instance v6, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v6, p0, p2, p3, p5}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V

    invoke-virtual {v6}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v6

    .line 2244
    invoke-static {v4, v5, v6}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 2247
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 2255
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :cond_0
    if-eqz v3, :cond_1

    .line 2256
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2236
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 2257
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2258
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2251
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 2252
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2255
    if-eqz v3, :cond_1

    .line 2256
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2257
    :catch_2
    move-exception v0

    .line 2258
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2249
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 2250
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Lorg/xml/sax/SAXException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2255
    if-eqz v3, :cond_1

    .line 2256
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 2257
    :catch_4
    move-exception v0

    .line 2258
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2253
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v5

    .line 2255
    :goto_3
    if-eqz v3, :cond_2

    .line 2256
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2253
    :cond_2
    :goto_4
    throw v5

    .line 2257
    :catch_5
    move-exception v0

    .line 2258
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2253
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 2249
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Lorg/xml/sax/SAXException;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 2251
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private pruneDeadThumbnailFiles()V
    .locals 25

    .prologue
    .line 1602
    const-string/jumbo v2, "MediaScanner"

    const-string/jumbo v3, "pruneDeadThumbnailFiles>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 1604
    .local v14, "existingFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1605
    invoke-static {}, Landroid/media/MiniThumbFile;->getMiniThumbFileDirectoryPath()Ljava/lang/String;

    move-result-object v3

    .line 1604
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1606
    .local v11, "directory":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v17

    .line 1607
    .local v17, "files":[Ljava/lang/String;
    if-nez v17, :cond_0

    .line 1608
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1610
    :cond_0
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move-object/from16 v0, v17

    array-length v2, v0

    move/from16 v0, v19

    if-ge v0, v2, :cond_1

    .line 1611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v17, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1612
    .local v18, "fullPathString":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1610
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 1615
    .end local v18    # "fullPathString":Ljava/lang/String;
    :cond_1
    const/16 v20, 0x0

    .line 1616
    .local v20, "imageThumbCount":I
    const/16 v24, 0x0

    .line 1617
    .local v24, "videoThumbCount":I
    const/4 v10, 0x0

    .line 1620
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1621
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 1622
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1623
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "_data"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1624
    const/4 v6, 0x0

    .line 1625
    const/4 v7, 0x0

    .line 1626
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1620
    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 1627
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1628
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 1630
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1631
    .restart local v18    # "fullPathString":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1632
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1635
    .end local v18    # "fullPathString":Ljava/lang/String;
    :cond_3
    if-eqz v10, :cond_4

    .line 1636
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1637
    const/4 v10, 0x0

    .line 1640
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1641
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 1642
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mVideoThumbsUri:Landroid/net/Uri;

    .line 1643
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "_data"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 1644
    const/4 v6, 0x0

    .line 1645
    const/4 v7, 0x0

    .line 1646
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1640
    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 1647
    .restart local v10    # "c":Landroid/database/Cursor;
    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1648
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v24

    .line 1650
    :cond_5
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1651
    .restart local v18    # "fullPathString":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1652
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1654
    .end local v18    # "fullPathString":Ljava/lang/String;
    :cond_6
    if-eqz v10, :cond_7

    .line 1655
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1656
    const/4 v10, 0x0

    .line 1659
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_7
    if-gtz v20, :cond_8

    if-lez v24, :cond_b

    .line 1660
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/media/MiniThumbFile;->getMiniThumbFilePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1661
    .local v22, "miniThumbFilePath":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 1662
    .local v21, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1663
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1664
    .local v23, "path":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1665
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1679
    .end local v21    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v22    # "miniThumbFilePath":Ljava/lang/String;
    .end local v23    # "path":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1681
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v2, "MediaScanner"

    const-string/jumbo v3, "pruneDeadThumbnailFiles: RemoteException!"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1683
    if-eqz v10, :cond_a

    .line 1684
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1687
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_a
    :goto_2
    const-string/jumbo v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pruneDeadThumbnailFiles<<< for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    return-void

    .line 1670
    :cond_b
    :try_start_2
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "fileToDelete$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1671
    .local v15, "fileToDelete":Ljava/lang/String;
    const-string/jumbo v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "delete dead thumbnail file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1673
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1674
    :catch_1
    move-exception v13

    .line 1676
    .local v13, "ex":Ljava/lang/SecurityException;
    :try_start_4
    const-string/jumbo v2, "MediaScanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pruneDeadThumbnailFiles: path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 1682
    .end local v13    # "ex":Ljava/lang/SecurityException;
    .end local v15    # "fileToDelete":Ljava/lang/String;
    .end local v16    # "fileToDelete$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    .line 1683
    if-eqz v10, :cond_c

    .line 1684
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1682
    :cond_c
    throw v2

    .line 1683
    .restart local v16    # "fileToDelete$iterator":Ljava/util/Iterator;
    :cond_d
    if-eqz v10, :cond_a

    .line 1684
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private releaseResources()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1748
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    .line 1750
    iput-object v1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 1746
    :cond_0
    return-void
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 3

    .prologue
    .line 457
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 459
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 461
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 466
    const-string/jumbo v0, "ro.config.sms_notifi_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultSmsNotiFilename:Ljava/lang/String;

    .line 469
    const-string/jumbo v0, "ro.config.sms_notifi_sound_2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultSmsNotiFilename_2:Ljava/lang/String;

    .line 472
    const-string/jumbo v0, "ro.config.ringtone_2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename_2:Ljava/lang/String;

    .line 477
    const-string/jumbo v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultRingtoneFileNames: ringtone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 478
    const-string/jumbo v2, ",notification="

    .line 477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 478
    iget-object v2, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 478
    const-string/jumbo v2, ",alarm="

    .line 477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 478
    iget-object v2, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-void
.end method


# virtual methods
.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 2360
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2361
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2359
    return-void
.end method

.method makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;
    .locals 16
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2005
    const/4 v14, 0x0

    .line 2007
    .local v14, "c":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v5, "_data=?"

    .line 2008
    .local v5, "where":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    .line 2009
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    sget-object v4, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 2010
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2009
    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v14

    .line 2011
    .local v14, "c":Landroid/database/Cursor;
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2012
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2013
    .local v8, "rowId":J
    const/4 v1, 0x2

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2014
    .local v13, "format":I
    const/4 v1, 0x3

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2015
    .local v11, "lastModified":J
    new-instance v7, Landroid/media/MediaScanner$FileEntry;

    move-object/from16 v10, p1

    invoke-direct/range {v7 .. v13}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2021
    if-eqz v14, :cond_0

    .line 2022
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2015
    :cond_0
    return-object v7

    .line 2021
    .end local v8    # "rowId":J
    .end local v11    # "lastModified":J
    .end local v13    # "format":I
    :cond_1
    if-eqz v14, :cond_2

    .line 2022
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2025
    .end local v5    # "where":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v14    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 2017
    :catch_0
    move-exception v15

    .line 2019
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeEntryFor: RemoteException! path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2021
    if-eqz v14, :cond_2

    .line 2022
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2020
    .end local v15    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 2021
    if-eqz v14, :cond_3

    .line 2022
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2020
    :cond_3
    throw v1
.end method

.method public postScanAll(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2409
    .local p1, "playlistFilePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v3, :cond_3

    .line 2410
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "path$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2411
    .local v5, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v2

    .line 2412
    .local v2, "entry":Landroid/media/MediaScanner$FileEntry;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2413
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 2415
    .local v6, "lastModified":J
    if-eqz v2, :cond_6

    iget-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    move-wide/from16 v16, v0

    sub-long v10, v6, v16

    .line 2416
    .local v10, "delta":J
    :goto_1
    const-wide/16 v16, 0x1

    cmp-long v3, v10, v16

    if-gtz v3, :cond_0

    const-wide/16 v16, -0x1

    cmp-long v3, v10, v16

    if-gez v3, :cond_7

    :cond_0
    const/4 v14, 0x1

    .line 2417
    .local v14, "wasModified":Z
    :goto_2
    if-eqz v2, :cond_1

    if-eqz v14, :cond_2

    .line 2418
    :cond_1
    if-eqz v14, :cond_8

    .line 2419
    iput-wide v6, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    .line 2423
    :goto_3
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 2425
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2429
    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "lastModified":J
    .end local v10    # "delta":J
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "path$iterator":Ljava/util/Iterator;
    .end local v14    # "wasModified":Z
    :catch_0
    move-exception v9

    .line 2430
    .local v9, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaScanner"

    const-string/jumbo v4, "RemoteException in MediaScanner.scan()"

    invoke-static {v3, v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2433
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner;->mOriginalVideoCount:I

    if-nez v3, :cond_5

    .line 2434
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string/jumbo v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2433
    if-eqz v3, :cond_5

    .line 2435
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 2439
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2440
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 2441
    const-string/jumbo v3, "MediaScanner"

    const-string/jumbo v4, "postScanAll"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    return-void

    .line 2415
    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v6    # "lastModified":J
    .restart local v12    # "file":Ljava/io/File;
    .restart local v13    # "path$iterator":Ljava/util/Iterator;
    :cond_6
    const-wide/16 v10, 0x0

    .restart local v10    # "delta":J
    goto :goto_1

    .line 2416
    :cond_7
    const/4 v14, 0x0

    .restart local v14    # "wasModified":Z
    goto :goto_2

    .line 2421
    :cond_8
    :try_start_1
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    goto :goto_3

    .line 2427
    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "lastModified":J
    .end local v10    # "delta":J
    .end local v12    # "file":Ljava/io/File;
    .end local v14    # "wasModified":Z
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->processPlayLists()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public preScanAll(Ljava/lang/String;)V
    .locals 3
    .param p1, "volume"    # Ljava/lang/String;

    .prologue
    .line 2392
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2393
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2390
    :goto_0
    return-void

    .line 2394
    :catch_0
    move-exception v0

    .line 2395
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MediaScanner"

    const-string/jumbo v2, "RemoteException in MediaScanner.scan()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 2355
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2354
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 1777
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1778
    .local v12, "start":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1779
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1780
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1784
    .local v8, "prescan":J
    new-instance v14, Landroid/media/MediaInserter;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1f4

    invoke-direct/range {v14 .. v17}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1787
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v5, v14, :cond_0

    .line 1788
    aget-object v14, p1, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1787
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1793
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v14}, Landroid/media/MediaInserter;->flushAll()V

    .line 1794
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1797
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1798
    .local v10, "scan":J
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 1799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1802
    .local v6, "end":J
    const-string/jumbo v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, " prescan time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v8, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    const-string/jumbo v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "    scan time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v10, v8

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    const-string/jumbo v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "postscan time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v6, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    const-string/jumbo v14, "MediaScanner"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "   total time: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v6, v12

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ms\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1816
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1775
    .end local v5    # "i":I
    .end local v6    # "end":J
    .end local v8    # "prescan":J
    .end local v10    # "scan":J
    .end local v12    # "start":J
    :goto_1
    return-void

    .line 1813
    :catch_0
    move-exception v3

    .line 1814
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v14, "MediaScanner"

    const-string/jumbo v15, "RemoteException in MediaScanner.scan()"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1816
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_1

    .line 1810
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 1812
    .local v4, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_2
    const-string/jumbo v14, "MediaScanner"

    const-string/jumbo v15, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1816
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_1

    .line 1807
    .end local v4    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v2

    .line 1809
    .local v2, "e":Landroid/database/SQLException;
    :try_start_3
    const-string/jumbo v14, "MediaScanner"

    const-string/jumbo v15, "SQLException in MediaScanner.scan()"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1816
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_1

    .line 1815
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v14

    .line 1816
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1815
    throw v14
.end method

.method public scanFolders(Landroid/os/Handler;[Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 18
    .param p1, "insertHanlder"    # Landroid/os/Handler;
    .param p2, "folders"    # [Ljava/lang/String;
    .param p3, "volume"    # Ljava/lang/String;
    .param p4, "isSingelFile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2458
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2461
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 2462
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2469
    :goto_0
    new-instance v3, Landroid/media/MediaInserter;

    const/16 v5, 0x64

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v5}, Landroid/media/MediaInserter;-><init>(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 2472
    const/4 v3, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v16, v3

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    aget-object v4, p2, v16

    .line 2473
    .local v4, "path":Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 2474
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2475
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 2476
    .local v6, "lastModifiedSeconds":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 2477
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v10

    invoke-static {v4}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v12

    .line 2476
    const/4 v5, 0x0

    .line 2477
    const/4 v11, 0x0

    .line 2476
    invoke-virtual/range {v3 .. v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 2472
    .end local v6    # "lastModifiedSeconds":J
    .end local v15    # "file":Ljava/io/File;
    :goto_2
    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    goto :goto_1

    .line 2464
    .end local v4    # "path":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 2487
    :catch_0
    move-exception v2

    .line 2489
    .local v2, "e":Landroid/database/SQLException;
    const-string/jumbo v3, "MediaScanner"

    const-string/jumbo v5, "SQLException in MediaScanner.scan()"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2498
    .end local v2    # "e":Landroid/database/SQLException;
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2499
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 2501
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlaylistFilePathList:Ljava/util/ArrayList;

    return-object v3

    .line 2479
    .restart local v4    # "path":Ljava/lang/String;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 2490
    .end local v4    # "path":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 2492
    .local v14, "e":Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v3, "MediaScanner"

    const-string/jumbo v5, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v3, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2484
    .end local v14    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v3}, Landroid/media/MediaInserter;->flushAll()V

    .line 2485
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 2493
    :catch_2
    move-exception v13

    .line 2494
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaScanner"

    const-string/jumbo v5, "RemoteException in MediaScanner.scan()"

    invoke-static {v3, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public scanFolders([Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 18
    .param p1, "folders"    # [Ljava/lang/String;
    .param p2, "volume"    # Ljava/lang/String;
    .param p3, "isSingelFileOrEmptyFolder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2516
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2519
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 2520
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2527
    :goto_0
    new-instance v3, Landroid/media/MediaInserter;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    const/16 v9, 0x1f4

    invoke-direct {v3, v5, v8, v9}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 2530
    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v16, v3

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    aget-object v4, p1, v16

    .line 2531
    .local v4, "folder":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2532
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2534
    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 2535
    .local v6, "lastModifiedSeconds":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 2536
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v10

    invoke-static {v4}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v12

    .line 2535
    const/4 v5, 0x0

    .line 2536
    const/4 v11, 0x0

    .line 2535
    invoke-virtual/range {v3 .. v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 2539
    .end local v6    # "lastModifiedSeconds":J
    :cond_0
    if-nez p3, :cond_1

    .line 2540
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 2530
    :cond_1
    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    goto :goto_1

    .line 2522
    .end local v4    # "folder":Ljava/lang/String;
    .end local v15    # "file":Ljava/io/File;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 2549
    :catch_0
    move-exception v2

    .line 2551
    .local v2, "e":Landroid/database/SQLException;
    const-string/jumbo v3, "MediaScanner"

    const-string/jumbo v5, "SQLException in MediaScanner.scan()"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2560
    .end local v2    # "e":Landroid/database/SQLException;
    :goto_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2561
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 2563
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mPlaylistFilePathList:Ljava/util/ArrayList;

    return-object v3

    .line 2546
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v3}, Landroid/media/MediaInserter;->flushAll()V

    .line 2547
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 2552
    :catch_1
    move-exception v14

    .line 2554
    .local v14, "e":Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v3, "MediaScanner"

    const-string/jumbo v5, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v3, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2555
    .end local v14    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v13

    .line 2556
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaScanner"

    const-string/jumbo v5, "RemoteException in MediaScanner.scan()"

    invoke-static {v3, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 27
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "objectHandle"    # I
    .param p4, "format"    # I

    .prologue
    .line 1943
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1944
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v26

    .line 1945
    .local v26, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v26, :cond_3

    const/16 v25, 0x0

    .line 1946
    .local v25, "fileType":I
    :goto_0
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1947
    .local v23, "file":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v10, 0x3e8

    div-long v14, v4, v10

    .line 1949
    .local v14, "lastModifiedSeconds":J
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1969
    :cond_0
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1970
    const/16 v24, 0x0

    .line 1972
    .local v24, "fileList":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1974
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1976
    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v22

    .line 1977
    .local v22, "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz v22, :cond_1

    .line 1978
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 1979
    sget-object v13, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1978
    invoke-interface/range {v10 .. v17}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    .end local v14    # "lastModifiedSeconds":J
    move-result-object v24

    .line 1980
    .local v24, "fileList":Landroid/database/Cursor;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1993
    .end local v22    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v24    # "fileList":Landroid/database/Cursor;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1994
    if-eqz v24, :cond_2

    .line 1995
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1997
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1942
    :goto_2
    return-void

    .line 1945
    .end local v23    # "file":Ljava/io/File;
    .end local v25    # "fileType":I
    :cond_3
    move-object/from16 v0, v26

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v25, v0

    .restart local v25    # "fileType":I
    goto :goto_0

    .line 1950
    .restart local v14    # "lastModifiedSeconds":J
    .restart local v23    # "file":Ljava/io/File;
    :cond_4
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1951
    invoke-static/range {v25 .. v25}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1954
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1956
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v6, "_size"

    const/16 v4, 0x3001

    move/from16 v0, p4

    if-ne v0, v4, :cond_5

    const-wide/16 v4, 0x0

    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1958
    const-string/jumbo v4, "date_modified"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1960
    const/4 v4, 0x1

    :try_start_1
    new-array v9, v4, [Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v9, v5

    .line 1961
    .local v9, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1962
    const-string/jumbo v8, "_id=?"

    .line 1961
    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1966
    .end local v9    # "whereArgs":[Ljava/lang/String;
    :goto_4
    return-void

    .line 1956
    :cond_5
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_3

    .line 1963
    :catch_0
    move-exception v21

    .line 1964
    .local v21, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MediaScanner"

    const-string/jumbo v5, "RemoteException in scanMtpFile"

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1984
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v21    # "e":Landroid/os/RemoteException;
    .local v24, "fileList":Landroid/database/Cursor;
    :cond_6
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1987
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, v26

    iget-object v13, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 1988
    const/16 v4, 0x3001

    move/from16 v0, p4

    if-ne v0, v4, :cond_8

    const/16 v18, 0x1

    :goto_5
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v20

    const/16 v19, 0x1

    move-object/from16 v12, p1

    .line 1987
    invoke-virtual/range {v11 .. v20}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1990
    .end local v14    # "lastModifiedSeconds":J
    .end local v24    # "fileList":Landroid/database/Cursor;
    :catch_1
    move-exception v21

    .line 1991
    .restart local v21    # "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "MediaScanner"

    const-string/jumbo v5, "RemoteException in MediaScanner.scanFile()"

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1993
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1994
    if-eqz v24, :cond_7

    .line 1995
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1997
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto/16 :goto_2

    .line 1988
    .end local v21    # "e":Landroid/os/RemoteException;
    .restart local v14    # "lastModifiedSeconds":J
    .restart local v24    # "fileList":Landroid/database/Cursor;
    :cond_8
    const/16 v18, 0x0

    goto :goto_5

    .line 1992
    .end local v14    # "lastModifiedSeconds":J
    .end local v24    # "fileList":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    .line 1993
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1994
    if-eqz v24, :cond_9

    .line 1995
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1997
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1992
    throw v4
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1823
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1824
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1826
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1827
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1828
    const-string/jumbo v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scanSingleFile: Not exist path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1829
    const/4 v1, 0x0

    .line 1842
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1829
    return-object v1

    .line 1833
    :cond_0
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    .line 1836
    .local v4, "lastModifiedSeconds":J
    iget-object v1, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 1837
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v8

    invoke-static {p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v10

    const/4 v9, 0x1

    move-object v2, p1

    move-object v3, p3

    .line 1836
    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1842
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1836
    return-object v1

    .line 1838
    .end local v4    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1839
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "MediaScanner"

    const-string/jumbo v2, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1840
    const/4 v1, 0x0

    .line 1842
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1840
    return-object v1

    .line 1841
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1842
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1841
    throw v1
.end method

.method public native setLocale(Ljava/lang/String;)V
.end method
