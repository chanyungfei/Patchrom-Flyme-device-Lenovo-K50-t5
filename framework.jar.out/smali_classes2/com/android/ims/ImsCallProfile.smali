.class public Lcom/android/ims/ImsCallProfile;
.super Ljava/lang/Object;
.source "ImsCallProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsCallProfile$1;
    }
.end annotation


# static fields
.field public static final CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final CALL_RESTRICT_CAUSE_HD:I = 0x3

.field public static final CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final CALL_TYPE_VIDEO_N_VOICE:I = 0x3

.field public static final CALL_TYPE_VOICE:I = 0x2

.field public static final CALL_TYPE_VOICE_N_VIDEO:I = 0x1

.field public static final CALL_TYPE_VS:I = 0x8

.field public static final CALL_TYPE_VS_RX:I = 0xa

.field public static final CALL_TYPE_VS_TX:I = 0x9

.field public static final CALL_TYPE_VT:I = 0x4

.field public static final CALL_TYPE_VT_NODIR:I = 0x7

.field public static final CALL_TYPE_VT_RX:I = 0x6

.field public static final CALL_TYPE_VT_TX:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/ImsCallProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIALSTRING_NORMAL:I = 0x0

.field public static final DIALSTRING_SS_CONF:I = 0x1

.field public static final DIALSTRING_USSD:I = 0x2

.field public static final EXTRA_ADDITIONAL_CALL_INFO:Ljava/lang/String; = "AdditionalCallInfo"

.field public static final EXTRA_CALL_MODE_CHANGEABLE:Ljava/lang/String; = "call_mode_changeable"

.field public static final EXTRA_CHILD_NUMBER:Ljava/lang/String; = "ChildNum"

.field public static final EXTRA_CNA:Ljava/lang/String; = "cna"

.field public static final EXTRA_CNAP:Ljava/lang/String; = "cnap"

.field public static final EXTRA_CODEC:Ljava/lang/String; = "Codec"

.field public static final EXTRA_CONFERENCE:Ljava/lang/String; = "conference"

.field public static final EXTRA_CONFERENCE_AVAIL:Ljava/lang/String; = "conference_avail"

.field public static final EXTRA_CONF_PARTICIPANT_INDEX:Ljava/lang/String; = "conf_participant_index"

.field public static final EXTRA_CONF_PARTICIPANT_STATE:Ljava/lang/String; = "conf_participant_state"

.field public static final EXTRA_DIALSTRING:Ljava/lang/String; = "dialstring"

.field public static final EXTRA_DISPLAY_TEXT:Ljava/lang/String; = "DisplayText"

.field public static final EXTRA_E_CALL:Ljava/lang/String; = "e_call"

.field public static final EXTRA_INCOMING_MPTY:Ljava/lang/String; = "incoming_mpty"

.field public static final EXTRA_MPTY:Ljava/lang/String; = "mpty"

.field public static final EXTRA_OEM_EXTRAS:Ljava/lang/String; = "OemCallExtras"

.field public static final EXTRA_OI:Ljava/lang/String; = "oi"

.field public static final EXTRA_OIR:Ljava/lang/String; = "oir"

.field public static final EXTRA_PAU:Ljava/lang/String; = "pau"

.field public static final EXTRA_REMOTE_URI:Ljava/lang/String; = "remote_uri"

.field public static final EXTRA_USSD:Ljava/lang/String; = "ussd"

.field public static final EXTRA_VMS:Ljava/lang/String; = "vms"

.field public static final OIR_DEFAULT:I = 0x0

.field public static final OIR_PRESENTATION_NOT_RESTRICTED:I = 0x2

.field public static final OIR_PRESENTATION_PAYPHONE:I = 0x4

.field public static final OIR_PRESENTATION_RESTRICTED:I = 0x1

.field public static final OIR_PRESENTATION_UNKNOWN:I = 0x3

.field public static final SERVICE_TYPE_EMERGENCY:I = 0x2

.field public static final SERVICE_TYPE_NONE:I = 0x0

.field public static final SERVICE_TYPE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImsCallProfile"


# instance fields
.field public mCallExtras:Landroid/os/Bundle;

.field public mCallType:I

.field public mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

.field public mRestrictCause:I

