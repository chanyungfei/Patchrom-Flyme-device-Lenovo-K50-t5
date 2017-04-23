.class public Lcom/android/internal/telephony/gsm/GsmConnection;
.super Lcom/android/internal/telephony/Connection;
.source "GsmConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_DriverCall$StateSwitchesValues:[I = null

.field private static final DBG:Z = true

.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "GsmConnection"

.field static final PAUSE_DELAY_FIRST_MILLIS:I = 0xbb8

.field static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field mCause:I

.field mDisconnectTime:J

.field mDisconnected:Z

.field mHandler:Landroid/os/Handler;

.field mIndex:I

.field mIsVideo:Z

.field mNextPostDialChar:I

.field mOrigConnection:Lcom/android/internal/telephony/Connection;

.field mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field mParent:Lcom/android/internal/telephony/gsm/GsmCall;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field mPostDialString:Ljava/lang/String;

.field mPreciseCause:I

.field mUusInfo:Lcom/android/internal/telephony/UUSInfo;

.field mVendorCause:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_DriverCall$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/gsm/GsmConnection;->-com_android_internal_telephony_DriverCall$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/gsm/GsmConnection;->-com_android_internal_telephony_DriverCall$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DriverCall$State;->values()[Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/android/internal/telephony/gsm/GsmConnection;->-com_android_internal_telephony_DriverCall$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .param p4, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 74
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 75
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 77
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    .line 130
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->createWakeLock(Landroid/content/Context;)V

    .line 131
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    .line 133
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 134
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    .line 136
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    .line 138
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCreateTime:J

    .line 140
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    .line 141
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapNamePresentation:I

    .line 142
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberPresentation:I

    .line 143
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 146
    iput p4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    .line 149
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsVideo:Z

    .line 152
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/gsm/GsmCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 129
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 74
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 75
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 77
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    .line 159
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->createWakeLock(Landroid/content/Context;)V

    .line 160
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    .line 162
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 163
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    .line 165
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDialString:Ljava/lang/String;

    .line 167
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    .line 168
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    .line 172
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    .line 174
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapNamePresentation:I

    .line 175
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberPresentation:I

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCreateTime:J

    .line 178
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 179
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/gsm/GsmCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 158
    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 1004
    const-string/jumbo v0, "acquireWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1005
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1003
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 998
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 999
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "GsmConnection"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 997
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 187
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

.method private isConnectingInOrOut()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 947
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 948
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    .line 949
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1019
    const-string/jumbo v0, "GsmConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[GSMConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    return-void
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/DriverCall$State;

    .prologue
    .line 954
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmConnection;->-getcom_android_internal_telephony_DriverCall$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 971
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 958
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0

    .line 962
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0

    .line 967
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0

    .line 954
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processNextPostDialChar()V
    .locals 9

    .prologue
    .line 883
    const/4 v1, 0x0

    .line 886
    .local v1, "c":C
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_0

    .line 888
    return-void

    .line 891
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 892
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    if-gt v6, v7, :cond_4

    .line 896
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 899
    const/4 v1, 0x0

    .line 918
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->notifyPostDialListenersNextChar(C)V

    .line 921
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 925
    .local v4, "postDialHandler":Landroid/os/Registrant;
    if-eqz v4, :cond_3

    .line 926
    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v3, :cond_3

    .line 928
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 929
    .local v5, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 930
    .local v0, "ar":Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 931
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 934
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 937
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 882
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v5    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_3
    return-void

    .line 894
    .end local v4    # "postDialHandler":Landroid/os/Registrant;
    .restart local v1    # "c":C
    :cond_4
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    if-nez v6, :cond_1

    .line 903
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 905
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 907
    .local v1, "c":C
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->processPostDialChar(C)Z

    move-result v2

    .line 909
    .local v2, "isValid":Z
    if-nez v2, :cond_2

    .line 911
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 913
    const-string/jumbo v6, "GSM"

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

    .line 914
    return-void
.end method

.method private processPostDialChar(C)Z
    .locals 7
    .param p1, "c"    # C

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 798
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 799
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 848
    :goto_0
    return v6

    .line 800
    :cond_0
    const/16 v2, 0x2c

    if-ne p1, v2, :cond_4

    .line 812
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    if-ne v2, v6, :cond_1

    .line 813
    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 836
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 837
    const-wide/16 v4, 0xbb8

    .line 836
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 820
    :cond_2
    :try_start_0
    const-class v2, Lcom/mediatek/common/telephony/IGsmConnectionExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 819
    invoke-static {v2, v3}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IGsmConnectionExt;

    .line 821
    .local v1, "mGsmConnectionExt":Lcom/mediatek/common/telephony/IGsmConnectionExt;
    if-eqz v1, :cond_3

    .line 822
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 824
    const/16 v4, 0xbb8

    .line 823
    invoke-interface {v1, v4}, Lcom/mediatek/common/telephony/IGsmConnectionExt;->getFirstPauseDelayMSeconds(I)I

    move-result v4

    int-to-long v4, v4

    .line 822
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 828
    .end local v1    # "mGsmConnectionExt":Lcom/mediatek/common/telephony/IGsmConnectionExt;
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "GsmConnection"

    const-string/jumbo v3, "Fail to create plug-in"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 826
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "mGsmConnectionExt":Lcom/mediatek/common/telephony/IGsmConnectionExt;
    :cond_3
    :try_start_1
    const-string/jumbo v2, "GsmConnection"

    const-string/jumbo v3, "Fail to initialize IGsmConnectionExt"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 840
    .end local v1    # "mGsmConnectionExt":Lcom/mediatek/common/telephony/IGsmConnectionExt;
    :cond_4
    const/16 v2, 0x3b

    if-ne p1, v2, :cond_5

    .line 841
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 842
    :cond_5
    const/16 v2, 0x4e

    if-ne p1, v2, :cond_6

    .line 843
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 845
    :cond_6
    const/4 v2, 0x0

    return v2
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 1010
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    const-string/jumbo v0, "releaseWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1013
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1009
    return-void

    .line 1010
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4
    .param p1, "s"    # Lcom/android/internal/telephony/Connection$PostDialState;

    .prologue
    const/4 v3, 0x4

    .line 982
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_1

    .line 983
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_1

    .line 984
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    .line 985
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 986
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 992
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 993
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->notifyPostDialListeners()V

    .line 981
    return-void

    .line 987
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_0

    .line 988
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 990
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    goto :goto_0
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 327
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 326
    return-void
.end method

.method compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 3
    .param p1, "c"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v2, 0x1

    .line 197
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    :goto_0
    if-nez v1, :cond_1

    return v2

    :cond_0
    move v1, v2

    goto :goto_0

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_2

    return v2

    .line 207
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "cAddress":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method disconnectCauseFromCode(I)I
    .locals 9
    .param p1, "causeCode"    # I

    .prologue
    const/16 v8, 0x24

    const/4 v4, 0x4

    const/4 v7, 0x2

    .line 353
    sparse-switch p1, :sswitch_data_0

    .line 537
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v4, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 538
    .local v1, "phone":Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 539
    .local v2, "serviceState":I
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 540
    .local v0, "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    .line 543
    .local v3, "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :goto_0
    const-string/jumbo v4, "GsmConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "serviceState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 546
    const/16 v4, 0x11

    return v4

    .line 355
    .end local v0    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "phone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v2    # "serviceState":I
    .end local v3    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :sswitch_0
    return v4

    .line 363
    :sswitch_1
    const/4 v4, 0x5

    return v4

    .line 366
    :sswitch_2
    const/16 v4, 0xf

    return v4

    .line 369
    :sswitch_3
    const/16 v4, 0x14

    return v4

    .line 372
    :sswitch_4
    const/16 v4, 0x15

    return v4

    .line 375
    :sswitch_5
    const/16 v4, 0x19

    return v4

    .line 378
    :sswitch_6
    const/16 v4, 0x2e

    return v4

    .line 381
    :sswitch_7
    const/16 v4, 0x2f

    return v4

    .line 384
    :sswitch_8
    const/16 v4, 0x30

    return v4

    .line 388
    :sswitch_9
    const/16 v4, 0x32

    return v4

    .line 391
    :sswitch_a
    const/16 v4, 0x33

    return v4

    .line 394
    :sswitch_b
    const/16 v4, 0x34

    return v4

    .line 408
    :sswitch_c
    return v4

    .line 411
    :sswitch_d
    const/16 v4, 0x36

    return v4

    .line 414
    :sswitch_e
    const/16 v4, 0x37

    return v4

    .line 417
    :sswitch_f
    const/16 v4, 0x3b

    return v4

    .line 420
    :sswitch_10
    const/16 v4, 0x3c

    return v4

    .line 425
    :sswitch_11
    const/16 v4, 0x3e

    return v4

    .line 428
    :sswitch_12
    const/16 v4, 0x3f

    return v4

    .line 431
    :sswitch_13
    const/16 v4, 0x40

    return v4

    .line 434
    :sswitch_14
    const/16 v4, 0x41

    return v4

    .line 437
    :sswitch_15
    const/16 v4, 0x42

    return v4

    .line 440
    :sswitch_16
    const/16 v4, 0x43

    return v4

    .line 443
    :sswitch_17
    const/16 v4, 0x59

    return v4

    .line 446
    :sswitch_18
    const/16 v4, 0x44

    return v4

    .line 449
    :sswitch_19
    const/16 v4, 0x45

    return v4

    .line 452
    :sswitch_1a
    const/16 v4, 0x46

    return v4

    .line 455
    :sswitch_1b
    const/16 v4, 0x47

    return v4

    .line 458
    :sswitch_1c
    const/16 v4, 0x48

    return v4

    .line 461
    :sswitch_1d
    const/16 v4, 0x49

    return v4

    .line 464
    :sswitch_1e
    const/16 v4, 0x4a

    return v4

    .line 467
    :sswitch_1f
    const/16 v4, 0x4b

    return v4

    .line 470
    :sswitch_20
    const/16 v4, 0x4c

    return v4

    .line 473
    :sswitch_21
    const/16 v4, 0x4d

    return v4

    .line 476
    :sswitch_22
    const/16 v4, 0x4e

    return v4

    .line 479
    :sswitch_23
    const/16 v4, 0x4f

    return v4

    .line 482
    :sswitch_24
    const/16 v4, 0x50

    return v4

    .line 485
    :sswitch_25
    const/16 v4, 0x51

    return v4

    .line 488
    :sswitch_26
    const/16 v4, 0x52

    return v4

    .line 491
    :sswitch_27
    const/16 v4, 0x53

    return v4

    .line 494
    :sswitch_28
    const/16 v4, 0x54

    return v4

    .line 497
    :sswitch_29
    const/16 v4, 0x55

    return v4

    .line 500
    :sswitch_2a
    const/16 v4, 0x56

    return v4

    .line 503
    :sswitch_2b
    const/16 v4, 0x57

    return v4

    .line 506
    :sswitch_2c
    const/16 v4, 0x58

    return v4

    .line 510
    :sswitch_2d
    const/16 v4, 0x870

    return v4

    .line 512
    :sswitch_2e
    const/16 v4, 0x871

    return v4

    .line 514
    :sswitch_2f
    const/16 v4, 0x872

    return v4

    .line 516
    :sswitch_30
    const/16 v4, 0x873

    return v4

    .line 518
    :sswitch_31
    const/16 v4, 0x876

    return v4

    .line 520
    :sswitch_32
    const/16 v4, 0x877

    return v4

    .line 522
    :sswitch_33
    const/16 v4, 0x878

    return v4

    .line 524
    :sswitch_34
    const/16 v4, 0x879

    return v4

    .line 526
    :sswitch_35
    const/16 v4, 0x87a

    return v4

    .line 528
    :sswitch_36
    const/16 v4, 0x87b

    return v4

    .line 530
    :sswitch_37
    const/16 v4, 0x87c

    return v4

    .line 532
    :sswitch_38
    const/16 v4, 0x87f

    return v4

    .line 541
    .restart local v0    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v1    # "phone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v2    # "serviceState":I
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .restart local v3    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    goto/16 :goto_0

    .line 547
    :cond_1
    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    .line 548
    if-ne v2, v7, :cond_4

    .line 555
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 556
    return v7

    .line 558
    :cond_3
    const/16 v4, 0x12

    return v4

    .line 561
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v3, v4, :cond_5

    .line 562
    const/16 v4, 0x13

    return v4

    .line 563
    :cond_5
    const v4, 0xffff

    if-ne p1, v4, :cond_9

    .line 564
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 565
    const/16 v4, 0x16

    return v4

    .line 566
    :cond_6
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 567
    const/16 v4, 0x18

    return v4

    .line 568
    :cond_7
    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 569
    const/16 v4, 0x17

    return v4

    .line 571
    :cond_8
    return v8

    .line 573
    :cond_9
    const/16 v4, 0x10

    if-ne p1, v4, :cond_a

    .line 574
    return v7

    .line 582
    :cond_a
    const/16 v4, 0x1f

    if-ne p1, v4, :cond_b

    .line 583
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    .line 582
    if-eqz v4, :cond_b

    .line 584
    return v7

    .line 589
    :cond_b
    return v8

    .line 353
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x3 -> :sswitch_9
        0x6 -> :sswitch_18
        0x8 -> :sswitch_19
        0x11 -> :sswitch_0
        0x12 -> :sswitch_a
        0x13 -> :sswitch_b
        0x15 -> :sswitch_c
        0x19 -> :sswitch_1a
        0x1a -> :sswitch_1b
        0x1b -> :sswitch_1c
        0x1c -> :sswitch_d
        0x1d -> :sswitch_e
        0x22 -> :sswitch_1
        0x26 -> :sswitch_11
        0x29 -> :sswitch_1
        0x2a -> :sswitch_1
        0x2b -> :sswitch_1d
        0x2c -> :sswitch_1
        0x2f -> :sswitch_f
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1e
        0x37 -> :sswitch_1f
        0x39 -> :sswitch_10
        0x3a -> :sswitch_1
        0x3f -> :sswitch_11
        0x41 -> :sswitch_12
        0x44 -> :sswitch_2
        0x45 -> :sswitch_13
        0x46 -> :sswitch_14
        0x4f -> :sswitch_15
        0x51 -> :sswitch_20
        0x57 -> :sswitch_21
        0x58 -> :sswitch_16
        0x5b -> :sswitch_22
        0x5f -> :sswitch_23
        0x60 -> :sswitch_24
        0x61 -> :sswitch_25
        0x62 -> :sswitch_26
        0x63 -> :sswitch_27
        0x64 -> :sswitch_28
        0x65 -> :sswitch_29
        0x66 -> :sswitch_2a
        0x6f -> :sswitch_2b
        0x7f -> :sswitch_2c
        0xf0 -> :sswitch_3
        0xf1 -> :sswitch_4
        0xf4 -> :sswitch_6
        0xf5 -> :sswitch_7
        0xf6 -> :sswitch_8
        0x870 -> :sswitch_2d
        0x871 -> :sswitch_2e
        0x872 -> :sswitch_2f
        0x874 -> :sswitch_30
        0x875 -> :sswitch_17
        0x876 -> :sswitch_31
        0x877 -> :sswitch_32
        0x878 -> :sswitch_33
        0x879 -> :sswitch_34
        0x87a -> :sswitch_35
        0x87b -> :sswitch_36
        0x87c -> :sswitch_37
        0x87f -> :sswitch_38
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method fakeHoldBeforeDial()V
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 734
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 736
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    .line 728
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    const-string/jumbo v0, "GsmConnection"

    const-string/jumbo v1, "[GSMConn] UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->clearPostDialListeners()V

    .line 878
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 866
    return-void
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getDisconnectCause()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    return v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnectTime:J

    return-wide v0
.end method

.method getGSMIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 758
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    if-ltz v0, :cond_0

    .line 759
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 761
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "GSM index not yet assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 225
    const-wide/16 v0, 0x0

    return-wide v0

    .line 227
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 1024
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberPresentation:I

    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    .prologue
    .line 1033
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v1, :cond_1

    .line 859
    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    if-le v0, v1, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    return-object v0

    .line 241
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object v0
.end method

.method public getVendorDisconnectCause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mVendorCause:Ljava/lang/String;

    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 246
    return-void

    .line 250
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hangup(I)V
    .locals 3
    .param p1, "discRingingConnCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    if-nez v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->hasConnection(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 262
    const-string/jumbo v0, "GsmConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[GSMConn] hangup RingingConn with cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", and ringCall state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 256
    :cond_1
    return-void

    .line 268
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMultiparty()Z
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isMultiparty()Z

    move-result v0

    return v0

    .line 1070
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 3

    .prologue
    .line 1115
    const-string/jumbo v0, "GsmConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GsmConnection: isVideo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsVideo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsVideo:Z

    return v0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1043
    if-nez p1, :cond_0

    return-void

    .line 1045
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    .line 1047
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUUSInfo()Lcom/android/internal/telephony/UUSInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1049
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setUserData(Ljava/lang/Object;)V

    .line 1042
    return-void
.end method

.method onConnectedInOrOut()V
    .locals 4

    .prologue
    .line 770
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTime:J

    .line 771
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTimeReal:J

    .line 772
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDuration:J

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 780
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    if-nez v0, :cond_0

    .line 782
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    .line 784
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 769
    return-void
.end method

.method onDisconnect(I)Z
    .locals 7
    .param p1, "cause"    # I

    .prologue
    const/4 v6, 0x0

    .line 606
    const/4 v0, 0x0

    .line 608
    .local v0, "changed":Z
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 610
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    if-nez v1, :cond_1

    .line 611
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    .line 613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnectTime:J

    .line 614
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTimeReal:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDuration:J

    .line 615
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    .line 617
    const-string/jumbo v1, "GsmConnection"

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

    .line 619
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 621
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->connectionDisconnected(Lcom/android/internal/telephony/gsm/GsmConnection;)Z

    move-result v0

    .line 625
    .end local v0    # "changed":Z
    :cond_0
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    .line 627
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->clearPostDialListeners()V

    .line 628
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 629
    return v0
.end method

.method onHangupLocal()V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mVendorCause:Ljava/lang/String;

    .line 336
    return-void
.end method

.method onRemoteDisconnect(ILjava/lang/String;)V
    .locals 1
    .param p1, "causeCode"    # I
    .param p2, "vendorCause"    # Ljava/lang/String;

    .prologue
    .line 596
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    .line 597
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mVendorCause:Ljava/lang/String;

    .line 598
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z

    .line 595
    return-void
.end method

.method onReplaceDisconnect(I)V
    .locals 4
    .param p1, "cause"    # I

    .prologue
    .line 1076
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 1078
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 1079
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    .line 1081
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnectTime:J

    .line 1082
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTimeReal:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDuration:J

    .line 1083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReplaceDisconnect: cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->connectionDisconnected(Lcom/android/internal/telephony/gsm/GsmConnection;)Z

    .line 1091
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 1075
    return-void
.end method

.method onStartedHolding()V
    .locals 2

    .prologue
    .line 789
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHoldingStartTime:J

    .line 788
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 290
    const-string/jumbo v0, "GsmConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GsmConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 291
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void

    .line 295
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 297
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    .line 288
    return-void
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 303
    const-string/jumbo v1, "GsmConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GsmConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 304
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void

    .line 308
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    .line 316
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 319
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    .line 301
    return-void
.end method

.method resumeHoldAfterDialFailed()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 746
    return-void
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 274
    return-void

    .line 278
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1099
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "*  -> id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1100
    const-string/jumbo v2, ", num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1101
    const-string/jumbo v2, ", MT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1102
    const-string/jumbo v2, ", mDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 7
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    .line 636
    const/4 v0, 0x0

    .line 637
    .local v0, "changed":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v3

    .line 638
    .local v3, "wasConnectingInOrOut":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_6

    const/4 v4, 0x1

    .line 640
    .local v4, "wasHolding":Z
    :goto_0
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v1

    .line 643
    .local v1, "newParent":Lcom/android/internal/telephony/gsm/GsmCall;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v5, :cond_7

    .line 644
    const-string/jumbo v5, "update: mOrigConnection is not null"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 656
    :cond_0
    :goto_1
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 670
    :cond_1
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "--dssds----"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 671
    iget v5, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapNamePresentation:I

    .line 672
    iget v5, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberPresentation:I

    .line 675
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsVideo:Z

    iget-boolean v6, p1, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    if-eq v5, v6, :cond_2

    .line 676
    iget-boolean v5, p1, Lcom/android/internal/telephony/DriverCall;->isVideo:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsVideo:Z

    .line 677
    const/4 v0, 0x1

    .line 681
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v1, v5, :cond_a

    .line 682
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v5, :cond_3

    .line 683
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 685
    :cond_3
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 686
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 687
    const/4 v0, 0x1

    .line 697
    .end local v0    # "changed":Z
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 698
    const-string/jumbo v6, ", parent="

    .line 697
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 698
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 697
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 699
    const-string/jumbo v6, ", hasNewParent="

    .line 697
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 699
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v1, v5, :cond_c

    const/4 v5, 0x1

    .line 697
    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 700
    const-string/jumbo v6, ", wasConnectingInOrOut="

    .line 697
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 701
    const-string/jumbo v6, ", wasHolding="

    .line 697
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 702
    const-string/jumbo v6, ", isConnectingInOrOut="

    .line 697
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 702
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v6

    .line 697
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 704
    const-string/jumbo v6, ", isVideo="

    .line 697
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 704
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsVideo:Z

    .line 697
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 706
    const-string/jumbo v6, ", changed="

    .line 697
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 696
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 709
    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 713
    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    if-eqz v4, :cond_e

    .line 718
    :cond_5
    :goto_6
    return v0

    .line 638
    .end local v1    # "newParent":Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v4    # "wasHolding":Z
    .restart local v0    # "changed":Z
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "wasHolding":Z
    goto/16 :goto_0

    .line 646
    .restart local v1    # "newParent":Lcom/android/internal/telephony/gsm/GsmCall;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " mNumberConverted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberConverted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 647
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberConverted:Z

    if-eqz v5, :cond_8

    .line 648
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConvertedNumber:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 649
    :cond_8
    const-string/jumbo v5, "update: phone # changed!"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 650
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    .line 651
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 665
    :cond_9
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 666
    const/4 v0, 0x1

    .line 667
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    goto/16 :goto_2

    .line 690
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCall;->update(Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v2

    .line 691
    .local v2, "parentStateChange":Z
    if-nez v0, :cond_b

    move v0, v2

    .local v0, "changed":Z
    goto/16 :goto_3

    .local v0, "changed":Z
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 699
    .end local v0    # "changed":Z
    .end local v2    # "parentStateChange":Z
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 710
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onConnectedInOrOut()V

    goto :goto_5

    .line 713
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_5

    .line 715
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    goto :goto_6
.end method

.method updateConferenceParticipantAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    .line 1108
    return-void
.end method
