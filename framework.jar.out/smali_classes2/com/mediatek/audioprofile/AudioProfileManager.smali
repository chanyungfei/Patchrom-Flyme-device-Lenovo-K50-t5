.class public Lcom/mediatek/audioprofile/AudioProfileManager;
.super Ljava/lang/Object;
.source "AudioProfileManager.java"

# interfaces
.implements Lcom/mediatek/common/audioprofile/IAudioProfileManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;,
        Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    }
.end annotation


# static fields
.field public static final ACTION_PROFILE_CHANGED:Ljava/lang/String; = "com.mediatek.audioprofile.ACTION_PROFILE_CHANGED"

.field public static final DEFAULT_MAX_VOLUME_OUTDOOR:I = 0xf

.field public static final DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

.field public static final DEFAULT_SIP_STREAM_URI:Landroid/net/Uri;

.field public static final DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

.field public static final EXTRA_PROFILE_SCENARIO:Ljava/lang/String; = "com.mediatek.audioprofile.EXTRA_PROFILE_SCENARIO"

.field public static final KEY_ACTIVE_PROFILE:Ljava/lang/String; = "mtk_audioprofile_active"

.field public static final KEY_BESSUROUND_MODE:Ljava/lang/String; = "mtk_audioprofile_bessuround_mode"

.field public static final KEY_BESSUROUND_STATE:Ljava/lang/String; = "mtk_audioprofile_bessuround"

.field public static final KEY_DEFAULT_NOTIFICATION:Ljava/lang/String; = "mtk_audioprofile_default_notification"

.field public static final KEY_DEFAULT_RINGTONE:Ljava/lang/String; = "mtk_audioprofile_default_ringtone"

.field public static final KEY_DEFAULT_SIP_CALL:Ljava/lang/String; = "mtk_audioprofile_default_sip_call"

.field public static final KEY_DEFAULT_VIDEO_CALL:Ljava/lang/String; = "mtk_audioprofile_default_video_call"

.field public static final KEY_MOVIE_MODE_CODE:I = 0x0

.field public static final KEY_MUSIC_MODE_CODE:I = 0x1

.field public static final KEY_SURROUND_OFF:I = 0x0

.field public static final KEY_SURROUND_ON:I = 0x1

.field public static final LAST_ACTIVE_CUSTOM_DELETED:Ljava/lang/String; = "mtk_audioprofile_custom_deleted"

.field public static final LAST_ACTIVE_PROFILE:Ljava/lang/String; = "mtk_audioprofile_last_active"

.field public static final MAX_PROFILES_COUNT:I = 0xa

.field public static final PREDEFINED_PROFILES_COUNT:I = 0x4

.field public static final PROFILE_PREFIX:Ljava/lang/String; = "mtk_audioprofile_"

