.class public abstract Lcom/android/internal/telephony/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Connection$PostDialListener;,
        Lcom/android/internal/telephony/Connection$Listener;,
        Lcom/android/internal/telephony/Connection$ListenerBase;,
        Lcom/android/internal/telephony/Connection$PostDialState;
    }
.end annotation


# static fields
.field public static final AUDIO_QUALITY_HIGH_DEFINITION:I = 0x2

.field public static final AUDIO_QUALITY_STANDARD:I = 0x1

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mAddress:Ljava/lang/String;

.field private mAudioQuality:I

.field private mCallSubstate:I

.field protected mCnapName:Ljava/lang/String;

.field protected mCnapNamePresentation:I

.field protected mConnectTime:J

.field protected mConnectTimeReal:J

.field protected mConvertedNumber:Ljava/lang/String;

.field protected mCreateTime:J

.field protected mDialString:Ljava/lang/String;

.field protected mDuration:J

.field mForwardingAddress:Ljava/lang/String;

.field protected mHoldingStartTime:J

.field protected mIsIncoming:Z

.field private mIsWifi:Z

.field public mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/telephony/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalVideoCapable:Z

.field protected mNumberConverted:Z

.field protected mNumberPresentation:I

.field protected mOrigConnection:Lcom/android/internal/telephony/Connection;

.field protected mPau:Ljava/lang/String;

.field private mPostDialListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection$PostDialListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPreHandoverState:Lcom/android/internal/telephony/Call$State;

.field public mPreMultipartyHostState:Z

.field public mPreMultipartyState:Z

.field mRedirectingAddress:Ljava/lang/String;

.field private mRemoteVideoCapable:Z

.field mUserData:Ljava/lang/Object;

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    const-string/jumbo v0, "Connection"

    sput-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 138
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    .line 157
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    .line 159
    iput-boolean v1, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    .line 172
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    .line 175
    iput-boolean v1, p0, Lcom/android/internal/telephony/Connection;->mPreMultipartyState:Z

    .line 176
    iput-boolean v1, p0, Lcom/android/internal/telephony/Connection;->mPreMultipartyHostState:Z

    .line 40
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$Listener;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 594
    return-void
.end method

.method public final addPostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$PostDialListener;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_0
    return-void
.end method

.method public abstract cancelPostDial()V
.end method

.method protected final clearPostDialListeners()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 503
    return-void
.end method

.method public clearUserData()V
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    .line 489
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioQuality()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    return v0
.end method

.method public abstract getCall()Lcom/android/internal/telephony/Call;
.end method

.method public getCallSubstate()I
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    return v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    return v0
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 410
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 412
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 413
    return-object v1

    .line 415
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConferenceParticipants()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    return-wide v0
.end method

.method public getConnectTimeReal()J
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    return-wide v0
.end method

.method public abstract getDisconnectCause()I
.end method

.method public abstract getDisconnectTime()J
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 300
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 301
    return-wide v2

    .line 302
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 305
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForwardingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mForwardingAddress:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getHoldDurationMillis()J
.end method

.method public getHoldingStartTime()J
    .locals 2

    .prologue
    .line 315
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    return-wide v0
.end method

.method public abstract getNumberPresentation()I
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
.end method

.method public abstract getPreciseDisconnectCause()I
.end method

.method public getRedirectingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mRedirectingAddress:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getRemainingPostDialString()Ljava/lang/String;
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 363
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 364
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    return-object v1

    .line 366
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    return-object v1
.end method

.method public getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public abstract getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getVendorDisconnectCause()Ljava/lang/String;
.end method

.method public getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    return v0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public hangup(I)V
    .locals 0
    .param p1, "discRingingConnCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 462
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isConfHostBeforeHandover()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mPreMultipartyHostState:Z

    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    return v0
.end method

.method public isIncomingCallMultiparty()Z
    .locals 1

    .prologue
    .line 921
    const/4 v0, 0x0

    return v0
.end method

.method public isLocalVideoCapable()Z
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mLocalVideoCapable:Z

    return v0
.end method

.method public abstract isMultiparty()Z
.end method

.method public isMultipartyBeforeHandover()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mPreMultipartyState:Z

    return v0
.end method

.method public isRemoteVideoCapable()Z
    .locals 1

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mRemoteVideoCapable:Z

    return v0
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public isVideo()Z
    .locals 2

    .prologue
    .line 908
    sget-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Connection: isVideo = false"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v0, 0x0

    return v0
.end method

.method public isWifi()Z
    .locals 1

    .prologue
    .line 640
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    return v0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 579
    if-nez p1, :cond_0

    return-void

    .line 580
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    .line 581
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 582
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    .line 583
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 584
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTimeReal()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    .line 585
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getHoldingStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    .line 586
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    .line 578
    return-void
.end method

