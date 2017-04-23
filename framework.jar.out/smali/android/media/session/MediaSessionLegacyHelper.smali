.class public Landroid/media/session/MediaSessionLegacyHelper;
.super Ljava/lang/Object;
.source "MediaSessionLegacyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;,
        Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;,
        Landroid/media/session/MediaSessionLegacyHelper$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MediaSessionHelper"

.field private static isVolumeKeyHandled:Z

.field private static mNewKeyCode:I

.field private static sInstance:Landroid/media/session/MediaSessionLegacyHelper;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mSendLongPressKeyEvent:Ljava/lang/Runnable;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;

.field private mSessions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/PendingIntent;",
            "Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Landroid/media/session/MediaSessionLegacyHelper;->mNewKeyCode:I

    return v0
.end method

.method static synthetic -get2(Landroid/media/session/MediaSessionLegacyHelper;)Landroid/media/session/MediaSessionManager;
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/session/MediaSessionLegacyHelper;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Landroid/media/session/MediaSessionLegacyHelper;->isVolumeKeyHandled:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "pi"    # Landroid/app/PendingIntent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-static {p0, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->sendKeyEvent(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string/jumbo v0, "MediaSessionHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/session/MediaSessionLegacyHelper;->sLock:Ljava/lang/Object;

    .line 183
    const/4 v0, 0x0

    sput v0, Landroid/media/session/MediaSessionLegacyHelper;->mNewKeyCode:I

    .line 184
    const/4 v0, 0x1

    sput-boolean v0, Landroid/media/session/MediaSessionLegacyHelper;->isVolumeKeyHandled:Z

    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 62
    iput-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    .line 185
    new-instance v0, Landroid/media/session/MediaSessionLegacyHelper$1;

    invoke-direct {v0, p0}, Landroid/media/session/MediaSessionLegacyHelper$1;-><init>(Landroid/media/session/MediaSessionLegacyHelper;)V

    iput-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSendLongPressKeyEvent:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Landroid/media/session/MediaSessionLegacyHelper;->mContext:Landroid/content/Context;

    .line 68
    const-string/jumbo v0, "media_session"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 65
    return-void
.end method

.method public static getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    sget-object v1, Landroid/media/session/MediaSessionLegacyHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Landroid/media/session/MediaSessionLegacyHelper;->sInstance:Landroid/media/session/MediaSessionLegacyHelper;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Landroid/media/session/MediaSessionLegacyHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/session/MediaSessionLegacyHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/media/session/MediaSessionLegacyHelper;->sInstance:Landroid/media/session/MediaSessionLegacyHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 77
    sget-object v0, Landroid/media/session/MediaSessionLegacyHelper;->sInstance:Landroid/media/session/MediaSessionLegacyHelper;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    .locals 5
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "createIfMissing"    # Z

    .prologue
    .line 421
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    .line 422
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 424
    new-instance v1, Landroid/media/session/MediaSession;

    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MediaSessionHelper-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 425
    .local v1, "session":Landroid/media/session/MediaSession;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 426
    new-instance v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    .end local v0    # "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    invoke-direct {v0, p0, v1, p1}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;-><init>(Landroid/media/session/MediaSessionLegacyHelper;Landroid/media/session/MediaSession;Landroid/app/PendingIntent;)V

    .line 427
    .restart local v0    # "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .end local v1    # "session":Landroid/media/session/MediaSession;
    :cond_0
    return-object v0
.end method

