.class public Lcom/android/server/net/LockdownVpnTracker;
.super Ljava/lang/Object;
.source "LockdownVpnTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/LockdownVpnTracker$1;,
        Lcom/android/server/net/LockdownVpnTracker$2;
    }
.end annotation


# static fields
.field private static final ACTION_KEYSTORE_RESET:Ljava/lang/String; = "com.mediatek.android.keystore.action.KEYSTORE_RESET"

.field private static final ACTION_LOCKDOWN_RESET:Ljava/lang/String; = "com.android.server.action.LOCKDOWN_RESET"

.field private static final ACTION_VPN_CLEAR:Ljava/lang/String; = "lenovo.com.android.server.am.ActivityManagerService.action.VPN_CLEAR"

.field private static final ACTION_VPN_SETTINGS:Ljava/lang/String; = "android.net.vpn.SETTINGS"

.field private static final EXTRA_PICK_LOCKDOWN:Ljava/lang/String; = "android.net.vpn.PICK_LOCKDOWN"

.field private static final MAX_ERROR_COUNT:I = 0x4

.field private static final ROOT_UID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LockdownVpnTracker"


# instance fields
.field private mAcceptedEgressIface:Ljava/lang/String;

.field private mAcceptedIface:Ljava/lang/String;

.field private mAcceptedSourceAddr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigIntent:Landroid/app/PendingIntent;

.field private final mConnService:Lcom/android/server/ConnectivityService;

.field private final mContext:Landroid/content/Context;

.field private mErrorCount:I

.field private mKeystoreResetReceiver:Landroid/content/BroadcastReceiver;

.field private final mNetService:Landroid/os/INetworkManagementService;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private final mResetIntent:Landroid/app/PendingIntent;

.field private mResetReceiver:Landroid/content/BroadcastReceiver;

.field private final mStateLock:Ljava/lang/Object;

.field private final mVpn:Lcom/android/server/connectivity/Vpn;


# direct methods
.method static synthetic -get0(Lcom/android/server/net/LockdownVpnTracker;)Lcom/android/server/ConnectivityService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netService"    # Landroid/os/INetworkManagementService;
    .param p3, "connService"    # Lcom/android/server/ConnectivityService;
    .param p4, "vpn"    # Lcom/android/server/connectivity/Vpn;
    .param p5, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    .line 129
    new-instance v2, Lcom/android/server/net/LockdownVpnTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/net/LockdownVpnTracker$1;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    new-instance v2, Lcom/android/server/net/LockdownVpnTracker$2;

    invoke-direct {v2, p0}, Lcom/android/server/net/LockdownVpnTracker$2;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mKeystoreResetReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    .line 116
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    .line 117
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 118
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.vpn.SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "configIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.net.vpn.PICK_LOCKDOWN"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    .line 124
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.server.action.LOCKDOWN_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, "resetIntent":Landroid/content/Intent;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    .line 113
    return-void
.end method

