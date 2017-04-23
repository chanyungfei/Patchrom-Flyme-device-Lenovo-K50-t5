.class public final Landroid/telecom/ParcelableConnection;
.super Ljava/lang/Object;
.source "ParcelableConnection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableConnection$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ParcelableConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAddress:Landroid/net/Uri;

.field private final mAddressPresentation:I

.field private final mCallerDisplayName:Ljava/lang/String;

.field private final mCallerDisplayNamePresentation:I

.field private final mConferenceableConnectionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectTimeMillis:J

.field private final mConnectionCapabilities:I

.field private final mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mExtras:Landroid/os/Bundle;

.field private final mIsVoipAudioMode:Z

.field private final mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private final mRingbackRequested:Z

.field private final mState:I

.field private final mStatusHints:Landroid/telecom/StatusHints;

.field private final mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private final mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    new-instance v0, Landroid/telecom/ParcelableConnection$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableConnection$1;-><init>()V

    .line 173
    sput-object v0, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;IILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "state"    # I
    .param p3, "capabilities"    # I
    .param p4, "address"    # Landroid/net/Uri;
    .param p5, "addressPresentation"    # I
    .param p6, "callerDisplayName"    # Ljava/lang/String;
    .param p7, "callerDisplayNamePresentation"    # I
    .param p8, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p9, "videoState"    # I
    .param p10, "ringbackRequested"    # Z
    .param p11, "isVoipAudioMode"    # Z
    .param p12, "connectTimeMillis"    # J
    .param p14, "statusHints"    # Landroid/telecom/StatusHints;
    .param p15, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p17, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "II",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "IZZJ",
            "Landroid/telecom/StatusHints;",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p16, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 77
    iput p2, p0, Landroid/telecom/ParcelableConnection;->mState:I

    .line 78
    iput p3, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    .line 79
    iput-object p4, p0, Landroid/telecom/ParcelableConnection;->mAddress:Landroid/net/Uri;

    .line 80
    iput p5, p0, Landroid/telecom/ParcelableConnection;->mAddressPresentation:I

    .line 81
    iput-object p6, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayName:Ljava/lang/String;

    .line 82
    iput p7, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayNamePresentation:I

    .line 83
    iput-object p8, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 84
    iput p9, p0, Landroid/telecom/ParcelableConnection;->mVideoState:I

    .line 85
    iput-boolean p10, p0, Landroid/telecom/ParcelableConnection;->mRingbackRequested:Z

    .line 86
    iput-boolean p11, p0, Landroid/telecom/ParcelableConnection;->mIsVoipAudioMode:Z

    .line 87
    iput-wide p12, p0, Landroid/telecom/ParcelableConnection;->mConnectTimeMillis:J

    .line 88
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/telecom/ParcelableConnection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 89
    move-object/from16 v0, p15

    iput-object v0, p0, Landroid/telecom/ParcelableConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 90
    move-object/from16 v0, p16

    iput-object v0, p0, Landroid/telecom/ParcelableConnection;->mConferenceableConnectionIds:Ljava/util/List;

    .line 91
    move-object/from16 v0, p17

    iput-object v0, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    .line 75
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final getConferenceableConnectionIds()Ljava/util/List;
    .locals 1
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
    .line 152
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mConferenceableConnectionIds:Ljava/util/List;

    return-object v0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Landroid/telecom/ParcelableConnection;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public getConnectionCapabilities()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    return v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getHandlePresentation()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mAddressPresentation:I

    return v0
.end method

.method public getIsVoipAudioMode()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mIsVoipAudioMode:Z

    return v0
.end method

.method public getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mState:I

    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mVideoState:I

    return v0
.end method

.method public isRingbackRequested()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mRingbackRequested:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    const-string/jumbo v1, "ParcelableConnection [act:"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    iget-object v1, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    const-string/jumbo v1, "], state:"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    iget v1, p0, Landroid/telecom/ParcelableConnection;->mState:I

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    const-string/jumbo v1, ", capabilities:"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    iget v1, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    invoke-static {v1}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    const-string/jumbo v1, ", extras:"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    iget-object v1, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    iget-object v3, p0, Landroid/telecom/ParcelableConnection;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 233
    iget v3, p0, Landroid/telecom/ParcelableConnection;->mState:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget v3, p0, Landroid/telecom/ParcelableConnection;->mConnectionCapabilities:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v3, p0, Landroid/telecom/ParcelableConnection;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1, v3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 236
    iget v3, p0, Landroid/telecom/ParcelableConnection;->mAddressPresentation:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v3, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget v3, p0, Landroid/telecom/ParcelableConnection;->mCallerDisplayNamePresentation:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-object v3, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v3, :cond_0

    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 239
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 241
    iget v0, p0, Landroid/telecom/ParcelableConnection;->mVideoState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mRingbackRequested:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 243
    iget-boolean v0, p0, Landroid/telecom/ParcelableConnection;->mIsVoipAudioMode:Z

    if-eqz v0, :cond_2

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 244
    iget-wide v0, p0, Landroid/telecom/ParcelableConnection;->mConnectTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mStatusHints:Landroid/telecom/StatusHints;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 246
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 247
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mConferenceableConnectionIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 248
    iget-object v0, p0, Landroid/telecom/ParcelableConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 231
    return-void

    :cond_1
    move v0, v2

    .line 242
    goto :goto_0

    :cond_2
    move v1, v2

    .line 243
    goto :goto_1
.end method