.method public static getOldMetadata(Landroid/media/MediaMetadata;II)Landroid/os/Bundle;
    .locals 6
    .param p0, "metadata"    # Landroid/media/MediaMetadata;
    .param p1, "artworkWidth"    # I
    .param p2, "artworkHeight"    # I

    .prologue
    const/16 v5, 0x64

    const/4 v3, -0x1

    .line 82
    if-eq p1, v3, :cond_12

    if-eq p2, v3, :cond_12

    const/4 v1, 0x1

    .line 83
    .local v1, "includeArtwork":Z
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v2, "oldMetadata":Landroid/os/Bundle;
    const-string/jumbo v3, "android.media.metadata.ALBUM"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 86
    const-string/jumbo v4, "android.media.metadata.ALBUM"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    if-eqz v1, :cond_13

    const-string/jumbo v3, "android.media.metadata.ART"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 89
    const-string/jumbo v3, "android.media.metadata.ART"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, "art":Landroid/graphics/Bitmap;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 90
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    .end local v0    # "art":Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    const-string/jumbo v3, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    const-string/jumbo v4, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_2
    const-string/jumbo v3, "android.media.metadata.ARTIST"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    const-string/jumbo v4, "android.media.metadata.ARTIST"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_3
    const-string/jumbo v3, "android.media.metadata.AUTHOR"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 107
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    const-string/jumbo v4, "android.media.metadata.AUTHOR"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_4
    const-string/jumbo v3, "android.media.metadata.COMPILATION"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 111
    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 112
    const-string/jumbo v4, "android.media.metadata.COMPILATION"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_5
    const-string/jumbo v3, "android.media.metadata.COMPOSER"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 115
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    const-string/jumbo v4, "android.media.metadata.COMPOSER"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_6
    const-string/jumbo v3, "android.media.metadata.DATE"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 119
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 120
    const-string/jumbo v4, "android.media.metadata.DATE"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_7
    const-string/jumbo v3, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 123
    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 124
    const-string/jumbo v4, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 123
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 126
    :cond_8
    const-string/jumbo v3, "android.media.metadata.DURATION"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 127
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    const-string/jumbo v4, "android.media.metadata.DURATION"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 127
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 130
    :cond_9
    const-string/jumbo v3, "android.media.metadata.GENRE"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 131
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 132
    const-string/jumbo v4, "android.media.metadata.GENRE"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_a
    const-string/jumbo v3, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 135
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 136
    const-string/jumbo v4, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 135
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 138
    :cond_b
    const-string/jumbo v3, "android.media.metadata.RATING"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 139
    const/16 v3, 0x65

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 140
    const-string/jumbo v4, "android.media.metadata.RATING"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object v4

    .line 139
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 142
    :cond_c
    const-string/jumbo v3, "android.media.metadata.USER_RATING"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 143
    const v3, 0x10000001

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 144
    const-string/jumbo v4, "android.media.metadata.USER_RATING"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getRating(Ljava/lang/String;)Landroid/media/Rating;

    move-result-object v4

    .line 143
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 146
    :cond_d
    const-string/jumbo v3, "android.media.metadata.TITLE"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 147
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 148
    const-string/jumbo v4, "android.media.metadata.TITLE"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_e
    const-string/jumbo v3, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 152
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 153
    const-string/jumbo v4, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 151
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 155
    :cond_f
    const-string/jumbo v3, "android.media.metadata.WRITER"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 156
    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 157
    const-string/jumbo v4, "android.media.metadata.WRITER"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_10
    const-string/jumbo v3, "android.media.metadata.YEAR"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 160
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 161
    const-string/jumbo v4, "android.media.metadata.YEAR"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_11
    return-object v2

    .line 82
    .end local v1    # "includeArtwork":Z
    .end local v2    # "oldMetadata":Landroid/os/Bundle;
    :cond_12
    const/4 v1, 0x0

    .restart local v1    # "includeArtwork":Z
    goto/16 :goto_0

    .line 92
    .restart local v2    # "oldMetadata":Landroid/os/Bundle;
    :cond_13
    if-eqz v1, :cond_1

    const-string/jumbo v3, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    const-string/jumbo v3, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    .restart local v0    # "art":Landroid/graphics/Bitmap;
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSessionLegacyHelper;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 95
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1
.end method

