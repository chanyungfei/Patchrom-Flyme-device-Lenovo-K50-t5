.class final Lcom/android/server/wifi/WifiTrafficPoller;
.super Ljava/lang/Object;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;,
        Lcom/android/server/wifi/WifiTrafficPoller$PingResult;,
        Lcom/android/server/wifi/WifiTrafficPoller$PingThread;
    }
.end annotation


# static fields
.field private static final ADD_CLIENT:I = 0x3

.field private static final ENABLE_TRAFFIC_STATS_POLL:I = 0x1

.field private static final MAX_NETWORK_ERROR_COUNT:I = 0x3

.field private static final NO_RX_DATA_TIMEOUT:I = 0x5

.field private static final PING_COMPLETE:I = 0xa

.field private static final PING_INTERVAL:I = 0x3c

.field private static final PING_RESULT_NETWORK_ERROR:I = 0x3

.field private static final PING_RESULT_OK:I = 0x0

.field private static final PING_RESULT_POOR_INTERNET:I = 0x2

.field private static final PING_RESULT_POOR_NETWORK:I = 0x1

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final REMOVE_CLIENT:I = 0x4

.field private static final TRAFFIC_STATS_POLL:I = 0x2


# instance fields
.field private DBG:Z

.field private final TAG:Ljava/lang/String;

.field private VDBG:Z

.field private final mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataActivity:I

.field private mEnableTrafficStatsPoll:Z

.field private final mInterface:Ljava/lang/String;

.field private mNetworkErrorCount:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoRxCounter:I

.field private mPingCounter:I

.field private mPingThread:Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

.field private mRxPkts:J

.field private mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

.field private mTrafficStatsPollToken:I

.field private mTxPkts:J


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiTrafficPoller;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiTrafficPoller;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->VDBG:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiTrafficPoller;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiTrafficPoller;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkErrorCount:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/wifi/WifiTrafficPoller;)Lcom/android/server/wifi/WifiTrafficPoller$PingThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingThread:Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/wifi/WifiTrafficPoller;)Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/wifi/WifiTrafficPoller;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiTrafficPoller;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiTrafficPoller;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkErrorCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiTrafficPoller;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNoRxCounter:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/wifi/WifiTrafficPoller;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingCounter:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$PingThread;)Lcom/android/server/wifi/WifiTrafficPoller$PingThread;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingThread:Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/wifi/WifiTrafficPoller;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiTrafficPoller;->evaluateTrafficStatsPolling()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiTrafficPoller;->notifyOnDataActivity()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    .line 58
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiTrafficPoller;->VDBG:Z

    .line 60
    const-string/jumbo v1, "WifiTrafficPoller"

    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->TAG:Ljava/lang/String;

    .line 72
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    .line 73
    iput v2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    .line 82
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 358
    iput-object v4, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingThread:Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    .line 359
    iput v2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingCounter:I

    .line 360
    iput v2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNoRxCounter:I

    .line 361
    iput v2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkErrorCount:I

    .line 90
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    .line 94
    new-instance v1, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    new-instance v1, Lcom/android/server/wifi/WifiTrafficPoller$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiTrafficPoller$1;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;)V

    .line 101
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    return-void
.end method

.method private evaluateTrafficStatsPolling()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 235
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v1, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    invoke-static {v1, v4, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 243
    .local v0, "msg":Landroid/os/Message;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 233
    return-void

    .line 240
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    invoke-static {v1, v4, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_0
.end method

.method private notifyOnDataActivity()V
    .locals 22

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    .local v12, "preTxPkts":J
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    .line 249
    .local v10, "preRxPkts":J
    const/4 v7, 0x0

    .line 251
    .local v7, "dataActivity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mInterface:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    .line 254
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->VDBG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 255
    const-string/jumbo v18, "WifiTrafficPoller"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " packet count Tx="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 256
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    .line 255
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 257
    const-string/jumbo v20, " Rx="

    .line 255
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 258
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    .line 255
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-gtz v18, :cond_1

    const-wide/16 v18, 0x0

    cmp-long v18, v10, v18

    if-lez v18, :cond_5

    .line 262
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    move-wide/from16 v18, v0

    sub-long v16, v18, v12

    .line 263
    .local v16, "sent":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    move-wide/from16 v18, v0

    sub-long v14, v18, v10

    .line 264
    .local v14, "received":J
    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-lez v18, :cond_2

    .line 265
    const/4 v7, 0x2

    .line 267
    :cond_2
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-lez v18, :cond_3

    .line 268
    or-int/lit8 v7, v7, 0x1

    .line 271
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v7, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 272
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    .line 273
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 274
    const-string/jumbo v18, "WifiTrafficPoller"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "notifying of data activity "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 274
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mClients:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "client$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Messenger;

    .line 278
    .local v5, "client":Landroid/os/Messenger;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 279
    .local v9, "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v9, Landroid/os/Message;->what:I

    .line 280
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v9, Landroid/os/Message;->arg1:I

    .line 282
    :try_start_0
    invoke-virtual {v5, v9}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 293
    .end local v5    # "client":Landroid/os/Messenger;
    .end local v6    # "client$iterator":Ljava/util/Iterator;
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v9    # "msg":Landroid/os/Message;
    .end local v14    # "received":J
    .end local v16    # "sent":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingThread:Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    move-object/from16 v18, v0

    if-nez v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 295
    const/4 v4, 0x0

    .line 297
    .local v4, "bStartPing":Z
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v7, v0, :cond_9

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mNoRxCounter:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mNoRxCounter:I

    .line 301
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mNoRxCounter:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 303
    const/4 v4, 0x1

    .line 311
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingCounter:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mPingCounter:I

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingCounter:I

    move/from16 v18, v0

    const/16 v19, 0x3c

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    .line 315
    const/4 v4, 0x1

    .line 318
    :cond_7
    if-eqz v4, :cond_8

    .line 320
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mPingCounter:I

    .line 321
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mNoRxCounter:I

    .line 323
    new-instance v18, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mPingThread:Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mPingThread:Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->start()V

    .line 246
    .end local v4    # "bStartPing":Z
    :cond_8
    :goto_2
    return-void

    .line 308
    .restart local v4    # "bStartPing":Z
    :cond_9
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mNoRxCounter:I

    goto :goto_1

    .line 327
    .end local v4    # "bStartPing":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    if-nez v18, :cond_8

    .line 329
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mPingCounter:I

    .line 330
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mNoRxCounter:I

    .line 331
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller;->mNetworkErrorCount:I

    goto :goto_2
.end method


# virtual methods
.method addClient(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "client"    # Landroid/os/Messenger;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 119
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEnableTrafficStatsPoll "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mEnableTrafficStatsPoll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTrafficStatsPollToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficStatsPollToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTxPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRxPkts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mRxPkts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDataActivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mDataActivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    .prologue
    const/4 v0, 0x0

    .line 128
    if-lez p1, :cond_0

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    .line 127
    :goto_0
    return-void

    .line 131
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->DBG:Z

    goto :goto_0
.end method

.method removeClient(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "client"    # Landroid/os/Messenger;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller;->mTrafficHandler:Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 123
    return-void
.end method
