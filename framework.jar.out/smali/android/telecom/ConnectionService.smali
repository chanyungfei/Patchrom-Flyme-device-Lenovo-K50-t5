.class public abstract Landroid/telecom/ConnectionService;
.super Landroid/app/Service;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ConnectionService$1;,
        Landroid/telecom/ConnectionService$2;,
        Landroid/telecom/ConnectionService$3;,
        Landroid/telecom/ConnectionService$4;
    }
.end annotation


# static fields
.field private static final MSG_ABORT:I = 0x3

.field private static final MSG_ADD_CONNECTION_SERVICE_ADAPTER:I = 0x1

.field private static final MSG_ANSWER:I = 0x4

.field private static final MSG_ANSWER_VIDEO:I = 0x11

.field private static final MSG_CONFERENCE:I = 0xc

.field private static final MSG_CREATE_CONFERENCE:I = 0x3ee

.field private static final MSG_CREATE_CONNECTION:I = 0x2

.field private static final MSG_DISCONNECT:I = 0x6

.field private static final MSG_DISCONNECT_WITH_PENDING_CALL_ACTION:I = 0x3f0

.field private static final MSG_ECT:I = 0x3eb

.field private static final MSG_HANGUP_ALL:I = 0x3ec

.field private static final MSG_HOLD:I = 0x7

.field private static final MSG_HOLD_WITH_PENDING_CALL_ACTION:I = 0x3ef

.field private static final MSG_INVITE_CONFERENCE_PARTICIPANTS:I = 0x3ed

.field private static final MSG_MERGE_CONFERENCE:I = 0x12

.field private static final MSG_ON_CALL_AUDIO_STATE_CHANGED:I = 0x9

.field private static final MSG_ON_POST_DIAL_CONTINUE:I = 0xe

.field private static final MSG_PLAY_DTMF_TONE:I = 0xa

.field private static final MSG_REJECT:I = 0x5

.field private static final MSG_REJECT_WITH_CAUSE:I = 0x3ea

.field private static final MSG_REMOVE_CONNECTION_SERVICE_ADAPTER:I = 0x10

.field private static final MSG_SPLIT_FROM_CONFERENCE:I = 0xd

.field private static final MSG_STOP_DTMF_TONE:I = 0xb

.field private static final MSG_SWAP_CONFERENCE:I = 0x13

.field private static final MSG_SWAP_WITH_BACKGROUND_CALL:I = 0x3e9

.field private static final MSG_UNHOLD:I = 0x8

.field private static final MTK_MSG_BASE:I = 0x3e8

.field private static final PII_DEBUG:Z

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.ConnectionService"

.field private static sNullConnection:Landroid/telecom/Connection;


# instance fields
.field private final mAdapter:Landroid/telecom/ConnectionServiceAdapter;

.field private mAreAccountsInitialized:Z

.field private final mBinder:Landroid/os/IBinder;

.field private final mConferenceById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Conference;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceListener:Landroid/telecom/Conference$Listener;

.field private final mConnectionById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final mHandler:Landroid/os/Handler;

.field private final mIdByConference:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/Conference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdByConnection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/Connection;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreInitializationConnectionRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

.field private sNullConference:Landroid/telecom/Conference;


# direct methods
.method static synthetic -get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telecom/ConnectionService;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    return v0
.end method