.method private static scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 396
    if-eqz p0, :cond_2

    .line 397
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 398
    .local v9, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 399
    .local v2, "height":I
    move/from16 v0, p1

    if-gt v9, v0, :cond_0

    move/from16 v0, p2

    if-le v2, v0, :cond_2

    .line 400
    :cond_0
    move/from16 v0, p1

    int-to-float v10, v0

    int-to-float v11, v9

    div-float/2addr v10, v11

    move/from16 v0, p2

    int-to-float v11, v0

    int-to-float v12, v2

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 401
    .local v8, "scale":F
    int-to-float v10, v9

    mul-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 402
    .local v5, "newWidth":I
    int-to-float v10, v2

    mul-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 403
    .local v4, "newHeight":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 404
    .local v3, "newConfig":Landroid/graphics/Bitmap$Config;
    if-nez v3, :cond_1

    .line 405
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 407
    :cond_1
    invoke-static {v5, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 408
    .local v6, "outBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 409
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 410
    .local v7, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 411
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 413
    new-instance v10, Landroid/graphics/RectF;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 412
    const/4 v11, 0x0

    invoke-virtual {v1, p0, v11, v10, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 414
    move-object p0, v6

    .line 417
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    .end local v3    # "newConfig":Landroid/graphics/Bitmap$Config;
    .end local v4    # "newHeight":I
    .end local v5    # "newWidth":I
    .end local v6    # "outBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "paint":Landroid/graphics/Paint;
    .end local v8    # "scale":F
    .end local v9    # "width":I
    :cond_2
    return-object p0
.end method

.method private static sendKeyEvent(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p0, "pi"    # Landroid/app/PendingIntent;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 434
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v1, "MediaSessionHelper"

    const-string/jumbo v2, "Error sending media key down event:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    return-void
.end method


# virtual methods
.method public addMediaButtonListener(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/content/Context;)V
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "mbrComponent"    # Landroid/content/ComponentName;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    const-string/jumbo v1, "MediaSessionHelper"

    const-string/jumbo v2, "Pending intent was null, can\'t addMediaButtonListener."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void

    .line 346
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    move-result-object v0

    .line 347
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-nez v0, :cond_1

    .line 348
    return-void

    .line 350
    :cond_1
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v1, :cond_2

    .line 352
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 353
    const-string/jumbo v1, "MediaSessionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addMediaButtonListener already added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_2
    new-instance v1, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    invoke-direct {v1, p1, p3}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;-><init>(Landroid/app/PendingIntent;Landroid/content/Context;)V

    iput-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    .line 359
    iget v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    .line 360
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    iget v2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 361
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, p1}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 362
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->update()V

    .line 363
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 364
    const-string/jumbo v1, "MediaSessionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addMediaButtonListener added "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_3
    return-void
.end method

.method public addRccListener(Landroid/app/PendingIntent;Landroid/media/session/MediaSession$Callback;)V
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/media/session/MediaSession$Callback;

    .prologue
    .line 298
    if-nez p1, :cond_0

    .line 299
    const-string/jumbo v1, "MediaSessionHelper"

    const-string/jumbo v2, "Pending intent was null, can\'t add rcc listener."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void

    .line 302
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    move-result-object v0

    .line 303
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-nez v0, :cond_1

    .line 304
    return-void

    .line 306
    :cond_1
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-eqz v1, :cond_3

    .line 307
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-ne v1, p2, :cond_3

    .line 308
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 309
    const-string/jumbo v1, "MediaSessionHelper"

    const-string/jumbo v2, "addRccListener listener already added."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_2
    return-void

    .line 315
    :cond_3
    iput-object p2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    .line 316
    iget v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    .line 317
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    iget v2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 318
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->update()V

    .line 319
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 320
    const-string/jumbo v1, "MediaSessionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Added rcc listener for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_4
    return-void
.end method

.method public getSession(Landroid/app/PendingIntent;)Landroid/media/session/MediaSession;
    .locals 3
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    .line 168
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    goto :goto_0
.end method

.method public isGlobalPriorityActive()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0}, Landroid/media/session/MediaSessionManager;->isGlobalPriorityActive()Z

    move-result v0

    return v0
.end method

.method public removeMediaButtonListener(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v3, 0x0

    .line 369
    if-nez p1, :cond_0

    .line 370
    return-void

    .line 372
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    move-result-object v0

    .line 373
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    if-eqz v1, :cond_1

    .line 374
    iget v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    .line 375
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    iget v2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 376
    iput-object v3, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    .line 378
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->update()V

    .line 379
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 380
    const-string/jumbo v1, "MediaSessionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeMediaButtonListener removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_1
    return-void
.end method

.method public removeRccListener(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x0

    .line 325
    if-nez p1, :cond_0

    .line 326
    return-void

    .line 328
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHolder(Landroid/app/PendingIntent;Z)Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;

    move-result-object v0

    .line 329
    .local v0, "holder":Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-eqz v1, :cond_1

    .line 330
    iput-object v2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    .line 331
    iget v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    .line 332
    iget-object v1, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    iget v2, v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mFlags:I

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 333
    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->update()V

    .line 334
    sget-boolean v1, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 335
    const-string/jumbo v1, "MediaSessionHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removed rcc listener for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_1
    return-void
.end method

.method public sendAdjustVolumeBy(III)V
    .locals 2
    .param p1, "suggestedStream"    # I
    .param p2, "delta"    # I
    .param p3, "flags"    # I

    .prologue
    .line 287
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/session/MediaSessionManager;->dispatchAdjustVolume(III)V

    .line 288
    sget-boolean v0, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 289
    const-string/jumbo v0, "MediaSessionHelper"

    const-string/jumbo v1, "dispatched volume adjustment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    return-void
.end method

.method public sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .locals 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    const-string/jumbo v0, "MediaSessionHelper"

    const-string/jumbo v1, "Tried to send a null key event. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 177
    sget-boolean v0, Landroid/media/session/MediaSessionLegacyHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 178
    const-string/jumbo v0, "MediaSessionHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatched media key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    return-void
.end method

.method public sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 12
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "musicOnly"    # Z

    .prologue
    const/high16 v10, -0x80000000

    const/4 v9, 0x0

    .line 199
    if-nez p1, :cond_0

    .line 200
    const-string/jumbo v7, "MediaSessionHelper"

    const-string/jumbo v8, "Tried to send a null key event. Ignoring."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    const/4 v2, 0x1

    .line 204
    .local v2, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    const/4 v6, 0x1

    .line 205
    .local v6, "up":Z
    :goto_1
    const/4 v1, 0x0

    .line 206
    .local v1, "direction":I
    const/4 v4, 0x0

    .line 207
    .local v4, "isMute":Z
    const/4 v5, 0x0

    .line 208
    .local v5, "newKeyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 226
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v7

    invoke-static {v7}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "deviceName":Ljava/lang/String;
    if-eqz v0, :cond_6

    const-string/jumbo v7, "ACCDET"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 229
    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_4

    .line 230
    iget-object v7, p0, Landroid/media/session/MediaSessionLegacyHelper;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSendLongPressKeyEvent:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 231
    iget-object v7, p0, Landroid/media/session/MediaSessionLegacyHelper;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSendLongPressKeyEvent:Ljava/lang/Runnable;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    sput v5, Landroid/media/session/MediaSessionLegacyHelper;->mNewKeyCode:I

    .line 233
    sput-boolean v9, Landroid/media/session/MediaSessionLegacyHelper;->isVolumeKeyHandled:Z

    .line 198
    :cond_1
    :goto_3
    return-void

    .line 203
    .end local v0    # "deviceName":Ljava/lang/String;
    .end local v1    # "direction":I
    .end local v2    # "down":Z
    .end local v4    # "isMute":Z
    .end local v5    # "newKeyCode":I
    .end local v6    # "up":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "down":Z
    goto :goto_0

    .line 204
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "up":Z
    goto :goto_1

    .line 210
    .restart local v1    # "direction":I
    .restart local v4    # "isMute":Z
    .restart local v5    # "newKeyCode":I
    :sswitch_0
    const/4 v1, 0x1

    .line 211
    const/16 v5, 0x58

    .line 212
    goto :goto_2

    .line 214
    :sswitch_1
    const/4 v1, -0x1

    .line 215
    const/16 v5, 0x57

    .line 216
    goto :goto_2

    .line 218
    :sswitch_2
    const/4 v4, 0x1

    .line 219
    goto :goto_2

    .line 236
    .restart local v0    # "deviceName":Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_1

    .line 237
    iget-object v7, p0, Landroid/media/session/MediaSessionLegacyHelper;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSendLongPressKeyEvent:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 238
    sget-boolean v7, Landroid/media/session/MediaSessionLegacyHelper;->isVolumeKeyHandled:Z

    if-nez v7, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 239
    const-string/jumbo v7, "MediaSessionHelper"

    const-string/jumbo v8, "Press action, send volume key"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-eqz p2, :cond_5

    .line 242
    const/16 v3, 0x200

    .line 246
    .local v3, "flags":I
    :goto_4
    if-eqz v1, :cond_1

    .line 247
    iget-object v7, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v7, v10, v1, v3}, Landroid/media/session/MediaSessionManager;->dispatchAdjustVolume(III)V

    goto :goto_3

    .line 244
    .end local v3    # "flags":I
    :cond_5
    const/16 v3, 0x15

    .restart local v3    # "flags":I
    goto :goto_4

    .line 255
    .end local v3    # "flags":I
    :cond_6
    if-nez v2, :cond_7

    if-eqz v6, :cond_1

    .line 257
    :cond_7
    if-eqz p2, :cond_9

    .line 260
    const/16 v3, 0x1200

    .line 269
    .restart local v3    # "flags":I
    :goto_5
    if-eqz v1, :cond_b

    .line 271
    if-eqz v6, :cond_8

    .line 272
    const/4 v1, 0x0

    .line 274
    :cond_8
    iget-object v7, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v7, v10, v1, v3}, Landroid/media/session/MediaSessionManager;->dispatchAdjustVolume(III)V

    goto :goto_3

    .line 263
    .end local v3    # "flags":I
    :cond_9
    if-eqz v6, :cond_a

    .line 264
    const/16 v3, 0x1014

    .restart local v3    # "flags":I
    goto :goto_5

    .line 266
    .end local v3    # "flags":I
    :cond_a
    const/16 v3, 0x1011

    .restart local v3    # "flags":I
    goto :goto_5

    .line 276
    :cond_b
    if-eqz v4, :cond_1

    .line 277
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 278
    iget-object v7, p0, Landroid/media/session/MediaSessionLegacyHelper;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 279
    const/16 v8, 0x65

    .line 278
    invoke-virtual {v7, v10, v8, v3}, Landroid/media/session/MediaSessionManager;->dispatchAdjustVolume(III)V

    goto :goto_3

    .line 208
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method
