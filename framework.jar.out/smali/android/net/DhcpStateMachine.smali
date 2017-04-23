.class public Landroid/net/DhcpStateMachine;
.super Landroid/net/BaseDhcpStateMachine;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DhcpStateMachine$DefaultState;,
        Landroid/net/DhcpStateMachine$StoppedState;,
        Landroid/net/DhcpStateMachine$WaitBeforeStartState;,
        Landroid/net/DhcpStateMachine$PollingState;,
        Landroid/net/DhcpStateMachine$RunningState;,
        Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;
    }
.end annotation


# static fields
.field private static final ACTION_DHCPV6_RENEW:Ljava/lang/String; = "android.net.wifi.DHCPV6_RENEW"

.field private static final ACTION_DHCP_RENEW:Ljava/lang/String; = "android.net.wifi.DHCP_RENEW"

.field private static final BASE:I = 0x30000

.field private static final CMD_GET_DHCP_RESULTS:I = 0x30008

.field public static final CMD_ON_QUIT:I = 0x30006

.field public static final CMD_POST_DHCP_ACTION:I = 0x30005

.field public static final CMD_PRE_DHCP_ACTION:I = 0x30004

.field public static final CMD_PRE_DHCP_ACTION_COMPLETE:I = 0x30007

.field public static final CMD_RENEW_DHCP:I = 0x30003

.field public static final CMD_SETUP_V6:I = 0x30009

.field public static final CMD_START_DHCP:I = 0x30001

.field public static final CMD_STOP_DHCP:I = 0x30002

.field private static final DBG:Z = true

.field public static final DHCPV4:I = 0x1

.field public static final DHCPV6:I = 0x2

.field public static final DHCP_FAILURE:I = 0x2

.field private static final DHCP_RENEW:I = 0x0

.field public static final DHCP_SUCCESS:I = 0x1

.field private static final MIN_RENEWAL_TIME_SECS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "DhcpStateMachine"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "DHCP"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/internal/util/StateMachine;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDhcpPid:I

.field private mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mDhcpRenewalIntent:Landroid/app/PendingIntent;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private final mInterfaceName:Ljava/lang/String;

.field private mIsDhcpV6:Z

.field private mIsQuitting:Z

.field private mIsRegistered:Z

.field private mPollingState:Lcom/android/internal/util/State;

.field private mRegisteredForPreDhcpNotification:Z

.field private mRunningState:Lcom/android/internal/util/State;

.field private mStoppedState:Lcom/android/internal/util/State;

.field private mWaitBeforeRenewalState:Lcom/android/internal/util/State;

.field private mWaitBeforeStartState:Lcom/android/internal/util/State;