.field public mServiceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 315
    new-instance v0, Lcom/android/ims/ImsCallProfile$1;

    invoke-direct {v0}, Lcom/android/ims/ImsCallProfile$1;-><init>()V

    sput-object v0, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    .line 211
    iput v1, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    .line 212
    iput v1, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 214
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 210
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    .line 218
    iput p1, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    .line 219
    iput p2, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 220
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 221
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    .line 207
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCallProfile;->readFromParcel(Landroid/os/Parcel;)V

    .line 206
    return-void
.end method

.method public static OIRToPresentation(I)I
    .locals 1
    .param p0, "oir"    # I

    .prologue
    const/4 v0, 0x3

    .line 410
    packed-switch p0, :pswitch_data_0

    .line 420
    return v0

    .line 412
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 414
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 416
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 418
    :pswitch_3
    return v0

    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getCallTypeFromVideoState(I)I
    .locals 6
    .param p0, "videoState"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 369
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/android/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v2

    .line 370
    .local v2, "videoTx":Z
    invoke-static {p0, v4}, Lcom/android/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v1

    .line 371
    .local v1, "videoRx":Z
    invoke-static {p0, v5}, Lcom/android/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v0

    .line 372
    .local v0, "isPaused":Z
    if-eqz v0, :cond_0

    .line 373
    const/4 v3, 0x7

    return v3

    .line 374
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    .line 376
    :cond_1
    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 377
    const/4 v3, 0x6

    return v3

    .line 375
    :cond_2
    const/4 v3, 0x5

    return v3

    .line 378
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 379
    return v5

    .line 381
    :cond_4
    return v4
.end method

.method public static getVideoStateFromImsCallProfile(Lcom/android/ims/ImsCallProfile;)I
    .locals 2
    .param p0, "callProfile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "videostate":I
    iget v1, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    packed-switch v1, :pswitch_data_0

    .line 350
    :pswitch_0
    const/4 v0, 0x0

    .line 353
    :goto_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCallProfile;->isVideoPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    :cond_0
    and-int/lit8 v0, v0, -0x5

    .line 358
    :goto_1
    return v0

    .line 338
    :pswitch_1
    const/4 v0, 0x1

    .line 339
    goto :goto_0

    .line 341
    :pswitch_2
    const/4 v0, 0x2

    .line 342
    goto :goto_0

    .line 344
    :pswitch_3
    const/4 v0, 0x3

    .line 345
    goto :goto_0

    .line 347
    :pswitch_4
    const/4 v0, 0x0

    .line 348
    goto :goto_0

    .line 354
    :cond_1
    or-int/lit8 v0, v0, 0x4

    .line 353
    goto :goto_1

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static isVideoStateSet(II)Z
    .locals 1
    .param p0, "videoState"    # I
    .param p1, "videoStateToCheck"    # I

    .prologue
    .line 440
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static presentationToOIR(I)I
    .locals 1
    .param p0, "presentation"    # I

    .prologue
    .line 390
    packed-switch p0, :pswitch_data_0

    .line 400
    const/4 v0, 0x0

    return v0

    .line 392
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 394
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 396
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 398
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 311
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 312
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/ims/ImsStreamMediaProfile;

    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 308
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 230
    return-object p2

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallExtraBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCallExtraBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 242
    return p2

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCallExtraInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 249
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCallExtraInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 254
    return p2

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isVideoPaused()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 429
    iget-object v1, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v1, v1, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setCallExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    return-void
.end method

.method public setCallExtraBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    :cond_0
    return-void
.end method

.method public setCallExtraInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 290
    const-string/jumbo v1, ", callType="

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 290
    iget v1, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 291
    const-string/jumbo v1, ", restrictCause="

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 291
    iget v1, p0, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    const-string/jumbo v1, ", mediaProfile="

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Lcom/android/ims/ImsStreamMediaProfile;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    const-string/jumbo v1, " }"

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCallExtras(Lcom/android/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 284
    iget-object v0, p1, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 282
    return-void
.end method

.method public updateCallType(Lcom/android/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 279
    iget v0, p1, Lcom/android/ims/ImsCallProfile;->mCallType:I

    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 278
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 302
    iget v0, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 305
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 301
    return-void
.end method
