.class public Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
.super Lcom/android/internal/telephony/Connection;
.source "ImsPhoneConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_DTMF_DONE:I = 0x1

.field private static final EVENT_NEXT_POST_DIAL:I = 0x3

.field private static final EVENT_PAUSE_DONE:I = 0x2

.field private static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhoneConnection"

.field private static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field private static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field private mCallIdBeforeDisconnected:I

.field private mCause:I

.field private mConfDialStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConferenceConnectTime:J

.field mConferenceParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private mDisconnectTime:J

.field private mDisconnected:Z

.field private mHandler:Landroid/os/Handler;

.field private mImsCall:Lcom/android/ims/ImsCall;

.field private mNextPostDialChar:I

.field private mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field private mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field private mPostDialString:Ljava/lang/String;

.field private mUusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p5, "isUnknown"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 149
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 92
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 93
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 100
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    .line 114
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConfDialStrings:Ljava/util/ArrayList;

    .line 117
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    .line 121
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCallIdBeforeDisconnected:I

    .line 151
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    .line 152
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 154
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 155
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    .line 156
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 158
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    const-string/jumbo v2, "oi"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 160
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    const-string/jumbo v2, "cna"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 162
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    const-string/jumbo v2, "oir"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v1

    .line 161
    invoke-static {v1}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 164
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    const-string/jumbo v2, "cnap"

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v1

    .line 163
    invoke-static {v1}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    .line 165
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    .line 171
    :goto_0
    if-eqz p5, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCreateTime:J

    .line 173
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateWifiState()Z

    .line 179
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 180
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 181
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    .line 180
    :goto_2
    invoke-virtual {v1, p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 150
    return-void

    .line 167
    :cond_0
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 168
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    goto :goto_0

    .line 171
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 181
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_2
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 186
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 92
    iput v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 93
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    .line 114
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConfDialStrings:Ljava/util/ArrayList;

    .line 117
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCallIdBeforeDisconnected:I

    .line 188
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    .line 189
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 191
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 192
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    .line 194
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDialString:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 198
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    .line 199
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 201
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    .line 207
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    .line 208
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 209
    iput v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    .line 210
    iput v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCreateTime:J

    .line 213
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 214
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 187
    return-void
.end method

.method private acquireWakeLock()V
    .locals 2

    .prologue
    .line 573
    const-string/jumbo v0, "ImsPhoneConnection"

    const-string/jumbo v1, "acquireWakeLock"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 572
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 567
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 568
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "ImsPhoneConnection"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 566
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 222
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private getAudioQualityFromCallProfile(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/ImsCallProfile;)I
    .locals 5
    .param p1, "localCallProfile"    # Lcom/android/ims/ImsCallProfile;
    .param p2, "remoteCallProfile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 940
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 942
    :cond_0
    return v2

    .line 941
    :cond_1
    iget-object v3, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    if-eqz v3, :cond_0

    .line 945
    iget-object v3, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v3, v3, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    if-eq v3, v1, :cond_2

    .line 947
    iget-object v3, p1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v3, v3, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 948
    const/4 v4, 0x6

    .line 947
    if-ne v3, v4, :cond_4

    .line 949
    :cond_2
    iget v3, p2, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    if-nez v3, :cond_3

    const/4 v0, 0x1

    .line 950
    .local v0, "isHighDef":Z
    :goto_0
    if-eqz v0, :cond_5

    :goto_1
    return v1

    .line 949
    .end local v0    # "isHighDef":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isHighDef":Z
    goto :goto_0

    .line 945
    .end local v0    # "isHighDef":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isHighDef":Z
    goto :goto_0

    :cond_5
    move v1, v2

    .line 950
    goto :goto_1
.end method

.method private getCallStateFromConferenceState(Ljava/lang/String;)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 1031
    const-string/jumbo v0, "alerting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1032
    const-string/jumbo v0, "pending"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1031
    if-nez v0, :cond_0

    .line 1033
    const-string/jumbo v0, "dialing-out"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1031
    if-nez v0, :cond_0

    .line 1034
    const-string/jumbo v0, "dialing-in"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1031
    if-eqz v0, :cond_1

    .line 1035
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    return-object v0

    .line 1036
    :cond_1
    const-string/jumbo v0, "connect-fail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1037
    const-string/jumbo v0, "disconnected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1036
    if-eqz v0, :cond_3

    .line 1038
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    return-object v0

    .line 1039
    :cond_3
    const-string/jumbo v0, "on-hold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1040
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    return-object v0

    .line 1043
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method private processNextPostDialChar()V
    .locals 9

    .prologue
    .line 489
    const/4 v1, 0x0

    .line 492
    .local v1, "c":C
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_0

    .line 494
    return-void

    .line 497
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    if-gt v6, v7, :cond_4

    .line 498
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 501
    const/4 v1, 0x0

    .line 520
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyPostDialListenersNextChar(C)V

    .line 523
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v6, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 527
    .local v4, "postDialHandler":Landroid/os/Registrant;
    if-eqz v4, :cond_3

    .line 528
    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v3, :cond_3

    .line 530
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 531
    .local v5, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 532
    .local v0, "ar":Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 533
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 536
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 540
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 488
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v5    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_3
    return-void

    .line 505
    .end local v4    # "postDialHandler":Landroid/os/Registrant;
    .restart local v1    # "c":C
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 507
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 509
    .local v1, "c":C
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processPostDialChar(C)Z

    move-result v2

    .line 511
    .local v2, "isValid":Z
    if-nez v2, :cond_2

    .line 513
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 515
    const-string/jumbo v6, "ImsPhoneConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void
.end method

.method private processPostDialChar(C)Z
    .locals 5
    .param p1, "c"    # C

    .prologue
    const/4 v4, 0x1

    .line 439
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendDtmf(CLandroid/os/Message;)V

    .line 464
    :goto_0
    return v4

    .line 441
    :cond_0
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 455
    const-wide/16 v2, 0xbb8

    .line 454
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 456
    :cond_1
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_2

    .line 457
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 458
    :cond_2
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_3

    .line 459
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 461
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4
    .param p1, "s"    # Lcom/android/internal/telephony/Connection$PostDialState;

    .prologue
    const/4 v3, 0x4

    .line 551
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_1

    .line 552
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_1

    .line 553
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 554
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 555
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 561
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 562
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyPostDialListeners()V

    .line 550
    return-void

    .line 556
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_0

    .line 557
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 559
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    goto :goto_0
.end method

.method private updateAddressDisplay(Lcom/android/ims/ImsCall;)Z
    .locals 9
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 778
    if-nez p1, :cond_0

    .line 779
    const/4 v6, 0x0

    return v6

    .line 782
    :cond_0
    const/4 v2, 0x0

    .line 783
    .local v2, "changed":Z
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    .line 784
    .local v1, "callProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v1, :cond_4

    .line 785
    const-string/jumbo v6, "oi"

    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, "address":Ljava/lang/String;
    const-string/jumbo v6, "cna"

    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 788
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v6, "oir"

    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v6

    .line 787
    invoke-static {v6}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v5

    .line 790
    .local v5, "nump":I
    const-string/jumbo v6, "cnap"

    invoke-virtual {v1, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v6

    .line 789
    invoke-static {v6}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v4

    .line 792
    .local v4, "namep":I
    const-string/jumbo v6, "ImsPhoneConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "address = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 793
    const-string/jumbo v8, " nump = "

    .line 792
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 793
    const-string/jumbo v8, " namep = "

    .line 792
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 796
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 797
    const/4 v2, 0x1

    .line 799
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 800
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 801
    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 802
    const/4 v2, 0x1

    .line 808
    :cond_2
    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    if-eq v6, v5, :cond_3

    .line 809
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 810
    const/4 v2, 0x1

    .line 812
    :cond_3
    iget v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    if-eq v6, v4, :cond_4

    .line 813
    iput v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    .line 814
    const/4 v2, 0x1

    .line 817
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "namep":I
    .end local v5    # "nump":I
    :cond_4
    return v2

    .line 804
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "namep":I
    .restart local v5    # "nump":I
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 805
    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 806
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 347
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 346
    return-void
.end method

.method changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 630
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 482
    return-void
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object v0
.end method

.method public getCallId()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1007
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1008
    .local v0, "call":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1009
    :cond_0
    return v4

    .line 1012
    :cond_1
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    .line 1013
    .local v1, "callId":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1014
    const-string/jumbo v2, "ImsPhoneConnection"

    const-string/jumbo v3, "Abnormal! Call Id = null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return v4

    .line 1018
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method getCallIdBeforeDisconnected()I
    .locals 1

    .prologue
    .line 1027
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCallIdBeforeDisconnected:I

    return v0
.end method

.method getConfDialStrings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConfDialStrings:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConferenceConnectTime()J
    .locals 2

    .prologue
    .line 767
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    return-wide v0
.end method

.method public getConferenceParticipantAddress(I)Ljava/lang/String;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 1094
    const-string/jumbo v0, ""

    .line 1096
    .local v0, "emptyAddress":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    if-nez v3, :cond_0

    .line 1097
    const-string/jumbo v3, "ImsPhoneConnection"

    const-string/jumbo v4, "getConferenceParticipantAddress(): no XML information"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    return-object v0

    .line 1101
    :cond_0
    if-ltz p1, :cond_1

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 1102
    :cond_1
    const-string/jumbo v3, "ImsPhoneConnection"

    const-string/jumbo v4, "getConferenceParticipantAddress(): invalid index"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-object v0

    .line 1107
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    add-int/lit8 v4, p1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/ConferenceParticipant;

    .line 1108
    .local v1, "participant":Landroid/telecom/ConferenceParticipant;
    if-nez v1, :cond_3

    .line 1109
    const-string/jumbo v3, "ImsPhoneConnection"

    const-string/jumbo v4, "getConferenceParticipantAddress(): empty participant info"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    return-object v0

    .line 1113
    :cond_3
    invoke-virtual {v1}, Landroid/telecom/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v2

    .line 1114
    .local v2, "userEntity":Landroid/net/Uri;
    const-string/jumbo v3, "ImsPhoneConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getConferenceParticipantAddress(): ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getDisconnectCause()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    return v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 955
    const/4 v2, 0x0

    .line 956
    .local v2, "extras":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 958
    .local v0, "call":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_0

    .line 959
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    .line 960
    .local v1, "callProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v1, :cond_0

    .line 961
    iget-object v2, v1, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 964
    .end local v1    # "callProfile":Lcom/android/ims/ImsCallProfile;
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    if-nez v2, :cond_1

    .line 965
    const-string/jumbo v3, "ImsPhoneConnection"

    const-string/jumbo v4, "Call profile extras are null."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    return-object v5

    .line 968
    :cond_1
    return-object v2
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 249
    const-wide/16 v0, 0x0

    return-wide v0

    .line 251
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getHoldingStartTime()J
    .locals 2

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    return-wide v0
.end method

.method getImsCall()Lcom/android/ims/ImsCall;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    return-object v0
.end method

.method getParentCallName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-nez v0, :cond_0

    .line 1065
    const-string/jumbo v0, "Unknown"

    return-object v0

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v0, v1, :cond_1

    .line 1069
    const-string/jumbo v0, "Foreground Call"

    return-object v0

    .line 1070
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v0, v1, :cond_2

    .line 1071
    const-string/jumbo v0, "Background Call"

    return-object v0

    .line 1072
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v0, v1, :cond_3

    .line 1073
    const-string/jumbo v0, "Ringing Call"

    return-object v0

    .line 1074
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v0, v1, :cond_4

    .line 1075
    const-string/jumbo v0, "Handover Call"

    return-object v0

    .line 1077
    :cond_4
    const-string/jumbo v0, "Abnormal"

    return-object v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    .prologue
    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v1, :cond_1

    .line 475
    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    if-le v0, v1, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-eqz v0, :cond_0

    .line 276
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    return-object v0

    .line 278
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v1, "CC"

    const-string/jumbo v2, "Hangup"

    const-string/jumbo v3, "ImsphoneConnection.hangup"

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 290
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 283
    return-void

    .line 293
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConferenceHost()Z
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_0

    .line 617
    const/4 v0, 0x0

    return v0

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isConferenceHost()Z

    move-result v0

    return v0
.end method

.method public isIncomingCallMultiparty()Z
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isIncomingCallMultiparty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onConnectedInOrOut()V
    .locals 4

    .prologue
    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTime:J

    .line 414
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTimeReal:J

    .line 415
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDuration:J

    .line 418
    const-string/jumbo v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectedInOrOut: connectTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    if-nez v0, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 412
    return-void
.end method

.method onDisconnect()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 378
    const/4 v0, 0x0

    .line 380
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-nez v1, :cond_1

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    .line 384
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTimeReal:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDuration:J

    .line 385
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    .line 387
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 389
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-eqz v1, :cond_2

    .line 390
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->connectionDisconnected(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z

    move-result v0

    .line 397
    .end local v0    # "changed":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCallId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCallIdBeforeDisconnected:I

    .line 400
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->close()V

    .line 401
    :cond_0
    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 405
    return v0

    .line 392
    .restart local v0    # "changed":Z
    :cond_2
    const-string/jumbo v1, "ImsPhoneConnection"

    const-string/jumbo v2, "onDisconnect: no parent"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDisconnect(I)Z
    .locals 7
    .param p1, "cause"    # I

    .prologue
    const/4 v6, 0x3

    .line 361
    const-string/jumbo v1, "ImsPhoneConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisconnect: cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    if-eq v1, v6, :cond_0

    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 365
    :cond_0
    const-string/jumbo v1, "ro.operator.optr"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "optr":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConnectTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    if-ne v1, v6, :cond_1

    .line 368
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 373
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    move-result v1

    return v1
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 7
    .param p1, "endpoint"    # Landroid/net/Uri;

    .prologue
    .line 698
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-eqz v2, :cond_0

    .line 699
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v3, "CC"

    const-string/jumbo v4, "RemoveMember"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " remove: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 703
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 704
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_1

    .line 705
    return-void

    .line 708
    :cond_1
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->removeParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :goto_0
    return-void

    .line 709
    :catch_0
    move-exception v0

    .line 711
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string/jumbo v2, "ImsPhoneConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDisconnectConferenceParticipant: no session in place. Failed to disconnect endpoint = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onHangupLocal()V
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 354
    return-void
.end method

.method public onInviteConferenceParticipants(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 724
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "number$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 726
    .local v3, "number":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 729
    .end local v3    # "number":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-eqz v7, :cond_1

    .line 730
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string/jumbo v8, "CC"

    const-string/jumbo v9, "AddMember"

    .line 731
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " invite with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 730
    invoke-virtual {v7, v8, v9, p0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logDebugMessagesWithOpFormat(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V

    .line 735
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 736
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_2

    .line 737
    return-void

    .line 740
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 742
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 744
    .local v5, "participants":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v5}, Lcom/android/ims/ImsCall;->inviteParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :goto_1
    return-void

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string/jumbo v7, "ImsPhoneConnection"

    .line 747
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "inviteConferenceParticipants: no call session and fail to invite participants "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 746
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method onStartedHolding()V
    .locals 2

    .prologue
    .line 430
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    .line 429
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 310
    const-string/jumbo v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    .line 315
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 317
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    .line 308
    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 322
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 323
    const-string/jumbo v1, "ImsPhoneConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 324
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 323
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 328
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    .line 336
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    .line 338
    const-string/jumbo v1, "ImsPhoneConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 339
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    .line 338
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    .line 321
    return-void
.end method

.method releaseWakeLock()V
    .locals 3

    .prologue
    .line 579
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    const-string/jumbo v0, "ImsPhoneConnection"

    const-string/jumbo v2, "releaseWakeLock"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 578
    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "not supported"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setConfDialStrings(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 1052
    .local p1, "dialStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConfDialStrings:Ljava/util/ArrayList;

    .line 1051
    return-void
.end method

.method setConferenceAsHost()V
    .locals 3

    .prologue
    .line 1135
    const-string/jumbo v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set is conference host connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    .line 1134
    return-void
.end method

.method public setConferenceConnectTime(J)V
    .locals 1
    .param p1, "conferenceConnectTime"    # J

    .prologue
    .line 760
    iput-wide p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    .line 759
    return-void
.end method

.method public setDisconnectCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    .line 261
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 260
    return-void
.end method

.method setImsCall(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 626
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 980
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[ImsPhoneConnection objId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 982
    const-string/jumbo v1, " address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    const-string/jumbo v1, " ImsCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-nez v1, :cond_0

    .line 986
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    :goto_0
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 993
    const-string/jumbo v1, " mParent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getParentCallName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 988
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z
    .locals 7
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 639
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v4, :cond_5

    .line 644
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isPendingHold()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 645
    const-string/jumbo v4, "ImsPhoneConnection"

    const-string/jumbo v5, "update : state is ACTIVE, but call is pending hold, skipping"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v4, 0x0

    return v4

    .line 649
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 650
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectedInOrOut()V

    .line 653
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v4, v5, :cond_4

    .line 660
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mHandoverCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-eq v4, v5, :cond_4

    .line 661
    const-string/jumbo v4, "ImsPhoneConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update() - Switch Connection to foreground call:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 664
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 665
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;)V

    .line 673
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updatePauInfo(Lcom/android/ims/ImsCall;)Z

    .line 676
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4, p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->update(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    move-result v2

    .line 677
    .local v2, "updateParent":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateWifiState()Z

    move-result v3

    .line 678
    .local v3, "updateWifiState":Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateAddressDisplay(Lcom/android/ims/ImsCall;)Z

    move-result v0

    .line 679
    .local v0, "updateAddressDisplay":Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    move-result v1

    .line 681
    .local v1, "updateMediaCapabilities":Z
    if-nez v2, :cond_6

    if-nez v3, :cond_6

    if-nez v0, :cond_6

    .end local v1    # "updateMediaCapabilities":Z
    :goto_1
    return v1

    .line 668
    .end local v0    # "updateAddressDisplay":Z
    .end local v2    # "updateParent":Z
    .end local v3    # "updateWifiState":Z
    :cond_5
    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v4, :cond_4

    .line 669
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onStartedHolding()V

    goto :goto_0

    .line 681
    .restart local v0    # "updateAddressDisplay":Z
    .restart local v1    # "updateMediaCapabilities":Z
    .restart local v2    # "updateParent":Z
    .restart local v3    # "updateWifiState":Z
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public updateConferenceParticipants(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1083
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceParticipants:Ljava/util/List;

    .line 1084
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->updateConferenceParticipants(Ljava/util/List;)V

    .line 1082
    return-void
.end method

.method public updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z
    .locals 13
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    const/4 v12, 0x4

    .line 856
    if-nez p1, :cond_0

    .line 857
    const/4 v11, 0x0

    return v11

    .line 860
    :cond_0
    const/4 v1, 0x0

    .line 864
    .local v1, "changed":Z
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v4

    .line 866
    .local v4, "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    .line 868
    .local v3, "localCallProfile":Lcom/android/ims/ImsCallProfile;
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v10

    .line 870
    .local v10, "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v4, :cond_1

    .line 871
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v9

    .line 872
    .local v9, "oldVideoState":I
    invoke-static {v4}, Lcom/android/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Lcom/android/ims/ImsCallProfile;)I

    move-result v8

    .line 875
    .local v8, "newVideoState":I
    if-eq v9, v8, :cond_1

    .line 876
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    .line 877
    const/4 v1, 0x1

    .line 881
    .end local v8    # "newVideoState":I
    .end local v9    # "oldVideoState":I
    :cond_1
    if-eqz v3, :cond_2

    .line 882
    iget v0, v3, Lcom/android/ims/ImsCallProfile;->mCallType:I

    .line 884
    .local v0, "callType":I
    if-ne v0, v12, :cond_5

    const/4 v6, 0x1

    .line 885
    .local v6, "newLocalVideoCapable":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isLocalVideoCapable()Z

    move-result v11

    if-eq v11, v6, :cond_2

    .line 886
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setLocalVideoCapable(Z)V

    .line 887
    const/4 v1, 0x1

    .line 891
    .end local v0    # "callType":I
    .end local v6    # "newLocalVideoCapable":Z
    :cond_2
    if-eqz v10, :cond_3

    .line 892
    iget v11, v10, Lcom/android/ims/ImsCallProfile;->mCallType:I

    if-ne v11, v12, :cond_6

    const/4 v7, 0x1

    .line 895
    .local v7, "newRemoteVideoCapable":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isRemoteVideoCapable()Z

    move-result v11

    if-eq v11, v7, :cond_3

    .line 896
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setRemoteVideoCapable(Z)V

    .line 897
    const/4 v1, 0x1

    .line 902
    .end local v7    # "newRemoteVideoCapable":Z
    :cond_3
    invoke-direct {p0, v3, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQualityFromCallProfile(Lcom/android/ims/ImsCallProfile;Lcom/android/ims/ImsCallProfile;)I

    move-result v5

    .line 903
    .local v5, "newAudioQuality":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQuality()I

    move-result v11

    if-eq v11, v5, :cond_4

    .line 904
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAudioQuality(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    const/4 v1, 0x1

    .line 911
    .end local v3    # "localCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v4    # "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v5    # "newAudioQuality":I
    .end local v10    # "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_4
    :goto_2
    return v1

    .line 884
    .restart local v0    # "callType":I
    .restart local v3    # "localCallProfile":Lcom/android/ims/ImsCallProfile;
    .restart local v4    # "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    .restart local v10    # "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "newLocalVideoCapable":Z
    goto :goto_0

    .line 892
    .end local v0    # "callType":I
    .end local v6    # "newLocalVideoCapable":Z
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "newRemoteVideoCapable":Z
    goto :goto_1

    .line 907
    .end local v3    # "localCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v4    # "negotiatedCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v7    # "newRemoteVideoCapable":Z
    .end local v10    # "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    :catch_0
    move-exception v2

    .local v2, "e":Lcom/android/ims/ImsException;
    goto :goto_2
.end method

.method updatePauInfo(Lcom/android/ims/ImsCall;)Z
    .locals 6
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 829
    if-nez p1, :cond_0

    .line 830
    const/4 v3, 0x0

    return v3

    .line 833
    :cond_0
    const/4 v1, 0x0

    .line 834
    .local v1, "changed":Z
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v0

    .line 835
    .local v0, "callProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v0, :cond_1

    .line 836
    const-string/jumbo v3, "pau"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 837
    .local v2, "pau":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPau:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 838
    const-string/jumbo v3, "ImsPhoneConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePauInfo: new pau="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " old pau="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPau:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPau:Ljava/lang/String;

    .line 840
    const/4 v1, 0x1

    .line 841
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyPauInfoUpdated(Ljava/lang/String;)V

    .line 844
    .end local v2    # "pau":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public updateWifiState()Z
    .locals 3

    .prologue
    .line 921
    const-string/jumbo v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWifiState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isWifi()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 923
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setWifi(Z)V

    .line 924
    const/4 v0, 0x1

    return v0

    .line 926
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