.method private clearSourceRulesLocked()V
    .locals 7

    .prologue
    .line 371
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 372
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 373
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    .line 375
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 376
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "addr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 377
    .local v0, "addr":Landroid/net/LinkAddress;
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/server/net/LockdownVpnTracker;->setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    .end local v0    # "addr":Landroid/net/LinkAddress;
    .end local v1    # "addr$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 386
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Problem setting firewall rules"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 380
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "addr$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 381
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v5, v4, v6}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 383
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    .end local v1    # "addr$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private handleStateChangedLocked()V
    .locals 23

    .prologue
    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;

    move-result-object v11

    .line 184
    .local v11, "egressInfo":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v12

    .line 186
    .local v12, "egressProp":Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v18

    .line 187
    .local v18, "vpnInfo":Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v17

    .line 190
    .local v17, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    if-eqz v11, :cond_2

    .line 191
    sget-object v19, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 192
    :goto_0
    if-eqz v12, :cond_3

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual {v12}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    const/4 v8, 0x0

    .line 195
    .local v8, "egressChanged":Z
    :goto_1
    if-nez v11, :cond_5

    .line 196
    const/4 v14, 0x0

    .line 197
    :goto_2
    if-nez v12, :cond_6

    .line 198
    const/4 v10, 0x0

    .line 199
    :goto_3
    const-string/jumbo v19, "LockdownVpnTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "handleStateChanged: egress="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 200
    const-string/jumbo v21, " "

    .line 199
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 199
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 200
    const-string/jumbo v21, "->"

    .line 199
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-nez v9, :cond_0

    if-eqz v8, :cond_1

    .line 203
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    .line 204
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 207
    :cond_1
    if-eqz v9, :cond_7

    .line 208
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    .line 209
    return-void

    .line 190
    .end local v8    # "egressChanged":Z
    :cond_2
    const/4 v9, 0x1

    .local v9, "egressDisconnected":Z
    goto :goto_0

    .line 192
    .end local v9    # "egressDisconnected":Z
    :cond_3
    const/4 v8, 0x1

    .restart local v8    # "egressChanged":Z
    goto :goto_1

    .line 193
    .end local v8    # "egressChanged":Z
    :cond_4
    const/4 v8, 0x1

    .restart local v8    # "egressChanged":Z
    goto :goto_1

    .line 196
    :cond_5
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v14

    .local v14, "egressTypeName":Ljava/lang/String;
    goto :goto_2

    .line 198
    .end local v14    # "egressTypeName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v12}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    .local v10, "egressIface":Ljava/lang/String;
    goto :goto_3

    .line 212
    .end local v10    # "egressIface":Ljava/lang/String;
    :cond_7
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    .line 213
    .local v13, "egressType":I
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    sget-object v20, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 214
    invoke-static {v13}, Lcom/android/server/EventLogTags;->writeLockdownVpnError(I)V

    .line 217
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    .line 218
    const v19, 0x1040438

    const v20, 0x1080743

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 181
    :cond_9
    :goto_4
    return-void

    .line 220
    :cond_a
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 241
    :cond_b
    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v19

    if-eqz v19, :cond_9

    if-eqz v17, :cond_9

    .line 242
    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 243
    .local v15, "iface":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    move-object/from16 v16, v0

    .line 245
    .local v16, "sourceAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v19

    .line 245
    if-eqz v19, :cond_e

    .line 247
    return-void

    .line 221
    .end local v15    # "iface":Ljava/lang/String;
    .end local v16    # "sourceAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 222
    const-string/jumbo v19, "LockdownVpnTracker"

    const-string/jumbo v20, "Active network connected; starting VPN"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {v13}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnecting(I)V

    .line 224
    const v19, 0x1040436

    const v20, 0x1080743

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 226
    invoke-virtual {v12}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 230
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 231
    :catch_0
    move-exception v7

    .line 232
    .local v7, "e":Ljava/lang/IllegalStateException;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 233
    const-string/jumbo v19, "LockdownVpnTracker"

    const-string/jumbo v20, "Failed to start VPN"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    const v19, 0x1040438

    const v20, 0x1080743

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    goto/16 :goto_4

    .line 237
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :cond_d
    const-string/jumbo v19, "LockdownVpnTracker"

    const-string/jumbo v20, "Invalid VPN profile; requires IP-based server and DNS"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const v19, 0x1040438

    const v20, 0x1080743

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    goto/16 :goto_4

    .line 250
    .restart local v15    # "iface":Ljava/lang/String;
    .restart local v16    # "sourceAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    :cond_e
    const-string/jumbo v19, "LockdownVpnTracker"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "VPN connected using iface="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 251
    const-string/jumbo v21, ", sourceAddr="

    .line 250
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 251
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 250
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {v13}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnected(I)V

    .line 253
    const v19, 0x1040437

    const v20, 0x1080742

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 256
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v0, v15, v1}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 259
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "addr$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 260
    .local v4, "addr":Landroid/net/LinkAddress;
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v4, v1}, Lcom/android/server/net/LockdownVpnTracker;->setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 269
    .end local v4    # "addr":Landroid/net/LinkAddress;
    .end local v5    # "addr$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v6

    .line 270
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v19, Ljava/lang/RuntimeException;

    const-string/jumbo v20, "Problem setting firewall rules"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 263
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v5    # "addr$iterator":Ljava/util/Iterator;
    :cond_f
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-interface/range {v19 .. v22}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 266
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    .line 267
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    .line 268
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    goto/16 :goto_4
.end method

