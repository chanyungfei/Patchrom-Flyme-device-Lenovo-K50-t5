.class public Landroid/media/RingtoneManager;
.super Ljava/lang/Object;
.source "RingtoneManager.java"


# static fields
.field public static final ACTION_RINGTONE_PICKER:Ljava/lang/String; = "android.intent.action.RINGTONE_PICKER"

.field private static final DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

.field private static final DEFAULT_SMS_NOTIFI_URI:Landroid/net/Uri;

.field private static final DEFAULT_SMS_NOTIFI_URI_2:Landroid/net/Uri;

.field private static final DRM_COLUMNS:[Ljava/lang/String;

.field private static final DRM_LEVEL_ALL:I = 0x4

.field private static final DRM_LEVEL_FL:I = 0x1

.field private static final DRM_LEVEL_SD:I = 0x2

.field private static final EXTRA_DRM_LEVEL:Ljava/lang/String; = "android.intent.extra.drm_level"

.field public static final EXTRA_RINGTONE_AUDIO_ATTRIBUTES_FLAGS:Ljava/lang/String; = "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

.field public static final EXTRA_RINGTONE_DEFAULT_URI:Ljava/lang/String; = "android.intent.extra.ringtone.DEFAULT_URI"

.field public static final EXTRA_RINGTONE_EXISTING_URI:Ljava/lang/String; = "android.intent.extra.ringtone.EXISTING_URI"

.field public static final EXTRA_RINGTONE_INCLUDE_DRM:Ljava/lang/String; = "android.intent.extra.ringtone.INCLUDE_DRM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_RINGTONE_PICKED_POSITION:Ljava/lang/String; = "android.intent.extra.ringtone.PICKED_POSITION"

.field public static final EXTRA_RINGTONE_PICKED_URI:Ljava/lang/String; = "android.intent.extra.ringtone.PICKED_URI"

.field public static final EXTRA_RINGTONE_SHOW_DEFAULT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_DEFAULT"

.field public static final EXTRA_RINGTONE_SHOW_MORE_RINGTONES:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_MORE_RINGTONES"

.field public static final EXTRA_RINGTONE_SHOW_SILENT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_SILENT"

.field public static final EXTRA_RINGTONE_TITLE:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE"

.field public static final EXTRA_RINGTONE_TYPE:Ljava/lang/String; = "android.intent.extra.ringtone.TYPE"

.field public static final ID_COLUMN_INDEX:I = 0x0

.field private static final INTERNAL_COLUMNS:[Ljava/lang/String;

.field public static final KEY_DEFAULT_ALARM:Ljava/lang/String; = "mtk_audioprofile_default_alarm"

.field public static final KEY_DEFAULT_NOTIFICATION:Ljava/lang/String; = "mtk_audioprofile_default_notification"

.field public static final KEY_DEFAULT_RINGTONE:Ljava/lang/String; = "mtk_audioprofile_default_ringtone"

.field public static final KEY_DEFAULT_SIP_CALL:Ljava/lang/String; = "mtk_audioprofile_default_sip_call"

.field public static final KEY_DEFAULT_VIDEO_CALL:Ljava/lang/String; = "mtk_audioprofile_default_video_call"

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field public static final RINGTONE_2:Ljava/lang/String; = "ringtone_2"

.field public static final SMS_NOTIFI_SOUND:Ljava/lang/String; = "sms_notifi_sound"

.field public static final SMS_NOTIFI_SOUND_2:Ljava/lang/String; = "sms_notifi_sound_2"

.field private static final SYSTEM_MEDIA:Ljava/lang/String; = "/system/media"

.field private static final TAG:Ljava/lang/String; = "RingtoneManager"

.field public static final TITLE_COLUMN_INDEX:I = 0x1

.field public static final TYPE_ALARM:I = 0x4

.field public static final TYPE_ALL:I = 0x7

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final TYPE_RINGTONE_2:I = 0x40

.field public static final TYPE_SIP_CALL:I = 0x10

.field public static final TYPE_SMS_NOTIFI:I = 0x20

.field public static final TYPE_SMS_NOTIFI_2:I = 0x80

.field public static final TYPE_VIDEO_CALL:I = 0x8

.field public static final URI_COLUMN_INDEX:I = 0x2


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIncludeDrm:Z

.field private mPreviousRingtone:Landroid/media/Ringtone;

.field private mStopPreviousRingtone:Z

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    const-string/jumbo v0, "sms_notifi_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneManager;->DEFAULT_SMS_NOTIFI_URI:Landroid/net/Uri;

    .line 149
    const-string/jumbo v0, "sms_notifi_sound_2"

    .line 148
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneManager;->DEFAULT_SMS_NOTIFI_URI_2:Landroid/net/Uri;

    .line 154
    const-string/jumbo v0, "ringtone_2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneManager;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    .line 300
    new-array v0, v7, [Ljava/lang/String;

    .line 301
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 303
    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v6

    .line 300
    sput-object v0, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 306
    new-array v0, v7, [Ljava/lang/String;

    .line 307
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 309
    const-string/jumbo v1, "title AS title_key"

    aput-object v1, v0, v6

    .line 306
    sput-object v0, Landroid/media/RingtoneManager;->DRM_COLUMNS:[Ljava/lang/String;

    .line 312
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 313
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 315
    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v6

    .line 316
    const-string/jumbo v1, "is_drm"

    aput-object v1, v0, v7

    .line 317
    const-string/jumbo v1, "drm_method"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 312
    sput-object v0, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 394
    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 405
    iput-object p1, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 406
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 404
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 394
    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 417
    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 418
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 416
    return-void
.end method

.method private appendDrmToWhereClause()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 815
    iget-object v3, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 816
    const-string/jumbo v3, ""

    return-object v3

    .line 822
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 823
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    const-string/jumbo v3, "is_drm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "!=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    iget-object v3, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 829
    .local v1, "it":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 831
    const-string/jumbo v3, "android.intent.extra.drm_level"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 832
    .local v0, "extraValue":I
    if-ne v0, v5, :cond_1

    .line 833
    const-string/jumbo v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 834
    const-string/jumbo v4, "drm_method"

    .line 833
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 835
    const-string/jumbo v4, "=1"

    .line 833
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    .end local v0    # "extraValue":I
    :cond_1
    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;
    .locals 4
    .param p1, "includeDrm"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 787
    if-nez p0, :cond_0

    return-object v2

    .line 789
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 793
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 796
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 798
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 801
    :cond_2
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 959
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, "setting":Ljava/lang/String;
    if-nez v0, :cond_0

    return-object v2

    .line 961
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 985
    .local v1, "uriString":Ljava/lang/String;
    const-string/jumbo v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getActualDefaultRingtoneUri, type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method private static getDefaultRingtonePath(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 1058
    const/4 v0, 0x0

    .line 1059
    .local v0, "ringtonePath":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 1091
    const-string/jumbo v1, "RingtoneManager"

    const-string/jumbo v2, "getDefaultRingtonePath with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const/4 v1, 0x0

    return-object v1

    .line 1061
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/system/media/audio/ringtones/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1062
    const-string/jumbo v2, "ro.config.ringtone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1061
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1094
    .local v0, "ringtonePath":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1066
    .local v0, "ringtonePath":Ljava/lang/String;
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/system/media/audio/notifications/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1067
    const-string/jumbo v2, "ro.config.notification_sound"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1066
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "ringtonePath":Ljava/lang/String;
    goto :goto_0

    .line 1071
    .local v0, "ringtonePath":Ljava/lang/String;
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/system/media/audio/alarms/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1072
    const-string/jumbo v2, "ro.config.alarm_alert"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1071
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "ringtonePath":Ljava/lang/String;
    goto :goto_0

    .line 1076
    .local v0, "ringtonePath":Ljava/lang/String;
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/system/media/audio/ringtones/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1077
    const-string/jumbo v2, "ro.config.ringtone_2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1076
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "ringtonePath":Ljava/lang/String;
    goto :goto_0

    .line 1081
    .local v0, "ringtonePath":Ljava/lang/String;
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/system/media/audio/notifications/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1082
    const-string/jumbo v2, "ro.config.sms_notifi_sound"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1081
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "ringtonePath":Ljava/lang/String;
    goto :goto_0

    .line 1086
    .local v0, "ringtonePath":Ljava/lang/String;
    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/system/media/audio/notifications/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1087
    const-string/jumbo v2, "ro.config.sms_notifi_sound_2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1086
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "ringtonePath":Ljava/lang/String;
    goto/16 :goto_0

    .line 1059
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x20 -> :sswitch_4
        0x40 -> :sswitch_3
        0x80 -> :sswitch_5
    .end sparse-switch
.end method

.method public static getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    .line 1288
    const/4 v0, 0x0

    .line 1289
    .local v0, "defaultUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 1290
    .local v2, "uriString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1291
    .local v1, "resolver":Landroid/content/ContentResolver;
    sparse-switch p1, :sswitch_data_0

    .line 1313
    const-string/jumbo v3, "RingtoneManager"

    const-string/jumbo v4, "getDefaultRingtoneUri with unsupport type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    return-object v5

    .line 1293
    :sswitch_0
    const-string/jumbo v3, "mtk_audioprofile_default_ringtone"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1316
    .local v2, "uriString":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 1317
    .end local v0    # "defaultUri":Landroid/net/Uri;
    :goto_1
    const-string/jumbo v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDefaultRingtoneUri: type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", default uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    return-object v0

    .line 1297
    .restart local v0    # "defaultUri":Landroid/net/Uri;
    .local v2, "uriString":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v3, "mtk_audioprofile_default_notification"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "uriString":Ljava/lang/String;
    goto :goto_0

    .line 1301
    .local v2, "uriString":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v3, "mtk_audioprofile_default_alarm"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "uriString":Ljava/lang/String;
    goto :goto_0

    .line 1305
    .local v2, "uriString":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v3, "mtk_audioprofile_default_video_call"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "uriString":Ljava/lang/String;
    goto :goto_0

    .line 1309
    .local v2, "uriString":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v3, "mtk_audioprofile_default_sip_call"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "uriString":Ljava/lang/String;
    goto :goto_0

    .line 1316
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "defaultUri":Landroid/net/Uri;
    goto :goto_1

    .line 1291
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getDefaultType(Landroid/net/Uri;)I
    .locals 2
    .param p0, "defaultRingtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, -0x1

    .line 1190
    if-nez p0, :cond_0

    .line 1191
    return v1

    .line 1192
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1193
    const/4 v0, 0x1

    return v0

    .line 1194
    :cond_1
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1195
    const/4 v0, 0x2

    return v0

    .line 1196
    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1197
    const/4 v0, 0x4

    return v0

    .line 1198
    :cond_3
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1199
    const/16 v0, 0x8

    return v0

    .line 1200
    :cond_4
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_SIP_CALL_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1201
    const/16 v0, 0x10

    return v0

    .line 1204
    :cond_5
    sget-object v0, Landroid/media/RingtoneManager;->DEFAULT_SMS_NOTIFI_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1203
    if-eqz v0, :cond_6

    .line 1205
    const/16 v0, 0x20

    return v0

    .line 1207
    :cond_6
    sget-object v0, Landroid/media/RingtoneManager;->DEFAULT_SMS_NOTIFI_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1206
    if-eqz v0, :cond_7

    .line 1208
    const/16 v0, 0x80

    return v0

    .line 1210
    :cond_7
    sget-object v0, Landroid/media/RingtoneManager;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1209
    if-eqz v0, :cond_8

    .line 1211
    const/16 v0, 0x40

    return v0

    .line 1214
    :cond_8
    return v1
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1228
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 1229
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    return-object v0

    .line 1230
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 1231
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0

    .line 1232
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 1233
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    return-object v0

    .line 1234
    :cond_2
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_3

    .line 1235
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    return-object v0

    .line 1236
    :cond_3
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_4

    .line 1237
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_SIP_CALL_URI:Landroid/net/Uri;

    return-object v0

    .line 1239
    :cond_4
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_5

    .line 1240
    sget-object v0, Landroid/media/RingtoneManager;->DEFAULT_SMS_NOTIFI_URI:Landroid/net/Uri;

    return-object v0

    .line 1241
    :cond_5
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_6

    .line 1242
    sget-object v0, Landroid/media/RingtoneManager;->DEFAULT_SMS_NOTIFI_URI_2:Landroid/net/Uri;

    return-object v0

    .line 1243
    :cond_6
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_7

    .line 1244
    sget-object v0, Landroid/media/RingtoneManager;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    return-object v0

    .line 1247
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDrmRingtones()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 717
    sget-object v1, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->DRM_COLUMNS:[Ljava/lang/String;

    .line 718
    const-string/jumbo v5, "title"

    move-object v0, p0

    move-object v4, v3

    .line 716
    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getInternalRingtones()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 708
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    iget-boolean v4, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 710
    invoke-direct {p0}, Landroid/media/RingtoneManager;->appendDrmToWhereClause()Ljava/lang/String;

    move-result-object v3

    .line 709
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 711
    const-string/jumbo v5, "title_key"

    const/4 v4, 0x0

    move-object v0, p0

    .line 707
    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMediaRingtones()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 722
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 723
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 724
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 722
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    const-string/jumbo v0, "RingtoneManager"

    const-string/jumbo v1, "No READ_EXTERNAL_STORAGE permission, ignoring ringtones on ext storage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    return-object v4

    .line 729
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 731
    .local v6, "status":Ljava/lang/String;
    const-string/jumbo v0, "mounted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 732
    const-string/jumbo v0, "mounted_ro"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 731
    if-eqz v0, :cond_2

    .line 734
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    iget-boolean v5, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    invoke-static {v3, v5}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 736
    invoke-direct {p0}, Landroid/media/RingtoneManager;->appendDrmToWhereClause()Ljava/lang/String;

    move-result-object v3

    .line 735
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 737
    const-string/jumbo v5, "title_key"

    move-object v0, p0

    .line 733
    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 731
    :cond_2
    return-object v4
.end method

.method private static getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 995
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    .line 996
    const-string/jumbo v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 997
    const-string/jumbo v0, "_data"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 999
    .local v2, "AUDIO_PROJECTION":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1000
    .local v8, "mPath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1001
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 1000
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1002
    .local v7, "mCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1004
    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1005
    .local v8, "mPath":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1006
    return-object v8

    .line 1007
    .local v8, "mPath":Ljava/lang/String;
    :cond_0
    if-eqz v7, :cond_1

    .line 1008
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1009
    const-string/jumbo v0, "RingtoneManager"

    const-string/jumbo v1, "cursor count = 0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    return-object v9

    .line 1012
    :cond_1
    const-string/jumbo v0, "RingtoneManager"

    const-string/jumbo v1, "path mCursor == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    return-object v9

    .line 1015
    .end local v2    # "AUDIO_PROJECTION":[Ljava/lang/String;
    .end local v7    # "mCursor":Landroid/database/Cursor;
    .end local v8    # "mPath":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1016
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "RingtoneManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception occurred when check uri="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "NULL"

    :goto_0
    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1018
    return-object v9

    .line 1016
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 874
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method private static getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    .prologue
    .line 926
    :try_start_0
    new-instance v1, Landroid/media/Ringtone;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 927
    .local v1, "r":Landroid/media/Ringtone;
    if-ltz p2, :cond_0

    .line 928
    invoke-virtual {v1, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 930
    :cond_0
    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    return-object v1

    .line 932
    .end local v1    # "r":Landroid/media/Ringtone;
    :catch_0
    move-exception v0

    .line 933
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to open ringtone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getSdPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1360
    const-string/jumbo v4, "storage"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1361
    .local v0, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v3

    .line 1362
    .local v3, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "vol$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1363
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    iget v4, v1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1364
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1367
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1146
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 1147
    const-string/jumbo v0, "ringtone"

    return-object v0

    .line 1148
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 1149
    const-string/jumbo v0, "notification_sound"

    return-object v0

    .line 1150
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 1151
    const-string/jumbo v0, "alarm_alert"

    return-object v0

    .line 1152
    :cond_2
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_3

    .line 1153
    const-string/jumbo v0, "video_call"

    return-object v0

    .line 1154
    :cond_3
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_4

    .line 1155
    const-string/jumbo v0, "sip_call"

    return-object v0

    .line 1157
    :cond_4
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_5

    .line 1158
    const-string/jumbo v0, "sms_notifi_sound"

    return-object v0

    .line 1159
    :cond_5
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_6

    .line 1160
    const-string/jumbo v0, "sms_notifi_sound_2"

    return-object v0

    .line 1161
    :cond_6
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_7

    .line 1162
    const-string/jumbo v0, "ringtone_2"

    return-object v0

    .line 1165
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 598
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 599
    const/4 v1, 0x0

    .line 598
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 1022
    if-nez p1, :cond_0

    .line 1023
    return-object v8

    .line 1026
    :cond_0
    const-string/jumbo v0, "/system/media"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1029
    .local v1, "mUri":Landroid/net/Uri;
    :goto_0
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v3

    .line 1030
    const-string/jumbo v0, "_data"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 1032
    .local v2, "AUDIO_PROJECTION":[Ljava/lang/String;
    const-string/jumbo v0, "\'"

    const-string/jumbo v3, "\'\'"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1033
    const/4 v7, 0x0

    .line 1035
    .local v7, "mCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1036
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_data=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1035
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1040
    .end local v7    # "mCursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1041
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1043
    const-string/jumbo v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1042
    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1044
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1045
    return-object v1

    .line 1027
    .end local v1    # "mUri":Landroid/net/Uri;
    .end local v2    # "AUDIO_PROJECTION":[Ljava/lang/String;
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .restart local v1    # "mUri":Landroid/net/Uri;
    goto :goto_0

    .line 1037
    .restart local v2    # "AUDIO_PROJECTION":[Ljava/lang/String;
    .restart local v7    # "mCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .line 1038
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v0, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUriFromPath() Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1046
    .end local v6    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v7    # "mCursor":Landroid/database/Cursor;
    :cond_2
    if-eqz v7, :cond_3

    .line 1047
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1048
    const-string/jumbo v0, "RingtoneManager"

    const-string/jumbo v3, "cursor count = 0"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    return-object v8

    .line 1051
    :cond_3
    const-string/jumbo v0, "RingtoneManager"

    const-string/jumbo v3, "uri mCursor == null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    return-object v8
.end method

.method public static getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 676
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 678
    .local v0, "rm":Landroid/media/RingtoneManager;
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 680
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 681
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 684
    :cond_0
    if-nez v1, :cond_1

    .line 685
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getDrmRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 688
    :cond_1
    return-object v1
.end method

.method private static getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 692
    if-eqz p1, :cond_1

    .line 693
    const/4 v0, 0x0

    .line 695
    .local v0, "uri":Landroid/net/Uri;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    invoke-static {p1}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 698
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 700
    return-object v0

    .line 702
    :cond_1
    return-object v1
.end method

.method public static initRingtoneUri(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1326
    const/4 v7, 0x6

    new-array v6, v7, [I

    .local v6, "typeList":[I
    fill-array-data v6, :array_0

    .line 1328
    const-string/jumbo v0, "false"

    .line 1329
    .local v0, "isOtaLtoM":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "ota_l_to_m"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1330
    if-eqz v0, :cond_7

    const-string/jumbo v7, "true"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1331
    invoke-static {p0}, Landroid/media/RingtoneManager;->getSdPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1332
    .local v3, "sdcardPath":Ljava/lang/String;
    const/4 v7, 0x0

    array-length v8, v6

    :goto_0
    if-ge v7, v8, :cond_6

    aget v5, v6, v7

    .line 1333
    .local v5, "type":I
    const/4 v2, 0x0

    .line 1334
    .local v2, "ringtoneUri":Landroid/net/Uri;
    invoke-static {v5}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v4

    .line 1335
    .local v4, "setting":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1336
    const-string/jumbo v11, "_path"

    .line 1335
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1337
    .local v1, "ringtonePath":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1350
    .end local v2    # "ringtoneUri":Landroid/net/Uri;
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    .line 1351
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultRingtonePath(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Landroid/media/RingtoneManager;->getUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1353
    :cond_1
    invoke-static {p0, v5, v2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1332
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1338
    .restart local v2    # "ringtoneUri":Landroid/net/Uri;
    :cond_2
    const-string/jumbo v9, "/storage/sdcard0/"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1339
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "/storage/emulated/0/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x11

    invoke-virtual {v1, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1347
    :cond_3
    :goto_2
    const-string/jumbo v9, "RingtoneManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "we get ringtone path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .local v2, "ringtoneUri":Landroid/net/Uri;
    goto :goto_1

    .line 1340
    .local v2, "ringtoneUri":Landroid/net/Uri;
    :cond_4
    const-string/jumbo v9, "/storage/sdcard1/"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1341
    if-eqz v3, :cond_5

    .line 1342
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x10

    invoke-virtual {v1, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1344
    :cond_5
    const-string/jumbo v9, "RingtoneManager"

    const-string/jumbo v10, "sdcard unmount"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1355
    .end local v1    # "ringtonePath":Ljava/lang/String;
    .end local v2    # "ringtoneUri":Landroid/net/Uri;
    .end local v4    # "setting":Ljava/lang/String;
    .end local v5    # "type":I
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "ota_l_to_m"

    const-string/jumbo v9, "false"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1325
    .end local v3    # "sdcardPath":Ljava/lang/String;
    :cond_7
    return-void

    .line 1326
    :array_0
    .array-data 4
        0x1
        0x40
        0x20
        0x80
        0x2
        0x4
    .end array-data
.end method

.method public static isDefault(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 1176
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1406
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1407
    const/4 v0, 0x0

    return v0

    .line 1409
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 849
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private queryPosition(Landroid/database/Cursor;Landroid/net/Uri;)I
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, -0x1

    .line 638
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 640
    .local v1, "cursorCount":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_0

    .line 641
    return v8

    .line 645
    :cond_0
    const/4 v0, 0x0

    .line 646
    .local v0, "currentUri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 647
    .local v3, "previousUriString":Ljava/lang/String;
    const/4 v2, 0x0

    .end local v0    # "currentUri":Landroid/net/Uri;
    .end local v3    # "previousUriString":Ljava/lang/String;
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 648
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 649
    .local v4, "uriString":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 654
    :goto_1
    const/4 v5, 0x0

    .line 653
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 655
    return v2

    .line 650
    :cond_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "currentUri":Landroid/net/Uri;
    goto :goto_1

    .line 658
    .end local v0    # "currentUri":Landroid/net/Uri;
    :cond_2
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->move(I)Z

    .line 660
    move-object v3, v4

    .line 647
    .local v3, "previousUriString":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 663
    .end local v3    # "previousUriString":Ljava/lang/String;
    .end local v4    # "uriString":Ljava/lang/String;
    :cond_3
    return v8
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 1109
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, "setting":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 1138
    :cond_0
    const-string/jumbo v2, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setActualDefaultRingtoneUri type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ringtoneUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1140
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1139
    :cond_1
    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1108
    return-void
.end method

.method private setFilterColumnsList(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 742
    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 743
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 745
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    .line 746
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_7

    .line 748
    :cond_0
    :goto_0
    const-string/jumbo v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    .line 752
    const-string/jumbo v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 756
    const-string/jumbo v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    :cond_3
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_4

    .line 762
    const-string/jumbo v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    :cond_4
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_5

    .line 766
    const-string/jumbo v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    :cond_5
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_6

    .line 770
    const-string/jumbo v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    :cond_6
    return-void

    .line 747
    :cond_7
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method private validRingtoneForMTCall(Landroid/net/Uri;)I
    .locals 4
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 624
    if-nez p1, :cond_0

    const/4 v1, -0x1

    return v1

    .line 625
    :cond_0
    invoke-virtual {p0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 628
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v0, p1}, Landroid/media/RingtoneManager;->queryPosition(Landroid/database/Cursor;Landroid/net/Uri;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 630
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 628
    :cond_1
    :goto_0
    return v1

    .line 631
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 632
    const-string/jumbo v2, "RingtoneManager"

    const-string/jumbo v3, "Cursor already closed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 629
    :catchall_0
    move-exception v1

    .line 630
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 629
    :cond_3
    :goto_1
    throw v1

    .line 631
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 632
    const-string/jumbo v2, "RingtoneManager"

    const-string/jumbo v3, "Cursor already closed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static validRingtoneUri(Landroid/content/Context;Landroid/net/Uri;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "type"    # I

    .prologue
    .line 940
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 941
    .local v0, "rm":Landroid/media/RingtoneManager;
    invoke-virtual {v0, p2}, Landroid/media/RingtoneManager;->setType(I)V

    .line 942
    invoke-direct {v0, p1}, Landroid/media/RingtoneManager;->validRingtoneForMTCall(Landroid/net/Uri;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 536
    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 537
    const-string/jumbo v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCursor with old cursor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v3

    .line 541
    :cond_0
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v1

    .line 542
    .local v1, "internalCursor":Landroid/database/Cursor;
    iget-boolean v3, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Landroid/media/RingtoneManager;->getDrmRingtones()Landroid/database/Cursor;

    move-result-object v0

    .line 543
    :goto_0
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    .line 545
    .local v2, "mediaCursor":Landroid/database/Cursor;
    new-instance v3, Lcom/android/internal/database/SortCursor;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    .line 546
    const-string/jumbo v5, "title_key"

    .line 545
    invoke-direct {v3, v4, v5}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    .line 547
    const-string/jumbo v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCursor.hashCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const-string/jumbo v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCursor with new cursor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v3

    .line 542
    .end local v2    # "mediaCursor":Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x0

    .local v0, "drmCursor":Landroid/database/Cursor;
    goto :goto_0
.end method

.method public getIncludeDrm()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public getNewCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 1265
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v1

    .line 1266
    .local v1, "internalCursor":Landroid/database/Cursor;
    iget-boolean v3, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/media/RingtoneManager;->getDrmRingtones()Landroid/database/Cursor;

    move-result-object v0

    .line 1267
    :goto_0
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    .line 1269
    .local v2, "mediaCursor":Landroid/database/Cursor;
    new-instance v3, Lcom/android/internal/database/SortCursor;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 1270
    const/4 v5, 0x2

    aput-object v2, v4, v5

    const-string/jumbo v5, "title_key"

    .line 1269
    invoke-direct {v3, v4, v5}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    .line 1271
    const-string/jumbo v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getNewCursor mCursor.hashCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    const-string/jumbo v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getNewCursor with cursor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v3

    .line 1266
    .end local v2    # "mediaCursor":Landroid/database/Cursor;
    :cond_0
    const/4 v0, 0x0

    .local v0, "drmCursor":Landroid/database/Cursor;
    goto :goto_0
.end method

.method public getRingtone(I)Landroid/media/Ringtone;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 562
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 566
    :cond_0
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    .line 567
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method public getRingtonePosition(Landroid/net/Uri;)I
    .locals 3
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 610
    if-nez p1, :cond_0

    const/4 v2, -0x1

    return v2

    .line 612
    :cond_0
    invoke-virtual {p0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 613
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 615
    .local v1, "cursorCount":I
    invoke-direct {p0, v0, p1}, Landroid/media/RingtoneManager;->queryPosition(Landroid/database/Cursor;Landroid/net/Uri;)I

    move-result v2

    return v2
.end method

.method public getRingtoneUri(I)Landroid/net/Uri;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 579
    iget-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 580
    const-string/jumbo v1, "RingtoneManager"

    const-string/jumbo v2, "mCursor is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-object v3

    .line 585
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    iget-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-static {v1}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 586
    :cond_1
    :try_start_1
    const-string/jumbo v1, "RingtoneManager"

    const-string/jumbo v2, "mCursor position is wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 587
    return-object v3

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "RingtoneManager"

    const-string/jumbo v2, "mCursor exception"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-object v3
.end method

.method public getStopPreviousRingtone()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    return v0
.end method

.method public inferStreamType()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 456
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 450
    :pswitch_1
    const/4 v0, 0x4

    return v0

    .line 453
    :pswitch_2
    const/4 v0, 0x5

    return v0

    .line 447
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIncludeDrm(Z)V
    .locals 2
    .param p1, "includeDrm"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 512
    if-eqz p1, :cond_0

    .line 513
    const-string/jumbo v0, "RingtoneManager"

    const-string/jumbo v1, "setIncludeDrm no longer supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    return-void
.end method

.method public setStopPreviousRingtone(Z)V
    .locals 0
    .param p1, "stopPreviousRingtone"    # Z

    .prologue
    .line 471
    iput-boolean p1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 470
    return-void
.end method

.method public setType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 431
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 432
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 433
    const-string/jumbo v1, "Setting filter columns should be done before querying for ringtones."

    .line 432
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    iput p1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 437
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;->setFilterColumnsList(I)V

    .line 429
    return-void
.end method

.method public stopPreviousRingtone()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 484
    :cond_0
    return-void
.end method
