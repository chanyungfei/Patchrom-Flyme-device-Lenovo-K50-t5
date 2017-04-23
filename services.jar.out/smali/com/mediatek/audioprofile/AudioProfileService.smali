.class public Lcom/mediatek/audioprofile/AudioProfileService;
.super Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/AudioProfileService$Record;,
        Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;,
        Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileHandler;,
        Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;,
        Lcom/mediatek/audioprofile/AudioProfileService$1;,
        Lcom/mediatek/audioprofile/AudioProfileService$2;,
        Lcom/mediatek/audioprofile/AudioProfileService$3;,
        Lcom/mediatek/audioprofile/AudioProfileService$4;,
        Lcom/mediatek/audioprofile/AudioProfileService$5;,
        Lcom/mediatek/audioprofile/AudioProfileService$6;,
        Lcom/mediatek/audioprofile/AudioProfileService$7;,
        Lcom/mediatek/audioprofile/AudioProfileService$8;
    }
.end annotation


# static fields
.field private static synthetic -com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I = null

.field private static final BESSURROUND_MOIVE:Ljava/lang/String; = "BesSurround_Mode=0"

.field private static final BESSURROUND_MUSIC:Ljava/lang/String; = "BesSurround_Mode=1"

.field private static final BESSURROUND_OFF:Ljava/lang/String; = "BesSurround_OnOff=0"

.field private static final BESSURROUND_ON:Ljava/lang/String; = "BesSurround_OnOff=1"

.field private static final BUNDLE_DEFAULT_SIZE:I = 0x4

.field private static final DEFAULT_NOTIFICATION_INDEX:I

.field private static final DEFAULT_RINGER_INDEX:I

.field private static final DEFAULT_RINGTONE_TYPE_CONUT:I = 0x4

.field private static final DEFAULT_SIPCALL_INDEX:I

.field private static final DEFAULT_VIDEOCALL_INDEX:I

.field private static final DELAY_TIME_AVOID_CTS_FAIL:J = 0x4e20L

.field private static final IS_SUPPORT_OUTDOOR_EDITABLE:Z = false

.field private static final MSG_DELAY_SET_VIBRATE_AVOID_CTS_FAIL:I = 0x15

.field private static final MSG_PERSIST_ALARM_VOLUME_TO_DATABASE:I = 0xa

.field private static final MSG_PERSIST_DTMF_TONE_TO_DATABASE:I = 0xf

.field private static final MSG_PERSIST_DTMF_TONE_TO_SYSTEM:I = 0x4

.field private static final MSG_PERSIST_HAPTIC_FEEDBACK_TO_DATABASE:I = 0x12

.field private static final MSG_PERSIST_HAPTIC_FEEDBACK_TO_SYSTEM:I = 0x7

.field private static final MSG_PERSIST_LOCKSCREEN_SOUND_TO_DATABASE:I = 0x11

.field private static final MSG_PERSIST_LOCKSCREEN_SOUND_TO_SYSTEM:I = 0x6

.field private static final MSG_PERSIST_NOTIFICATION_RINGTONE_TO_DATABASE:I = 0xc

.field private static final MSG_PERSIST_NOTIFICATION_RINGTONE_TO_SYSTEM:I = 0x2

.field private static final MSG_PERSIST_NOTIFICATION_VOLUME_TO_DATABASE:I = 0x9

.field private static final MSG_PERSIST_PROFILE_NAME_TO_DATABASE:I = 0x13

.field private static final MSG_PERSIST_RINGER_VOLUME_TO_DATABASE:I = 0x8

.field private static final MSG_PERSIST_SIPCALL_RINGTONE_TO_DATABASE:I = 0x17

.field private static final MSG_PERSIST_SIPCALL_RINGTONE_TO_SYSTEM:I = 0x16

.field private static final MSG_PERSIST_SOUND_EFFECT_TO_DATABASE:I = 0x10

.field private static final MSG_PERSIST_SOUND_EFFECT_TO_SYSTEM:I = 0x5

.field private static final MSG_PERSIST_VALUES_TO_SYSTEM_BY_BATCH:I = 0x14

.field private static final MSG_PERSIST_VIBRATION_TO_DATABASE:I = 0xe

.field private static final MSG_PERSIST_VIDEOCALL_RINGTONE_TO_DATABASE:I = 0xd

.field private static final MSG_PERSIST_VIDEOCALL_RINGTONE_TO_SYSTEM:I = 0x3

.field private static final MSG_PERSIST_VOICECALL_RINGTONE_TO_DATABASE:I = 0xb

.field private static final MSG_PERSIST_VOICECALL_RINGTONE_TO_SYSTEM:I = 0x1

.field public static final MTK_BESSURROUND_SUPPORT:Z

.field private static final PROFILE_UPGRADED_KEY:Ljava/lang/String; = "mtk_audioprofile_upgraded"

.field private static final PROFILE_UPGRADED_VALUE:I = 0x1

.field public static final SILENT_NOTIFICATION_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "AudioProfileService"


# instance fields
.field private mActiveProfileKey:Ljava/lang/String;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioProfileHandler:Landroid/os/Handler;

.field private mBesSurroundMode:I

.field private final mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mCustomProfileName:Ljava/util/HashMap;
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

.field private final mDefaultRingtone:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mDelaySetVibrate:Z

.field private final mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

.field private mIsBesSurroundEnable:Z

.field private mIsLastCustomActiveProfileDeleted:Z

.field private final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastActiveProfileKey:Ljava/lang/String;

.field private mLastVibrateType:I

.field private final mLock:Ljava/lang/Object;

.field private final mNotificationObserver:Landroid/database/ContentObserver;

.field private final mPredefinedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

.field private final mProfileStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/audioprofile/AudioProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/audioprofile/AudioProfileService$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mResetFlag:Z

.field private mRingerMode:I

.field private final mRingerModeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private final mRingerVolumeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private final mRingtoneObserver:Landroid/database/ContentObserver;

.field private mShouldGetDefaultRingtoneAfterScanFinish:Z

.field private mShouldOverrideSystem:Z

.field private final mShouldSyncToSystem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSimId:J

.field private mSingleSIM:I

.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private final mUpgradeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserId:I

.field private final mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private final mVibrateSettingListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    return v0
.end method