.field private static final REAL_PROFILE_KEY:[Ljava/lang/String;

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field private static final SUFFIX_ALARM_VOLUME:Ljava/lang/String; = "_volume_alarm"

.field public static final SUFFIX_DATA:Ljava/lang/String; = "_data"

.field public static final SUFFIX_DATE:Ljava/lang/String; = "_date"

.field public static final SUFFIX_DTMFTONE:Ljava/lang/String; = "_dtmf_tone_enabled"

.field public static final SUFFIX_HAPTICFEEDBACK:Ljava/lang/String; = "_haptic_feedback_enabled"

.field public static final SUFFIX_KEY:Ljava/lang/String; = "_key"

.field public static final SUFFIX_LOCK_SCRREN:Ljava/lang/String; = "_lockscreen_sounds_enabled"

.field public static final SUFFIX_NAME:Ljava/lang/String; = "_name"

.field private static final SUFFIX_NOTIFICATION_URI:Ljava/lang/String; = "_notification_sound"

.field public static final SUFFIX_NOTIFICATION_USE_RING:Ljava/lang/String; = "_notifications_use_ring_volume"

.field private static final SUFFIX_NOTIFICATION_VOLUME:Ljava/lang/String; = "_volume_notification"

.field private static final SUFFIX_RINGER_URI:Ljava/lang/String; = "_ringtone"

.field private static final SUFFIX_RINGER_VOLUME:Ljava/lang/String; = "_volume_ring"

.field public static final SUFFIX_SIM_ID:Ljava/lang/String; = "_sim_id"

.field private static final SUFFIX_SIP_CALL_URI:Ljava/lang/String; = "_sip_call"

.field public static final SUFFIX_SOUNDEFFECT:Ljava/lang/String; = "_sound_effects_enabled"

.field private static final SUFFIX_VIBRATION:Ljava/lang/String; = "_vibrate_on"

.field private static final SUFFIX_VIDEO_CALL_URI:Ljava/lang/String; = "_video_call"

.field private static final TAG:Ljava/lang/String; = "AudioProfileManager"

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final TYPE_SIP_CALL:I = 0x10

.field public static final TYPE_VIDEO_CALL:I = 0x8

.field public static final UNSUPPORT_STREAM_VOLUME:I

.field private static mDefaultProfileStatesGetter:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

.field private static sDEFAULTSTATES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/audioprofile/AudioProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 233
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    .line 237
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 236
    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    .line 240
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    .line 243
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_SIP_CALL_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_SIP_STREAM_URI:Landroid/net/Uri;

    .line 246
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    .line 276
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "general"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "meeting"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "silent"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "outdoor"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "custom"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 275
    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->REAL_PROFILE_KEY:[Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    const-string/jumbo v0, "AudioProfileManager"

    const-string/jumbo v1, "AudioProfileManager() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileManager;->mContext:Landroid/content/Context;

    .line 293
    const-class v0, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    .line 292
    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->mDefaultProfileStatesGetter:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    .line 294
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->mDefaultProfileStatesGetter:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Lcom/mediatek/audioprofile/DefaultProfileStatesGetter;

    invoke-direct {v0}, Lcom/mediatek/audioprofile/DefaultProfileStatesGetter;-><init>()V

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->mDefaultProfileStatesGetter:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    .line 297
    :cond_0
    const-string/jumbo v0, "AudioProfileManager"

    const-string/jumbo v1, "AudioProfileManager() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method private static coverToProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;
    .locals 3
    .param p0, "scenario"    # Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    .prologue
    .line 764
    const/4 v0, 0x0

    .line 765
    .local v0, "realProfileKey":Ljava/lang/String;
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->REAL_PROFILE_KEY:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 776
    .end local v0    # "realProfileKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 767
    .restart local v0    # "realProfileKey":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 768
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->REAL_PROFILE_KEY:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    .local v0, "realProfileKey":Ljava/lang/String;
    goto :goto_0

    .line 769
    .local v0, "realProfileKey":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 770
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->REAL_PROFILE_KEY:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .local v0, "realProfileKey":Ljava/lang/String;
    goto :goto_0

    .line 771
    .local v0, "realProfileKey":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 772
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->REAL_PROFILE_KEY:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v0, v1, v2

    .local v0, "realProfileKey":Ljava/lang/String;
    goto :goto_0

    .line 773
    .local v0, "realProfileKey":Ljava/lang/String;
    :cond_4
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->REAL_PROFILE_KEY:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v0, v1, v2

    .local v0, "realProfileKey":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getAllKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "profileKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 821
    if-nez p0, :cond_0

    .line 822
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "getAllKeys: Null profileKey!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    return-object v6

    .line 826
    :cond_0
    const/16 v0, 0xe

    .line 827
    .local v0, "keySize":I
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 828
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileCreateDateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getNotificationUseRingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    invoke-static {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    invoke-static {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    invoke-static {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    invoke-static {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    invoke-static {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    invoke-static {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    invoke-static {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    return-object v1
.end method

.method public static getDataKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uriKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 667
    if-eqz p0, :cond_0

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 670
    :cond_0
    return-object v0
.end method

.method public static getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 45
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 328
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    if-nez v41, :cond_1

    .line 329
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->mDefaultProfileStatesGetter:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    if-eqz v41, :cond_0

    .line 330
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->mDefaultProfileStatesGetter:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    invoke-interface/range {v41 .. v41}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;->getDefaultProfileStates()Ljava/util/HashMap;

    move-result-object v41

    sput-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    .line 332
    :cond_0
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    if-nez v41, :cond_1

    .line 333
    new-instance v41, Ljava/util/HashMap;

    const/16 v42, 0x4

    invoke-direct/range {v41 .. v42}, Ljava/util/HashMap;-><init>(I)V

    sput-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    .line 335
    const/16 v23, 0x8

    .line 336
    .local v23, "DEFAULT_RINGER_VOLUME_GENERAL":I
    const/16 v26, 0x0

    .line 337
    .local v26, "DEFAULT_RINGER_VOLUME_SILENT":I
    const/16 v24, 0x0

    .line 338
    .local v24, "DEFAULT_RINGER_VOLUME_MEETING":I
    const/16 v25, 0xf

    .line 341
    .local v25, "DEFAULT_RINGER_VOLUME_OUTDOOR":I
    const/16 v19, 0x8

    .line 342
    .local v19, "DEFAULT_NOTIFICATION_VOLUME_GENERAL":I
    const/16 v22, 0x0

    .line 343
    .local v22, "DEFAULT_NOTIFICATION_VOLUME_SILENT":I
    const/16 v20, 0x0

    .line 344
    .local v20, "DEFAULT_NOTIFICATION_VOLUME_MEETING":I
    const/16 v21, 0xf

    .line 347
    .local v21, "DEFAULT_NOTIFICATION_VOLUME_OUTDOOR":I
    const/16 v3, 0x8

    .line 348
    .local v3, "DEFAULT_ALARM_VOLUME_GENERAL":I
    const/4 v6, 0x0

    .line 349
    .local v6, "DEFAULT_ALARM_VOLUME_SILENT":I
    const/4 v4, 0x0

    .line 350
    .local v4, "DEFAULT_ALARM_VOLUME_MEETING":I
    const/16 v5, 0xf

    .line 353
    .local v5, "DEFAULT_ALARM_VOLUME_OUTDOOR":I
    const/16 v31, 0x0

    .line 354
    .local v31, "DEFAULT_VIBRATION_GENERAL":Z
    const/16 v34, 0x0

    .line 355
    .local v34, "DEFAULT_VIBRATION_SILENT":Z
    const/16 v32, 0x1

    .line 356
    .local v32, "DEFAULT_VIBRATION_MEETING":Z
    const/16 v33, 0x1

    .line 362
    .local v33, "DEFAULT_VIBRATION_OUTDOOR":Z
    const/4 v7, 0x1

    .line 363
    .local v7, "DEFAULT_DTMFTONE_GENERAL":Z
    const/4 v10, 0x0

    .line 364
    .local v10, "DEFAULT_DTMFTONE_SILENT":Z
    const/4 v8, 0x0

    .line 365
    .local v8, "DEFAULT_DTMFTONE_MEETING":Z
    const/4 v9, 0x1

    .line 371
    .local v9, "DEFAULT_DTMFTONE_OUTDOOR":Z
    const/16 v27, 0x0

    .line 372
    .local v27, "DEFAULT_SOUNDEFFECT_GENERAL":Z
    const/16 v30, 0x0

    .line 373
    .local v30, "DEFAULT_SOUNDEFFECT_SILENT":Z
    const/16 v28, 0x0

    .line 374
    .local v28, "DEFAULT_SOUNDEFFECT_MEETING":Z
    const/16 v29, 0x0

    .line 377
    .local v29, "DEFAULT_SOUNDEFFECT_OUTDOOR":Z
    const/4 v15, 0x1

    .line 378
    .local v15, "DEFAULT_LOCK_SCREEN_GENERAL":Z
    const/16 v18, 0x0

    .line 379
    .local v18, "DEFAULT_LOCK_SCREEN_SILENT":Z
    const/16 v16, 0x0

    .line 380
    .local v16, "DEFAULT_LOCK_SCREEN_MEETING":Z
    const/16 v17, 0x1

    .line 383
    .local v17, "DEFAULT_LOCK_SCREEN_OUTDOOR":Z
    const/4 v11, 0x1

    .line 384
    .local v11, "DEFAULT_HAPTIC_FEEDBACK_GENERAL":Z
    const/4 v14, 0x0

    .line 385
    .local v14, "DEFAULT_HAPTIC_FEEDBACK_SILENT":Z
    const/4 v12, 0x0

    .line 386
    .local v12, "DEFAULT_HAPTIC_FEEDBACK_MEETING":Z
    const/4 v13, 0x1

    .line 389
    .local v13, "DEFAULT_HAPTIC_FEEDBACK_OUTDOOR":Z
    new-instance v41, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    .line 390
    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v42 .. v42}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v42

    .line 389
    invoke-direct/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    .line 391
    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    .line 392
    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    .line 389
    invoke-virtual/range {v41 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 393
    const/16 v42, 0x8

    const/16 v43, 0x8

    .line 394
    const/16 v44, 0x8

    .line 389
    invoke-virtual/range {v41 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 395
    const/16 v42, 0x0

    .line 389
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 396
    const/16 v42, 0x1

    .line 389
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 397
    const/16 v42, 0x0

    .line 389
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 398
    const/16 v42, 0x1

    .line 389
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 399
    const/16 v42, 0x1

    .line 389
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v35

    .line 401
    .local v35, "generalState":Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v42 .. v42}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    new-instance v41, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    .line 405
    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v42 .. v42}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v42

    .line 404
    invoke-direct/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    .line 406
    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    .line 407
    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    .line 404
    invoke-virtual/range {v41 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 408
    const/16 v42, 0x0

    const/16 v43, 0x0

    .line 409
    const/16 v44, 0x0

    .line 404
    invoke-virtual/range {v41 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 410
    const/16 v42, 0x0

    .line 404
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 411
    const/16 v42, 0x0

    .line 404
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 412
    const/16 v42, 0x0

    .line 404
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 413
    const/16 v42, 0x0

    .line 404
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 414
    const/16 v42, 0x0

    .line 404
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v40

    .line 416
    .local v40, "silentState":Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v42 .. v42}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v41, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    .line 420
    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v42 .. v42}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v42

    .line 419
    invoke-direct/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    .line 421
    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    .line 422
    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    .line 419
    invoke-virtual/range {v41 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 423
    const/16 v42, 0x0

    const/16 v43, 0x0

    .line 424
    const/16 v44, 0x0

    .line 419
    invoke-virtual/range {v41 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 425
    const/16 v42, 0x1

    .line 419
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 426
    const/16 v42, 0x0

    .line 419
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 427
    const/16 v42, 0x0

    .line 419
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 428
    const/16 v42, 0x0

    .line 419
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 429
    const/16 v42, 0x0

    .line 419
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v37

    .line 431
    .local v37, "meetingState":Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v42 .. v42}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    new-instance v41, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    .line 435
    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v42 .. v42}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v42

    .line 434
    invoke-direct/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    .line 436
    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    .line 437
    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    .line 434
    invoke-virtual/range {v41 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 438
    const/16 v42, 0xf

    const/16 v43, 0xf

    .line 439
    const/16 v44, 0xf

    .line 434
    invoke-virtual/range {v41 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 440
    const/16 v42, 0x1

    .line 434
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 441
    const/16 v42, 0x1

    .line 434
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 442
    const/16 v42, 0x0

    .line 434
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 443
    const/16 v42, 0x1

    .line 434
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    .line 444
    const/16 v42, 0x1

    .line 434
    invoke-virtual/range {v41 .. v42}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v38

    .line 446
    .local v38, "outdoorState":Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v42, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v42 .. v42}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string/jumbo v41, "AudioProfileManager"

    const-string/jumbo v42, "getDefaultState from default!"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v3    # "DEFAULT_ALARM_VOLUME_GENERAL":I
    .end local v4    # "DEFAULT_ALARM_VOLUME_MEETING":I
    .end local v5    # "DEFAULT_ALARM_VOLUME_OUTDOOR":I
    .end local v6    # "DEFAULT_ALARM_VOLUME_SILENT":I
    .end local v7    # "DEFAULT_DTMFTONE_GENERAL":Z
    .end local v8    # "DEFAULT_DTMFTONE_MEETING":Z
    .end local v9    # "DEFAULT_DTMFTONE_OUTDOOR":Z
    .end local v10    # "DEFAULT_DTMFTONE_SILENT":Z
    .end local v11    # "DEFAULT_HAPTIC_FEEDBACK_GENERAL":Z
    .end local v12    # "DEFAULT_HAPTIC_FEEDBACK_MEETING":Z
    .end local v13    # "DEFAULT_HAPTIC_FEEDBACK_OUTDOOR":Z
    .end local v14    # "DEFAULT_HAPTIC_FEEDBACK_SILENT":Z
    .end local v15    # "DEFAULT_LOCK_SCREEN_GENERAL":Z
    .end local v16    # "DEFAULT_LOCK_SCREEN_MEETING":Z
    .end local v17    # "DEFAULT_LOCK_SCREEN_OUTDOOR":Z
    .end local v18    # "DEFAULT_LOCK_SCREEN_SILENT":Z
    .end local v19    # "DEFAULT_NOTIFICATION_VOLUME_GENERAL":I
    .end local v20    # "DEFAULT_NOTIFICATION_VOLUME_MEETING":I
    .end local v21    # "DEFAULT_NOTIFICATION_VOLUME_OUTDOOR":I
    .end local v22    # "DEFAULT_NOTIFICATION_VOLUME_SILENT":I
    .end local v23    # "DEFAULT_RINGER_VOLUME_GENERAL":I
    .end local v24    # "DEFAULT_RINGER_VOLUME_MEETING":I
    .end local v25    # "DEFAULT_RINGER_VOLUME_OUTDOOR":I
    .end local v26    # "DEFAULT_RINGER_VOLUME_SILENT":I
    .end local v27    # "DEFAULT_SOUNDEFFECT_GENERAL":Z
    .end local v28    # "DEFAULT_SOUNDEFFECT_MEETING":Z
    .end local v29    # "DEFAULT_SOUNDEFFECT_OUTDOOR":Z
    .end local v30    # "DEFAULT_SOUNDEFFECT_SILENT":Z
    .end local v31    # "DEFAULT_VIBRATION_GENERAL":Z
    .end local v32    # "DEFAULT_VIBRATION_MEETING":Z
    .end local v33    # "DEFAULT_VIBRATION_OUTDOOR":Z
    .end local v34    # "DEFAULT_VIBRATION_SILENT":Z
    .end local v35    # "generalState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v37    # "meetingState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v38    # "outdoorState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v40    # "silentState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v39

    .line 452
    .local v39, "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    if-nez v39, :cond_2

    .line 453
    const-string/jumbo v41, "AudioProfileManager"

    const-string/jumbo v42, "getDefaultState: get null scenario and use custom scenario default!"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    sget-object v39, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    .line 456
    :cond_2
    invoke-virtual/range {v39 .. v39}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v36

    .line 457
    .local v36, "index":I
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    invoke-virtual/range {v41 .. v41}, Ljava/util/HashMap;->size()I

    move-result v41

    move/from16 v0, v36

    move/from16 v1, v41

    if-lt v0, v1, :cond_3

    .line 458
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/mediatek/audioprofile/AudioProfileState;

    return-object v41

    .line 460
    :cond_3
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/mediatek/audioprofile/AudioProfileState;

    return-object v41
.end method

.method public static getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 509
    if-eqz p0, :cond_0

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_dtmf_tone_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 512
    :cond_0
    return-object v0
.end method

.method public static getHapticKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 524
    if-eqz p0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_haptic_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 527
    :cond_0
    return-object v0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 738
    if-eqz p0, :cond_0

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 741
    :cond_0
    return-object v0
.end method

.method public static getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 682
    if-eqz p0, :cond_0

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_lockscreen_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 685
    :cond_0
    return-object v0
.end method

.method public static getNotificationUseRingKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 696
    if-eqz p0, :cond_0

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_notifications_use_ring_volume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 699
    :cond_0
    return-object v0
.end method

.method public static getProfileCreateDateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 724
    if-eqz p0, :cond_0

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 727
    :cond_0
    return-object v0
.end method

.method public static getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;
    .locals 3
    .param p0, "scenario"    # Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    .prologue
    const/4 v2, 0x0

    .line 755
    if-eqz p0, :cond_0

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mtk_audioprofile_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->coverToProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 758
    :cond_0
    const-string/jumbo v0, "AudioProfileManager"

    const-string/jumbo v1, "getProfileKey with null scenario!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    return-object v2
.end method

.method public static getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 710
    if-eqz p0, :cond_0

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 713
    :cond_0
    return-object v0
.end method

.method public static getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .locals 8
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 789
    if-nez p0, :cond_0

    .line 790
    const-string/jumbo v5, "AudioProfileManager"

    const-string/jumbo v6, "getScenario: Null key! Return CUSTOM as default!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    return-object v5

    .line 794
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 795
    .local v2, "keyLen":I
    const-string/jumbo v5, "mtk_audioprofile_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 796
    .local v4, "startIndex":I
    if-ge v2, v4, :cond_1

    .line 797
    const-string/jumbo v5, "AudioProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getScenario: Invalid key :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Return CUSTOM as default!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    return-object v5

    .line 801
    :cond_1
    const/16 v5, 0x5f

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 804
    .local v1, "endIndex":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 803
    .end local v1    # "endIndex":I
    :cond_2
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 806
    .local v3, "scenarioStr":Ljava/lang/String;
    :try_start_0
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->valueOf(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "AudioProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can not convert string "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to Scenario type!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    return-object v5
.end method

.method private static getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .locals 2

    .prologue
    .line 306
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    if-eqz v1, :cond_0

    .line 307
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    return-object v1

    .line 309
    :cond_0
    const-string/jumbo v1, "audioprofile"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 310
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    sput-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    .line 311
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    return-object v1
.end method

.method public static getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 494
    if-eqz p0, :cond_0

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_sound_effects_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 497
    :cond_0
    return-object v0
.end method

.method public static getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "profileKey"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 579
    const-wide/16 v0, -0x1

    .line 580
    .local v0, "simId":J
    invoke-static {p0, p1, v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;
    .locals 6
    .param p0, "profileKey"    # Ljava/lang/String;
    .param p1, "type"    # I
    .param p2, "simId"    # J

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    .line 595
    if-nez p0, :cond_0

    .line 596
    const-string/jumbo v1, "AudioProfileManager"

    const-string/jumbo v2, "getStreamUriKey with null profile key!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return-object v3

    .line 600
    :cond_0
    const/4 v0, 0x0

    .line 601
    .local v0, "uriKey":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 638
    const-string/jumbo v1, "AudioProfileManager"

    const-string/jumbo v2, "getStreamUriKey with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .end local v0    # "uriKey":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v1, "AudioProfileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getStreamUriKey: StreamUriKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return-object v0

    .line 603
    .restart local v0    # "uriKey":Ljava/lang/String;
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "uriKey":Ljava/lang/String;
    cmp-long v1, p2, v4

    if-eqz v1, :cond_1

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_sim_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 613
    .local v0, "uriKey":Ljava/lang/String;
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_notification_sound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "uriKey":Ljava/lang/String;
    goto :goto_0

    .line 617
    .local v0, "uriKey":Ljava/lang/String;
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_video_call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "uriKey":Ljava/lang/String;
    cmp-long v1, p2, v4

    if-eqz v1, :cond_1

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_sim_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 628
    .local v0, "uriKey":Ljava/lang/String;
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_sip_call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "uriKey":Ljava/lang/String;
    cmp-long v1, p2, v4

    if-eqz v1, :cond_1

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_sim_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 601
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getStreamUriKeys(I)Ljava/util/List;
    .locals 9
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 653
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 654
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v3, v5, v4

    .line 655
    .local v3, "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 654
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 656
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mtk_audioprofile_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->coverToProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 657
    .local v2, "prefix":Ljava/lang/String;
    invoke-static {v2, p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 658
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 659
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 663
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_2
    return-object v1
.end method

.method public static getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "profileKey"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 542
    if-nez p0, :cond_0

    .line 543
    const-string/jumbo v1, "AudioProfileManager"

    const-string/jumbo v2, "getStreamVolumeKey with null profile key!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-object v3

    .line 547
    :cond_0
    const/4 v0, 0x0

    .line 548
    .local v0, "volumeKey":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 562
    :pswitch_0
    const-string/jumbo v1, "AudioProfileManager"

    const-string/jumbo v2, "getStreamVolumeKey with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .end local v0    # "volumeKey":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 550
    .restart local v0    # "volumeKey":Ljava/lang/String;
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_volume_ring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "volumeKey":Ljava/lang/String;
    goto :goto_0

    .line 554
    .local v0, "volumeKey":Ljava/lang/String;
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_volume_notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "volumeKey":Ljava/lang/String;
    goto :goto_0

    .line 558
    .local v0, "volumeKey":Ljava/lang/String;
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_volume_alarm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "volumeKey":Ljava/lang/String;
    goto :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getVibrationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 478
    if-eqz p0, :cond_0

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_vibrate_on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 481
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addProfile()Ljava/lang/String;
    .locals 4

    .prologue
    .line 882
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 884
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->addProfile()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in setActiveProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 887
    const/4 v2, 0x0

    return-object v2
.end method

.method public deleteProfile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 900
    if-nez p1, :cond_0

    .line 901
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "deleteProfile with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return v4

    .line 905
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 907
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->deleteProfile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 908
    :catch_0
    move-exception v0

    .line 909
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in deleteProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 910
    return v4
.end method

.method public getActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1022
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1024
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getActiveProfileKey()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in getActiveProfileKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1027
    const/4 v2, 0x0

    return-object v2
.end method

.method public getAllProfileKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 951
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 953
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getAllProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in getAllProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    const/4 v2, 0x0

    return-object v2
.end method

.method public getBesSurroundMode()I
    .locals 4

    .prologue
    .line 1722
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1724
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getBesSurroundMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1725
    :catch_0
    move-exception v0

    .line 1726
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in getBesSurroundMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1727
    const/4 v2, -0x1

    return v2
.end method

.method public getBesSurroundState()Z
    .locals 4

    .prologue
    .line 1690
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1692
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getBesSurroundState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1693
    :catch_0
    move-exception v0

    .line 1694
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in getBesSurroundState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1695
    const/4 v2, 0x0

    return v2
.end method

.method public getCustomizedProfileKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 982
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 984
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getCustomizedProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in getCustomizedProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 987
    const/4 v2, 0x0

    return-object v2
.end method

.method public getDefaultRingtone(I)Landroid/net/Uri;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1652
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1654
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1655
    :catch_0
    move-exception v0

    .line 1656
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in isRingtoneExist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1657
    const/4 v2, 0x0

    return-object v2
.end method

.method public getLastActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1037
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1039
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getLastActiveProfileKey()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in getLastActiveProfileKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1042
    const/4 v2, 0x0

    return-object v2
.end method

.method public getPredefinedProfileKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 967
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 969
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getPredefinedProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in getPredefinedProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 972
    const/4 v2, 0x0

    return-object v2
.end method

.method public getProfileCount()I
    .locals 4

    .prologue
    .line 935
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 937
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getProfileCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 938
    :catch_0
    move-exception v0

    .line 939
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in deleteProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 940
    const/16 v2, 0xa

    return v2
.end method

.method public getProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1347
    if-nez p1, :cond_0

    .line 1348
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "getProfileName with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return-object v4

    .line 1352
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1354
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getProfileName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1355
    :catch_0
    move-exception v0

    .line 1356
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in getProfileName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1357
    return-object v4
.end method

.method public getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 23
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1283
    if-nez p1, :cond_0

    .line 1284
    const-string/jumbo v20, "AudioProfileManager"

    const-string/jumbo v21, "getProfileState with null profile key!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const/16 v20, 0x0

    return-object v20

    .line 1289
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v12

    .line 1291
    .local v12, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getProfileStateString(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 1297
    .local v15, "state":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1298
    .local v16, "value":Ljava/lang/String;
    if-nez v16, :cond_1

    const/16 v19, 0x0

    .line 1299
    :goto_0
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1300
    .restart local v16    # "value":Ljava/lang/String;
    if-nez v16, :cond_2

    const/4 v8, 0x0

    .line 1301
    :goto_1
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->videocall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1302
    .restart local v16    # "value":Ljava/lang/String;
    if-nez v16, :cond_3

    const/16 v18, 0x0

    .line 1303
    :goto_2
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->sipcall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1304
    .restart local v16    # "value":Ljava/lang/String;
    if-nez v16, :cond_4

    const/4 v13, 0x0

    .line 1306
    :goto_3
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1307
    .restart local v16    # "value":Ljava/lang/String;
    if-nez v16, :cond_5

    const/4 v11, 0x0

    .line 1308
    .local v11, "ringerVolume":I
    :goto_4
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1309
    .restart local v16    # "value":Ljava/lang/String;
    if-nez v16, :cond_6

    const/4 v9, 0x0

    .line 1310
    .local v9, "notificationVolume":I
    :goto_5
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1311
    .restart local v16    # "value":Ljava/lang/String;
    if-nez v16, :cond_7

    const/4 v3, 0x0

    .line 1313
    .local v3, "alarmVolume":I
    :goto_6
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->vibration_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1314
    .restart local v16    # "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 1315
    .local v17, "vibration":Z
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->dtmftone_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1316
    .restart local v16    # "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1317
    .local v4, "dtmfTone":Z
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->soundeffect_enbled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1318
    .restart local v16    # "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 1319
    .local v14, "soundEffect":Z
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->lockscreensound_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1320
    .restart local v16    # "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 1321
    .local v7, "lockScreensound":Z
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->hapticfeedback_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "value":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1322
    .restart local v16    # "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 1324
    .local v6, "hapticFeedback":Z
    new-instance v20, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v8, v2, v13}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v9, v3}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v10

    .line 1333
    .local v10, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const-string/jumbo v20, "AudioProfileManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "getProfileState for profileKey = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1334
    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v22

    .line 1333
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    return-object v10

    .line 1292
    .end local v3    # "alarmVolume":I
    .end local v4    # "dtmfTone":Z
    .end local v6    # "hapticFeedback":Z
    .end local v7    # "lockScreensound":Z
    .end local v9    # "notificationVolume":I
    .end local v10    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v11    # "ringerVolume":I
    .end local v14    # "soundEffect":Z
    .end local v15    # "state":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "value":Ljava/lang/String;
    .end local v17    # "vibration":Z
    :catch_0
    move-exception v5

    .line 1293
    .local v5, "e":Landroid/os/RemoteException;
    const-string/jumbo v20, "AudioProfileManager"

    const-string/jumbo v21, "Dead object in getProfileState"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1294
    const/16 v20, 0x0

    return-object v20

    .line 1298
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v15    # "state":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "value":Ljava/lang/String;
    :cond_1
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .local v19, "voiceCallUri":Landroid/net/Uri;
    goto/16 :goto_0

    .line 1300
    .end local v19    # "voiceCallUri":Landroid/net/Uri;
    :cond_2
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "notificationUri":Landroid/net/Uri;
    goto/16 :goto_1

    .line 1302
    .end local v8    # "notificationUri":Landroid/net/Uri;
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .local v18, "videoCallUri":Landroid/net/Uri;
    goto/16 :goto_2

    .line 1304
    .end local v18    # "videoCallUri":Landroid/net/Uri;
    :cond_4
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .local v13, "sipCallUri":Landroid/net/Uri;
    goto/16 :goto_3

    .line 1307
    .end local v13    # "sipCallUri":Landroid/net/Uri;
    :cond_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .restart local v11    # "ringerVolume":I
    goto/16 :goto_4

    .line 1309
    :cond_6
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .restart local v9    # "notificationVolume":I
    goto/16 :goto_5

    .line 1311
    :cond_7
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3    # "alarmVolume":I
    goto/16 :goto_6
.end method

.method public getRingtoneUri(I)Landroid/net/Uri;
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, "profileKey":Ljava/lang/String;
    const/4 v1, 0x1

    .line 1111
    .local v1, "type":I
    int-to-long v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public getRingtoneUri(IJ)Landroid/net/Uri;
    .locals 2
    .param p1, "callType"    # I
    .param p2, "simId"    # J

    .prologue
    .line 1123
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v0

    .line 1124
    .local v0, "profileKey":Ljava/lang/String;
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 1094
    const-wide/16 v0, -0x1

    .line 1095
    .local v0, "simId":J
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J

    .prologue
    const/4 v4, 0x0

    .line 1062
    if-nez p1, :cond_0

    .line 1063
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "getRingtoneUri with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    return-object v4

    .line 1067
    :cond_0
    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 1069
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1071
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getRingtoneUriWithSIM(Ljava/lang/String;IJ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1068
    .end local v1    # "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :cond_2
    const/16 v2, 0x8

    if-eq p2, v2, :cond_1

    const/16 v2, 0x10

    if-eq p2, v2, :cond_1

    .line 1077
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "getRingtoneUri with unsupport stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    return-object v4

    .line 1072
    .restart local v1    # "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :catch_0
    move-exception v0

    .line 1073
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in getRingtoneUri"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1074
    return-object v4
.end method

.method public getStreamMaxVolume(I)I
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    .line 1633
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1635
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getStreamMaxVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1636
    :catch_0
    move-exception v0

    .line 1637
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in isRingtoneExist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1638
    const/4 v2, 0x0

    return v2
.end method

.method public getStreamVolume(Ljava/lang/String;I)I
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "streamType"    # I

    .prologue
    const/4 v4, 0x0

    .line 1140
    if-nez p1, :cond_0

    .line 1141
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "getStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    return v4

    .line 1145
    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x5

    if-ne p2, v2, :cond_2

    .line 1147
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1149
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getStreamVolume(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1146
    .end local v1    # "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :cond_2
    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    .line 1155
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "getStreamVolume with unsupport stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    return v4

    .line 1150
    .restart local v1    # "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :catch_0
    move-exception v0

    .line 1151
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in getStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1152
    return v4
.end method

.method public isActiveProfile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1587
    if-nez p1, :cond_0

    .line 1588
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "isActiveProfile with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    return v4

    .line 1592
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1594
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isActiveProfile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1595
    :catch_0
    move-exception v0

    .line 1596
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in isActiveProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1597
    return v4
.end method

.method public isDtmfToneEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1192
    if-nez p1, :cond_0

    .line 1193
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "isDtmfToneEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    return v4

    .line 1197
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1199
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isDtmfToneEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in isDtmfToneEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1202
    return v4
.end method

.method public isLockScreenEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1238
    if-nez p1, :cond_0

    .line 1239
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "isLockScreenEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    return v4

    .line 1243
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1245
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isLockScreenEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1246
    :catch_0
    move-exception v0

    .line 1247
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in isLockScreenEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1248
    return v4
.end method

.method public isNameExist(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1001
    if-eqz p1, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1002
    :cond_0
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "isNameExist: Null or empty name!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    return v4

    .line 1006
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1008
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isNameExist(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in isNameExist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1011
    return v4
.end method

.method public isRingtoneExist(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 1608
    if-nez p1, :cond_0

    .line 1609
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "isRingtoneExist with null uri!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    return v4

    .line 1613
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1615
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isRingtoneExist(Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1616
    :catch_0
    move-exception v0

    .line 1617
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in isRingtoneExist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1618
    return v4
.end method

.method public isSoundEffectEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1215
    if-nez p1, :cond_0

    .line 1216
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "isSoundEffectEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    return v4

    .line 1220
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1222
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isSoundEffectEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in isSoundEffectEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1225
    return v4
.end method

.method public isVibrateOnTouchEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1261
    if-nez p1, :cond_0

    .line 1262
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "isVibrateOnTouchEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    return v4

    .line 1266
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1268
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isVibrateOnTouchEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1269
    :catch_0
    move-exception v0

    .line 1270
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in isVibrateOnTouchEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1271
    return v4
.end method

.method public isVibrationEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1169
    if-nez p1, :cond_0

    .line 1170
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "isVibrationEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    return v4

    .line 1174
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1176
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isVibrationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in isVibrationEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1179
    return v4
.end method

.method public listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V
    .locals 4
    .param p1, "listener"    # Lcom/mediatek/common/audioprofile/AudioProfileListener;
    .param p2, "event"    # I

    .prologue
    .line 1675
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1677
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/common/audioprofile/AudioProfileListener;->getCallback()Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->listenAudioProfie(Lcom/mediatek/common/audioprofile/IAudioProfileListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    :goto_0
    return-void

    .line 1678
    :catch_0
    move-exception v0

    .line 1679
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in listenAudioProfie"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetProfiles()V
    .locals 4

    .prologue
    .line 920
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 922
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :goto_0
    return-void

    .line 923
    :catch_0
    move-exception v0

    .line 924
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in resetProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 861
    if-nez p1, :cond_0

    .line 862
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "setActiveProfile with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    return-void

    .line 866
    :cond_0
    const-string/jumbo v2, "AudioProfileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setActiveProfile: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 869
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setActiveProfile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :goto_0
    return-void

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in setActiveProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBesSurroundMode(I)I
    .locals 4
    .param p1, "besSurroundMode"    # I

    .prologue
    .line 1738
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1740
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setBesSurroundMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1741
    :catch_0
    move-exception v0

    .line 1742
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in setBesSurroundMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1743
    const/4 v2, -0x1

    return v2
.end method

.method public setBesSurroundState(Z)I
    .locals 4
    .param p1, "isEnableBes"    # Z

    .prologue
    .line 1706
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1708
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setBesSurroundState(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1709
    :catch_0
    move-exception v0

    .line 1710
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in setBesSurroundState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1711
    const/4 v2, -0x1

    return v2
.end method

.method public setDtmfToneEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1474
    if-nez p1, :cond_0

    .line 1475
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "setDtmfToneEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    return-void

    .line 1479
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1481
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setDtmfToneEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    :goto_0
    return-void

    .line 1482
    :catch_0
    move-exception v0

    .line 1483
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in setDtmfToneEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLockScreenEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1518
    if-nez p1, :cond_0

    .line 1519
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "setLockScreenEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    return-void

    .line 1523
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1525
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setLockScreenEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1517
    :goto_0
    return-void

    .line 1526
    :catch_0
    move-exception v0

    .line 1527
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in setLockScreenEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 1562
    if-nez p1, :cond_0

    .line 1563
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "setProfileName with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    return-void

    .line 1567
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1569
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1561
    :goto_0
    return-void

    .line 1570
    :catch_0
    move-exception v0

    .line 1571
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in setProfileName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J
    .param p5, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 1392
    if-nez p1, :cond_0

    .line 1393
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "setStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    return-void

    .line 1397
    :cond_0
    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    .line 1398
    const/16 v2, 0x8

    if-eq p2, v2, :cond_1

    const/16 v2, 0x10

    if-eq p2, v2, :cond_1

    .line 1399
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "setStreamVolume with unsupport stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    return-void

    .line 1403
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 1405
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    :goto_0
    return-void

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in setRingtoneUri"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 1378
    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 1376
    return-void
.end method

.method public setSoundEffectEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1496
    if-nez p1, :cond_0

    .line 1497
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "setSoundEffectEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    return-void

    .line 1501
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1503
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setSoundEffectEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1495
    :goto_0
    return-void

    .line 1504
    :catch_0
    move-exception v0

    .line 1505
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in setSoundEffectEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStreamVolume(Ljava/lang/String;II)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "streamType"    # I
    .param p3, "index"    # I

    .prologue
    .line 1424
    if-nez p1, :cond_0

    .line 1425
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "setStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    return-void

    .line 1429
    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x5

    if-eq p2, v2, :cond_1

    .line 1430
    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    .line 1431
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "setStreamVolume with unsupport stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    return-void

    .line 1435
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1437
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setStreamVolume(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1423
    :goto_0
    return-void

    .line 1438
    :catch_0
    move-exception v0

    .line 1439
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in setStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVibrateOnTouchEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1540
    if-nez p1, :cond_0

    .line 1541
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "setVibrateOnTouchEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    return-void

    .line 1545
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1547
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setVibrateOnTouchEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    :goto_0
    return-void

    .line 1548
    :catch_0
    move-exception v0

    .line 1549
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in setVibrateOnTouchEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVibrationEnabled(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1452
    if-nez p1, :cond_0

    .line 1453
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "setVibrationEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    return-void

    .line 1457
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1459
    .local v1, "service":Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setVibrationEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1451
    :goto_0
    return-void

    .line 1460
    :catch_0
    move-exception v0

    .line 1461
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AudioProfileManager"

    const-string/jumbo v3, "Dead object in setVibrationEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
