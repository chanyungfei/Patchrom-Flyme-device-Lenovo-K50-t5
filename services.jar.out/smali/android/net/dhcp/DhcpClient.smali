.class public Landroid/net/dhcp/DhcpClient;
.super Landroid/net/BaseDhcpStateMachine;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/DhcpClient$ReceiveThread;,
        Landroid/net/dhcp/DhcpClient$LoggingState;,
        Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;,
        Landroid/net/dhcp/DhcpClient$StoppedState;,
        Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;,
        Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;,
        Landroid/net/dhcp/DhcpClient$DhcpState;,
        Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;,
        Landroid/net/dhcp/DhcpClient$DhcpInitState;,
        Landroid/net/dhcp/DhcpClient$DhcpSelectingState;,
        Landroid/net/dhcp/DhcpClient$DhcpRequestingState;,
        Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;,
        Landroid/net/dhcp/DhcpClient$DhcpBoundState;,
        Landroid/net/dhcp/DhcpClient$DhcpRenewingState;,
        Landroid/net/dhcp/DhcpClient$DhcpRebindingState;,
        Landroid/net/dhcp/DhcpClient$DhcpInitRebootState;,
        Landroid/net/dhcp/DhcpClient$DhcpRebootingState;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x30064

.field private static final CMD_KICK:I = 0x30065

.field private static final CMD_ONESHOT_TIMEOUT:I = 0x30068

.field private static final CMD_RECEIVED_PACKET:I = 0x30066

.field private static final CMD_TIMEOUT:I = 0x30067

.field private static final DBG:Z = true

.field private static final DHCP_TIMEOUT_MS:I = 0x8ca0

.field private static final DO_UNICAST:Z = false

.field private static final FIRST_TIMEOUT_MS:I = 0x7d0

.field private static final MAX_TIMEOUT_MS:I = 0x1f400

.field private static final MSG_DBG:Z = true

.field private static final PACKET_DBG:Z = true