.method private hideNotification()V
    .locals 3

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "LockdownVpnTracker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 439
    return-void
.end method

.method private initLocked()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 284
    const-string/jumbo v3, "LockdownVpnTracker"

    const-string/jumbo v4, "initLocked()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3, v5}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    .line 288
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.android.server.action.LOCKDOWN_RESET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 289
    .local v2, "resetFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v5, "android.permission.CONNECTIVITY_INTERNAL"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 297
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "lenovo.android.security.KeyStore.action.KEYSTORE_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "lenovo.com.android.server.am.ActivityManagerService.action.VPN_CLEAR"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mKeystoreResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v5, 0x1f4

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 304
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v5, 0x1194

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 305
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v5, 0x6a5

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 309
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v3, v3, Lcom/android/internal/net/VpnProfile;->type:I

    if-nez v3, :cond_0

    .line 310
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v5, 0x6bb

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 311
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const-string/jumbo v4, "gre"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/os/INetworkManagementService;->setFirewallEgressProtoRule(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 319
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 283
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Problem setting firewall rules"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 318
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method public static isEnabled()Z
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string/jumbo v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFileUsable()Z
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string/jumbo v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFirewallEgressSourceRule(Landroid/net/LinkAddress;Z)V
    .locals 2
    .param p1, "address"    # Landroid/net/LinkAddress;
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "addrString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, v0, p2}, Landroid/os/INetworkManagementService;->setFirewallEgressSourceRule(Ljava/lang/String;Z)V

    .line 391
    return-void
.end method

.method private showNotification(II)V
    .locals 5
    .param p1, "titleRes"    # I
    .param p2, "iconRes"    # I

    .prologue
    .line 423
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 424
    const-wide/16 v2, 0x0

    .line 423
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 426
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 427
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    const v3, 0x1040439

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 428
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    .line 423
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 429
    const/4 v2, -0x1

    .line 423
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 430
    const/4 v2, 0x1

    .line 423
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 431
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    const v3, 0x104043c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 432
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    .line 431
    const v4, 0x10803e3

    .line 423
    invoke-virtual {v1, v4, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 433
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 434
    const v3, 0x1060059

    .line 433
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 423
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 436
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    const-string/jumbo v2, "LockdownVpnTracker"

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 422
    return-void
.end method

.method private shutdownLocked()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 330
    const-string/jumbo v1, "LockdownVpnTracker"

    const-string/jumbo v2, "shutdownLocked()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 333
    iput v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    .line 335
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v3, 0x1f4

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 338
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v3, 0x1194

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 339
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v3, 0x6a5

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 342
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    if-nez v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/16 v3, 0x6bb

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallEgressDestRule(Ljava/lang/String;IZ)V

    .line 344
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    const-string/jumbo v2, "gre"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallEgressProtoRule(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->clearSourceRulesLocked()V

    .line 351
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    .line 353
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 355
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mKeystoreResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 356
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    .line 329
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Problem setting firewall rules"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 5
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 414
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 416
    .local v1, "vpnInfo":Landroid/net/NetworkInfo;
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 417
    .end local p1    # "info":Landroid/net/NetworkInfo;
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 419
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v1    # "vpnInfo":Landroid/net/NetworkInfo;
    .restart local p1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return-object p1
.end method

.method public init()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 277
    return-void

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onNetworkInfoChanged()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 398
    return-void

    .line 399
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onVpnStateChanged(Landroid/net/NetworkInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 405
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    .line 406
    iget v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 404
    return-void

    .line 408
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 360
    const-string/jumbo v0, "LockdownVpnTracker"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    .line 364
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    .line 365
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 359
    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 323
    return-void

    .line 324
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
