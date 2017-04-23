.class public Lcom/mediatek/audioprofile/AudioProfileState;
.super Ljava/lang/Object;
.source "AudioProfileState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/AudioProfileState$Builder;
    }
.end annotation


# instance fields
.field public mAlarmVolume:I

.field public mDtmfToneEnabled:Z

.field public mHapticFeedbackEnabled:Z

.field public mLockScreenSoundEnabled:Z

.field public mNoficationUseRingVolume:Z

.field public mNotificationStream:Landroid/net/Uri;

.field public mNotificationVolume:I

.field public mProfileKey:Ljava/lang/String;

.field public mRingerStream:Landroid/net/Uri;

.field public mRingerVolume:I

.field public mSIPCallStream:Landroid/net/Uri;

.field public mSimId:J

.field public mSoundEffectEnbled:Z

.field public mVibrationEnabled:Z

.field public mVideoCallStream:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->-get7(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mProfileKey:Ljava/lang/String;

    .line 256
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->-get8(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 257
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->-get5(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 258
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->-get14(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    .line 259
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->-get10(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    .line 261
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->-get9(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    .line 262
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->-get0(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    .line 263
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->-get6(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    .line 265
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->-get13(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    .line 266
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->-get12(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    .line 267
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->-get1(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    .line 268
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->-get2(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    .line 269
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->-get3(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    .line 270
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->-get4(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mNoficationUseRingVolume:Z

    .line 271
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->-get11(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mSimId:J

    .line 253
    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/audioprofile/AudioProfileState$Builder;Lcom/mediatek/audioprofile/AudioProfileState;)V
    .locals 0
    .param p1, "builder"    # Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/audioprofile/AudioProfileState;-><init>(Lcom/mediatek/audioprofile/AudioProfileState$Builder;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 277
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "volume_ringtone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    const-string/jumbo v1, "volume_notification = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    const-string/jumbo v1, "volume_alarm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mAlarmVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    const-string/jumbo v1, "vibrate_on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mVibrationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    const-string/jumbo v1, "dtmf_tone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mDtmfToneEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    const-string/jumbo v1, "sound_effects = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mSoundEffectEnbled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    const-string/jumbo v1, "lockscreen_sounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mLockScreenSoundEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    const-string/jumbo v1, "haptic_feedback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mHapticFeedbackEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    const-string/jumbo v1, "ringtone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    const-string/jumbo v1, "notification_sound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    const-string/jumbo v1, "video_call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mVideoCallStream:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    const-string/jumbo v1, "sip_call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mSIPCallStream:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    const-string/jumbo v1, "sim id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/audioprofile/AudioProfileState;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
