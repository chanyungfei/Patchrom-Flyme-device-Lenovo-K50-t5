.class public abstract Landroid/telecom/Conference;
.super Landroid/telecom/Conferenceable;
.source "Conference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Conference$Listener;,
        Landroid/telecom/Conference$1;
    }
.end annotation


# static fields
.field public static final CONNECT_TIME_NOT_SPECIFIED:J


# instance fields
.field private mCallAudioState:Landroid/telecom/CallAudioState;

.field private final mChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectTimeMillis:J

.field private mConnectionCapabilities:I

.field private final mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mDisconnectMessage:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/Conference$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private final mUnmodifiableChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static synthetic -get0(Landroid/telecom/Conference;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/telecom/Conference;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/Conference;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    .line 69
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    .line 71
    iget-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 70
    iput-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    .line 74
    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 73
    iput-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Landroid/telecom/Conference;->mState:I

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    .line 91
    new-instance v0, Landroid/telecom/Conference$1;

    invoke-direct {v0, p0}, Landroid/telecom/Conference$1;-><init>(Landroid/telecom/Conference;)V

    iput-object v0, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    .line 106
    iput-object p1, p0, Landroid/telecom/Conference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 105
    return-void
.end method

.method public static can(II)Z
    .locals 2
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .prologue
    const/4 v0, 0x0

    .line 155
    and-int v1, p0, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final clearConferenceableList()V
    .locals 3

    .prologue
    .line 707
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 708
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    goto :goto_0

    .line 710
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_0
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 706
    return-void
.end method

.method private final fireOnConferenceableConnectionsChanged()V
    .locals 3

    .prologue
    .line 518
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 519
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {p0}, Landroid/telecom/Conference;->getConferenceableConnections()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Conference$Listener;->onConferenceableConnectionsChanged(Landroid/telecom/Conference;Ljava/util/List;)V

    goto :goto_0

    .line 517
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 9
    .param p1, "newState"    # I

    .prologue
    const/4 v8, 0x0

    .line 676
    const/4 v5, 0x4

    if-eq p1, v5, :cond_0

    .line 677
    const/4 v5, 0x5

    if-eq p1, v5, :cond_0

    .line 678
    const/4 v5, 0x6

    if-eq p1, v5, :cond_0

    .line 679
    const/4 v5, 0x3

    if-eq p1, v5, :cond_0

    .line 681
    const-string/jumbo v5, "Unsupported state transition for Conference call."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 682
    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 681
    invoke-static {p0, v5, v6}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    return-void

    .line 686
    :cond_0
    iget v5, p0, Landroid/telecom/Conference;->mState:I

    if-eq v5, p1, :cond_2

    .line 687
    iget v4, p0, Landroid/telecom/Conference;->mState:I

    .line 688
    .local v4, "oldState":I
    iput p1, p0, Landroid/telecom/Conference;->mState:I

    .line 691
    new-instance v5, Lcom/mediatek/telecom/FormattedLog$Builder;

    invoke-direct {v5}, Lcom/mediatek/telecom/FormattedLog$Builder;-><init>()V

    invoke-virtual {p0, v5}, Landroid/telecom/Conference;->configDumpLogBuilder(Lcom/mediatek/telecom/FormattedLog$Builder;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v0

    .line 692
    .local v0, "builder":Lcom/mediatek/telecom/FormattedLog$Builder;
    if-eqz v0, :cond_1

    .line 693
    invoke-virtual {v0}, Lcom/mediatek/telecom/FormattedLog$Builder;->buildDumpInfo()Lcom/mediatek/telecom/FormattedLog;

    move-result-object v1

    .line 694
    .local v1, "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    if-eqz v1, :cond_1

    .line 695
    invoke-virtual {v1}, Lcom/mediatek/telecom/FormattedLog;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    .end local v1    # "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    :cond_1
    iget-object v5, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conference$Listener;

    .line 701
    .local v2, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v2, p0, v4, p1}, Landroid/telecom/Conference$Listener;->onStateChanged(Landroid/telecom/Conference;II)V

    goto :goto_0

    .line 673
    .end local v0    # "builder":Lcom/mediatek/telecom/FormattedLog$Builder;
    .end local v2    # "l":Landroid/telecom/Conference$Listener;
    .end local v3    # "l$iterator":Ljava/util/Iterator;
    .end local v4    # "oldState":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addCapability(I)V
    .locals 3
    .param p1, "capability"    # I

    .prologue
    .line 191
    iget v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    or-int/2addr v2, p1

    iput v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    .line 193
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 194
    .local v0, "l":Landroid/telecom/Conference$Listener;
    iget v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Conference$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V

    goto :goto_0

    .line 190
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method public final addConnection(Landroid/telecom/Connection;)Z
    .locals 6
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 434
    const-string/jumbo v2, "Connection=%s, connection="

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    :cond_0
    return v4

    .line 436
    :cond_1
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->setConference(Landroid/telecom/Conference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    iget-object v2, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onConnectionAdded(Landroid/telecom/Connection;)V

    .line 439
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 440
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Conference$Listener;->onConnectionAdded(Landroid/telecom/Conference;Landroid/telecom/Connection;)V

    goto :goto_0

    .line 442
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_2
    return v5
.end method

.method public final addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Conference$Listener;

    .prologue
    .line 589
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 590
    return-object p0
.end method

.method protected buildConnectionCapabilities()I
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public can(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 166
    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    invoke-static {v0, p1}, Landroid/telecom/Conference;->can(II)Z

    move-result v0

    return v0
.end method

.method protected configDumpLogBuilder(Lcom/mediatek/telecom/FormattedLog$Builder;)Lcom/mediatek/telecom/FormattedLog$Builder;
    .locals 2
    .param p1, "builder"    # Lcom/mediatek/telecom/FormattedLog$Builder;

    .prologue
    const/4 v0, 0x0

    .line 795
    if-nez p1, :cond_0

    .line 796
    return-object v0

    .line 799
    :cond_0
    const-string/jumbo v0, "CC"

    invoke-virtual {p1, v0}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCategory(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    .line 800
    sget-object v0, Lcom/mediatek/telecom/FormattedLog$OpType;->DUMP:Lcom/mediatek/telecom/FormattedLog$OpType;

    invoke-virtual {p1, v0}, Lcom/mediatek/telecom/FormattedLog$Builder;->setOpType(Lcom/mediatek/telecom/FormattedLog$OpType;)Lcom/mediatek/telecom/FormattedLog$Builder;

    .line 801
    const-string/jumbo v0, "conferenceCall"

    invoke-virtual {p1, v0}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallNumber(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    .line 802
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallId(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    .line 803
    const-string/jumbo v0, "isConfCall"

    const-string/jumbo v1, "Yes"

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    .line 805
    const-string/jumbo v0, "state"

    iget v1, p0, Landroid/telecom/Conference;->mState:I

    invoke-static {v1}, Landroid/telecom/Connection;->callStateToFormattedDumpString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    .line 806
    const-string/jumbo v0, "isConfChildCall"

    const-string/jumbo v1, "No"

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    .line 807
    const-string/jumbo v0, "capabilities"

    .line 808
    invoke-virtual {p0}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v1

    .line 807
    invoke-virtual {p1, v0, v1}, Lcom/mediatek/telecom/FormattedLog$Builder;->setStatusInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    .line 810
    return-object p1
.end method

.method public final destroy()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 534
    const-string/jumbo v6, "destroying conference : %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p0, v7, v8

    invoke-static {p0, v6, v7}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 548
    .local v3, "disconnectedChild":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 550
    .local v0, "activeChild":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    iget-object v6, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "connection$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 551
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-virtual {v1}, Landroid/telecom/Connection;->getState()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    .line 552
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 554
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 558
    .end local v1    # "connection":Landroid/telecom/Connection;
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 559
    .restart local v1    # "connection":Landroid/telecom/Connection;
    const-string/jumbo v6, "removing connection for disconnectedChild %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {p0, v6, v7}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    invoke-virtual {p0, v1}, Landroid/telecom/Conference;->removeConnection(Landroid/telecom/Connection;)V

    goto :goto_1

    .line 563
    .end local v1    # "connection":Landroid/telecom/Connection;
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 564
    .restart local v1    # "connection":Landroid/telecom/Connection;
    const-string/jumbo v6, "removing connection for activeChild %s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-static {p0, v6, v7}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    invoke-virtual {p0, v1}, Landroid/telecom/Conference;->removeConnection(Landroid/telecom/Connection;)V

    goto :goto_2

    .line 570
    .end local v1    # "connection":Landroid/telecom/Connection;
    :cond_3
    iget v6, p0, Landroid/telecom/Conference;->mState:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_4

    .line 571
    const-string/jumbo v6, "setting to disconnected"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    new-instance v6, Landroid/telecom/DisconnectCause;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v6}, Landroid/telecom/Conference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 576
    :cond_4
    iget-object v6, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "l$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Conference$Listener;

    .line 577
    .local v4, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v4, p0}, Landroid/telecom/Conference$Listener;->onDestroyed(Landroid/telecom/Conference;)V

    goto :goto_3

    .line 533
    .end local v4    # "l":Landroid/telecom/Conference$Listener;
    :cond_5
    return-void
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final getConferenceableConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectTimeMillis()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 646
    invoke-virtual {p0}, Landroid/telecom/Conference;->getConnectionTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getConnectionCapabilities()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    return v0
.end method

.method public final getConnectionTime()J
    .locals 2

    .prologue
    .line 657
    iget-wide v0, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public final getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    return-object v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/telecom/Conference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getPrimaryConnection()Landroid/telecom/Connection;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 614
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    :cond_0
    return-object v1

    .line 617
    :cond_1
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Landroid/telecom/Conference;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Landroid/telecom/Conference;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Landroid/telecom/Conference;->mVideoState:I

    return v0
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 306
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 313
    return-void
.end method

.method public onConnectionAdded(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 320
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public onDisconnect(Ljava/lang/String;)V
    .locals 0
    .param p1, "pendingCallAction"    # Ljava/lang/String;

    .prologue
    .line 351
    return-void
.end method

.method public onHangupAll()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public onHold()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public onHold(Ljava/lang/String;)V
    .locals 0
    .param p1, "pendingCallAction"    # Ljava/lang/String;

    .prologue
    .line 343
    return-void
.end method

.method public onInviteConferenceParticipants(Ljava/util/List;)V
    .locals 0
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
    .line 771
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onMerge()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public onMerge(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 261
    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 290
    return-void
.end method

.method public onSeparate(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 254
    return-void
.end method

.method public onStopDtmfTone()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public onSwap()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public onSwapWithBackgroundCall()V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method public onUnhold()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public removeCapability(I)V
    .locals 4
    .param p1, "capability"    # I

    .prologue
    .line 176
    iget v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    not-int v3, p1

    and-int/2addr v2, v3

    iput v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    .line 178
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 179
    .local v0, "l":Landroid/telecom/Conference$Listener;
    iget v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Conference$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V

    goto :goto_0

    .line 175
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method public final removeConnection(Landroid/telecom/Connection;)V
    .locals 6
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 454
    const-string/jumbo v2, "removing %s from %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget-object v4, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    invoke-virtual {p1}, Landroid/telecom/Connection;->resetConference()V

    .line 457
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 458
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Conference$Listener;->onConnectionRemoved(Landroid/telecom/Conference;Landroid/telecom/Connection;)V

    goto :goto_0

    .line 453
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Conference$Listener;

    .prologue
    .line 601
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 602
    return-object p0
.end method

.method public final setActive()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 372
    return-void
.end method

.method final setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 667
    const-string/jumbo v0, "setCallAudioState %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    iput-object p1, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 669
    invoke-virtual {p0}, Landroid/telecom/Conference;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 670
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 666
    return-void
.end method

.method public final setConferenceableConnections(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 469
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-direct {p0}, Landroid/telecom/Conference;->clearConferenceableList()V

    .line 470
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 473
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 474
    iget-object v2, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 475
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 478
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_1
    invoke-direct {p0}, Landroid/telecom/Conference;->fireOnConferenceableConnectionsChanged()V

    .line 468
    return-void
.end method

.method public final setConnectTimeMillis(J)V
    .locals 1
    .param p1, "connectTimeMillis"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 627
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Conference;->setConnectionTime(J)V

    .line 626
    return-void
.end method

.method public final setConnectionCapabilities(I)V
    .locals 3
    .param p1, "connectionCapabilities"    # I

    .prologue
    .line 418
    iget v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    if-eq p1, v2, :cond_0

    .line 419
    iput p1, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    .line 421
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 422
    .local v0, "l":Landroid/telecom/Conference$Listener;
    iget v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Conference$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V

    goto :goto_0

    .line 417
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final setConnectionTime(J)V
    .locals 1
    .param p1, "connectionTimeMillis"    # J

    .prologue
    .line 636
    iput-wide p1, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    .line 635
    return-void
.end method

.method public final setDialing()V
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 365
    return-void
.end method

.method public final setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 3
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 383
    iput-object p1, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 384
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Landroid/telecom/Conference;->setState(I)V

    .line 385
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 386
    .local v0, "l":Landroid/telecom/Conference$Listener;
    iget-object v2, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Conference$Listener;->onDisconnected(Landroid/telecom/Conference;Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 382
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 751
    iput-object p1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    .line 752
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 753
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Conference$Listener;->onExtrasChanged(Landroid/telecom/Conference;Landroid/os/Bundle;)V

    goto :goto_0

    .line 750
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method public final setOnHold()V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 325
    return-void
.end method

.method protected final setRinging()V
    .locals 1

    .prologue
    .line 778
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 777
    return-void
.end method

.method public final setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 3
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 730
    iput-object p1, p0, Landroid/telecom/Conference;->mStatusHints:Landroid/telecom/StatusHints;

    .line 731
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 732
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Conference$Listener;->onStatusHintsChanged(Landroid/telecom/Conference;Landroid/telecom/StatusHints;)V

    goto :goto_0

    .line 729
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method public final setVideoProvider(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .locals 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 507
    const-string/jumbo v2, "setVideoProvider Conference: %s Connection: %s VideoState: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 508
    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    .line 507
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    iput-object p2, p0, Landroid/telecom/Conference;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 512
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 513
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, p2}, Landroid/telecom/Conference$Listener;->onVideoProviderChanged(Landroid/telecom/Conference;Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_0

    .line 506
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method public final setVideoState(Landroid/telecom/Connection;I)V
    .locals 6
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoState"    # I

    .prologue
    .line 491
    const-string/jumbo v2, "setVideoState Conference: %s Connection: %s VideoState: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 492
    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 491
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    iput p2, p0, Landroid/telecom/Conference;->mVideoState:I

    .line 496
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 497
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, p2}, Landroid/telecom/Conference$Listener;->onVideoStateChanged(Landroid/telecom/Conference;I)V

    goto :goto_0

    .line 490
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 715
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 716
    const-string/jumbo v1, "[State: %s,Capabilites: %s, VideoState: %s, VideoProvider: %s, ThisObject %s]"

    .line 715
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 717
    iget v3, p0, Landroid/telecom/Conference;->mState:I

    invoke-static {v3}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 718
    iget v3, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    invoke-static {v3}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 719
    invoke-virtual {p0}, Landroid/telecom/Conference;->getVideoState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 720
    invoke-virtual {p0}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 721
    invoke-super {p0}, Landroid/telecom/Conferenceable;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 715
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateConnectionCapabilities()V
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Landroid/telecom/Conference;->buildConnectionCapabilities()I

    move-result v0

    .line 400
    .local v0, "newConnectionCapabilities":I
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->setConnectionCapabilities(I)V

    .line 398
    return-void
.end method