.method static synthetic -get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get5(Landroid/telecom/ConnectionService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get6(Landroid/telecom/ConnectionService;)Landroid/telecom/RemoteConnectionManager;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    return-object v0
.end method

.method static synthetic -set0(Landroid/telecom/ConnectionService;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "connections"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createConnectionIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "conferenceables"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->explicitCallTransfer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->hangupAll(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap12(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap13(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "pendingCallAction"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap14(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "conferenceCallId"    # Ljava/lang/String;
    .param p2, "numbers"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->inviteConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap15(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->mergeConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap16(Landroid/telecom/ConnectionService;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAccountsInitialized()V

    return-void
.end method

.method static synthetic -wrap17(Landroid/telecom/ConnectionService;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAdapterAttached()V

    return-void
.end method

.method static synthetic -wrap18(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method static synthetic -wrap19(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->abort(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap20(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->playDtmfTone(Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic -wrap21(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap22(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "cause"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap23(Landroid/telecom/ConnectionService;Landroid/telecom/Conference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->removeConference(Landroid/telecom/Conference;)V

    return-void
.end method

.method static synthetic -wrap24(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->splitFromConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap25(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->stopDtmfTone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap26(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->swapConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap27(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->swapWithBackgroundCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap28(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->unhold(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->answerVideo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->answer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId1"    # Ljava/lang/String;
    .param p2, "callId2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)V
    .locals 0
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "conferenceCallId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "numbers"    # Ljava/util/List;
    .param p5, "isIncoming"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/telecom/ConnectionService;->createConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 0
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/telecom/ConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "pendingCallAction"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->disconnect(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/ConnectionService;->PII_DEBUG:Z

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 140
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    .line 142
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    .line 143
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    .line 145
    new-instance v0, Landroid/telecom/RemoteConnectionManager;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionManager;-><init>(Landroid/telecom/ConnectionService;)V

    .line 144
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    .line 147
    new-instance v0, Landroid/telecom/ConnectionServiceAdapter;

    invoke-direct {v0}, Landroid/telecom/ConnectionServiceAdapter;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 152
    new-instance v0, Landroid/telecom/ConnectionService$1;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$1;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    .line 343
    new-instance v0, Landroid/telecom/ConnectionService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$2;-><init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    .line 574
    new-instance v0, Landroid/telecom/ConnectionService$3;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$3;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    .line 656
    new-instance v0, Landroid/telecom/ConnectionService$4;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$4;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    .line 87
    return-void
.end method

.method private abort(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 971
    const-string/jumbo v0, "abort %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 972
    const-string/jumbo v0, "abort"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onAbort()V

    .line 970
    return-void
.end method

.method private addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;
    .locals 5
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    const/4 v4, 0x0

    .line 1728
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1729
    const-string/jumbo v1, "Re-adding an existing conference: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1738
    :cond_0
    return-object v4

    .line 1730
    :cond_1
    if-eqz p1, :cond_0

    .line 1731
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1732
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 1735
    return-object v0
.end method

.method private addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1706
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p2, v0}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1709
    invoke-virtual {p2, p0}, Landroid/telecom/Connection;->setConnectionService(Landroid/telecom/ConnectionService;)V

    .line 1713
    invoke-virtual {p2}, Landroid/telecom/Connection;->fireOnCallState()V

    .line 1705
    return-void
.end method

.method private addExistingConnectionInternal(Landroid/telecom/Connection;)Ljava/lang/String;
    .locals 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1700
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1701
    .local v0, "id":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Landroid/telecom/ConnectionService;->addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 1702
    return-object v0
.end method

.method private answer(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 982
    const-string/jumbo v0, "CC"

    const-string/jumbo v1, "Answer"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const-string/jumbo v0, "answer %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 985
    const-string/jumbo v0, "answer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onAnswer()V

    .line 980
    return-void
.end method

.method private answerVideo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 976
    const-string/jumbo v0, "answerVideo %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 977
    const-string/jumbo v0, "answer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onAnswer(I)V

    .line 975
    return-void
.end method

.method private conference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "callId1"    # Ljava/lang/String;
    .param p2, "callId2"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1069
    const-string/jumbo v4, "CC"

    const-string/jumbo v5, "Conference"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, p1, v6}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const-string/jumbo v4, "conference %s, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object p2, v5, v8

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1074
    const-string/jumbo v4, "conference"

    invoke-direct {p0, p2, v4}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v3

    .line 1075
    .local v3, "connection2":Landroid/telecom/Connection;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v1

    .line 1076
    .local v1, "conference2":Landroid/telecom/Conference;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1077
    const-string/jumbo v4, "conference"

    invoke-direct {p0, p2, v4}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v1

    .line 1078
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-ne v1, v4, :cond_0

    .line 1079
    const-string/jumbo v4, "Connection2 or Conference2 missing in conference request %s."

    new-array v5, v8, [Ljava/lang/Object;

    .line 1080
    aput-object p2, v5, v7

    .line 1079
    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1081
    return-void

    .line 1086
    :cond_0
    const-string/jumbo v4, "conference"

    invoke-direct {p0, p1, v4}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v2

    .line 1087
    .local v2, "connection1":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-ne v2, v4, :cond_3

    .line 1088
    const-string/jumbo v4, "addConnection"

    invoke-direct {p0, p1, v4}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 1089
    .local v0, "conference1":Landroid/telecom/Conference;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-ne v0, v4, :cond_1

    .line 1091
    const-string/jumbo v4, "Connection1 or Conference1 missing in conference request %s."

    .line 1090
    new-array v5, v8, [Ljava/lang/Object;

    .line 1092
    aput-object p1, v5, v7

    .line 1090
    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1067
    .end local v0    # "conference1":Landroid/telecom/Conference;
    :goto_0
    return-void

    .line 1095
    .restart local v0    # "conference1":Landroid/telecom/Conference;
    :cond_1
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 1097
    invoke-virtual {v0, v3}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 1100
    :cond_2
    const-string/jumbo v4, "There can only be one conference and an attempt was made to merge two conferences."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1102
    return-void

    .line 1107
    .end local v0    # "conference1":Landroid/telecom/Conference;
    :cond_3
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-eq v1, v4, :cond_4

    .line 1109
    invoke-virtual {v1, v2}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 1112
    :cond_4
    invoke-virtual {p0, v2, v3}, Landroid/telecom/ConnectionService;->onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V

    goto :goto_0
.end method

.method private createConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)V
    .locals 19
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "conferenceCallId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p5, "isIncoming"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/String;",
            "Landroid/telecom/ConnectionRequest;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1236
    .local p4, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v4, "createConference, callManagerAccount: %s, conferenceCallId: %s, request: %s, numbers: %s, isIncoming: %b"

    .line 1235
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 1237
    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    .line 1238
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    .line 1235
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1241
    if-nez p5, :cond_1

    .line 1242
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1243
    .local v18, "sb":Ljava/lang/StringBuilder;
    invoke-interface/range {p4 .. p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "number$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1244
    .local v16, "number":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1247
    .end local v16    # "number":Ljava/lang/String;
    :cond_0
    new-instance v4, Lcom/mediatek/telecom/FormattedLog$Builder;

    invoke-direct {v4}, Lcom/mediatek/telecom/FormattedLog$Builder;-><init>()V

    .line 1248
    const-string/jumbo v5, "CC"

    .line 1247
    invoke-virtual {v4, v5}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCategory(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 1249
    invoke-direct/range {p0 .. p0}, Landroid/telecom/ConnectionService;->getConnectionServiceName()Ljava/lang/String;

    move-result-object v5

    .line 1247
    invoke-virtual {v4, v5}, Lcom/mediatek/telecom/FormattedLog$Builder;->setServiceName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 1250
    sget-object v5, Lcom/mediatek/telecom/FormattedLog$OpType;->OPERATION:Lcom/mediatek/telecom/FormattedLog$OpType;

    .line 1247
    invoke-virtual {v4, v5}, Lcom/mediatek/telecom/FormattedLog$Builder;->setOpType(Lcom/mediatek/telecom/FormattedLog$OpType;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 1251
    const-string/jumbo v5, "DialConf"

    .line 1247
    invoke-virtual {v4, v5}, Lcom/mediatek/telecom/FormattedLog$Builder;->setActionName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 1252
    const-string/jumbo v5, "conferenceCall"

    .line 1247
    invoke-virtual {v4, v5}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallNumber(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 1253
    const-string/jumbo v5, ""

    .line 1247
    invoke-virtual {v4, v5}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallId(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 1254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "numbers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1247
    invoke-virtual {v4, v5}, Lcom/mediatek/telecom/FormattedLog$Builder;->setExtraMessage(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/telecom/FormattedLog$Builder;->buildDebugMsg()Lcom/mediatek/telecom/FormattedLog;

    move-result-object v15

    .line 1256
    .local v15, "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    if-eqz v15, :cond_1

    .line 1257
    invoke-virtual {v15}, Lcom/mediatek/telecom/FormattedLog;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1263
    .end local v15    # "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    .end local v17    # "number$iterator":Ljava/util/Iterator;
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual/range {p0 .. p5}, Landroid/telecom/ConnectionService;->onCreateConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)Landroid/telecom/Conference;

    move-result-object v2

    .line 1270
    .local v2, "conference":Landroid/telecom/Conference;
    if-nez v2, :cond_3

    .line 1271
    const-string/jumbo v4, "Fail to create conference!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1272
    invoke-direct/range {p0 .. p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v2

    .line 1283
    :cond_2
    :goto_1
    new-instance v3, Landroid/telecom/ParcelableConference;

    .line 1284
    invoke-virtual {v2}, Landroid/telecom/Conference;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    .line 1285
    invoke-virtual {v2}, Landroid/telecom/Conference;->getState()I

    move-result v5

    .line 1286
    invoke-virtual {v2}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    move-result v6

    .line 1288
    invoke-virtual {v2}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v7

    if-nez v7, :cond_5

    .line 1289
    const/4 v8, 0x0

    .line 1290
    :goto_2
    invoke-virtual {v2}, Landroid/telecom/Conference;->getVideoState()I

    move-result v9

    .line 1291
    invoke-virtual {v2}, Landroid/telecom/Conference;->getConnectTimeMillis()J

    move-result-wide v10

    .line 1292
    invoke-virtual {v2}, Landroid/telecom/Conference;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v12

    .line 1293
    invoke-virtual {v2}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 1294
    invoke-virtual {v2}, Landroid/telecom/Conference;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v14

    .line 1287
    const/4 v7, 0x0

    .line 1283
    invoke-direct/range {v3 .. v14}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJLandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/telecom/DisconnectCause;)V

    .line 1296
    .local v3, "parcelableConference":Landroid/telecom/ParcelableConference;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1, v3}, Landroid/telecom/ConnectionServiceAdapter;->handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;)V

    .line 1234
    return-void

    .line 1273
    .end local v3    # "parcelableConference":Landroid/telecom/ParcelableConference;
    :cond_3
    invoke-virtual {v2}, Landroid/telecom/Conference;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    .line 1274
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1275
    const-string/jumbo v4, "Re-adding an existing conference: %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1277
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v4}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_1

    .line 1289
    :cond_5
    invoke-virtual {v2}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v8

    goto :goto_2
.end method

.method private createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 28
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    .prologue
    .line 884
    const-string/jumbo v4, "createConnection, callManagerAccount: %s, callId: %s, request: %s, isIncoming: %b, isUnknown: %b"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    .line 885
    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 886
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v6, v8

    .line 884
    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 889
    if-nez p4, :cond_1

    .line 890
    const/16 v23, 0x0

    .line 891
    .local v23, "callNumber":Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 892
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v23

    .line 894
    .end local v23    # "callNumber":Ljava/lang/String;
    :cond_0
    new-instance v4, Lcom/mediatek/telecom/FormattedLog$Builder;

    invoke-direct {v4}, Lcom/mediatek/telecom/FormattedLog$Builder;-><init>()V

    .line 895
    const-string/jumbo v6, "CC"

    .line 894
    invoke-virtual {v4, v6}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCategory(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 896
    invoke-direct/range {p0 .. p0}, Landroid/telecom/ConnectionService;->getConnectionServiceName()Ljava/lang/String;

    move-result-object v6

    .line 894
    invoke-virtual {v4, v6}, Lcom/mediatek/telecom/FormattedLog$Builder;->setServiceName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 897
    sget-object v6, Lcom/mediatek/telecom/FormattedLog$OpType;->OPERATION:Lcom/mediatek/telecom/FormattedLog$OpType;

    .line 894
    invoke-virtual {v4, v6}, Lcom/mediatek/telecom/FormattedLog$Builder;->setOpType(Lcom/mediatek/telecom/FormattedLog$OpType;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 898
    const-string/jumbo v6, "Dial"

    .line 894
    invoke-virtual {v4, v6}, Lcom/mediatek/telecom/FormattedLog$Builder;->setActionName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallNumber(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 900
    const-string/jumbo v6, ""

    .line 894
    invoke-virtual {v4, v6}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallId(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/telecom/FormattedLog$Builder;->buildDebugMsg()Lcom/mediatek/telecom/FormattedLog;

    move-result-object v25

    .line 902
    .local v25, "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    if-eqz v25, :cond_1

    .line 903
    invoke-virtual/range {v25 .. v25}, Lcom/mediatek/telecom/FormattedLog;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 908
    .end local v25    # "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    :cond_1
    if-eqz p5, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v24

    .line 911
    .local v24, "connection":Landroid/telecom/Connection;
    :goto_0
    const-string/jumbo v4, "createConnection, connection: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v24, v6, v7

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 912
    if-nez v24, :cond_2

    .line 914
    new-instance v4, Landroid/telecom/DisconnectCause;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Landroid/telecom/DisconnectCause;-><init>(I)V

    .line 913
    invoke-static {v4}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v24

    .line 917
    :cond_2
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getState()I

    move-result v4

    const/4 v6, 0x6

    if-eq v4, v6, :cond_3

    .line 918
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/telecom/ConnectionService;->addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 921
    :cond_3
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v22

    .line 922
    .local v22, "address":Landroid/net/Uri;
    if-nez v22, :cond_9

    const-string/jumbo v26, "null"

    .line 923
    .local v26, "number":Ljava/lang/String;
    :goto_1
    const-string/jumbo v4, "createConnection, number: %s, state: %s, capabilities: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 924
    invoke-static/range {v26 .. v26}, Landroid/telecom/Connection;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 925
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getState()I

    move-result v7

    invoke-static {v7}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 926
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v7

    invoke-static {v7}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 923
    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 928
    const-string/jumbo v4, "createConnection, calling handleCreateConnectionSuccessful %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 930
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    .line 931
    .local v5, "handle":Landroid/telecom/PhoneAccountHandle;
    if-nez v5, :cond_4

    .line 932
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    .line 935
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    move-object/from16 v27, v0

    .line 938
    new-instance v4, Landroid/telecom/ParcelableConnection;

    .line 942
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getState()I

    move-result v6

    .line 943
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v7

    .line 944
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v8

    .line 945
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v9

    .line 946
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v10

    .line 947
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v11

    .line 948
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v12

    if-nez v12, :cond_a

    .line 949
    const/4 v12, 0x0

    .line 950
    :goto_2
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getVideoState()I

    move-result v13

    .line 951
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v14

    .line 952
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v15

    .line 953
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v16

    .line 954
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v18

    .line 955
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v19

    .line 956
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v20

    .line 957
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    .line 938
    invoke-direct/range {v4 .. v21}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    .line 935
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v4}, Landroid/telecom/ConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    .line 958
    if-eqz p5, :cond_5

    .line 959
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ConnectionService;->triggerConferenceRecalculate()V

    .line 964
    :cond_5
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getState()I

    move-result v4

    const/4 v6, 0x6

    if-eq v4, v6, :cond_6

    .line 965
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionService;->forceSuppMessageUpdate(Landroid/telecom/Connection;)V

    .line 883
    :cond_6
    return-void

    .line 909
    .end local v5    # "handle":Landroid/telecom/PhoneAccountHandle;
    .end local v22    # "address":Landroid/net/Uri;
    .end local v24    # "connection":Landroid/telecom/Connection;
    .end local v26    # "number":Ljava/lang/String;
    :cond_7
    if-eqz p4, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v24

    .restart local v24    # "connection":Landroid/telecom/Connection;
    goto/16 :goto_0

    .line 910
    .end local v24    # "connection":Landroid/telecom/Connection;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v24

    .restart local v24    # "connection":Landroid/telecom/Connection;
    goto/16 :goto_0

    .line 922
    .restart local v22    # "address":Landroid/net/Uri;
    :cond_9
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "number":Ljava/lang/String;
    goto/16 :goto_1

    .line 949
    .restart local v5    # "handle":Landroid/telecom/PhoneAccountHandle;
    :cond_a
    invoke-virtual/range {v24 .. v24}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v12

    goto :goto_2
.end method

.method private createConnectionIdList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1776
    .local p1, "connections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1777
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 1778
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1779
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1782
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1783
    return-object v2
.end method

.method private createIdList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1794
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1795
    .local v4, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conferenceable;

    .line 1797
    .local v0, "c":Landroid/telecom/Conferenceable;
    instance-of v5, v0, Landroid/telecom/Connection;

    if-eqz v5, :cond_1

    move-object v3, v0

    .line 1798
    check-cast v3, Landroid/telecom/Connection;

    .line 1799
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1800
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1802
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_1
    instance-of v5, v0, Landroid/telecom/Conference;

    if-eqz v5, :cond_0

    move-object v2, v0

    .line 1803
    check-cast v2, Landroid/telecom/Conference;

    .line 1804
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1805
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1809
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1810
    return-object v4
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 998
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    invoke-virtual {v0}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1000
    const-string/jumbo v0, "CC"

    const-string/jumbo v1, "RemoveMember"

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    :goto_0
    const-string/jumbo v0, "disconnect %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1007
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1008
    const-string/jumbo v0, "disconnect"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onDisconnect()V

    .line 996
    :goto_1
    return-void

    .line 1002
    :cond_0
    const-string/jumbo v0, "CC"

    const-string/jumbo v1, "Hangup"

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1010
    :cond_1
    const-string/jumbo v0, "disconnect"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onDisconnect()V

    goto :goto_1
.end method

.method private disconnect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "pendingCallAction"    # Ljava/lang/String;

    .prologue
    .line 1367
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    invoke-virtual {v0}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1369
    const-string/jumbo v0, "CC"

    const-string/jumbo v1, "RemoveMember"

    .line 1370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " pendingAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1369
    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    :goto_0
    const-string/jumbo v0, "disconnect %s, pending call action %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1378
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1379
    const-string/jumbo v0, "disconnect"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onDisconnect()V

    .line 1365
    :goto_1
    return-void

    .line 1372
    :cond_0
    const-string/jumbo v0, "CC"

    const-string/jumbo v1, "Hangup"

    .line 1373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " pendingAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1372
    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1381
    :cond_1
    const-string/jumbo v0, "disconnect"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onDisconnect(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private endAllConnections()V
    .locals 5

    .prologue
    .line 1822
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "connection$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    .line 1824
    .local v2, "connection":Landroid/telecom/Connection;
    invoke-virtual {v2}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1825
    invoke-virtual {v2}, Landroid/telecom/Connection;->onDisconnect()V

    goto :goto_0

    .line 1828
    .end local v2    # "connection":Landroid/telecom/Connection;
    :cond_1
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conference$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference;

    .line 1829
    .local v0, "conference":Landroid/telecom/Conference;
    invoke-virtual {v0}, Landroid/telecom/Conference;->onDisconnect()V

    goto :goto_1

    .line 1820
    .end local v0    # "conference":Landroid/telecom/Conference;
    :cond_2
    return-void
.end method

.method private explicitCallTransfer(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1187
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    invoke-virtual {p0, v0}, Landroid/telecom/ConnectionService;->canTransfer(Landroid/telecom/Connection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1188
    const-string/jumbo v0, "explicitCallTransfer %s fail"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1189
    return-void

    .line 1191
    :cond_0
    const-string/jumbo v0, "explicitCallTransfer %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1192
    const-string/jumbo v0, "explicitCallTransfer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onExplicitCallTransfer()V

    .line 1186
    return-void
.end method

.method private findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;
    .locals 3
    .param p1, "conferenceId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1768
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1769
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference;

    return-object v0

    .line 1771
    :cond_0
    const-string/jumbo v0, "%s - Cannot find conference %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1772
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v0

    return-object v0
.end method

.method private findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1753
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1754
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    return-object v0

    .line 1756
    :cond_0
    const-string/jumbo v0, "%s - Cannot find Connection %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1757
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v0

    return-object v0
.end method

.method private getConnectionServiceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1932
    invoke-virtual {p0}, Landroid/telecom/ConnectionService;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1933
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v2, "ConnectionService"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1935
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1936
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1938
    :cond_0
    return-object v0
.end method

.method private getNullConference()Landroid/telecom/Conference;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1814
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    if-nez v0, :cond_0

    .line 1815
    new-instance v0, Landroid/telecom/ConnectionService$7;

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$7;-><init>(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    .line 1817
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method static declared-synchronized getNullConnection()Landroid/telecom/Connection;
    .locals 2

    .prologue
    const-class v1, Landroid/telecom/ConnectionService;

    monitor-enter v1

    .line 1761
    :try_start_0
    sget-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    if-nez v0, :cond_0

    .line 1762
    new-instance v0, Landroid/telecom/ConnectionService$6;

    invoke-direct {v0}, Landroid/telecom/ConnectionService$6;-><init>()V

    sput-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    .line 1764
    :cond_0
    sget-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hangupAll(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1198
    const-string/jumbo v0, "hangupAll %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1199
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    const-string/jumbo v0, "hangupAll"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onHangupAll()V

    .line 1197
    :goto_0
    return-void

    .line 1202
    :cond_0
    const-string/jumbo v0, "hangupAll"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onHangupAll()V

    goto :goto_0
.end method

.method private hold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1016
    const-string/jumbo v0, "CC"

    const-string/jumbo v1, "Hold"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const-string/jumbo v0, "hold %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1019
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    const-string/jumbo v0, "hold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onHold()V

    .line 1014
    :goto_0
    return-void

    .line 1022
    :cond_0
    const-string/jumbo v0, "hold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onHold()V

    goto :goto_0
.end method

.method private hold(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "pendingCallAction"    # Ljava/lang/String;

    .prologue
    .line 1355
    const-string/jumbo v0, "CC"

    const-string/jumbo v1, "Hold"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " pendingAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    const-string/jumbo v0, "hold %s, pending call action %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1358
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    const-string/jumbo v0, "hold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onHold(Ljava/lang/String;)V

    .line 1353
    :goto_0
    return-void

    .line 1361
    :cond_0
    const-string/jumbo v0, "hold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onHold(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private inviteConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "conferenceCallId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1210
    .local p2, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1211
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "number$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1212
    .local v0, "number":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1214
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "CC"

    const-string/jumbo v4, "AddMember"

    .line 1215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " numbers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1214
    invoke-virtual {p0, v3, v4, p1, v5}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const-string/jumbo v3, "inviteConferenceParticipants %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1219
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1220
    const-string/jumbo v3, "inviteConferenceParticipants"

    invoke-direct {p0, p1, v3}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/telecom/Conference;->onInviteConferenceParticipants(Ljava/util/List;)V

    .line 1208
    :cond_1
    return-void
.end method

.method private mergeConference(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1133
    const-string/jumbo v1, "mergeConference(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1134
    const-string/jumbo v1, "mergeConference"

    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 1135
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    .line 1136
    invoke-virtual {v0}, Landroid/telecom/Conference;->onMerge()V

    .line 1132
    :cond_0
    return-void
.end method

.method private onAccountsInitialized()V
    .locals 3

    .prologue
    .line 1686
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 1687
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1688
    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1690
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1685
    return-void
.end method

.method private onAdapterAttached()V
    .locals 2

    .prologue
    .line 1387
    iget-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    if-eqz v0, :cond_0

    .line 1389
    return-void

    .line 1392
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    new-instance v1, Landroid/telecom/ConnectionService$5;

    invoke-direct {v1, p0}, Landroid/telecom/ConnectionService$5;-><init>(Landroid/telecom/ConnectionService;)V

    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    .line 1386
    return-void
.end method

.method private onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 1039
    const-string/jumbo v0, "onAudioStateChanged %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1040
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    const-string/jumbo v0, "onCallAudioStateChanged"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    .line 1038
    :goto_0
    return-void

    .line 1044
    :cond_0
    const-string/jumbo v0, "onCallAudioStateChanged"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    goto :goto_0
.end method

.method private onPostDialContinue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .prologue
    .line 1156
    const-string/jumbo v0, "onPostDialContinue(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1157
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPostDialContinue(Z)V

    .line 1155
    return-void
.end method

.method private playDtmfTone(Ljava/lang/String;C)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .prologue
    .line 1050
    const-string/jumbo v0, "playDtmfTone %s %c"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1051
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    const-string/jumbo v0, "playDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPlayDtmfTone(C)V

    .line 1049
    :goto_0
    return-void

    .line 1054
    :cond_0
    const-string/jumbo v0, "playDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onPlayDtmfTone(C)V

    goto :goto_0
.end method

.method private reject(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 990
    const-string/jumbo v0, "CC"

    const-string/jumbo v1, "Reject"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const-string/jumbo v0, "reject %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 993
    const-string/jumbo v0, "reject"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onReject()V

    .line 988
    return-void
.end method

.method private reject(Ljava/lang/String;I)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "cause"    # I

    .prologue
    .line 1178
    const-string/jumbo v0, "CC"

    const-string/jumbo v1, "Reject"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    const-string/jumbo v0, "reject %s withCause %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1181
    const-string/jumbo v0, "reject"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onReject(I)V

    .line 1176
    return-void
.end method

.method private removeConference(Landroid/telecom/Conference;)V
    .locals 2
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1742
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1743
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 1745
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1746
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 1741
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private splitFromConference(Ljava/lang/String;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1118
    const-string/jumbo v2, "splitFromConference(%s)"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    const-string/jumbo v2, "splitFromConference"

    invoke-direct {p0, p1, v2}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v1

    .line 1121
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1122
    const-string/jumbo v2, "Connection missing in conference request %s."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1123
    return-void

    .line 1126
    :cond_0
    invoke-virtual {v1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    .line 1127
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_1

    .line 1128
    invoke-virtual {v0, v1}, Landroid/telecom/Conference;->onSeparate(Landroid/telecom/Connection;)V

    .line 1117
    :cond_1
    return-void
.end method

.method private stopDtmfTone(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1059
    const-string/jumbo v0, "stopDtmfTone %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1060
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onStopDtmfTone()V

    .line 1058
    :goto_0
    return-void

    .line 1063
    :cond_0
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onStopDtmfTone()V

    goto :goto_0
.end method

.method private swapConference(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1141
    const-string/jumbo v1, "swapConference(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1143
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1144
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->swapWithBackgroundCall(Ljava/lang/String;)V

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1146
    :cond_1
    const-string/jumbo v1, "deal CDMA Conference swapConference"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1147
    const-string/jumbo v1, "swapConference"

    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 1148
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    .line 1149
    invoke-virtual {v0}, Landroid/telecom/Conference;->onSwap()V

    goto :goto_0
.end method

.method private swapWithBackgroundCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1164
    const-string/jumbo v0, "CC"

    const-string/jumbo v1, "Swap"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const-string/jumbo v0, "swapWithBackgroundCall(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1167
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    const-string/jumbo v0, "swapWithBackgroundCall"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onSwapWithBackgroundCall()V

    .line 1162
    :goto_0
    return-void

    .line 1170
    :cond_0
    const-string/jumbo v0, "swapWithBackgroundCall"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onSwapWithBackgroundCall()V

    goto :goto_0
.end method

.method private unhold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1028
    const-string/jumbo v0, "CC"

    const-string/jumbo v1, "Unhold"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/telecom/ConnectionService;->logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const-string/jumbo v0, "unhold %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    const-string/jumbo v0, "unhold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onUnhold()V

    .line 1026
    :goto_0
    return-void

    .line 1034
    :cond_0
    const-string/jumbo v0, "unhold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onUnhold()V

    goto :goto_0
.end method


# virtual methods
.method public final addConference(Landroid/telecom/Conference;)V
    .locals 15
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1486
    const-string/jumbo v2, "addConference: conference=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1488
    invoke-direct/range {p0 .. p1}, Landroid/telecom/ConnectionService;->addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;

    move-result-object v14

    .line 1489
    .local v14, "id":Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 1490
    new-instance v5, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1491
    .local v5, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "connection$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 1492
    .local v0, "connection":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1493
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1496
    .end local v0    # "connection":Landroid/telecom/Connection;
    :cond_1
    new-instance v1, Landroid/telecom/ParcelableConference;

    .line 1497
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 1498
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getState()I

    move-result v3

    .line 1499
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    move-result v4

    .line 1501
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1502
    const/4 v6, 0x0

    .line 1503
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v7

    .line 1504
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectTimeMillis()J

    move-result-wide v8

    .line 1505
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v10

    .line 1506
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 1496
    invoke-direct/range {v1 .. v11}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJLandroid/telecom/StatusHints;Landroid/os/Bundle;)V

    .line 1508
    .local v1, "parcelableConference":Landroid/telecom/ParcelableConference;
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v2, v14, v1}, Landroid/telecom/ConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    .line 1509
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    .line 1510
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v3

    invoke-virtual {v2, v14, v3}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    .line 1513
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 1514
    .restart local v0    # "connection":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1515
    .local v13, "connectionId":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 1516
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v2, v13, v14}, Landroid/telecom/ConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1502
    .end local v0    # "connection":Landroid/telecom/Connection;
    .end local v1    # "parcelableConference":Landroid/telecom/ParcelableConference;
    .end local v13    # "connectionId":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v6

    goto :goto_1

    .line 1485
    .end local v5    # "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "connection$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public final addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)V
    .locals 21
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1532
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/telecom/ConnectionService;->addExistingConnectionInternal(Landroid/telecom/Connection;)Ljava/lang/String;

    move-result-object v20

    .line 1533
    .local v20, "id":Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 1534
    new-instance v18, Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1536
    .local v18, "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/telecom/ParcelableConnection;

    .line 1538
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getState()I

    move-result v4

    .line 1539
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v5

    .line 1540
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v6

    .line 1541
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v7

    .line 1542
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v8

    .line 1543
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v9

    .line 1544
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1545
    const/4 v10, 0x0

    .line 1546
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoState()I

    move-result v11

    .line 1547
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v12

    .line 1548
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v13

    .line 1549
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v14

    .line 1550
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v16

    .line 1551
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v17

    .line 1553
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    move-object/from16 v3, p1

    .line 1536
    invoke-direct/range {v2 .. v19}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    .line 1554
    .local v2, "parcelableConnection":Landroid/telecom/ParcelableConnection;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V

    .line 1530
    .end local v2    # "parcelableConnection":Landroid/telecom/ParcelableConnection;
    .end local v18    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 1545
    .restart local v18    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v10

    goto :goto_0
.end method

.method addRemoteConference(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "remoteConference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 1677
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V

    .line 1676
    return-void
.end method

.method addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "remoteConnection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 1682
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V

    .line 1681
    return-void
.end method

.method public canDial(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1845
    const/4 v0, 0x1

    return v0
.end method

.method public canTransfer(Landroid/telecom/Connection;)Z
    .locals 1
    .param p1, "bgConnection"    # Landroid/telecom/Connection;

    .prologue
    .line 1858
    const/4 v0, 0x0

    return v0
.end method

.method public final conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V
    .locals 1
    .param p1, "remoteConnection1"    # Landroid/telecom/RemoteConnection;
    .param p2, "remoteConnection2"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 1474
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/RemoteConnectionManager;->conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V

    .line 1473
    return-void
.end method

.method public containsConference(Landroid/telecom/Conference;)Z
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1672
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final createRemoteIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .locals 2
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1438
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    .line 1439
    const/4 v1, 0x1

    .line 1438
    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method public final createRemoteOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .locals 2
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1457
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    .line 1458
    const/4 v1, 0x0

    .line 1457
    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method protected forceSuppMessageUpdate(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "conn"    # Landroid/telecom/Connection;

    .prologue
    .line 1869
    return-void
.end method

.method public final getAllConnections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1565
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected logDebugMsgWithOpFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "callId"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 1885
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1887
    :cond_0
    return-void

    .line 1885
    :cond_1
    if-eqz p3, :cond_0

    .line 1891
    if-nez p4, :cond_2

    .line 1892
    const-string/jumbo p4, ""

    .line 1895
    :cond_2
    const-string/jumbo v0, "null"

    .line 1896
    .local v0, "callNumber":Ljava/lang/String;
    const-string/jumbo v3, "null"

    .line 1898
    .local v3, "localCallId":Ljava/lang/String;
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1899
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 1900
    .local v1, "conn":Landroid/telecom/Connection;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1901
    invoke-virtual {v1}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1903
    :cond_3
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1909
    .end local v1    # "conn":Landroid/telecom/Connection;
    :cond_4
    :goto_0
    new-instance v4, Lcom/mediatek/telecom/FormattedLog$Builder;

    invoke-direct {v4}, Lcom/mediatek/telecom/FormattedLog$Builder;-><init>()V

    invoke-virtual {v4, p1}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCategory(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 1911
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getConnectionServiceName()Ljava/lang/String;

    move-result-object v5

    .line 1909
    invoke-virtual {v4, v5}, Lcom/mediatek/telecom/FormattedLog$Builder;->setServiceName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    .line 1912
    sget-object v5, Lcom/mediatek/telecom/FormattedLog$OpType;->OPERATION:Lcom/mediatek/telecom/FormattedLog$OpType;

    .line 1909
    invoke-virtual {v4, v5}, Lcom/mediatek/telecom/FormattedLog$Builder;->setOpType(Lcom/mediatek/telecom/FormattedLog$OpType;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/mediatek/telecom/FormattedLog$Builder;->setActionName(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallNumber(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mediatek/telecom/FormattedLog$Builder;->setCallId(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/mediatek/telecom/FormattedLog$Builder;->setExtraMessage(Ljava/lang/String;)Lcom/mediatek/telecom/FormattedLog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/telecom/FormattedLog$Builder;->buildDebugMsg()Lcom/mediatek/telecom/FormattedLog;

    move-result-object v2

    .line 1919
    .local v2, "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    if-eqz v2, :cond_5

    .line 1920
    invoke-virtual {v2}, Lcom/mediatek/telecom/FormattedLog;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1884
    :cond_5
    return-void

    .line 1904
    .end local v2    # "formattedLog":Lcom/mediatek/telecom/FormattedLog;
    :cond_6
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1905
    const-string/jumbo v0, "conferenceCall"

    .line 1906
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 863
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection1"    # Landroid/telecom/Connection;
    .param p2, "connection2"    # Landroid/telecom/Connection;

    .prologue
    .line 1648
    return-void
.end method

.method protected onCreateConference(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Ljava/util/List;Z)Landroid/telecom/Conference;
    .locals 1
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "conferenceCallId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p5, "isIncoming"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/String;",
            "Landroid/telecom/ConnectionRequest;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/telecom/Conference;"
        }
    .end annotation

    .prologue
    .line 1319
    .local p4, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1581
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1620
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1637
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 1660
    return-void
.end method

.method public onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 1666
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 869
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->endAllConnections()V

    .line 870
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected removeConnection(Landroid/telecom/Connection;)V
    .locals 3
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1719
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1720
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->unsetConnectionService(Landroid/telecom/ConnectionService;)V

    .line 1721
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1722
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 1718
    return-void
.end method

.method protected replaceConference(Landroid/telecom/Conference;Landroid/telecom/Conference;)V
    .locals 5
    .param p1, "oldConf"    # Landroid/telecom/Conference;
    .param p2, "newConf"    # Landroid/telecom/Conference;

    .prologue
    const/4 v4, 0x0

    .line 1332
    const-string/jumbo v1, "SRVCC: oldConf= %s , newConf= %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1333
    if-ne p1, p2, :cond_0

    .line 1334
    return-void

    .line 1337
    :cond_0
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1338
    const-string/jumbo v1, "SRVCC: start to do replacement"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1339
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 1341
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1342
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p2, v1}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 1331
    .end local v0    # "id":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public triggerConferenceRecalculate()V
    .locals 0

    .prologue
    .line 1591
    return-void
.end method