.method public notifyConferenceConnectionsConfigured(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 823
    .local p1, "radioConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 824
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceConnectionsConfigured(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 822
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public notifyConferenceParticipantsInvited(Z)V
    .locals 3
    .param p1, "isSuccess"    # Z

    .prologue
    .line 812
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 813
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceParticipantsInvited(Z)V

    goto :goto_0

    .line 811
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public notifyPauInfoUpdated(Ljava/lang/String;)V
    .locals 3
    .param p1, "pau"    # Ljava/lang/String;

    .prologue
    .line 836
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 837
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onPauInfoUpdated(Ljava/lang/String;)V

    goto :goto_0

    .line 835
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method protected final notifyPostDialListeners()V
    .locals 4

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v2, v3, :cond_0

    .line 509
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 510
    .local v0, "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialWait()V

    goto :goto_0

    .line 507
    .end local v0    # "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected final notifyPostDialListenersNextChar(C)V
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 516
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 517
    .local v0, "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialChar(C)V

    goto :goto_0

    .line 515
    .end local v0    # "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    :cond_0
    return-void
.end method

.method public onConferenceMergeFailed()V
    .locals 3

    .prologue
    .line 791
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 792
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceMergedFailed()V

    goto :goto_0

    .line 790
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0
    .param p1, "endpoint"    # Landroid/net/Uri;

    .prologue
    .line 802
    return-void
.end method

.method public abstract proceedAfterWaitChar()V
.end method

.method public abstract proceedAfterWildChar(Ljava/lang/String;)V
.end method

.method public final removeListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$Listener;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 603
    return-void
.end method

.method public final removePostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$PostDialListener;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 499
    return-void
.end method

.method public abstract separate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public setAudioQuality(I)V
    .locals 3
    .param p1, "audioQuality"    # I

    .prologue
    .line 727
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    .line 728
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 729
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onAudioQualityChanged(I)V

    goto :goto_0

    .line 726
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setCallSubstate(I)V
    .locals 3
    .param p1, "callSubstate"    # I

    .prologue
    .line 740
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    .line 741
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 742
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onCallSubstateChanged(I)V

    goto :goto_0

    .line 739
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setConnectTime(J)V
    .locals 1
    .param p1, "connectTime"    # J

    .prologue
    .line 273
    iput-wide p1, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 272
    return-void
.end method

.method public setConverted(Ljava/lang/String;)V
    .locals 1
    .param p1, "oriNumber"    # Ljava/lang/String;

    .prologue
    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    .line 760
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mConvertedNumber:Ljava/lang/String;

    .line 761
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 762
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 758
    return-void
.end method

.method public setForwardingAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 898
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mForwardingAddress:Ljava/lang/String;

    .line 897
    return-void
.end method

.method public setLocalVideoCapable(Z)V
    .locals 3
    .param p1, "capable"    # Z

    .prologue
    .line 691
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mLocalVideoCapable:Z

    .line 692
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 693
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mLocalVideoCapable:Z

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onLocalVideoCapabilityChanged(Z)V

    goto :goto_0

    .line 690
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setNumberPresentation(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 203
    return-void
.end method

.method public setRedirectingAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mRedirectingAddress:Ljava/lang/String;

    .line 878
    return-void
.end method

.method public setRemoteVideoCapable(Z)V
    .locals 3
    .param p1, "capable"    # Z

    .prologue
    .line 703
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mRemoteVideoCapable:Z

    .line 704
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 705
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mRemoteVideoCapable:Z

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onRemoteVideoCapabilityChanged(Z)V

    goto :goto_0

    .line 702
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userdata"    # Ljava/lang/Object;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    .line 450
    return-void
.end method

.method public setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 753
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 754
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_0

    .line 751
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setVideoState(I)V
    .locals 3
    .param p1, "videoState"    # I

    .prologue
    .line 679
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    .line 680
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 681
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onVideoStateChanged(I)V

    goto :goto_0

    .line 678
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setWifi(Z)V
    .locals 3
    .param p1, "isWifi"    # Z

    .prologue
    .line 715
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    .line 716
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 717
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onWifiChanged(Z)V

    goto :goto_0

    .line 714
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 850
    .local v0, "str":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    const-string/jumbo v1, "addr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 852
    const-string/jumbo v2, " pres.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 853
    const-string/jumbo v2, " dial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 854
    const-string/jumbo v2, " postdial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 855
    const-string/jumbo v2, " cnap name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 856
    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    :cond_0
    const-string/jumbo v1, " incoming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 859
    const-string/jumbo v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 860
    const-string/jumbo v2, " post dial state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 861
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateConferenceParticipants(Ljava/util/List;)V
    .locals 3
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
    .line 771
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 772
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceParticipantsChanged(Ljava/util/List;)V

    goto :goto_0

    .line 770
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public updateMultipartyState(Z)V
    .locals 3
    .param p1, "isMultiparty"    # Z

    .prologue
    .line 782
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 783
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onMultipartyStateChanged(Z)V

    goto :goto_0

    .line 781
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method