.field private static final REQUESTED_PARAMS:[B

.field private static final SECONDS:I = 0x3e8

.field private static final STATE_DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "DhcpClient"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/internal/util/StateMachine;

.field private mDhcpBoundState:Lcom/android/internal/util/State;

.field private mDhcpHaveAddressState:Lcom/android/internal/util/State;

.field private mDhcpInitRebootState:Lcom/android/internal/util/State;

.field private mDhcpInitState:Lcom/android/internal/util/State;

.field private mDhcpLease:Landroid/net/DhcpResults;

.field private mDhcpLeaseExpiry:J

.field private mDhcpRebindingState:Lcom/android/internal/util/State;

.field private mDhcpRebootingState:Lcom/android/internal/util/State;

.field private mDhcpRenewingState:Lcom/android/internal/util/State;

.field private mDhcpRequestingState:Lcom/android/internal/util/State;

.field private mDhcpSelectingState:Lcom/android/internal/util/State;

.field private mDhcpState:Lcom/android/internal/util/State;

.field private mHwAddr:[B

.field private mIface:Ljava/net/NetworkInterface;

.field private final mIfaceName:Ljava/lang/String;

.field private mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

.field private mIsAutoIpEnabled:Z

.field private final mKickIntent:Landroid/app/PendingIntent;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mOffer:Landroid/net/DhcpResults;

.field private final mOneshotTimeoutIntent:Landroid/app/PendingIntent;

.field private mPacketSock:Ljava/io/FileDescriptor;

.field private final mRandom:Ljava/util/Random;

.field private mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;

.field private mRegisteredForPreDhcpNotification:Z

.field private final mRenewIntent:Landroid/app/PendingIntent;

.field private mStoppedState:Lcom/android/internal/util/State;

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private mTransactionId:I

.field private mTransactionStartMillis:J

.field private mUdpSock:Ljava/io/FileDescriptor;

.field private mWaitBeforeRenewalState:Lcom/android/internal/util/State;

.field private mWaitBeforeStartState:Lcom/android/internal/util/State;


# direct methods
.method static synthetic -get0(Landroid/net/dhcp/DhcpClient;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/StateMachine;
    .locals 1

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic -get10(Landroid/net/dhcp/DhcpClient;)Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic -get11(Landroid/net/dhcp/DhcpClient;)Ljava/util/Random;
    .locals 1

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic -get12(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;
    .locals 1

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;

    return-object v0
.end method

.method static synthetic -get13(Landroid/net/dhcp/DhcpClient;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/dhcp/DhcpClient;->mRegisteredForPreDhcpNotification:Z

    return v0
.end method

.method static synthetic -get14(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get15(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mTimeoutIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get16(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get17(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get3(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get4(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;
    .locals 1

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    return-object v0
.end method

.method static synthetic -get5(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get6(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get7(Landroid/net/dhcp/DhcpClient;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/dhcp/DhcpClient;->mIsAutoIpEnabled:Z

    return v0
.end method

.method static synthetic -get8(Landroid/net/dhcp/DhcpClient;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mKickIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get9(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;
    .locals 1

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
    .locals 0

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
    .locals 0

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    return-object p1
.end method

.method static synthetic -set2(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;
    .locals 0

    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mReceiveThread:Landroid/net/dhcp/DhcpClient$ReceiveThread;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;)Z
    .locals 1
    .param p1, "to"    # Ljava/net/Inet4Address;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient;->connectUdpSock(Ljava/net/Inet4Address;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/net/dhcp/DhcpClient;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initInterface()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->notifyFailure()V

    return-void
.end method

.method static synthetic -wrap12(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->notifySuccess()V

    return-void
.end method

.method static synthetic -wrap13(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->scheduleOneshotTimeout()V

    return-void
.end method

.method static synthetic -wrap14(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->scheduleRenew()V

    return-void
.end method

.method static synthetic -wrap15(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->startNewTransaction()V

    return-void
.end method

.method static synthetic -wrap16(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/net/dhcp/DhcpClient;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->initSockets()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/net/dhcp/DhcpClient;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->performAutoIP()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/net/dhcp/DhcpClient;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->sendDiscoverPacket()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    .locals 1
    .param p1, "clientAddress"    # Ljava/net/Inet4Address;
    .param p2, "requestedAddress"    # Ljava/net/Inet4Address;
    .param p3, "serverAddress"    # Ljava/net/Inet4Address;
    .param p4, "to"    # Ljava/net/Inet4Address;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/dhcp/DhcpClient;->sendRequestPacket(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/net/dhcp/DhcpClient;Landroid/net/LinkAddress;)Z
    .locals 1
    .param p1, "address"    # Landroid/net/LinkAddress;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient;->setIpAddress(Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->cancelOneshotTimeout()V

    return-void
.end method

.method static synthetic -wrap8(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->clearDhcpState()V

    return-void
.end method

.method static synthetic -wrap9(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->closeSockets()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    .line 92
    return-void

    .line 119
    :array_0
    .array-data 1
        0x1t
        0x3t
        0x6t
        0xft
        0x1at
        0x1ct
        0x33t
        0x3at
        0x3bt
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string/jumbo v1, "DhcpClient"

    invoke-direct {p0, v1}, Landroid/net/BaseDhcpStateMachine;-><init>(Ljava/lang/String;)V

    .line 166
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/dhcp/DhcpClient;->mIsAutoIpEnabled:Z

    .line 169
    new-instance v1, Landroid/net/dhcp/DhcpClient$StoppedState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$StoppedState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    .line 170
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    .line 171
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpInitState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpInitState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    .line 172
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpSelectingState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpSelectingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpSelectingState:Lcom/android/internal/util/State;

    .line 173
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpRequestingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;

    .line 174
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpHaveAddressState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveAddressState:Lcom/android/internal/util/State;

    .line 175
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpBoundState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpBoundState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;

    .line 176
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    .line 177
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpRebindingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/internal/util/State;

    .line 178
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpInitRebootState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpInitRebootState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitRebootState:Lcom/android/internal/util/State;

    .line 179
    new-instance v1, Landroid/net/dhcp/DhcpClient$DhcpRebootingState;

    invoke-direct {v1, p0}, Landroid/net/dhcp/DhcpClient$DhcpRebootingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebootingState:Lcom/android/internal/util/State;

    .line 180
    new-instance v1, Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    invoke-direct {v1, p0, v2}, Landroid/net/dhcp/DhcpClient$WaitBeforeStartState;-><init>(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/State;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    .line 181
    new-instance v1, Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    invoke-direct {v1, p0, v2}, Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;-><init>(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/State;)V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    .line 186
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    .line 187
    iput-object p2, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    .line 188
    iput-object p3, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    .line 190
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;)V

    .line 191
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;)V

    .line 192
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 193
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 194
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpSelectingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 195
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRequestingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 196
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveAddressState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 197
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpBoundState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveAddressState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 198
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveAddressState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 199
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRenewingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveAddressState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 200
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpHaveAddressState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 201
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpInitRebootState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 202
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mDhcpRebootingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 204
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/dhcp/DhcpClient;->setInitialState(Lcom/android/internal/util/State;)V

    .line 206
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;

    .line 207
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 208
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mNMService:Landroid/os/INetworkManagementService;

    .line 210
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    .line 213
    const-string/jumbo v1, "KICK"

    const v2, 0x30065

    invoke-direct {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->createStateMachineCommandIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mKickIntent:Landroid/app/PendingIntent;

    .line 215
    const-string/jumbo v1, "TIMEOUT"

    const v2, 0x30067

    invoke-direct {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->createStateMachineCommandIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 217
    const-string/jumbo v1, "RENEW"

    const v2, 0x30003

    invoke-direct {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->createStateMachineCommandIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mRenewIntent:Landroid/app/PendingIntent;

    .line 221
    const-string/jumbo v1, "ONESHOT_TIMEOUT"

    .line 222
    const v2, 0x30068

    .line 221
    invoke-direct {p0, v1, v2}, Landroid/net/dhcp/DhcpClient;->createStateMachineCommandIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/dhcp/DhcpClient;->mOneshotTimeoutIntent:Landroid/app/PendingIntent;

    .line 183
    return-void
.end method

.method private cancelOneshotTimeout()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mOneshotTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 579
    return-void
.end method

.method private clearDhcpState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 461
    iput-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    .line 462
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    .line 463
    iput-object v2, p0, Landroid/net/dhcp/DhcpClient;->mOffer:Landroid/net/DhcpResults;

    .line 460
    return-void
.end method

.method private static closeQuietly(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 335
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method private closeSockets()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 341
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 339
    return-void
.end method

.method private connectUdpSock(Ljava/net/Inet4Address;)Z
    .locals 3
    .param p1, "to"    # Ljava/net/Inet4Address;

    .prologue
    .line 324
    :try_start_0
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    const/16 v2, 0x43

    invoke-static {v1, p1, v2}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    const/4 v1, 0x1

    return v1

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DhcpClient"

    const-string/jumbo v2, "Error connecting UDP socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    const/4 v1, 0x0

    return v1
.end method

.method private createStateMachineCommandIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 8
    .param p1, "cmdName"    # Ljava/lang/String;
    .param p2, "cmd"    # I

    .prologue
    const/4 v7, 0x0

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 252
    const/high16 v4, 0x4000000

    .line 251
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 255
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, p2, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 258
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mContext:Landroid/content/Context;

    .line 259
    new-instance v4, Landroid/net/dhcp/DhcpClient$1;

    invoke-direct {v4, p0, p2}, Landroid/net/dhcp/DhcpClient$1;-><init>(Landroid/net/dhcp/DhcpClient;I)V

    .line 265
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 266
    const-string/jumbo v6, "android.permission.CONNECTIVITY_INTERNAL"

    .line 258
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 269
    return-object v2
.end method

.method private getSecs()S
    .locals 4

    .prologue
    .line 392
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/dhcp/DhcpClient;->mTransactionStartMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method private initInterface()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 274
    :try_start_0
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    iput-object v2, p0, Landroid/net/dhcp/DhcpClient;->mIface:Ljava/net/NetworkInterface;

    .line 275
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mIface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    iput-object v2, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    .line 276
    new-instance v2, Landroid/system/PacketSocketAddress;

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mIface:Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v3

    .line 277
    sget-object v4, Landroid/net/dhcp/DhcpPacket;->ETHER_BROADCAST:[B

    .line 276
    invoke-direct {v2, v3, v4}, Landroid/system/PacketSocketAddress;-><init>(I[B)V

    iput-object v2, p0, Landroid/net/dhcp/DhcpClient;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

    .line 279
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

    const/16 v3, 0x800

    iput-short v3, v2, Landroid/system/PacketSocketAddress;->sll_protocol:S
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    const/4 v2, 0x1

    return v2

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "DhcpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error initInterface : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string/jumbo v2, "DhcpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIfaceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mIface = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mIface:Ljava/net/NetworkInterface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return v5

    .line 281
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 282
    .local v1, "e":Ljava/net/SocketException;
    const-string/jumbo v2, "DhcpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t determine ifindex or MAC address for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return v5
.end method

.method private initSockets()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 298
    :try_start_0
    sget v2, Landroid/system/OsConstants;->AF_PACKET:I

    sget v3, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v4, Landroid/system/OsConstants;->ETH_P_IP:I

    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    .line 299
    new-instance v0, Landroid/system/PacketSocketAddress;

    sget v2, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v2, v2

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mIface:Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/system/PacketSocketAddress;-><init>(SI)V

    .line 300
    .local v0, "addr":Landroid/system/PacketSocketAddress;
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-static {v2, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 301
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-static {v2}, Landroid/net/NetworkUtils;->attachDhcpFilter(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :try_start_1
    sget v2, Landroid/system/OsConstants;->AF_INET:I

    sget v3, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v4, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    .line 308
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_REUSEADDR:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 309
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    iget-object v5, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    .line 310
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_BROADCAST:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 311
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/16 v4, 0x44

    invoke-static {v2, v3, v4}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 312
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    invoke-static {v2}, Landroid/net/NetworkUtils;->protectFromVpn(Ljava/io/FileDescriptor;)Z
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 317
    return v6

    .line 302
    .end local v0    # "addr":Landroid/system/PacketSocketAddress;
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DhcpClient"

    const-string/jumbo v3, "Error creating packet socket"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    return v7

    .line 313
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "addr":Landroid/system/PacketSocketAddress;
    :catch_1
    move-exception v1

    .line 314
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DhcpClient"

    const-string/jumbo v3, "Error creating UDP socket"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    return v7
.end method

.method public static makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/BaseDhcpStateMachine;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p2, "intf"    # Ljava/lang/String;

    .prologue
    .line 232
    new-instance v0, Landroid/net/dhcp/DhcpClient;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/dhcp/DhcpClient;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V

    .line 233
    .local v0, "client":Landroid/net/dhcp/DhcpClient;
    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->start()V

    .line 234
    return-object v0
.end method

.method private maybeLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 483
    const-string/jumbo v0, "DhcpClient"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return-void
.end method

.method private notifyFailure()V
    .locals 5

    .prologue
    .line 456
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    const v1, 0x30005

    .line 457
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 456
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 455
    return-void
.end method

.method private notifySuccess()V
    .locals 5

    .prologue
    .line 451
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    .line 452
    new-instance v1, Landroid/net/DhcpResults;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    invoke-direct {v1, v2}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    .line 451
    const v2, 0x30005

    .line 452
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 451
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 450
    return-void
.end method

.method private performAutoIP()Z
    .locals 14

    .prologue
    .line 958
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 960
    .local v8, "random":Ljava/util/Random;
    const/4 v11, 0x4

    new-array v3, v11, [B

    .local v3, "autoIp":[B
    fill-array-data v3, :array_0

    .line 961
    const/4 v2, 0x0

    .line 966
    .local v2, "arpResult":[B
    const/16 v1, 0x1388

    .line 969
    .local v1, "arpResponseTimeout":I
    const/4 v5, 0x0

    .line 967
    .end local v2    # "arpResult":[B
    .local v5, "i":I
    :goto_0
    const/4 v11, 0x5

    .line 969
    if-ge v5, v11, :cond_1

    .line 970
    new-instance v11, Ljava/lang/Integer;

    const/16 v12, 0x100

    invoke-virtual {v8, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11}, Ljava/lang/Integer;->byteValue()B

    move-result v11

    const/4 v12, 0x2

    aput-byte v11, v3, v12

    .line 971
    new-instance v11, Ljava/lang/Integer;

    const/16 v12, 0xfe

    invoke-virtual {v8, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11}, Ljava/lang/Integer;->byteValue()B

    move-result v11

    const/4 v12, 0x3

    aput-byte v11, v3, v12

    .line 974
    :try_start_0
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    .line 975
    .local v7, "ipAddress":Ljava/net/InetAddress;
    const-string/jumbo v11, "DhcpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "performAutoIP("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    new-instance v0, Landroid/net/arp/ArpPeer;

    iget-object v11, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    sget-object v12, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v0, v11, v12, v7}, Landroid/net/arp/ArpPeer;-><init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    .line 978
    .local v0, "ap":Landroid/net/arp/ArpPeer;
    invoke-virtual {v0, v1}, Landroid/net/arp/ArpPeer;->doArp(I)[B

    move-result-object v2

    .line 979
    .local v2, "arpResult":[B
    if-nez v2, :cond_0

    .line 980
    new-instance v11, Landroid/net/DhcpResults;

    invoke-direct {v11}, Landroid/net/DhcpResults;-><init>()V

    iput-object v11, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    .line 981
    iget-object v11, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    new-instance v12, Landroid/net/LinkAddress;

    const/16 v13, 0x10

    invoke-direct {v12, v7, v13}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v12, v11, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    .line 987
    iget-object v11, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    .line 959
    const/4 v12, -0x1

    .line 987
    iput v12, v11, Landroid/net/DhcpResults;->leaseDuration:I

    .line 988
    iget-object v11, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;

    iget-object v11, v11, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-direct {p0, v11}, Landroid/net/dhcp/DhcpClient;->setIpAddress(Landroid/net/LinkAddress;)Z

    .line 989
    const-string/jumbo v11, "DhcpClient"

    const-string/jumbo v12, "performAutoIP done"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/4 v11, 0x1

    return v11

    .line 992
    :cond_0
    const-string/jumbo v11, "DhcpClient"

    const-string/jumbo v12, "DAD detected!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    .end local v0    # "ap":Landroid/net/arp/ArpPeer;
    .end local v2    # "arpResult":[B
    .end local v7    # "ipAddress":Ljava/net/InetAddress;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1001
    :catch_0
    move-exception v9

    .line 1002
    .local v9, "se":Ljava/net/SocketException;
    const-string/jumbo v11, "DhcpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "err :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 999
    .end local v9    # "se":Ljava/net/SocketException;
    :catch_1
    move-exception v6

    .line 1000
    .local v6, "ie":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v11, "DhcpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "err :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 997
    .end local v6    # "ie":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    .line 998
    .local v4, "ee":Landroid/system/ErrnoException;
    const-string/jumbo v11, "DhcpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "err :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 994
    .end local v4    # "ee":Landroid/system/ErrnoException;
    :catch_3
    move-exception v10

    .line 996
    .local v10, "ue":Ljava/net/UnknownHostException;
    const-string/jumbo v11, "DhcpClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "err :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1005
    .end local v10    # "ue":Ljava/net/UnknownHostException;
    :cond_1
    const/4 v11, 0x0

    return v11

    .line 960
    :array_0
    .array-data 1
        -0x57t
        -0x2t
        0xat
        0xat
    .end array-data
.end method

.method private scheduleOneshotTimeout()V
    .locals 6

    .prologue
    .line 574
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x8ca0

    add-long v0, v2, v4

    .line 575
    .local v0, "alarmTime":J
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;

    .line 576
    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mOneshotTimeoutIntent:Landroid/app/PendingIntent;

    .line 575
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 573
    return-void
.end method

.method private scheduleRenew()V
    .locals 10

    .prologue
    .line 439
    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Landroid/net/dhcp/DhcpClient;->mRenewIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 440
    iget-wide v4, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 441
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 442
    .local v2, "now":J
    iget-wide v4, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    add-long/2addr v4, v2

    const-wide/16 v6, 0x2

    div-long v0, v4, v6

    .line 443
    .local v0, "alarmTime":J
    iget-object v4, p0, Landroid/net/dhcp/DhcpClient;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Landroid/net/dhcp/DhcpClient;->mRenewIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v0, v1, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 444
    const-string/jumbo v4, "DhcpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Scheduling renewal in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v0, v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .end local v0    # "alarmTime":J
    .end local v2    # "now":J
    :goto_0
    return-void

    .line 446
    :cond_0
    const-string/jumbo v4, "DhcpClient"

    const-string/jumbo v5, "Infinite lease, no renewal needed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendDiscoverPacket()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 417
    iget v1, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->getSecs()S

    move-result v2

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    .line 418
    sget-object v5, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    move v4, v0

    .line 416
    invoke-static/range {v0 .. v5}, Landroid/net/dhcp/DhcpPacket;->buildDiscoverPacket(IIS[BZ[B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 419
    .local v6, "packet":Ljava/nio/ByteBuffer;
    const-string/jumbo v0, "DHCPDISCOVER"

    sget-object v1, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    invoke-direct {p0, v6, v0, v1}, Landroid/net/dhcp/DhcpClient;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/net/Inet4Address;)Z

    move-result v0

    return v0
.end method

.method private sendRequestPacket(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z
    .locals 13
    .param p1, "clientAddress"    # Ljava/net/Inet4Address;
    .param p2, "requestedAddress"    # Ljava/net/Inet4Address;
    .param p3, "serverAddress"    # Ljava/net/Inet4Address;
    .param p4, "to"    # Ljava/net/Inet4Address;

    .prologue
    .line 426
    sget-object v2, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 429
    .local v1, "encap":I
    :goto_0
    iget v2, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    invoke-direct {p0}, Landroid/net/dhcp/DhcpClient;->getSecs()S

    move-result v3

    .line 430
    iget-object v6, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    .line 431
    sget-object v9, Landroid/net/dhcp/DhcpClient;->REQUESTED_PARAMS:[B

    .line 430
    const/4 v5, 0x0

    .line 431
    const/4 v10, 0x0

    move-object v4, p1

    move-object v7, p2

    move-object/from16 v8, p3

    .line 428
    invoke-static/range {v1 .. v10}, Landroid/net/dhcp/DhcpPacket;->buildRequestPacket(IISLjava/net/Inet4Address;Z[BLjava/net/Inet4Address;Ljava/net/Inet4Address;[BLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 432
    .local v12, "packet":Ljava/nio/ByteBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DHCPREQUEST ciaddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 433
    const-string/jumbo v3, " request="

    .line 432
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 433
    invoke-virtual {p2}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 432
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 434
    const-string/jumbo v3, " to="

    .line 432
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 434
    invoke-virtual/range {p3 .. p3}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 432
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 435
    .local v11, "description":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-direct {p0, v12, v11, v0}, Landroid/net/dhcp/DhcpClient;->transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/net/Inet4Address;)Z

    move-result v2

    return v2

    .line 426
    .end local v1    # "encap":I
    .end local v11    # "description":Ljava/lang/String;
    .end local v12    # "packet":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v1, 0x2

    .restart local v1    # "encap":I
    goto :goto_0
.end method

.method private setIpAddress(Landroid/net/LinkAddress;)Z
    .locals 5
    .param p1, "address"    # Landroid/net/LinkAddress;

    .prologue
    .line 345
    new-instance v1, Landroid/net/InterfaceConfiguration;

    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 346
    .local v1, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v1, p1}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 348
    :try_start_0
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/dhcp/DhcpClient;->mIfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    const/4 v2, 0x1

    return v2

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DhcpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error configuring IP address : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v2, 0x0

    return v2
.end method

.method private startNewTransaction()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    .line 293
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/dhcp/DhcpClient;->mTransactionStartMillis:J

    .line 291
    return-void
.end method

.method private transmitPacket(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/net/Inet4Address;)Z
    .locals 8
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "to"    # Ljava/net/Inet4Address;

    .prologue
    const/4 v7, 0x0

    .line 397
    :try_start_0
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    invoke-virtual {p3, v0}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Broadcasting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mPacketSock:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    iget-object v5, p0, Landroid/net/dhcp/DhcpClient;->mInterfaceBroadcastAddr:Landroid/system/PacketSocketAddress;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    .line 412
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 401
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unicasting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/dhcp/DhcpClient;->maybeLog(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mUdpSock:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    :catch_0
    move-exception v6

    .line 409
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "DhcpClient"

    const-string/jumbo v1, "Can\'t send packet: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    return v7
.end method


# virtual methods
.method public doQuit()V
    .locals 2

    .prologue
    .line 473
    const-string/jumbo v0, "DhcpClient"

    const-string/jumbo v1, "doQuit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient;->quit()V

    .line 472
    return-void
.end method

.method public isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z
    .locals 5
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    .prologue
    const/4 v4, 0x0

    .line 663
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getTransactionId()I

    move-result v0

    .line 664
    .local v0, "xid":I
    iget v1, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    if-eq v0, v1, :cond_0

    .line 665
    const-string/jumbo v1, "DhcpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected transaction ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/dhcp/DhcpClient;->mTransactionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return v4

    .line 668
    :cond_0
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getClientMac()[B

    move-result-object v1

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient;->mHwAddr:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 669
    const-string/jumbo v1, "DhcpClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MAC addr mismatch: got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 670
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getClientMac()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 669
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 670
    const-string/jumbo v3, ", expected "

    .line 669
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 671
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getClientMac()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 669
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return v4

    .line 674
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 478
    const-string/jumbo v0, "DhcpClient"

    const-string/jumbo v1, "onQuitting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient;->mController:Lcom/android/internal/util/StateMachine;

    const v1, 0x30006

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 477
    return-void
.end method

.method public registerForPreDhcpNotification()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/dhcp/DhcpClient;->mRegisteredForPreDhcpNotification:Z

    .line 226
    return-void
.end method

.method public setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V
    .locals 5
    .param p1, "packet"    # Landroid/net/dhcp/DhcpPacket;

    .prologue
    const-wide/16 v2, 0x0

    .line 678
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->getLeaseTimeMillis()J

    move-result-wide v0

    .line 680
    .local v0, "leaseTimeMillis":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 679
    :cond_0
    iput-wide v2, p0, Landroid/net/dhcp/DhcpClient;->mDhcpLeaseExpiry:J

    .line 677
    return-void
.end method