.method static synthetic -get10(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    return-object v0
.end method

.method static synthetic -get11(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get12(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/mediatek/audioprofile/AudioProfileService;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastVibrateType:I

    return v0
.end method

.method static synthetic -get14(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get15(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get16(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    return-object v0
.end method

.method static synthetic -get17(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get18(Lcom/mediatek/audioprofile/AudioProfileService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mResetFlag:Z

    return v0
.end method

.method static synthetic -get19(Lcom/mediatek/audioprofile/AudioProfileService;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    return v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    return v0
.end method

.method static synthetic -get20(Lcom/mediatek/audioprofile/AudioProfileService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    return v0
.end method

.method static synthetic -get21(Lcom/mediatek/audioprofile/AudioProfileService;)J
    .locals 2

    iget-wide v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J

    return-wide v0
.end method

.method static synthetic -get22(Lcom/mediatek/audioprofile/AudioProfileService;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    return v0
.end method

.method static synthetic -get23(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/os/storage/StorageManager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic -get24(Lcom/mediatek/audioprofile/AudioProfileService;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    return v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    return v0
.end method

.method static synthetic -get4(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get7(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get8(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get9(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    return-object v0
.end method

.method private static synthetic -getcom_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileService;->-com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileService;->-com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileService;->-com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic -set1(Lcom/mediatek/audioprofile/AudioProfileService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    return p1
.end method

.method static synthetic -set2(Lcom/mediatek/audioprofile/AudioProfileService;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastVibrateType:I

    return p1
.end method

.method static synthetic -set3(Lcom/mediatek/audioprofile/AudioProfileService;Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;)Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    return-object p1
.end method

.method static synthetic -set4(Lcom/mediatek/audioprofile/AudioProfileService;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    return p1
.end method

.method static synthetic -set5(Lcom/mediatek/audioprofile/AudioProfileService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    return p1
.end method

.method static synthetic -set6(Lcom/mediatek/audioprofile/AudioProfileService;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/audioprofile/AudioProfileService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->needUpgradeProfileSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/audioprofile/AudioProfileService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->upgradeProfileSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getExternalUriData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 1
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J
    .param p5, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/mediatek/audioprofile/AudioProfileService;I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/mediatek/audioprofile/AudioProfileService;Z)V
    .locals 0
    .param p1, "overrideSystem"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->reInit()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readDefaultRingtones()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "ringtoneType"    # I
    .param p3, "volumePath"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;I[Ljava/lang/String;J)V
    .locals 0
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "ringtoneType"    # I
    .param p3, "volumePath"    # [Ljava/lang/String;
    .param p4, "simId"    # J

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    .line 131
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 130
    sput v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    .line 132
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->videocall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    .line 133
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->sipcall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    .line 143
    const-string/jumbo v0, "com.mediatek.uri.silent_notificaton"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 142
    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 231
    const-string/jumbo v0, "ro.mtk_bessurround_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 230
    sput-boolean v0, Lcom/mediatek/audioprofile/AudioProfileService;->MTK_BESSURROUND_SUPPORT:Z

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 814
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;-><init>()V

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    .line 160
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    .line 164
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    .line 166
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldOverrideSystem:Z

    .line 169
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    .line 171
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastVibrateType:I

    .line 172
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mResetFlag:Z

    .line 175
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsBesSurroundEnable:Z

    .line 176
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mBesSurroundMode:I

    .line 180
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    .line 184
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    .line 188
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    .line 195
    new-instance v2, Ljava/util/HashMap;

    .line 196
    const/16 v3, 0xa

    .line 195
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 194
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    .line 202
    new-instance v2, Ljava/util/HashMap;

    .line 203
    const/4 v3, 0x6

    .line 202
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 201
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    .line 210
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 212
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    .line 221
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J

    .line 222
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    .line 236
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileService$1;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerModeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 303
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileService$2;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerVolumeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 369
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileService$3;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mVibrateSettingListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 386
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileService$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/mediatek/audioprofile/AudioProfileService$4;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingtoneObserver:Landroid/database/ContentObserver;

    .line 462
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileService$5;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/mediatek/audioprofile/AudioProfileService$5;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mNotificationObserver:Landroid/database/ContentObserver;

    .line 537
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileService$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileService$6;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;

    .line 636
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileService$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileService$7;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 4261
    new-instance v2, Lcom/mediatek/audioprofile/AudioProfileService$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileService$8;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 815
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "Initial AudioProfileService start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 817
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->getInstance(I)Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    .line 820
    const-string/jumbo v2, "storage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 822
    const-string/jumbo v2, "audioprofile"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 823
    .local v17, "audioProfileManager":Lcom/mediatek/audioprofile/AudioProfileManager;
    const-string/jumbo v2, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 826
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readDefaultRingtones()V

    .line 829
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readPredefinedProfileKeys()V

    .line 830
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readAllProfileKeys()V

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v3, "mtk_audioprofile_active"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 836
    .local v16, "activeProfileKey":Ljava/lang/String;
    if-nez v16, :cond_0

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 836
    :goto_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v3, "mtk_audioprofile_last_active"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 841
    .local v19, "lastActiveProfileKey":Ljava/lang/String;
    if-nez v19, :cond_1

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 840
    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    .line 844
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    .line 845
    const-string/jumbo v3, "mtk_audioprofile_custom_deleted"

    const-string/jumbo v4, "false"

    .line 844
    invoke-virtual {v2, v3, v4}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 843
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 847
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->createOverrideSystemThread()V

    .line 850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "profileKey$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 851
    .local v20, "profileKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;)V

    goto :goto_2

    .end local v19    # "lastActiveProfileKey":Ljava/lang/String;
    .end local v20    # "profileKey":Ljava/lang/String;
    .end local v21    # "profileKey$iterator":Ljava/util/Iterator;
    :cond_0
    move-object/from16 v2, v16

    .line 837
    goto :goto_0

    .restart local v19    # "lastActiveProfileKey":Ljava/lang/String;
    :cond_1
    move-object/from16 v2, v19

    .line 842
    goto :goto_1

    .line 855
    .restart local v21    # "profileKey$iterator":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerModeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 857
    const/4 v4, 0x2

    .line 856
    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerVolumeListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 859
    const/4 v4, 0x4

    .line 858
    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mVibrateSettingListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 862
    const/16 v4, 0x8

    .line 861
    invoke-virtual {v2, v3, v4}, Landroid/media/AudioManager;->listenRingerModeAndVolume(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 866
    const-string/jumbo v3, "ringtone"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingtoneObserver:Landroid/database/ContentObserver;

    .line 867
    const/4 v6, 0x0

    .line 865
    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 870
    const-string/jumbo v3, "notification_sound"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mNotificationObserver:Landroid/database/ContentObserver;

    .line 870
    const/4 v6, 0x0

    .line 869
    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 874
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readShouldSyncToSystem()V

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    .line 883
    .local v18, "defRingUri":Landroid/net/Uri;
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 884
    .local v5, "scanerFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 885
    const-string/jumbo v2, "file"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUpgradeReceiver:Landroid/content/BroadcastReceiver;

    .line 887
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 889
    const/4 v6, 0x0

    .line 890
    const/4 v7, 0x0

    .line 886
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 893
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 894
    .local v9, "bootFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 896
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 898
    const/4 v10, 0x0

    .line 899
    const/4 v11, 0x0

    .line 895
    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 902
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 903
    .local v13, "userSwitchFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 904
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 905
    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 907
    const/4 v14, 0x0

    .line 908
    const/4 v15, 0x0

    .line 904
    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 910
    if-nez v18, :cond_6

    .line 911
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    .line 925
    :cond_3
    :goto_3
    const-class v2, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 924
    invoke-static {v2, v3}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    .line 926
    .local v22, "tmpExt":Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    if-eqz v22, :cond_9

    .line 927
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    .line 933
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->init(Lcom/mediatek/common/audioprofile/IAudioProfileService;Landroid/content/Context;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v2}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldCheckDefaultProfiles()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 937
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->checkDefaultProfiles()V

    .line 940
    :cond_4
    sget-boolean v2, Lcom/mediatek/audioprofile/AudioProfileService;->MTK_BESSURROUND_SUPPORT:Z

    if-eqz v2, :cond_5

    .line 942
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->initBesSurroundStatus()V

    .line 945
    :cond_5
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "Initial AudioProfileService end"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    return-void

    .line 912
    .end local v22    # "tmpExt":Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 913
    const/4 v3, 0x1

    .line 912
    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_7

    .line 915
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_3

    .line 916
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 917
    const/16 v3, 0x8

    .line 916
    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_8

    .line 918
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_3

    .line 919
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 920
    const/16 v3, 0x10

    .line 919
    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_3

    .line 921
    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto :goto_3

    .line 929
    .restart local v22    # "tmpExt":Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    :cond_9
    new-instance v2, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension;

    invoke-direct {v2}, Lcom/mediatek/audioprofile/DefaultAudioProfileExtension;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    goto :goto_4
.end method

.method private checkDefaultProfiles()V
    .locals 7

    .prologue
    .line 3432
    const-string/jumbo v4, "AudioProfileService"

    const-string/jumbo v5, "checkDefaultProfiles>>>"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 3435
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 3438
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v4}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3440
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 3441
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    .line 3442
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 3441
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 3443
    .local v0, "generalState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    .line 3444
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 3443
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 3446
    .local v1, "outdoorState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    iput-object v4, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 3447
    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    iput-object v4, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 3448
    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    iput-object v4, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 3449
    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    iput-object v4, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 3453
    .end local v0    # "generalState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v1    # "outdoorState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_0
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "profileKey$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3454
    .local v2, "profileKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 3455
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/audioprofile/AudioProfileState;

    iget v5, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 3454
    iput v5, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    goto :goto_0

    .line 3457
    .end local v2    # "profileKey":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "AudioProfileService"

    const-string/jumbo v5, "checkDefaultProfiles<<<"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    return-void
.end method

.method private createOverrideSystemThread()V
    .locals 4

    .prologue
    .line 3668
    new-instance v1, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;

    invoke-direct {v1, p0}, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;-><init>(Lcom/mediatek/audioprofile/AudioProfileService;)V

    .line 3669
    .local v1, "overrideSystemThread":Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;
    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileService$OverrideSystemThread;->start()V

    .line 3671
    monitor-enter p0

    .line 3672
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 3675
    :try_start_1
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3676
    :catch_0
    move-exception v0

    .line 3677
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "Interrupted while waiting on AudioProfileHandler."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3671
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    .line 3667
    return-void
.end method

.method private doRingtoneUriSetting(Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simid"    # J
    .param p5, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2296
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2299
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    .line 2300
    .local v1, "state":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    move-object v0, p0

    move v2, p2

    move-object v3, p5

    move-wide v4, p3

    .line 2301
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingtoneUriInStateMap(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 2305
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2306
    invoke-direct {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 2294
    :cond_0
    return-void

    .line 2300
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private doRingtoneUriSetting(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2291
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileService;->doRingtoneUriSetting(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2290
    return-void
.end method

.method private genCustomKey()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1499
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 1500
    .local v2, "rand":Ljava/util/Random;
    const/4 v1, 0x0

    .line 1502
    :cond_0
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/lit8 v0, v3, 0x6

    .line 1503
    .local v0, "customNo":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mtk_audioprofile_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1505
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1504
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1506
    const-string/jumbo v4, "_"

    .line 1504
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1506
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1504
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1507
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1508
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "genCustomKey: newKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    return-object v1
.end method

.method private getAllOldKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "profile"    # Ljava/lang/String;
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
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 4218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4219
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4220
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_notifications_use_ring_volume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_lockscreen_sounds_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_haptic_feedback_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_dtmf_tone_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_sound_effects_enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4226
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4228
    const/4 v3, 0x4

    .line 4227
    invoke-static {p1, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4230
    const/4 v3, 0x5

    .line 4229
    invoke-static {p1, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4231
    invoke-static {p1, v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4234
    invoke-static {p1, v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4237
    invoke-static {p1, v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 4236
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4240
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 4241
    .local v1, "simCount":I
    const/4 v2, 0x1

    .local v2, "simId":I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 4243
    int-to-long v4, v2

    .line 4242
    invoke-static {p1, v6, v4, v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4246
    int-to-long v4, v2

    .line 4245
    invoke-static {p1, v6, v4, v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v3

    .line 4244
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4241
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4248
    :cond_0
    invoke-static {p1, v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4251
    invoke-static {p1, v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 4250
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4253
    invoke-static {p1, v8}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4256
    invoke-static {p1, v8}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 4255
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4258
    return-object v0
.end method

.method private getExternalUriData(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 3787
    if-nez p1, :cond_0

    .line 3788
    return-object v3

    .line 3791
    :cond_0
    const/4 v7, 0x0

    .line 3792
    .local v7, "data":Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 3793
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3794
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 3792
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3799
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3800
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 3803
    .end local v7    # "data":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 3804
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3805
    const/4 v6, 0x0

    .line 3808
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    const-string/jumbo v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getExternalUriData for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3809
    return-object v7

    .line 3802
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "data":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 3803
    if-eqz v6, :cond_3

    .line 3804
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3805
    const/4 v6, 0x0

    .line 3802
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    throw v0
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 3520
    .local p2, "initValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 3521
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3522
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .restart local p3    # "defaultValue":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    .line 3524
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    return p3
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 3500
    .local p2, "initValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 3501
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3502
    .local v0, "uriString":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p3    # "defaultUri":Landroid/net/Uri;
    :goto_0
    return-object p3

    .restart local p3    # "defaultUri":Landroid/net/Uri;
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    goto :goto_0

    .line 3504
    .end local v0    # "uriString":Ljava/lang/String;
    :cond_1
    return-object p3
.end method

.method private getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 3540
    .local p2, "initValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 3541
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3542
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p3    # "defaultValue":Z
    :goto_0
    return p3

    .restart local p3    # "defaultValue":Z
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    goto :goto_0

    .line 3544
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    return p3
.end method

.method private getStreamValidVolume(II)I
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "volume"    # I

    .prologue
    .line 1895
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamMaxVolume(I)I

    move-result v0

    .line 1896
    .local v0, "max":I
    move v1, p2

    .line 1897
    .local v1, "validVolume":I
    if-gez p2, :cond_1

    .line 1898
    const/4 v1, 0x0

    .line 1902
    :cond_0
    :goto_0
    return v1

    .line 1899
    :cond_1
    if-le p2, v0, :cond_0

    .line 1900
    move v1, v0

    goto :goto_0
.end method

.method private initBesSurroundStatus()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3813
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    .line 3814
    const-string/jumbo v5, "mtk_audioprofile_bessuround"

    const-string/jumbo v6, "-1"

    .line 3813
    invoke-virtual {v4, v5, v6}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3815
    .local v3, "bessuroundState":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3816
    .local v0, "BesSurroundCode":I
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    .line 3817
    const-string/jumbo v5, "mtk_audioprofile_bessuround_mode"

    const-string/jumbo v6, "-1"

    .line 3816
    invoke-virtual {v4, v5, v6}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3818
    .local v2, "bessuroundMode":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3819
    .local v1, "BesSurroundMode":I
    if-ne v0, v9, :cond_0

    .line 3820
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v5, "mtk_audioprofile_bessuround"

    .line 3821
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 3820
    invoke-virtual {v4, v5, v6}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3824
    :cond_0
    if-nez v0, :cond_1

    .line 3825
    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->setBesSurroundState(Z)I

    .line 3828
    :cond_1
    if-ne v0, v8, :cond_2

    .line 3829
    invoke-virtual {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->setBesSurroundState(Z)I

    .line 3832
    :cond_2
    if-ne v1, v9, :cond_3

    .line 3833
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v5, "mtk_audioprofile_bessuround_mode"

    .line 3834
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 3833
    invoke-virtual {v4, v5, v6}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3837
    :cond_3
    if-nez v1, :cond_4

    .line 3838
    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->setBesSurroundMode(I)I

    .line 3841
    :cond_4
    if-ne v1, v8, :cond_5

    .line 3842
    iput v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mBesSurroundMode:I

    .line 3843
    invoke-virtual {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->setBesSurroundMode(I)I

    .line 3812
    :cond_5
    return-void
.end method

.method private isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2350
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isRingtoneUriChanged(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;)Z
    .locals 1
    .param p1, "profileState"    # Lcom/mediatek/audioprofile/AudioProfileState;
    .param p2, "type"    # I
    .param p3, "newRingtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 2227
    sparse-switch p2, :sswitch_data_0

    .line 2240
    const/4 v0, 0x1

    return v0

    .line 2229
    :sswitch_0
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2232
    :sswitch_1
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2235
    :sswitch_2
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2238
    :sswitch_3
    iget-object v0, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->isNotEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2227
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private isValidRingtoneType(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 2219
    if-eq v0, p1, :cond_0

    .line 2220
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 2219
    :cond_0
    :goto_0
    return v0

    .line 2221
    :cond_1
    const/16 v1, 0x8

    if-eq v1, p1, :cond_0

    .line 2222
    const/16 v1, 0x10

    if-eq v1, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needUpgradeProfileSettings()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4123
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 4124
    const-string/jumbo v2, "mtk_audioprofile_upgraded"

    .line 4126
    iget v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    .line 4123
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 4127
    .local v0, "upgraded":I
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "needUpgradeProfileSettings() upgraded = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4128
    if-ne v0, v5, :cond_0

    .line 4129
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "needUpgradeProfileSettings() already upgraded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    return v4

    .line 4132
    :cond_0
    return v5
.end method

.method private notifyAudioProfileChanged()V
    .locals 7

    .prologue
    .line 1274
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1275
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v4, "notifyAudioProfileChanged falled, because active profile key is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    return-void

    .line 1279
    :cond_0
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1280
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1281
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v5, "notifyAudioProfileChanged falled, because there are no listener!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1282
    return-void

    .line 1285
    :cond_1
    :try_start_1
    const-string/jumbo v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyAudioProfileChanged: New profile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1286
    const-string/jumbo v6, ", clients = "

    .line 1285
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1286
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1285
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1288
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1289
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    .line 1290
    .local v2, "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    iget v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 1292
    :try_start_2
    iget-object v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-interface {v3, v5}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->onProfileChanged(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1293
    :catch_0
    move-exception v0

    .line 1294
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1295
    const-string/jumbo v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Dead object in notifyAudioProfileChanged, remove listener\'s callback: record.mBinder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1297
    iget-object v6, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    .line 1295
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1297
    const-string/jumbo v6, ", clients = "

    .line 1295
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1298
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1295
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1298
    const-string/jumbo v6, ", exception = "

    .line 1295
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1279
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    .end local v2    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_3
    monitor-exit v4

    .line 1273
    return-void
.end method

.method private persistDtmfToneToDatabase(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v6, -0x1

    .line 2779
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2780
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2781
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persistDtmfToneToDatabase() name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2784
    const/16 v4, 0xf

    .line 2783
    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2785
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2786
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2778
    return-void
.end method

.method private persistDtmfToneToSystem()V
    .locals 6

    .prologue
    .line 3013
    const-string/jumbo v2, "dtmf_tone"

    .line 3014
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3015
    .local v0, "enabled":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 3016
    const/4 v4, 0x4

    const/4 v5, -0x1

    .line 3015
    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3017
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3012
    return-void

    .line 3014
    .end local v0    # "enabled":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":I
    goto :goto_0
.end method

.method private persistHapticFeedbackToDatabase(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v6, -0x1

    .line 2839
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2840
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2841
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persistDtmfToneToDatabase() name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2843
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2844
    const/16 v4, 0x12

    .line 2843
    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2845
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2846
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2838
    return-void
.end method

.method private persistHapticFeedbackToSystem()V
    .locals 6

    .prologue
    .line 3046
    const-string/jumbo v2, "haptic_feedback_enabled"

    .line 3047
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3048
    .local v0, "enabled":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 3049
    const/4 v4, 0x7

    const/4 v5, -0x1

    .line 3048
    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3050
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3045
    return-void

    .line 3047
    .end local v0    # "enabled":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":I
    goto :goto_0
.end method

.method private persistLockScreenToDatabase(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v6, -0x1

    .line 2819
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2820
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2821
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persistDtmfToneToDatabase() name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2824
    const/16 v4, 0x11

    .line 2823
    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2825
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2826
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2818
    return-void
.end method

.method private persistLockScreenToSystem()V
    .locals 6

    .prologue
    .line 3035
    const-string/jumbo v2, "lockscreen_sounds_enabled"

    .line 3036
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3037
    .local v0, "enabled":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 3038
    const/4 v4, 0x6

    const/4 v5, -0x1

    .line 3037
    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3039
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3034
    return-void

    .line 3036
    .end local v0    # "enabled":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":I
    goto :goto_0
.end method

.method private persistProfileNameToDatabase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 2858
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2859
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2860
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2862
    const/16 v4, 0x13

    .line 2861
    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2863
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2864
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2857
    return-void
.end method

.method private persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J
    .param p5, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 2671
    const/4 v2, 0x0

    .line 2672
    .local v2, "name":Ljava/lang/String;
    iget v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v4

    cmp-long v4, p3, v4

    if-nez v4, :cond_0

    .line 2673
    invoke-static {p1, p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2678
    .local v2, "name":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v4, 0x4

    invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 2679
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez p5, :cond_1

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2680
    sparse-switch p2, :sswitch_data_0

    .line 2702
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v4, "persistRingtoneUriToDatabase with undefined stream type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    return-void

    .line 2675
    .end local v0    # "bundle":Landroid/os/Bundle;
    .local v2, "name":Ljava/lang/String;
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    goto :goto_0

    .line 2679
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2682
    :sswitch_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2683
    const/16 v4, 0xb

    .line 2682
    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2705
    .local v1, "msg":Landroid/os/Message;
    :goto_2
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2706
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2668
    return-void

    .line 2687
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_1
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2688
    const/16 v4, 0xc

    .line 2687
    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_2

    .line 2692
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2693
    const/16 v4, 0xd

    .line 2692
    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_2

    .line 2697
    .end local v1    # "msg":Landroid/os/Message;
    :sswitch_3
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2698
    const/16 v4, 0x17

    .line 2697
    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_2

    .line 2680
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private persistRingtoneUriToSystem(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 2883
    new-instance v0, Landroid/os/Bundle;

    const/4 v5, 0x4

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 2884
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 2885
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2887
    .local v3, "uri":Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_0

    .line 2921
    const-string/jumbo v4, "AudioProfileService"

    const-string/jumbo v5, "persistRingtoneUriToSystem with unsupport type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    return-void

    .line 2889
    :sswitch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2890
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v5

    iget-object v3, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 2891
    .local v3, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2892
    const/4 v6, 0x1

    .line 2891
    invoke-virtual {v5, v6, v7, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2924
    .end local v3    # "uri":Landroid/net/Uri;
    .local v1, "msg":Landroid/os/Message;
    :goto_0
    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2925
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2926
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2881
    return-void

    .line 2896
    .end local v1    # "msg":Landroid/os/Message;
    .local v2, "name":Ljava/lang/String;
    .local v3, "uri":Landroid/net/Uri;
    :sswitch_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2897
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v5

    iget-object v3, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 2899
    .local v3, "uri":Landroid/net/Uri;
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v5, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2900
    const/4 v3, 0x0

    .line 2902
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2903
    const/4 v6, 0x2

    .line 2902
    invoke-virtual {v5, v6, v7, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 2907
    .end local v1    # "msg":Landroid/os/Message;
    .local v2, "name":Ljava/lang/String;
    .local v3, "uri":Landroid/net/Uri;
    :sswitch_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2908
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v5

    iget-object v3, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 2909
    .local v3, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2910
    const/4 v6, 0x3

    .line 2909
    invoke-virtual {v5, v6, v7, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 2914
    .end local v1    # "msg":Landroid/os/Message;
    .local v2, "name":Ljava/lang/String;
    .local v3, "uri":Landroid/net/Uri;
    :sswitch_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2915
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v5

    iget-object v3, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 2916
    .local v3, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2917
    const/16 v6, 0x16

    .line 2916
    invoke-virtual {v5, v6, v7, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 2924
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2887
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private persistSoundEffectToDatabase(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v6, -0x1

    .line 2799
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2800
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2801
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persistDtmfToneToDatabase() name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2803
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2804
    const/16 v4, 0x10

    .line 2803
    invoke-virtual {v3, v4, v6, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2805
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2806
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2798
    return-void
.end method

.method private persistSoundEffectToSystem()V
    .locals 6

    .prologue
    .line 3024
    const-string/jumbo v2, "sound_effects_enabled"

    .line 3025
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3026
    .local v0, "enabled":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 3027
    const/4 v4, 0x5

    const/4 v5, -0x1

    .line 3026
    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3028
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3023
    return-void

    .line 3025
    .end local v0    # "enabled":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":I
    goto :goto_0
.end method

.method private persistStreamVolumeToDatabase(Ljava/lang/String;II)V
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "streamType"    # I
    .param p3, "value"    # I

    .prologue
    const/4 v4, -0x1

    .line 2724
    invoke-static {p1, p2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2725
    .local v1, "name":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 2742
    :pswitch_0
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "persistStreamVolumeToDatabase with undefined stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    return-void

    .line 2727
    :pswitch_1
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2728
    const/16 v3, 0x8

    .line 2727
    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2745
    .local v0, "msg":Landroid/os/Message;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2722
    return-void

    .line 2732
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2733
    const/16 v3, 0x9

    .line 2732
    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 2737
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_3
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2738
    const/16 v3, 0xa

    .line 2737
    invoke-virtual {v2, v3, p3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 2725
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private persistStreamVolumeToSystem(I)V
    .locals 7
    .param p1, "streamType"    # I

    .prologue
    .line 2939
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v4, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->persistStreamVolumeToSystem(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2940
    return-void

    .line 2943
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2946
    .local v2, "ident":J
    const/4 v0, 0x0

    .line 2947
    .local v0, "flags":I
    const/4 v1, 0x0

    .line 2948
    .local v1, "volume":I
    packed-switch p1, :pswitch_data_0

    .line 2962
    :pswitch_0
    :try_start_0
    const-string/jumbo v4, "AudioProfileService"

    const-string/jumbo v5, "persistStreamVolumeToSystem with unsupport type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2968
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2963
    return-void

    .line 2950
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    iget v1, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 2951
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2965
    :goto_0
    const-string/jumbo v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persistStreamVolumeToSystem: streamType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", volume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2968
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2938
    return-void

    .line 2954
    :pswitch_2
    :try_start_2
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    iget v1, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 2955
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2967
    :catchall_0
    move-exception v4

    .line 2968
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2967
    throw v4

    .line 2958
    :pswitch_3
    :try_start_3
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v4

    iget v1, v4, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 2959
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v1, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2948
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private persistValues(Z)V
    .locals 5
    .param p1, "overrideSystem"    # Z

    .prologue
    const/4 v4, 0x2

    .line 1595
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1596
    .local v0, "activeProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 1597
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persistValues error with no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1598
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    .line 1597
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistVibrationToSystem()V

    .line 1607
    if-eqz p1, :cond_0

    .line 1608
    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1609
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1610
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1611
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1612
    invoke-direct {p0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1613
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1614
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1617
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistDtmfToneToSystem()V

    .line 1618
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistSoundEffectToSystem()V

    .line 1619
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistLockScreenToSystem()V

    .line 1620
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHapticFeedbackToSystem()V

    .line 1594
    return-void

    .line 1600
    :cond_1
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persistValues: override = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1601
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1600
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private persistValuesToSystemByBatch(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3060
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 3061
    const/16 v2, 0x14

    .line 3060
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3062
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3059
    return-void
.end method

.method private persistVibrationToDatabase(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, -0x1

    .line 2758
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 2759
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2760
    .local v2, "name":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2761
    const-string/jumbo v3, "Vibration"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2762
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2763
    const/16 v4, 0xe

    .line 2762
    invoke-virtual {v3, v4, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2764
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2765
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2757
    return-void
.end method

.method private persistVibrationToSystem()V
    .locals 9

    .prologue
    const/16 v8, 0x15

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2977
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    .line 2978
    .local v1, "vibratinRinger":I
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 2980
    .local v0, "vibratinNotification":I
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persistVibrationToSystem current vibrate status: ringer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2981
    const-string/jumbo v5, ", notification = "

    .line 2980
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    if-eq v1, v0, :cond_0

    .line 2984
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v4, "persistVibrationToSystem different vibrate settings, so CTS test running, delay 10 sec to set vibration!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2987
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    .line 2988
    const-wide/16 v4, 0x4e20

    .line 2987
    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2989
    iput-boolean v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    .line 2990
    return-void

    .line 2992
    :cond_0
    iget-boolean v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDelaySetVibrate:Z

    if-eqz v3, :cond_1

    .line 2993
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v4, "persistVibrationToSystem: CTS test running, delay 20 sec to set vibration!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    return-void

    .line 3000
    :cond_1
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eqz v3, :cond_2

    .line 3001
    const/4 v2, 0x1

    .line 3003
    .local v2, "vibrationStatus":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 3004
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6, v2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 3005
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "persistVibrationToSystem set ringer and notification vibrate to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    return-void

    .line 3001
    .end local v2    # "vibrationStatus":I
    :cond_2
    const/4 v2, 0x2

    .restart local v2    # "vibrationStatus":I
    goto :goto_0
.end method

.method private reInit()V
    .locals 15

    .prologue
    const/16 v14, 0x10

    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 950
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readDefaultRingtones()V

    .line 952
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readPredefinedProfileKeys()V

    .line 953
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readAllProfileKeys()V

    .line 956
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 958
    .local v4, "oldActiveProfileKey":Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v9, "mtk_audioprofile_active"

    invoke-virtual {v8, v9, v10}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "activeProfileKey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 960
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 959
    :goto_0
    iput-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 962
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v9, "mtk_audioprofile_last_active"

    invoke-virtual {v8, v9, v10}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 964
    .local v3, "lastActiveProfileKey":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 965
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 963
    :goto_1
    iput-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    .line 967
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    .line 968
    const-string/jumbo v9, "mtk_audioprofile_custom_deleted"

    const-string/jumbo v10, "false"

    .line 967
    invoke-virtual {v8, v9, v10}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 966
    iput-boolean v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 969
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->createOverrideSystemThread()V

    .line 971
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "profileKey$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 972
    .local v6, "profileKey":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;)V

    goto :goto_2

    .end local v3    # "lastActiveProfileKey":Ljava/lang/String;
    .end local v6    # "profileKey":Ljava/lang/String;
    .end local v7    # "profileKey$iterator":Ljava/util/Iterator;
    :cond_0
    move-object v8, v0

    .line 960
    goto :goto_0

    .restart local v3    # "lastActiveProfileKey":Ljava/lang/String;
    :cond_1
    move-object v8, v3

    .line 965
    goto :goto_1

    .line 975
    .restart local v7    # "profileKey$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->readShouldSyncToSystem()V

    .line 976
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v9, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 977
    .local v1, "defRingUri":Landroid/net/Uri;
    if-nez v1, :cond_9

    .line 978
    iput-boolean v11, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldGetDefaultRingtoneAfterScanFinish:Z

    .line 991
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-interface {v8, p0, v9}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->init(Lcom/mediatek/common/audioprofile/IAudioProfileService;Landroid/content/Context;)V

    .line 993
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v8}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldCheckDefaultProfiles()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 995
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->checkDefaultProfiles()V

    .line 998
    :cond_4
    sget-boolean v8, Lcom/mediatek/audioprofile/AudioProfileService;->MTK_BESSURROUND_SUPPORT:Z

    if-eqz v8, :cond_5

    .line 1000
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->initBesSurroundStatus()V

    .line 1003
    :cond_5
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v10, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1004
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 1005
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v10, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1004
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1003
    if-eqz v8, :cond_7

    .line 1006
    :cond_6
    const-string/jumbo v8, "AudioProfileService"

    const-string/jumbo v9, "Sync general to outdoor."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    .line 1008
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v10, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1007
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1009
    .local v2, "generalState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    .line 1010
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v10, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1009
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1012
    .local v5, "outdoorState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v8, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    iput-object v8, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1013
    iget-object v8, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    iput-object v8, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1014
    iget-object v8, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    iput-object v8, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 1015
    iget-object v8, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    iput-object v8, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 1019
    .end local v2    # "generalState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v5    # "outdoorState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_7
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v10, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1020
    invoke-direct {p0, v12}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1021
    iput v12, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 1029
    :goto_4
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    iget v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 1032
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    if-eq v4, v8, :cond_8

    .line 1033
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyAudioProfileChanged()V

    .line 948
    :cond_8
    return-void

    .line 979
    :cond_9
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v8, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_a

    .line 982
    invoke-direct {p0, v11}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto/16 :goto_3

    .line 983
    :cond_a
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v8, v13}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_b

    .line 985
    invoke-direct {p0, v13}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto/16 :goto_3

    .line 986
    :cond_b
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v8, v14}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_3

    .line 988
    invoke-direct {p0, v14}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    goto/16 :goto_3

    .line 1022
    :cond_c
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v10, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1023
    invoke-direct {p0, v12}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1024
    iput v11, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    goto :goto_4

    .line 1026
    :cond_d
    invoke-direct {p0, v11}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1027
    const/4 v8, 0x2

    iput v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    goto :goto_4
.end method

.method private readAllProfileKeys()V
    .locals 20

    .prologue
    .line 3136
    const-string/jumbo v16, "AudioProfileService"

    const-string/jumbo v17, "readProfileKeys: started"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 3138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3139
    const/4 v11, 0x6

    .line 3141
    .local v11, "maxCustom":I
    sget-object v16, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v16 .. v16}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    .line 3142
    .local v2, "customPrefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->getAllKeys()Ljava/util/List;

    move-result-object v3

    .line 3143
    .local v3, "customeKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 3144
    .local v4, "customizeProfiles":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3145
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    const-string/jumbo v16, "_key"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 3146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v16, v0

    const-string/jumbo v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3147
    .local v12, "profile":Ljava/lang/String;
    const-string/jumbo v16, "AudioProfileService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "readProfileKeys() profile key = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", profile = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    if-eq v12, v0, :cond_0

    .line 3151
    invoke-static {v12}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileCreateDateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3152
    .local v13, "strDateKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v16, v0

    .line 3153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    .line 3152
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3154
    .local v14, "strDateVal":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3159
    .end local v8    # "key":Ljava/lang/String;
    .end local v12    # "profile":Ljava/lang/String;
    .end local v13    # "strDateKey":Ljava/lang/String;
    .end local v14    # "strDateVal":Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3160
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 3161
    .local v7, "key":Ljava/lang/Long;
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3163
    .end local v7    # "key":Ljava/lang/Long;
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-ge v5, v0, :cond_5

    .line 3164
    const/4 v6, 0x1

    .local v6, "j":I
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v16

    sub-int v16, v16, v5

    move/from16 v0, v16

    if-ge v6, v0, :cond_4

    .line 3166
    add-int/lit8 v16, v6, -0x1

    move/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v16

    if-lez v16, :cond_3

    .line 3167
    add-int/lit8 v16, v6, -0x1

    move/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    .line 3168
    .local v15, "tmpVal":Ljava/lang/Long;
    add-int/lit8 v17, v6, -0x1

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v10, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3169
    invoke-interface {v10, v6, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3164
    .end local v15    # "tmpVal":Ljava/lang/Long;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3163
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3173
    .end local v6    # "j":I
    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v5, v0, :cond_6

    .line 3174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3173
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3176
    :cond_6
    const-string/jumbo v16, "AudioProfileService"

    const-string/jumbo v17, "readProfileKeys: finised"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    return-void
.end method

.method private readDefaultRingtones()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3322
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readDefaultRingtones: mUserId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3324
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 3325
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    invoke-interface {v3, v0, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3329
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 3330
    const-string/jumbo v4, "mtk_audioprofile_default_ringtone"

    iget v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    .line 3329
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3331
    .local v2, "uriString":Ljava/lang/String;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 3332
    :goto_1
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3335
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 3336
    const-string/jumbo v4, "mtk_audioprofile_default_notification"

    iget v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    .line 3335
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3337
    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 3338
    :goto_2
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3341
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 3342
    const-string/jumbo v4, "mtk_audioprofile_default_video_call"

    iget v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    .line 3341
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3343
    if-nez v2, :cond_3

    const/4 v1, 0x0

    .line 3344
    :goto_3
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3347
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 3348
    const-string/jumbo v4, "mtk_audioprofile_default_sip_call"

    iget v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    .line 3347
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3349
    if-nez v2, :cond_4

    const/4 v1, 0x0

    .line 3350
    :goto_4
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v4, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface {v3, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3352
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readDefaultRingtones: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    return-void

    .line 3331
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    goto :goto_1

    .line 3337
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_2

    .line 3343
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_3

    .line 3349
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_4
.end method

.method private readNewProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "simId"    # J

    .prologue
    .line 2070
    const-string/jumbo v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getProfileState of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is null, so create new one instead!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;J)V

    .line 2072
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    return-object v0
.end method

.method private readPersistedSettings(Ljava/lang/String;)V
    .locals 2
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 3314
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->readPersistedSettings(Ljava/lang/String;J)V

    .line 3313
    return-void
.end method

.method private readPersistedSettings(Ljava/lang/String;J)V
    .locals 32
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "simId"    # J

    .prologue
    .line 3202
    if-nez p1, :cond_0

    .line 3203
    const-string/jumbo v28, "AudioProfileService"

    const-string/jumbo v29, "readPersistedSettings() with Null profile key!"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    return-void

    .line 3206
    :cond_0
    const-string/jumbo v28, "AudioProfileService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "readPersistedSettings()  mUserId = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3208
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3210
    .local v9, "initValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->getAllKeys()Ljava/util/List;

    move-result-object v11

    .line 3211
    .local v11, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->getAllValues()Ljava/util/List;

    move-result-object v23

    .line 3212
    .local v23, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 3213
    .local v12, "keysSize":I
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v24

    .line 3214
    .local v24, "valuesSize":I
    move/from16 v0, v24

    if-ne v12, v0, :cond_2

    .line 3215
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v12, :cond_2

    .line 3216
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 3217
    .local v10, "key":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 3218
    .local v22, "value":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 3219
    const-string/jumbo v28, ""

    move-object/from16 v0, v28

    if-eq v10, v0, :cond_1

    .line 3220
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    .line 3218
    if-eqz v28, :cond_1

    .line 3221
    if-eqz v22, :cond_1

    .line 3222
    const-string/jumbo v28, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 3223
    const-string/jumbo v28, "AudioProfileService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "readPersistedSettings() key = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ", value = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    move-object/from16 v0, v22

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3215
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3229
    .end local v8    # "i":I
    .end local v10    # "key":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_2
    const/4 v14, 0x0

    .line 3230
    .local v14, "name":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v5

    .line 3234
    .local v5, "defaultState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/16 v28, 0x1

    .line 3233
    move-object/from16 v0, p1

    move/from16 v1, v28

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v14

    .line 3237
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    move-object/from16 v28, v0

    sget v29, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    .line 3236
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v27

    .line 3240
    .local v27, "voiceCallUri":Landroid/net/Uri;
    const/16 v28, 0x2

    .line 3239
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 3242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    move-object/from16 v28, v0

    sget v29, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    .line 3241
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v15

    .line 3245
    .local v15, "notificationUri":Landroid/net/Uri;
    const/16 v28, 0x8

    .line 3244
    move-object/from16 v0, p1

    move/from16 v1, v28

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v14

    .line 3247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    move-object/from16 v28, v0

    sget v29, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    .line 3246
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v26

    .line 3250
    .local v26, "videoCallUri":Landroid/net/Uri;
    const/16 v28, 0x10

    .line 3249
    move-object/from16 v0, p1

    move/from16 v1, v28

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v14

    .line 3252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    move-object/from16 v28, v0

    sget v29, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    .line 3251
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v20

    .line 3255
    .local v20, "sipCallUri":Landroid/net/Uri;
    const/16 v28, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 3256
    iget v0, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v19

    .line 3259
    .local v19, "ringerVolume":I
    const/16 v28, 0x5

    .line 3258
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 3261
    iget v0, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    move/from16 v28, v0

    .line 3260
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v16

    .line 3264
    .local v16, "notificationVolume":I
    const/16 v28, 0x4

    .line 3263
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 3265
    iget v0, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;I)I

    move-result v4

    .line 3269
    .local v4, "alarmVolume":I
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3270
    iget-boolean v0, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v25

    .line 3272
    .local v25, "vibration":Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3273
    iget-boolean v0, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v6

    .line 3275
    .local v6, "dtmfTone":Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3276
    iget-boolean v0, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v21

    .line 3278
    .local v21, "soundEffect":Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3280
    iget-boolean v0, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    move/from16 v28, v0

    .line 3279
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v13

    .line 3282
    .local v13, "lockScreensound":Z
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3284
    iget-boolean v0, v5, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    move/from16 v28, v0

    .line 3283
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v14, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getPersistedValue(Ljava/lang/String;Ljava/util/HashMap;Z)Z

    move-result v7

    .line 3287
    .local v7, "hapticFeedback":Z
    new-instance v28, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v15, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2, v4}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->simId(J)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v17

    .line 3297
    .local v17, "persistedState":Lcom/mediatek/audioprofile/AudioProfileState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3299
    sget-object v28, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 3300
    invoke-static/range {p1 .. p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3301
    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 3302
    .local v18, "profileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3305
    .end local v18    # "profileName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v28, "AudioProfileService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "readPersistedSettings with "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ": "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    return-void
.end method

.method private readPredefinedProfileKeys()V
    .locals 3

    .prologue
    .line 3183
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3184
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    .line 3185
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    .line 3184
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3186
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    .line 3187
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    .line 3186
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3188
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    .line 3189
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    .line 3188
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3190
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    .line 3191
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v2

    .line 3190
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3192
    const-string/jumbo v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readPredefindProfileKeys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    return-void
.end method

.method private readShouldSyncToSystem()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 3362
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    move-result-object v7

    array-length v4, v7

    .line 3363
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 3364
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3366
    :cond_0
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 3370
    .local v0, "activeScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 3372
    :cond_1
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 3373
    .local v6, "systemVolume":I
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget v3, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 3374
    .local v3, "profileVolume":I
    if-eq v3, v6, :cond_2

    .line 3375
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v8}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3378
    :cond_2
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 3379
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget v3, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 3380
    if-eq v3, v6, :cond_3

    .line 3381
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v8}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3384
    :cond_3
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 3385
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget v3, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 3386
    if-eq v3, v6, :cond_4

    .line 3387
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v8}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3391
    :cond_4
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v7, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3393
    .local v5, "systemUri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 3394
    .local v2, "profileUri":Landroid/net/Uri;
    if-eqz v2, :cond_5

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3395
    :cond_5
    if-nez v2, :cond_7

    if-eqz v5, :cond_7

    .line 3396
    :cond_6
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3399
    :cond_7
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v7, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3401
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 3402
    if-eqz v2, :cond_8

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3403
    :cond_8
    if-nez v2, :cond_a

    if-eqz v5, :cond_a

    .line 3404
    :cond_9
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3407
    :cond_a
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 3408
    const/16 v8, 0x8

    .line 3407
    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3409
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 3410
    if-eqz v2, :cond_b

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 3411
    :cond_b
    if-nez v2, :cond_d

    if-eqz v5, :cond_d

    .line 3412
    :cond_c
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3415
    :cond_d
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 3416
    const/16 v8, 0x10

    .line 3415
    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 3417
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iget-object v2, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 3418
    if-eqz v2, :cond_e

    invoke-virtual {v2, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 3419
    :cond_e
    if-nez v2, :cond_10

    if-eqz v5, :cond_10

    .line 3420
    :cond_f
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3423
    .end local v2    # "profileUri":Landroid/net/Uri;
    .end local v3    # "profileVolume":I
    .end local v5    # "systemUri":Landroid/net/Uri;
    .end local v6    # "systemVolume":I
    :cond_10
    const-string/jumbo v7, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readShouldSyncToSystem: mShouldSyncToSystem = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 3618
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3619
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3620
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3621
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    .line 3622
    .local v1, "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    iget-object v2, v1, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3623
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 3624
    const-string/jumbo v2, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removed AudioProfile change listener for: record.mBinder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3625
    iget-object v5, v1, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    .line 3624
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3625
    const-string/jumbo v5, ", clients = "

    .line 3624
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3625
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3624
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3618
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    .end local v1    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_1
    monitor-exit v3

    .line 3617
    return-void
.end method

.method private restoreToDefaultValues(Ljava/lang/String;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1631
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1632
    .local v0, "defaultState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 1633
    .local v2, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1634
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1635
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 1636
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 1637
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v5, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 1639
    iget v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    iput v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 1640
    iget v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    iput v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 1641
    iget v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    iput v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 1643
    iget-boolean v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    iput-boolean v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 1644
    iget-boolean v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    iput-boolean v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 1645
    iget-boolean v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    iput-boolean v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 1646
    iget-boolean v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    iput-boolean v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 1647
    iget-boolean v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    iput-boolean v3, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1649
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getAllKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1650
    .local v1, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    invoke-virtual {v3, v1}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->remove(Ljava/util/List;)Z

    .line 1651
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreToDefaultValues: profileKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    return-void

    .line 1633
    .end local v1    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private setActiveKey(Ljava/lang/String;)Z
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1211
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1213
    .local v2, "token":J
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v4, "mtk_audioprofile_active"

    invoke-virtual {v1, v4, p1}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1215
    .local v0, "succeed":Z
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    .line 1216
    const-string/jumbo v1, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setActiveKey: succeed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", profileKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1220
    return v0
.end method

.method private setLastActiveKey(Ljava/lang/String;)Z
    .locals 8
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1224
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1225
    .local v4, "token":J
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v6, "mtk_audioprofile_last_active"

    invoke-virtual {v3, v6, p1}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1226
    .local v2, "succeed":Z
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    .line 1227
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1229
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1230
    .local v1, "sizeOfShouldSyncToSystem":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1231
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1233
    :cond_0
    const-string/jumbo v3, "AudioProfileService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setLastActiveKey: succeed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", profileKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    return v2
.end method

.method private setLastCustomActiveDeleted(Z)Z
    .locals 4
    .param p1, "deleted"    # Z

    .prologue
    .line 1238
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v2, "mtk_audioprofile_custom_deleted"

    .line 1239
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 1238
    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1240
    .local v0, "succeed":Z
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 1241
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCustomActiveDeleted: changed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    return v0
.end method

.method private setOldProfileSettings(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;Ljava/lang/String;)V
    .locals 2
    .param p1, "oldScenario"    # Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .param p2, "oldProfileKey"    # Ljava/lang/String;

    .prologue
    .line 1178
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1179
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1, p1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1180
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1183
    :cond_1
    invoke-direct {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    move-result v0

    .line 1184
    .local v0, "lastActiveChanged":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    if-eqz v1, :cond_0

    .line 1185
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    goto :goto_0
.end method

.method private setRingerModeMatchProfile(ZI)V
    .locals 4
    .param p1, "shouldSetRingerMode"    # Z
    .param p2, "expectRingerMode"    # I

    .prologue
    .line 1191
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 1192
    .local v0, "actualRingerMode":I
    if-eqz p1, :cond_0

    if-eq v0, p2, :cond_0

    .line 1193
    iput p2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 1194
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 1196
    :cond_0
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRingerModeMatchProfile: actual = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1197
    const-string/jumbo v3, ", expect = "

    .line 1196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    return-void
.end method

.method private setRingtoneUriInStateMap(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;)V
    .locals 6
    .param p1, "state"    # Lcom/mediatek/audioprofile/AudioProfileState;
    .param p2, "type"    # I
    .param p3, "value"    # Landroid/net/Uri;

    .prologue
    .line 2311
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingtoneUriInStateMap(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;J)V

    .line 2310
    return-void
.end method

.method private setRingtoneUriInStateMap(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;J)V
    .locals 2
    .param p1, "state"    # Lcom/mediatek/audioprofile/AudioProfileState;
    .param p2, "type"    # I
    .param p3, "value"    # Landroid/net/Uri;
    .param p4, "simId"    # J

    .prologue
    .line 2316
    sparse-switch p2, :sswitch_data_0

    .line 2337
    :goto_0
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v0, v0

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    .line 2338
    iput-wide p4, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mSimId:J

    .line 2315
    :cond_0
    return-void

    .line 2318
    :sswitch_0
    iput-object p3, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    goto :goto_0

    .line 2322
    :sswitch_1
    iput-object p3, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    goto :goto_0

    .line 2326
    :sswitch_2
    iput-object p3, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    goto :goto_0

    .line 2330
    :sswitch_3
    iput-object p3, p1, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    goto :goto_0

    .line 2316
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "newRingtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 2274
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileService;->syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;J)V

    .line 2273
    return-void
.end method

.method private syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;J)V
    .locals 8
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "newRingtoneUri"    # Landroid/net/Uri;
    .param p4, "simId"    # J

    .prologue
    .line 2282
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 2283
    .local v0, "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2284
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "outdoorKey":Ljava/lang/String;
    move-object v1, p0

    move v3, p2

    move-wide v4, p4

    move-object v6, p3

    .line 2285
    invoke-direct/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileService;->doRingtoneUriSetting(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2286
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "synchronize general to outdoor! ringtone type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    .end local v2    # "outdoorKey":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private syncRingtoneToSystem()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1713
    const/4 v1, 0x0

    .line 1714
    .local v1, "systemUri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1717
    .local v0, "profileUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1718
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1720
    .local v1, "systemUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1721
    .local v0, "profileUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1722
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1723
    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1724
    :cond_1
    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1725
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1726
    const-string/jumbo v4, ", Uri = "

    .line 1725
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    .end local v0    # "profileUri":Landroid/net/Uri;
    .end local v1    # "systemUri":Landroid/net/Uri;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1732
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1734
    .restart local v1    # "systemUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1735
    .restart local v0    # "profileUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1736
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1737
    :cond_3
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 1738
    :cond_4
    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1739
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1740
    const-string/jumbo v4, ", Uri = "

    .line 1739
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    .end local v0    # "profileUri":Landroid/net/Uri;
    .end local v1    # "systemUri":Landroid/net/Uri;
    :cond_5
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1746
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    invoke-static {v2, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1748
    .restart local v1    # "systemUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1749
    .restart local v0    # "profileUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1750
    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1751
    :cond_6
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    .line 1752
    :cond_7
    invoke-direct {p0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1753
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1754
    const-string/jumbo v4, ", Uri = "

    .line 1753
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    .end local v0    # "profileUri":Landroid/net/Uri;
    .end local v1    # "systemUri":Landroid/net/Uri;
    :cond_8
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1760
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContext:Landroid/content/Context;

    .line 1761
    const/16 v3, 0x10

    .line 1760
    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1762
    .restart local v1    # "systemUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 1763
    .restart local v0    # "profileUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1764
    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1765
    :cond_9
    if-nez v0, :cond_b

    if-eqz v1, :cond_b

    .line 1766
    :cond_a
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToSystem(I)V

    .line 1767
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncRingtoneToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1768
    const/16 v4, 0x10

    .line 1767
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1768
    const-string/jumbo v4, ", Uri = "

    .line 1767
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    .end local v0    # "profileUri":Landroid/net/Uri;
    .end local v1    # "systemUri":Landroid/net/Uri;
    :cond_b
    return-void
.end method

.method private syncVolumeToSystem()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 1663
    const/4 v1, 0x0

    .line 1664
    .local v1, "systemVolume":I
    const/4 v0, 0x0

    .line 1666
    .local v0, "profileVolume":I
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1667
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1668
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1669
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1670
    if-eq v0, v1, :cond_0

    .line 1671
    invoke-direct {p0, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1672
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1673
    const-string/jumbo v4, ", streamType = "

    .line 1672
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1673
    const-string/jumbo v4, ", volume = "

    .line 1672
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :cond_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1680
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1681
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1683
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1684
    if-eq v0, v1, :cond_1

    .line 1685
    invoke-direct {p0, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1686
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1687
    const-string/jumbo v4, ", streamType = "

    .line 1686
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1688
    const-string/jumbo v4, ", volume = "

    .line 1686
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_1
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1692
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1693
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p0, v2, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 1694
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1695
    if-eq v0, v1, :cond_2

    .line 1696
    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToSystem(I)V

    .line 1697
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syncVolumeToSystem: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1698
    const-string/jumbo v4, ", streamType = "

    .line 1697
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1698
    const-string/jumbo v4, ", volume = "

    .line 1697
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    :cond_2
    return-void
.end method

.method private updateRintoneUri(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Landroid/net/Uri;
    .locals 22
    .param p1, "dataKey"    # Ljava/lang/String;
    .param p2, "profileKey"    # Ljava/lang/String;
    .param p3, "streamType"    # I
    .param p4, "volumePath"    # [Ljava/lang/String;

    .prologue
    .line 737
    const-string/jumbo v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateRintoneUri :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " with ringtoneType  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 738
    const-string/jumbo v6, "  -  "

    .line 737
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v18

    .line 740
    .local v18, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/16 v17, 0x0

    .line 742
    .local v17, "oldUri":Landroid/net/Uri;
    sparse-switch p3, :sswitch_data_0

    .line 760
    const-string/jumbo v4, "AudioProfileService"

    const-string/jumbo v5, "updateRintoneUri with unsupport type!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v4, 0x0

    return-object v4

    .line 744
    :sswitch_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 764
    .local v17, "oldUri":Landroid/net/Uri;
    :goto_0
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 765
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 764
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 766
    const/4 v15, 0x0

    .line 767
    .local v15, "newUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .line 768
    .local v20, "uriData":Ljava/lang/String;
    if-nez v20, :cond_0

    .line 769
    const/4 v4, 0x0

    return-object v4

    .line 748
    .end local v15    # "newUri":Landroid/net/Uri;
    .end local v20    # "uriData":Ljava/lang/String;
    .local v17, "oldUri":Landroid/net/Uri;
    :sswitch_1
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    move-object/from16 v17, v0

    .local v17, "oldUri":Landroid/net/Uri;
    goto :goto_0

    .line 752
    .local v17, "oldUri":Landroid/net/Uri;
    :sswitch_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    move-object/from16 v17, v0

    .local v17, "oldUri":Landroid/net/Uri;
    goto :goto_0

    .line 756
    .local v17, "oldUri":Landroid/net/Uri;
    :sswitch_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    move-object/from16 v17, v0

    .local v17, "oldUri":Landroid/net/Uri;
    goto :goto_0

    .line 771
    .restart local v15    # "newUri":Landroid/net/Uri;
    .restart local v20    # "uriData":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v21, v4, v5

    .line 772
    .local v21, "uriSdPath":Ljava/lang/String;
    move-object/from16 v0, p4

    array-length v14, v0

    .line 776
    .local v14, "length":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v14, :cond_5

    .line 777
    aget-object v4, p4, v11

    aget-object v5, p4, v11

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 778
    .local v19, "sdPath":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 779
    .local v16, "newUriData":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 780
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 781
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "_id"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 782
    const-string/jumbo v7, "_data=?"

    .line 783
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v16, v8, v9

    .line 784
    const/4 v9, 0x0

    .line 779
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 787
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 788
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 790
    .local v12, "id":J
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 789
    invoke-static {v4, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 791
    .local v15, "newUri":Landroid/net/Uri;
    const-string/jumbo v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Update ringtone uri for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 792
    const-string/jumbo v6, " with new uri: "

    .line 791
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    if-eqz v10, :cond_1

    .line 797
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 798
    const/4 v10, 0x0

    .line 793
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-object v15

    .line 796
    .end local v12    # "id":J
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .local v15, "newUri":Landroid/net/Uri;
    :cond_2
    if-eqz v10, :cond_3

    .line 797
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 798
    const/4 v10, 0x0

    .line 776
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 795
    .end local v15    # "newUri":Landroid/net/Uri;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    .line 796
    if-eqz v10, :cond_4

    .line 797
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 798
    const/4 v10, 0x0

    .line 795
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_4
    throw v4

    .line 803
    .end local v16    # "newUriData":Ljava/lang/String;
    .end local v19    # "sdPath":Ljava/lang/String;
    .restart local v15    # "newUri":Landroid/net/Uri;
    :cond_5
    const-string/jumbo v4, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Update ringtone uri for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " with uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-object v15

    .line 806
    .end local v11    # "i":I
    .end local v14    # "length":I
    .end local v15    # "newUri":Landroid/net/Uri;
    .end local v20    # "uriData":Ljava/lang/String;
    .end local v21    # "uriSdPath":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    return-object v4

    .line 742
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "ringtoneType"    # I
    .param p3, "volumePath"    # [Ljava/lang/String;

    .prologue
    .line 727
    const-string/jumbo v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRintoneUriWithType  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 728
    const-string/jumbo v2, " with ringtoneType  "

    .line 727
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;J)V

    .line 726
    return-void
.end method

.method private updateRintoneUriWithType(Ljava/lang/String;I[Ljava/lang/String;J)V
    .locals 16
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "ringtoneType"    # I
    .param p3, "volumePath"    # [Ljava/lang/String;
    .param p4, "simId"    # J

    .prologue
    .line 671
    const-string/jumbo v5, "AudioProfileService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateRintoneUriWithType  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " with ringtoneType  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 672
    const-string/jumbo v7, " simId = "

    .line 671
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v2, p4

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v5

    .line 675
    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 677
    .local v4, "dataKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->updateRintoneUri(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 678
    .local v10, "newUri":Landroid/net/Uri;
    const-string/jumbo v5, "AudioProfileService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateRintoneUriWithType   uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 679
    const-string/jumbo v7, "  with ringtoneType  "

    .line 678
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    if-eqz v10, :cond_0

    .line 682
    new-instance v14, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v14, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 684
    .local v14, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v13

    .line 685
    .local v13, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    sparse-switch p2, :sswitch_data_0

    .line 707
    const-string/jumbo v5, "AudioProfileService"

    const-string/jumbo v6, "getRingtoneUri with unsupport type!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-wide/from16 v8, p4

    .line 710
    invoke-direct/range {v5 .. v10}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 711
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 712
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 711
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 714
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v10, v14, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    .end local v13    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return-void

    .line 687
    .restart local v13    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    .restart local v14    # "values":Landroid/content/ContentValues;
    :sswitch_0
    iput-object v10, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 688
    const-string/jumbo v5, "is_ringtone"

    const-string/jumbo v6, "1"

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 692
    :sswitch_1
    iput-object v10, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 693
    const-string/jumbo v5, "is_notification"

    const-string/jumbo v6, "1"

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 697
    :sswitch_2
    iput-object v10, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 698
    const-string/jumbo v5, "is_ringtone"

    const-string/jumbo v6, "1"

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 702
    :sswitch_3
    const-string/jumbo v5, "is_ringtone"

    const-string/jumbo v6, "1"

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iput-object v10, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    goto :goto_0

    .line 717
    :catch_0
    move-exception v12

    .line 718
    .local v12, "ex1":Landroid/database/sqlite/SQLiteFullException;
    const-string/jumbo v5, "AudioProfileService"

    const-string/jumbo v6, "SQLite is full or disk is full. So update ringtone uri error."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 715
    .end local v12    # "ex1":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v11

    .line 716
    .local v11, "ex":Ljava/lang/UnsupportedOperationException;
    const-string/jumbo v5, "AudioProfileService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "couldn\'t set ringtone flag for id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 685
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private upgradeProfileSettings()Z
    .locals 22

    .prologue
    .line 4139
    const-string/jumbo v18, "AudioProfileService"

    const-string/jumbo v19, "upgradeProfileSettings() start"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4141
    new-instance v15, Ljava/util/ArrayList;

    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4143
    .local v15, "profileKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v18, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v18 .. v18}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4144
    sget-object v18, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v18 .. v18}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4145
    sget-object v18, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v18 .. v18}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4146
    sget-object v18, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v18 .. v18}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4150
    const/16 v16, 0x0

    .line 4148
    .local v16, "serial":I
    :goto_0
    const/16 v18, 0x6

    .line 4150
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 4151
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v19 .. v19}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 4152
    const-string/jumbo v19, "_"

    .line 4151
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 4152
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 4151
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4153
    .local v7, "customKey":Ljava/lang/String;
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4150
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 4156
    .end local v7    # "customKey":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    .line 4157
    const-string/jumbo v19, "mtk_audioprofile_active"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    move/from16 v20, v0

    .line 4156
    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 4158
    .local v4, "activeProfile":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    if-eq v4, v0, :cond_1

    .line 4159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v18, v0

    const-string/jumbo v19, "mtk_audioprofile_active"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4162
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    .line 4163
    const-string/jumbo v19, "mtk_audioprofile_last_active"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    move/from16 v20, v0

    .line 4162
    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 4164
    .local v12, "lastActiveProfile":Ljava/lang/String;
    if-eqz v12, :cond_2

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    if-eq v12, v0, :cond_2

    .line 4165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v18, v0

    const-string/jumbo v19, "mtk_audioprofile_last_active"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4168
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    .line 4169
    const-string/jumbo v19, "mtk_audioprofile_custom_deleted"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    move/from16 v20, v0

    .line 4168
    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 4170
    .local v13, "lastActiveProfileDeleted":Ljava/lang/String;
    if-eqz v13, :cond_3

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    if-eq v13, v0, :cond_3

    .line 4171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v18, v0

    const-string/jumbo v19, "mtk_audioprofile_custom_deleted"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4175
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    .line 4176
    const-string/jumbo v19, "mtk_audioprofile_bessuround"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    move/from16 v20, v0

    .line 4175
    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 4177
    .local v6, "bessuroundState":Ljava/lang/String;
    if-eqz v6, :cond_4

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    if-eq v6, v0, :cond_4

    .line 4178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v18, v0

    const-string/jumbo v19, "mtk_audioprofile_bessuround"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4181
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    .line 4182
    const-string/jumbo v19, "mtk_audioprofile_bessuround_mode"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    move/from16 v20, v0

    .line 4181
    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 4183
    .local v5, "bessuroundMode":Ljava/lang/String;
    if-eqz v5, :cond_5

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    if-eq v5, v0, :cond_5

    .line 4184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v18, v0

    const-string/jumbo v19, "mtk_audioprofile_bessuround_mode"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4187
    :cond_5
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/16 v18, 0xa

    move/from16 v0, v18

    if-ge v8, v0, :cond_8

    .line 4188
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 4189
    .local v14, "profile":Ljava/lang/String;
    const-string/jumbo v18, "AudioProfileService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "upgradeProfileSettings()-profile = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4190
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mediatek/audioprofile/AudioProfileService;->getAllOldKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 4191
    .local v11, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "key$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 4192
    .local v9, "key":Ljava/lang/String;
    if-eqz v9, :cond_6

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    if-eq v9, v0, :cond_6

    .line 4195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v9, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 4196
    .local v17, "value":Ljava/lang/String;
    if-eqz v17, :cond_6

    const-string/jumbo v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 4199
    const-string/jumbo v18, "AudioProfileService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "upgradeProfileSettings()-key="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " , value="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 4187
    .end local v9    # "key":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 4203
    .end local v10    # "key$iterator":Ljava/util/Iterator;
    .end local v11    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "profile":Ljava/lang/String;
    :cond_8
    const-string/jumbo v18, "AudioProfileService"

    const-string/jumbo v19, "upgradeProfileSettings() Settings.System set KEY_PROFILE_UPGRADED as PROFILE_UPGRADED"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    .line 4206
    const-string/jumbo v19, "mtk_audioprofile_upgraded"

    .line 4208
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    move/from16 v20, v0

    .line 4207
    const/16 v21, 0x1

    .line 4205
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4209
    const-string/jumbo v18, "AudioProfileService"

    const-string/jumbo v19, "upgradeProfileSettings() end"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4210
    const/16 v18, 0x1

    return v18
.end method


# virtual methods
.method public addProfile()Ljava/lang/String;
    .locals 11

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileCount()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_0

    .line 1348
    const-string/jumbo v5, "AudioProfileService"

    const-string/jumbo v6, "addProfile: Number of custom audio profile has reached upper limit!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    const/4 v5, 0x0

    return-object v5

    .line 1353
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->genCustomKey()Ljava/lang/String;

    move-result-object v2

    .line 1354
    .local v2, "newKey":Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1355
    .local v0, "defaultState":Lcom/mediatek/audioprofile/AudioProfileState;
    new-instance v9, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    invoke-direct {v9, v2}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    .line 1356
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v6, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1357
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v7, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 1358
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v8, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1359
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v10, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 1355
    invoke-virtual {v9, v5, v6, v7, v8}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    .line 1360
    iget v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    iget v7, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 1361
    iget v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 1355
    invoke-virtual {v5, v6, v7, v8}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    .line 1362
    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 1355
    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    .line 1363
    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 1355
    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    .line 1364
    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 1355
    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    .line 1365
    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 1355
    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    .line 1366
    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 1355
    invoke-virtual {v5, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    .line 1370
    .local v3, "newProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1371
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    invoke-virtual {v5, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1373
    .local v4, "succeed":Z
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileCreateDateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 1373
    invoke-virtual {v5, v6, v7}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1376
    if-eqz v4, :cond_1

    .line 1377
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1378
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1379
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 1381
    const-string/jumbo v5, "AudioProfileService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addProfile: key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :goto_0
    return-object v2

    .line 1377
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1383
    :cond_1
    const-string/jumbo v5, "AudioProfileService"

    const-string/jumbo v6, "addProfile: Failed!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteProfile(Ljava/lang/String;)Z
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1395
    if-nez p1, :cond_0

    .line 1396
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "deleteProfile: Null key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    const/4 v2, 0x0

    return v2

    .line 1400
    :cond_0
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getAllKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1401
    .local v0, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    invoke-virtual {v2, v0}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->remove(Ljava/util/List;)Z

    move-result v1

    .line 1402
    .local v1, "removed":Z
    if-eqz v1, :cond_4

    .line 1403
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1404
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1405
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1407
    :cond_1
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1408
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    :cond_2
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1411
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v3

    .line 1414
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1415
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "deleteProfile: Custom active deleted and set to default."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    .line 1417
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    .line 1420
    :cond_4
    return v1

    .line 1403
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1252
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v1

    .line 1253
    :try_start_0
    const-string/jumbo v0, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getActiveProfile: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1252
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getAllProfileKeys()Ljava/util/List;
    .locals 5
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
    .line 1545
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1546
    :try_start_0
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAllProfileKeys: keys = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAllProfileKeys: UserManager.supportsMultipleUsers()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1548
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v4

    .line 1547
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAllProfileKeys: mUserId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1550
    const-string/jumbo v4, "  UserHandle.USER_OWNER = "

    .line 1549
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1550
    const/4 v4, 0x0

    .line 1549
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1553
    .local v0, "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1554
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAllProfileKeys: keys = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1555
    return-object v0

    .line 1545
    .end local v0    # "allKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getBesSurroundMode()I
    .locals 1

    .prologue
    .line 3884
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mBesSurroundMode:I

    return v0
.end method

.method public getBesSurroundState()Z
    .locals 1

    .prologue
    .line 3854
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsBesSurroundEnable:Z

    return v0
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
    .line 1578
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileCount()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 1579
    const/4 v1, 0x0

    return-object v1

    .line 1582
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1583
    .local v0, "customizedProfileKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1584
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1585
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCustomizedProfileKeys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    return-object v0
.end method

.method public getDefaultRingtone(I)Landroid/net/Uri;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 3105
    const/4 v0, 0x0

    .line 3106
    .local v0, "uri":Landroid/net/Uri;
    sparse-switch p1, :sswitch_data_0

    .line 3124
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "getRingtoneUri with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    const/4 v1, 0x0

    return-object v1

    .line 3108
    :sswitch_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uri":Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .line 3127
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDefaultRingtone: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", default uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    return-object v0

    .line 3112
    .local v0, "uri":Landroid/net/Uri;
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uri":Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 3116
    .local v0, "uri":Landroid/net/Uri;
    :sswitch_2
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uri":Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 3120
    .local v0, "uri":Landroid/net/Uri;
    :sswitch_3
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mDefaultRingtone:Ljava/util/List;

    sget v2, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uri":Landroid/net/Uri;
    check-cast v0, Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 3106
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public getLastActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1264
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v1

    .line 1265
    :try_start_0
    const-string/jumbo v0, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLastActiveProfileKey: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1264
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
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
    .line 1565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1566
    .local v0, "predefinedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1567
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPredefinedProfileKeys: keys = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    return-object v0
.end method

.method public getProfileCount()I
    .locals 5

    .prologue
    .line 1532
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1533
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1534
    .local v0, "count":I
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProfileCount: count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1535
    return v0

    .line 1532
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 2135
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2136
    .local v0, "profileName":Ljava/lang/String;
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileName: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2137
    const-string/jumbo v3, ", profileName = "

    .line 2136
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    return-object v0
.end method

.method public getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 2
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 2084
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    return-object v0
.end method

.method public getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "simId"    # J

    .prologue
    .line 2051
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2052
    :try_start_0
    iget v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v1

    cmp-long v1, p2, v4

    if-eqz v1, :cond_0

    .line 2053
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->readNewProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 2056
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 2057
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_1

    .line 2059
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProfileState of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2060
    const-string/jumbo v4, "is null, so create new one instead!"

    .line 2059
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->readNewProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    .line 2062
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_1
    monitor-exit v2

    .line 2064
    return-object v0

    .line 2051
    .end local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getProfileStateString(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
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
    .line 2096
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 2097
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    move-result-object v3

    array-length v1, v3

    .line 2098
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2099
    .local v2, "state":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2100
    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2101
    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2102
    sget v3, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    iget-object v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2104
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    .line 2105
    iget v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2104
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2106
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    .line 2107
    iget v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2106
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2108
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    .line 2109
    iget v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2108
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2111
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->vibration_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    .line 2112
    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 2111
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2113
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->dtmftone_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    .line 2114
    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 2113
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2115
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->soundeffect_enbled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    .line 2116
    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 2115
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2117
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->lockscreensound_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    .line 2118
    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 2117
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2119
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->hapticfeedback_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v3}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v3

    .line 2120
    iget-boolean v4, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 2119
    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2122
    const-string/jumbo v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getProfileStateString for profileKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    return-object v2
.end method

.method public getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 1789
    if-nez p1, :cond_0

    .line 1790
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "getRingtoneUri with null profile key!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    return-object v3

    .line 1794
    :cond_0
    const/4 v0, 0x0

    .line 1795
    .local v0, "uri":Landroid/net/Uri;
    sparse-switch p2, :sswitch_data_0

    .line 1813
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "getRingtoneUri with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    return-object v3

    .line 1797
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1816
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1819
    const/4 v0, 0x0

    .line 1824
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRingtoneUri: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1825
    const-string/jumbo v3, ", uri = "

    .line 1824
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    return-object v0

    .line 1801
    .local v0, "uri":Landroid/net/Uri;
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 1805
    .local v0, "uri":Landroid/net/Uri;
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 1809
    .local v0, "uri":Landroid/net/Uri;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 1820
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->isRingtoneExist(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1822
    :cond_3
    invoke-virtual {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 1795
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public getRingtoneUriWithSIM(Ljava/lang/String;IJ)Landroid/net/Uri;
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J

    .prologue
    const/4 v3, 0x0

    .line 1830
    if-nez p1, :cond_0

    .line 1831
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "getRingtoneUri with null profile key!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    return-object v3

    .line 1834
    :cond_0
    iput-wide p3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J

    .line 1835
    const/4 v0, 0x0

    .line 1836
    .local v0, "uri":Landroid/net/Uri;
    sparse-switch p2, :sswitch_data_0

    .line 1854
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "getRingtoneUri with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    return-object v3

    .line 1838
    :sswitch_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 1857
    .local v0, "uri":Landroid/net/Uri;
    :goto_0
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1860
    const/4 v0, 0x0

    .line 1865
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRingtoneUriWithSIM: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1866
    const-string/jumbo v3, ", uri = "

    .line 1865
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1866
    const-string/jumbo v3, ", simId = "

    .line 1865
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    return-object v0

    .line 1842
    .local v0, "uri":Landroid/net/Uri;
    :sswitch_1
    invoke-virtual {p0, p1, p3, p4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 1846
    .local v0, "uri":Landroid/net/Uri;
    :sswitch_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 1850
    .local v0, "uri":Landroid/net/Uri;
    :sswitch_3
    invoke-virtual {p0, p1, p3, p4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    iget-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 1861
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->isRingtoneExist(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1863
    :cond_3
    invoke-virtual {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 1836
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getStreamVolume(Ljava/lang/String;I)I
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "streamType"    # I

    .prologue
    const/4 v4, 0x0

    .line 1920
    if-nez p1, :cond_0

    .line 1921
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "getStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    return v4

    .line 1925
    :cond_0
    const/4 v1, 0x0

    .line 1926
    .local v1, "volume":I
    packed-switch p2, :pswitch_data_0

    .line 1940
    :pswitch_0
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "getStreamVolume with unsupport type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    return v4

    .line 1928
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 1943
    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamValidVolume(II)I

    move-result v0

    .line 1944
    .local v0, "validVolume":I
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStreamVolume: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", streamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1945
    const-string/jumbo v4, ", volume = "

    .line 1944
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    return v0

    .line 1932
    .end local v0    # "validVolume":I
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    goto :goto_0

    .line 1936
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v2

    iget v1, v2, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    goto :goto_0

    .line 1926
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public isActiveProfile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 3077
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    monitor-enter v2

    .line 3078
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3079
    :goto_0
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isActiveProfile: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", actived = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 3080
    return v0

    .line 3078
    :cond_0
    const/4 v0, 0x0

    .local v0, "actived":Z
    goto :goto_0

    .line 3077
    .end local v0    # "actived":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isDtmfToneEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1976
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1977
    .local v0, "audioProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v1, 0x0

    .line 1978
    .local v1, "enabled":Z
    if-eqz v0, :cond_0

    .line 1979
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 1981
    .end local v1    # "enabled":Z
    :cond_0
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isDtmfToneEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    return v1
.end method

.method public isLockScreenEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 2012
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2013
    .local v0, "audioProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v1, 0x0

    .line 2014
    .local v1, "enabled":Z
    if-eqz v0, :cond_0

    .line 2015
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 2017
    .end local v1    # "enabled":Z
    :cond_0
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLockScreenEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    return v1
.end method

.method public isNameExist(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1519
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 1520
    .local v0, "isExisted":Z
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNameExist: name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isExisted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1521
    const-string/jumbo v3, ", mCustomProfileName = "

    .line 1520
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1521
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    .line 1520
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    return v0
.end method

.method public isRingtoneExist(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3092
    const/4 v0, 0x1

    return v0
.end method

.method public isSoundEffectEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1994
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1995
    .local v0, "audioProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v1, 0x0

    .line 1996
    .local v1, "enabled":Z
    if-eqz v0, :cond_0

    .line 1997
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 1999
    .end local v1    # "enabled":Z
    :cond_0
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSoundEffectEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    return v1
.end method

.method public isVibrateOnTouchEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 2031
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2032
    .local v0, "audioProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v1, 0x0

    .line 2033
    .local v1, "enabled":Z
    if-eqz v0, :cond_0

    .line 2034
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 2036
    .end local v1    # "enabled":Z
    :cond_0
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isVibrateOnTouchEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    return v1
.end method

.method public isVibrationEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1958
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 1959
    .local v0, "audioProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    const/4 v1, 0x0

    .line 1960
    .local v1, "enabled":Z
    if-eqz v0, :cond_0

    .line 1961
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 1963
    .end local v1    # "enabled":Z
    :cond_0
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVibrationEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    return v1
.end method

.method public listenAudioProfie(Lcom/mediatek/common/audioprofile/IAudioProfileListener;I)V
    .locals 10
    .param p1, "callback"    # Lcom/mediatek/common/audioprofile/IAudioProfileListener;
    .param p2, "event"    # I

    .prologue
    .line 3562
    if-nez p2, :cond_0

    .line 3563
    invoke-interface {p1}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->remove(Landroid/os/IBinder;)V

    .line 3564
    const-string/jumbo v6, "AudioProfileService"

    const-string/jumbo v7, "listenAudioProfie with LISTEN_NONE, so remove this listener\'s callback!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    return-void

    .line 3568
    :cond_0
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3571
    const/4 v3, 0x0

    .line 3573
    .local v3, "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3574
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 3575
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v4, v3

    .end local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .local v4, "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :goto_0
    if-ge v2, v5, :cond_3

    .line 3576
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3577
    .end local v4    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .local v3, "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_start_2
    iget-object v6, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    if-ne v0, v6, :cond_2

    .line 3586
    :goto_1
    iput p2, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3588
    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    .line 3590
    :try_start_3
    iget-object v6, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    invoke-interface {v6, v8}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->onProfileChanged(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3598
    :cond_1
    :goto_2
    :try_start_4
    const-string/jumbo v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "listenAudioProfie with event = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " sucessed, record.mBinder = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3599
    iget-object v9, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    .line 3598
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3599
    const-string/jumbo v9, " ,clients = "

    .line 3598
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 3599
    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 3598
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v7

    .line 3561
    return-void

    .line 3575
    :cond_2
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v4    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    goto :goto_0

    .line 3581
    :cond_3
    :try_start_5
    new-instance v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/mediatek/audioprofile/AudioProfileService$Record;-><init>(Lcom/mediatek/audioprofile/AudioProfileService$Record;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3582
    .end local v4    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :try_start_6
    iput-object v0, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    .line 3583
    iput-object p1, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    .line 3584
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 3568
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "i":I
    .end local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .end local v5    # "size":I
    :catchall_0
    move-exception v6

    :goto_3
    monitor-exit v7

    throw v6

    .line 3591
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v2    # "i":I
    .restart local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v5    # "size":I
    :catch_0
    move-exception v1

    .line 3592
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_7
    iget-object v6, v3, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->remove(Landroid/os/IBinder;)V

    .line 3593
    const-string/jumbo v6, "AudioProfileService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Dead object in listenAudioProfie, remove listener\'s callback!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 3568
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v4    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    .restart local v3    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    goto :goto_3
.end method

.method public notifyRingerVolumeChanged(IILjava/lang/String;)V
    .locals 7
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1310
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1311
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v4, "notifyRingerVolumeChanged falled, because active profile key is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    return-void

    .line 1315
    :cond_0
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1316
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1317
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v5, "notifyRingerVolumeChanged falled, because there are no listener!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1318
    return-void

    .line 1321
    :cond_1
    :try_start_1
    const-string/jumbo v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyRingerVolumeChanged: oldVolume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", newVolume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1322
    const-string/jumbo v6, ", profile = "

    .line 1321
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1322
    const-string/jumbo v6, ", client = "

    .line 1321
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1322
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1321
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1324
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1325
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;

    .line 1326
    .local v2, "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    iget v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mEvent:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    .line 1328
    :try_start_2
    iget-object v3, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mCallback:Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    invoke-interface {v3, p1, p2, p3}, Lcom/mediatek/common/audioprofile/IAudioProfileListener;->onRingerVolumeChanged(IILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1329
    :catch_0
    move-exception v0

    .line 1330
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1331
    const-string/jumbo v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Dead object in notifyRingerVolumeChanged, remove listener\'s callback: record.mBinder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1333
    iget-object v6, v2, Lcom/mediatek/audioprofile/AudioProfileService$Record;->mBinder:Landroid/os/IBinder;

    .line 1331
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1333
    const-string/jumbo v6, ", clients = "

    .line 1331
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1334
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1331
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1334
    const-string/jumbo v6, ", exception = "

    .line 1331
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1315
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    .end local v2    # "record":Lcom/mediatek/audioprofile/AudioProfileService$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/audioprofile/AudioProfileService$Record;>;"
    :cond_3
    monitor-exit v4

    .line 1309
    return-void
.end method

.method public persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2665
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2664
    return-void
.end method

.method public reset()V
    .locals 22

    .prologue
    .line 1427
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v5, "reset start!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mResetFlag:Z

    .line 1429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1430
    .local v4, "generalKey":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v15

    .line 1431
    .local v15, "isGeneralActive":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 1436
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    .line 1437
    if-eqz v15, :cond_0

    .line 1438
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1448
    :goto_0
    const-string/jumbo v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reset: profileKey = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ", state = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1449
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1448
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1454
    .local v2, "allKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mKeys:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1455
    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1456
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "profileKey$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1457
    .local v16, "profileKey":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v19

    .line 1458
    .local v19, "scenaria":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1459
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->deleteProfile(Ljava/lang/String;)Z

    .line 1463
    :goto_2
    const-string/jumbo v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reset: profileKey = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ", state = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1464
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileStates:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1463
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1431
    .end local v2    # "allKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "profileKey":Ljava/lang/String;
    .end local v17    # "profileKey$iterator":Ljava/util/Iterator;
    .end local v19    # "scenaria":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :catchall_0
    move-exception v3

    monitor-exit v21

    throw v3

    .line 1440
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveKey(Ljava/lang/String;)Z

    .line 1441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v18

    .line 1442
    .local v18, "ringerMode":I
    const/4 v3, 0x2

    move/from16 v0, v18

    if-eq v0, v3, :cond_1

    .line 1443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 1445
    :cond_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1446
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyAudioProfileChanged()V

    goto/16 :goto_0

    .line 1461
    .end local v18    # "ringerMode":I
    .restart local v2    # "allKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "profileKey":Ljava/lang/String;
    .restart local v17    # "profileKey$iterator":Ljava/util/Iterator;
    .restart local v19    # "scenaria":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->restoreToDefaultValues(Ljava/lang/String;)V

    goto :goto_2

    .line 1466
    .end local v16    # "profileKey":Ljava/lang/String;
    .end local v19    # "scenaria":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_3
    const-string/jumbo v3, "ro.mtk_multisim_ringtone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1468
    .local v10, "outdoorKey":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    const/4 v5, 0x0

    aget v3, v3, v5

    int-to-long v6, v3

    .line 1470
    .local v6, "subId":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1471
    const-string/jumbo v5, "mtk_audioprofile_default_ringtone"

    .line 1470
    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1472
    .local v20, "uriString":Ljava/lang/String;
    if-nez v20, :cond_5

    const/4 v8, 0x0

    .line 1473
    :goto_3
    const/4 v5, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 1475
    const/4 v11, 0x1

    move-object/from16 v9, p0

    move-wide v12, v6

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 1477
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    const/4 v5, 0x0

    aget v3, v3, v5

    int-to-long v6, v3

    .line 1478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1479
    const-string/jumbo v5, "mtk_audioprofile_default_ringtone"

    .line 1478
    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1480
    if-nez v20, :cond_6

    const/4 v8, 0x0

    .line 1481
    :goto_4
    const/4 v5, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 1483
    const/4 v11, 0x1

    move-object/from16 v9, p0

    move-wide v12, v6

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 1486
    .end local v6    # "subId":J
    .end local v10    # "outdoorKey":Ljava/lang/String;
    .end local v20    # "uriString":Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v5, "reset end!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v21

    .line 1488
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mResetFlag:Z

    .line 1426
    return-void

    .line 1472
    .restart local v6    # "subId":J
    .restart local v10    # "outdoorKey":Ljava/lang/String;
    .restart local v20    # "uriString":Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "uri":Landroid/net/Uri;
    goto :goto_3

    .line 1480
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_6
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .restart local v8    # "uri":Landroid/net/Uri;
    goto :goto_4
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 1
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 1207
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    .line 1206
    return-void
.end method

.method public setActiveProfile(Ljava/lang/String;Z)V
    .locals 17
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "shouldSetRingerMode"    # Z

    .prologue
    .line 1050
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v6

    .line 1051
    .local v6, "oldProfileKey":Ljava/lang/String;
    move-object/from16 v4, p1

    .line 1052
    .local v4, "newProfileKey":Ljava/lang/String;
    const-string/jumbo v13, "AudioProfileService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setActiveProfile>>>: oldProfileKey = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1053
    const-string/jumbo v15, ", newProfileKey = "

    .line 1052
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1054
    const-string/jumbo v15, ", shouldSetRingerMode = "

    .line 1052
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1058
    const-string/jumbo v13, "AudioProfileService"

    const-string/jumbo v14, "setActiveProfile with same profile key with active profile, do nothing!"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    return-void

    .line 1062
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 1063
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveKey(Ljava/lang/String;)Z

    .line 1064
    const/4 v8, 0x1

    .line 1067
    .local v8, "overrideSystem":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    .line 1068
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    .line 1067
    move/from16 v0, p2

    invoke-interface {v13, v0, v6, v4, v15}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->getActiveProfileChangeInfo(ZLjava/lang/String;Ljava/lang/String;Z)Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;

    move-result-object v2

    .line 1070
    .local v2, "apcInfo":Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    if-nez v2, :cond_5

    .line 1071
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v5

    .line 1072
    .local v5, "newScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v7

    .line 1074
    .local v7, "oldScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v9

    .line 1075
    .local v9, "ringerMode":I
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService;->-getcom_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues()[I

    move-result-object v13

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v15

    aget v13, v13, v15

    packed-switch v13, :pswitch_data_0

    .line 1101
    const/4 v13, 0x2

    .line 1100
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingerModeMatchProfile(ZI)V

    .line 1105
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v13

    iget v13, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-nez v13, :cond_1

    .line 1106
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    .line 1107
    const/4 v15, 0x2

    .line 1106
    invoke-virtual {v13, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v12

    .line 1108
    .local v12, "volume":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    .line 1109
    const-string/jumbo v13, "AudioProfileService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setActiveProfile: profile volume is 0, change to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    .end local v12    # "volume":I
    :cond_1
    sget-object v13, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v13, v7}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1114
    sget-object v13, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v13, v7}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1113
    if-eqz v13, :cond_3

    .line 1115
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 1113
    if-eqz v13, :cond_3

    .line 1120
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    if-nez v13, :cond_4

    .line 1121
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldOverrideSystem:Z

    .line 1125
    .end local v8    # "overrideSystem":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncVolumeToSystem()V

    .line 1126
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingtoneToSystem()V

    .line 1128
    :cond_3
    sget-object v13, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v13, v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldOverrideSystem:Z

    .line 1160
    .end local v5    # "newScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v7    # "oldScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v9    # "ringerMode":I
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/mediatek/audioprofile/AudioProfileService;->persistValues(Z)V

    .line 1162
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyAudioProfileChanged()V

    .line 1164
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v13

    iget v11, v13, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 1165
    .local v11, "ringerVolume":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v11, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyRingerVolumeChanged(IILjava/lang/String;)V

    .line 1166
    const-string/jumbo v13, "AudioProfileService"

    const-string/jumbo v15, "setActiveProfile<<<"

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    .line 1048
    return-void

    .line 1079
    .end local v11    # "ringerVolume":I
    .restart local v5    # "newScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v7    # "oldScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v8    # "overrideSystem":Z
    .restart local v9    # "ringerMode":I
    :pswitch_0
    const/4 v13, 0x0

    .line 1078
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingerModeMatchProfile(ZI)V

    .line 1082
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setOldProfileSettings(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;Ljava/lang/String;)V

    .line 1084
    const/4 v8, 0x0

    .line 1085
    goto :goto_1

    .line 1090
    :pswitch_1
    const/4 v13, 0x1

    .line 1089
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingerModeMatchProfile(ZI)V

    .line 1093
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setOldProfileSettings(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;Ljava/lang/String;)V

    .line 1095
    const/4 v8, 0x0

    .line 1096
    goto :goto_1

    .line 1120
    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .line 1132
    .end local v5    # "newScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v7    # "oldScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v9    # "ringerMode":I
    :cond_5
    invoke-interface {v2}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->getRingerModeToUpdate()I

    move-result v10

    .line 1133
    .local v10, "ringerModeToUpdate":I
    const/16 v13, -0x3e7

    if-eq v10, v13, :cond_6

    .line 1135
    move-object/from16 v0, p0

    iput v10, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 1136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v13, v10}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 1137
    const-string/jumbo v13, "AudioProfileService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "CMCC: setActiveProfile: RingerMode now set "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_6
    invoke-interface {v2}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->shouldSetLastActiveKey()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1143
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastActiveKey(Ljava/lang/String;)Z

    move-result v3

    .line 1144
    .local v3, "lastActiveChanged":Z
    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsLastCustomActiveProfileDeleted:Z

    if-eqz v13, :cond_7

    .line 1145
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/mediatek/audioprofile/AudioProfileService;->setLastCustomActiveDeleted(Z)Z

    .line 1149
    .end local v3    # "lastActiveChanged":Z
    :cond_7
    invoke-interface {v2}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->shouldSyncToSystem()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1153
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncVolumeToSystem()V

    .line 1154
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingtoneToSystem()V

    .line 1156
    :cond_8
    invoke-interface {v2}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;->shouldOverrideSystem()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .local v8, "overrideSystem":Z
    goto/16 :goto_1

    .line 1062
    .end local v2    # "apcInfo":Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IActiveProfileChangeInfo;
    .end local v8    # "overrideSystem":Z
    .end local v10    # "ringerModeToUpdate":I
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 1075
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBesSurroundMode(I)I
    .locals 4
    .param p1, "besSurroundMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 3894
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsBesSurroundEnable:Z

    if-nez v0, :cond_0

    .line 3895
    const/4 v0, -0x1

    return v0

    .line 3897
    :cond_0
    if-nez p1, :cond_2

    .line 3898
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "BesSurround_Mode=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3902
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v1, "mtk_audioprofile_bessuround_mode"

    .line 3903
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3902
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3904
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mBesSurroundMode:I

    .line 3906
    return v3

    .line 3899
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3900
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v1, "BesSurround_Mode=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBesSurroundState(Z)I
    .locals 4
    .param p1, "isEnableBes"    # Z

    .prologue
    .line 3864
    const/4 v0, 0x0

    .line 3865
    .local v0, "stateCode":I
    if-eqz p1, :cond_0

    .line 3866
    const/4 v0, 0x1

    .line 3867
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "BesSurround_OnOff=1"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 3871
    :goto_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mProfileSettings:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    const-string/jumbo v2, "mtk_audioprofile_bessuround"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->put(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3872
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mIsBesSurroundEnable:Z

    .line 3874
    const/4 v1, 0x0

    return v1

    .line 3869
    :cond_0
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "BesSurround_OnOff=0"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDtmfToneEnabled(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2512
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2513
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2514
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 2515
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v3, "setDtmfToneEnabled profile state not exist!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2516
    return-void

    .line 2518
    :cond_0
    :try_start_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    if-eq v1, p2, :cond_2

    .line 2520
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistDtmfToneToDatabase(Ljava/lang/String;Z)V

    .line 2521
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 2523
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2524
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistDtmfToneToSystem()V

    .line 2526
    :cond_1
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDtmfToneEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v2

    .line 2511
    return-void

    .line 2512
    .end local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setLockScreenEnabled(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2572
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2573
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2574
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 2575
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v3, "setLockScreenEnabled profile state not exist!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2576
    return-void

    .line 2579
    :cond_0
    :try_start_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    if-eq v1, p2, :cond_2

    .line 2581
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistLockScreenToDatabase(Ljava/lang/String;Z)V

    .line 2582
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 2584
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2585
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistLockScreenToSystem()V

    .line 2587
    :cond_1
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLockScreenEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v2

    .line 2571
    return-void

    .line 2572
    .end local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 2635
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2636
    .local v0, "profileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2637
    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 2639
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistProfileNameToDatabase(Ljava/lang/String;Ljava/lang/String;)V

    .line 2640
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mCustomProfileName:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2641
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProfileName: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", newName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    :goto_0
    return-void

    .line 2643
    :cond_2
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "setProfileName with Null name!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 9
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # J
    .param p5, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 2175
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2176
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 2177
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "setRingtoneUri profile state not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    return-void

    .line 2181
    :cond_0
    iput-wide p3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSimId:J

    .line 2183
    invoke-direct {p0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->isValidRingtoneType(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2184
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "setRingtoneUri with undefined stream type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    :cond_1
    move-object v6, p5

    .line 2188
    .local v6, "newRingtoneUri":Landroid/net/Uri;
    invoke-direct {p0, v0, p2, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->isRingtoneUriChanged(Lcom/mediatek/audioprofile/AudioProfileState;ILandroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2189
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v2, "setRingtoneUri with ringtone uri unchanged!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p2, :cond_3

    .line 2195
    if-nez v6, :cond_3

    .line 2196
    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 2201
    invoke-direct/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileService;->doRingtoneUriSetting(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2205
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2206
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->setShouldSyncToSystemFlag(IZ)V

    .line 2210
    :cond_4
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v7, p3

    .line 2211
    invoke-direct/range {v3 .. v8}, Lcom/mediatek/audioprofile/AudioProfileService;->syncGeneralRingtoneToOutdoor(Ljava/lang/String;ILandroid/net/Uri;J)V

    .line 2214
    :cond_5
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRingtoneUri: profileKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2215
    const-string/jumbo v3, ", uri = "

    .line 2214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    return-void
.end method

.method public setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 7
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 2158
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mSingleSIM:I

    int-to-long v4, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 2157
    return-void
.end method

.method public setShouldSyncToSystemFlag(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "shouldSync"    # Z

    .prologue
    .line 2251
    sparse-switch p1, :sswitch_data_0

    .line 2250
    :goto_0
    return-void

    .line 2253
    :sswitch_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_RINGER_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2257
    :sswitch_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_NOTIFICATION_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2261
    :sswitch_2
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_VIDEOCALL_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2265
    :sswitch_3
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget v1, Lcom/mediatek/audioprofile/AudioProfileService;->DEFAULT_SIPCALL_INDEX:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2251
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public setSoundEffectEnabled(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2542
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2543
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2544
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 2545
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v3, "setSoundEffectEnabled profile state not exist!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2546
    return-void

    .line 2548
    :cond_0
    :try_start_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    if-eq v1, p2, :cond_2

    .line 2550
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistSoundEffectToDatabase(Ljava/lang/String;Z)V

    .line 2551
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 2553
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2554
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistSoundEffectToSystem()V

    .line 2556
    :cond_1
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSoundEffectEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v2

    .line 2541
    return-void

    .line 2542
    .end local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setStreamVolume(Ljava/lang/String;II)V
    .locals 6
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "streamType"    # I
    .param p3, "index"    # I

    .prologue
    .line 2367
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2368
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamValidVolume(II)I

    move-result v1

    .line 2369
    .local v1, "validIndex":I
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2370
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 2371
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v4, "setStreamVolume profile state not exist!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 2372
    return-void

    .line 2375
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 2426
    :pswitch_0
    :try_start_1
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v4, "setStreamVolume with undefind stream type!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    :cond_1
    :goto_0
    const-string/jumbo v2, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStreamVolume: profileKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", streamType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2430
    const-string/jumbo v5, ", volume = "

    .line 2429
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 2366
    return-void

    .line 2377
    :pswitch_1
    :try_start_2
    iget v2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v2, v1, :cond_1

    .line 2381
    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2382
    iput v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 2386
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2387
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2367
    .end local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v1    # "validIndex":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2393
    .restart local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    .restart local v1    # "validIndex":I
    :pswitch_2
    :try_start_3
    iget v2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    if-eq v2, v1, :cond_1

    .line 2397
    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2398
    iput v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 2402
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2403
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    .line 2404
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 2403
    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2410
    :pswitch_3
    iget v2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    if-eq v2, v1, :cond_1

    .line 2414
    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 2415
    iput v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 2419
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2420
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mShouldSyncToSystem:Ljava/util/ArrayList;

    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 2375
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setUserId(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3610
    const-string/jumbo v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserId() lastUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,mUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    iget v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    if-eq v0, p1, :cond_0

    .line 3612
    iput p1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    .line 3613
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->reInit()V

    .line 3609
    :cond_0
    return-void
.end method

.method public setVibrateOnTouchEnabled(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2604
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2605
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2606
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 2607
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v3, "setVibrateOnTouchEnabled profile state not exist!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2608
    return-void

    .line 2611
    :cond_0
    :try_start_1
    iget-boolean v1, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    if-eq v1, p2, :cond_2

    .line 2613
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHapticFeedbackToDatabase(Ljava/lang/String;Z)V

    .line 2614
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 2616
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2617
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistHapticFeedbackToSystem()V

    .line 2619
    :cond_1
    const-string/jumbo v1, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVibrateOnTouchEnabled: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v2

    .line 2603
    return-void

    .line 2604
    .end local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setVibrationEnabled(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 2445
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/audioprofile/AudioProfileService;->setVibrationEnabled(Ljava/lang/String;ZZ)V

    .line 2443
    return-void
.end method

.method public setVibrationEnabled(Ljava/lang/String;ZZ)V
    .locals 8
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "shouldSetRingerMode"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2461
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2462
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    .line 2463
    .local v0, "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    if-nez v0, :cond_0

    .line 2464
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v4, "setVibrationEnabled profile state not exist!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 2465
    return-void

    .line 2468
    :cond_0
    :try_start_1
    iget-boolean v6, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    if-eq v6, p2, :cond_2

    .line 2471
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2472
    .local v2, "token":J
    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2473
    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mContentResolver:Landroid/content/ContentResolver;

    .line 2474
    const-string/jumbo v7, "vibrate_in_silent"

    if-eqz p2, :cond_4

    :goto_0
    iget v4, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mUserId:I

    .line 2473
    invoke-static {v6, v7, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2476
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 2477
    if-eqz p2, :cond_5

    .line 2478
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 2479
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 2480
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v4, "setVibrationEnabled true,change RingerMode to VIBRATE"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    :cond_1
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2490
    invoke-direct {p0, p1, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistVibrationToDatabase(Ljava/lang/String;Z)V

    .line 2491
    iput-boolean p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 2494
    .end local v2    # "token":J
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->isActiveProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2495
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService;->persistVibrationToSystem()V

    .line 2497
    :cond_3
    const-string/jumbo v1, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setVibrationEnabled: profileKey = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", enabled = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2498
    const-string/jumbo v6, ", shouldSetRingerMode = "

    .line 2497
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 2460
    return-void

    .restart local v2    # "token":J
    :cond_4
    move v1, v4

    .line 2474
    goto :goto_0

    .line 2482
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 2483
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I

    .line 2484
    const-string/jumbo v1, "AudioProfileService"

    const-string/jumbo v4, "setVibrationEnabled false,change RingerMode to SILENT"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2461
    .end local v0    # "profileState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v2    # "token":J
    :catchall_0
    move-exception v1

    monitor-exit v5

    throw v1
.end method

.method public syncRingerVolumeToProfile(Ljava/lang/String;I)V
    .locals 3
    .param p1, "profileKey"    # Ljava/lang/String;
    .param p2, "volume"    # I

    .prologue
    .line 3474
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v0, p2, :cond_0

    .line 3475
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3476
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileService;->mAudioProfileHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3477
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 3478
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->persistStreamVolumeToDatabase(Ljava/lang/String;II)V

    .line 3480
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    iput p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 3481
    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v0

    iput p2, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 3482
    const-string/jumbo v0, "AudioProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncRingerVolumeToProfile: profileKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    :cond_0
    return-void
.end method