# direct methods
.method static synthetic -get0(Landroid/net/DhcpStateMachine;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/DhcpStateMachine;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get10(Landroid/net/DhcpStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    return v0
.end method

.method static synthetic -get11(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get12(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get13(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get14(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/DhcpStateMachine;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/StateMachine;
    .locals 1

    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic -get4(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get5(Landroid/net/DhcpStateMachine;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get6(Landroid/net/DhcpStateMachine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Landroid/net/DhcpStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    return v0
.end method

.method static synthetic -get8(Landroid/net/DhcpStateMachine;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    return v0
.end method

.method static synthetic -get9(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mPollingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/DhcpStateMachine;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
    .locals 0

    iput-object p1, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/DhcpStateMachine;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/net/DhcpStateMachine;Z)Z
    .locals 1
    .param p1, "isRenew"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/net/DhcpStateMachine;->dhcpSucceeded(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/net/DhcpStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->runDhcpRenew()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/net/DhcpStateMachine;)Z
    .locals 1

    invoke-direct {p0}, Landroid/net/DhcpStateMachine;->runDhcpStart()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/net/DhcpStateMachine;I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/net/DhcpStateMachine;Z)V
    .locals 0
    .param p1, "isDhcpV6"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/net/DhcpStateMachine;->setForDhcpV6(Z)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p3, "intf"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 124
    const-string/jumbo v2, "DhcpStateMachine"

    invoke-direct {p0, v2}, Landroid/net/BaseDhcpStateMachine;-><init>(Ljava/lang/String;)V

    .line 78
    iput-boolean v4, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    .line 108
    new-instance v2, Landroid/net/DhcpStateMachine$DefaultState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$DefaultState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 109
    new-instance v2, Landroid/net/DhcpStateMachine$StoppedState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$StoppedState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    .line 110
    new-instance v2, Landroid/net/DhcpStateMachine$WaitBeforeStartState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$WaitBeforeStartState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    .line 111
    new-instance v2, Landroid/net/DhcpStateMachine$RunningState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$RunningState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    .line 112
    new-instance v2, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    .line 113
    new-instance v2, Landroid/net/DhcpStateMachine$PollingState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$PollingState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mPollingState:Lcom/android/internal/util/State;

    .line 117
    iput-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    .line 118
    iput-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    .line 119
    iput-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsQuitting:Z

    .line 126
    iput-object p1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    .line 128
    iput-object p3, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 130
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.wifi.DHCP_RENEW"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    .local v0, "dhcpRenewalIntent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    .line 134
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 135
    .local v1, "powerManager":Landroid/os/PowerManager;
    const-string/jumbo v2, "DHCP"

    invoke-virtual {v1, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 136
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 138
    new-instance v2, Landroid/net/DhcpStateMachine$1;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$1;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.net.wifi.DHCP_RENEW"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    iput-boolean v6, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    .line 152
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 153
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 154
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 155
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mPollingState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 156
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 157
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 159
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/DhcpStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 123
    return-void
.end method

.method private dhcpSucceeded(Z)Z
    .locals 12
    .param p1, "isRenew"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 429
    new-instance v0, Landroid/net/DhcpResults;

    invoke-direct {v0}, Landroid/net/DhcpResults;-><init>()V

    .line 430
    .local v0, "dhcpResults":Landroid/net/DhcpResults;
    iget-boolean v1, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v1, :cond_0

    .line 431
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/net/NetworkUtils;->getDhcpResults(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 432
    const-string/jumbo v1, "DhcpStateMachine"

    const-string/jumbo v4, "getDhcpResults failed"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return v5

    .line 436
    :cond_0
    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    if-eqz p1, :cond_1

    move v1, v4

    :goto_0
    invoke-static {v7, v0, v1}, Landroid/net/NetworkUtils;->getDhcpv6Results(Ljava/lang/String;Landroid/net/DhcpResults;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 437
    const-string/jumbo v1, "DhcpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDhcpv6Results failed, isRenew = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return v5

    :cond_1
    move v1, v5

    .line 436
    goto :goto_0

    .line 441
    :cond_2
    const-string/jumbo v5, "DhcpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DHCP"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v1, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "V6"

    :goto_1
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 442
    const-string/jumbo v7, " results found for "

    .line 441
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 442
    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 441
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget v1, v0, Landroid/net/DhcpResults;->leaseDuration:I

    int-to-long v2, v1

    .line 444
    .local v2, "leaseDuration":J
    const-string/jumbo v1, "DhcpStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dhcpResults = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-boolean v1, p0, Landroid/net/DhcpStateMachine;->mIsQuitting:Z

    if-eqz v1, :cond_4

    .line 448
    const-string/jumbo v1, "DhcpStateMachine"

    const-string/jumbo v5, "result found but is quitting"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return v4

    .line 441
    .end local v2    # "leaseDuration":J
    :cond_3
    const-string/jumbo v1, "V4"

    goto :goto_1

    .line 453
    .restart local v2    # "leaseDuration":J
    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-ltz v1, :cond_6

    .line 454
    iget-boolean v1, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v1, :cond_7

    .line 457
    const-wide/16 v8, 0x12c

    cmp-long v1, v2, v8

    if-gez v1, :cond_5

    .line 458
    const-wide/16 v2, 0x12c

    .line 463
    :cond_5
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 464
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 465
    const-wide/16 v10, 0x1e0

    mul-long/2addr v10, v2

    .line 464
    add-long/2addr v8, v10

    .line 466
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    .line 463
    invoke-virtual {v1, v6, v8, v9, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 484
    :cond_6
    :goto_2
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v0, v1}, Landroid/net/DhcpResults;->updateFromDhcpRequest(Landroid/net/DhcpResults;)V

    .line 485
    iput-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    .line 486
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    .line 487
    iget-boolean v1, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v1, :cond_9

    move v1, v6

    :goto_3
    new-instance v6, Landroid/net/DhcpResults;

    invoke-direct {v6, v0}, Landroid/net/DhcpResults;-><init>(Landroid/net/DhcpResults;)V

    .line 486
    const v7, 0x30005

    invoke-virtual {v5, v7, v4, v1, v6}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 489
    return v4

    .line 468
    :cond_7
    long-to-double v8, v2

    const-wide/high16 v10, 0x4062000000000000L    # 144.0

    cmpg-double v1, v8, v10

    if-gez v1, :cond_8

    .line 469
    const-wide/16 v2, 0x90

    .line 471
    :cond_8
    const-string/jumbo v1, "DhcpStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "DHCPV6 leaseDuration:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 473
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 474
    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v2

    .line 473
    add-long/2addr v8, v10

    .line 475
    iget-object v5, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    .line 472
    invoke-virtual {v1, v6, v8, v9, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_2

    :cond_9
    move v1, v4

    .line 487
    goto :goto_3
.end method

.method public static makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controller"    # Lcom/android/internal/util/StateMachine;
    .param p2, "intf"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Landroid/net/DhcpStateMachine;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/DhcpStateMachine;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V

    .line 165
    .local v0, "dsm":Landroid/net/DhcpStateMachine;
    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->start()V

    .line 166
    return-object v0
.end method

.method private runDhcpRenew()Z
    .locals 7

    .prologue
    const v6, 0x30005

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 530
    const-string/jumbo v1, "DhcpStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DHCP"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "V6"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " renewal on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v0, :cond_3

    .line 532
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->startDhcpRenew(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v3}, Landroid/net/DhcpStateMachine;->dhcpSucceeded(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    :cond_0
    return v3

    .line 530
    :cond_1
    const-string/jumbo v0, "V4"

    goto :goto_0

    .line 533
    :cond_2
    const-string/jumbo v0, "DhcpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DHCP renew failed on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 534
    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v2

    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0, v6, v4, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 537
    return v5

    .line 540
    :cond_3
    const-string/jumbo v0, "DhcpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDhcpPid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/DhcpStateMachine;->mDhcpPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    iget v1, p0, Landroid/net/DhcpStateMachine;->mDhcpPid:I

    invoke-static {v0, v1}, Landroid/net/NetworkUtils;->startDhcpv6Renew(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v3}, Landroid/net/DhcpStateMachine;->dhcpSucceeded(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    :cond_4
    const-string/jumbo v0, "DhcpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DHCPv6 renew failed on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 543
    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpv6Error()Ljava/lang/String;

    move-result-object v2

    .line 542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0, v6, v4, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 546
    return v5
.end method

.method private runDhcpStart()Z
    .locals 7

    .prologue
    const v6, 0x30005

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 494
    const-string/jumbo v1, "DhcpStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runDhcpStart "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "V6"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v0, :cond_3

    .line 496
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    const-string/jumbo v0, "DhcpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to stop Dhcp on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    .line 506
    const-string/jumbo v1, "DhcpStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DHCP"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "V6"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " request on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v0, :cond_6

    .line 508
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->startDhcp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v3}, Landroid/net/DhcpStateMachine;->dhcpSucceeded(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 526
    :cond_1
    return v5

    .line 494
    :cond_2
    const-string/jumbo v0, "V4"

    goto :goto_0

    .line 500
    :cond_3
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcpv6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    const-string/jumbo v0, "DhcpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to stop Dhcpv6 on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 506
    :cond_4
    const-string/jumbo v0, "V4"

    goto :goto_2

    .line 509
    :cond_5
    const-string/jumbo v0, "DhcpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DHCP request failed on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 510
    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v2

    .line 509
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0, v6, v4, v5}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 513
    return v3

    .line 516
    :cond_6
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->startDhcpv6(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/DhcpStateMachine;->mDhcpPid:I

    .line 517
    const-string/jumbo v0, "DhcpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDhcpPid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/DhcpStateMachine;->mDhcpPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget v0, p0, Landroid/net/DhcpStateMachine;->mDhcpPid:I

    if-ltz v0, :cond_7

    invoke-direct {p0, v3}, Landroid/net/DhcpStateMachine;->dhcpSucceeded(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 519
    :cond_7
    const-string/jumbo v0, "DhcpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DHCPv6 request failed on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 520
    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpv6Error()Ljava/lang/String;

    move-result-object v2

    .line 519
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0, v6, v4, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 523
    return v3
.end method

.method private setForDhcpV6(Z)V
    .locals 7
    .param p1, "isDhcpV6"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 554
    iput-boolean p1, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    .line 555
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.DHCPV6_RENEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 556
    .local v0, "dhcpRenewalIntent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    .line 558
    iget-boolean v1, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 560
    iput-boolean v5, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    .line 562
    :cond_0
    const-string/jumbo v1, "DhcpStateMachine"

    const-string/jumbo v2, "Register receiver for dhcpv6!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.DHCPV6_RENEW"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 564
    iput-boolean v6, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    .line 565
    iput-boolean v5, p0, Landroid/net/DhcpStateMachine;->mIsQuitting:Z

    .line 553
    return-void
.end method


# virtual methods
.method public doQuit()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsQuitting:Z

    .line 191
    invoke-virtual {p0}, Landroid/net/DhcpStateMachine;->quit()V

    .line 189
    return-void
.end method

.method protected onQuitting()V
    .locals 4

    .prologue
    .line 195
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    const v2, 0x30006

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 194
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerForPreDhcpNotification()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    .line 179
    return-void
.end method
