.class Lcom/android/server/wifi/WifiTrafficPoller$PingThread;
.super Ljava/lang/Thread;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingThread"
.end annotation


# static fields
.field private static final KEY_MSEC:Ljava/lang/String; = " ms"

.field private static final KEY_PACKET_LOSS:Ljava/lang/String; = "% packet loss"

.field private static final KEY_RECEIVE_PACKET_NUM:Ljava/lang/String; = " received"

.field private static final KEY_RTT:Ljava/lang/String; = "rtt min/avg/max/mdev = "

.field private static final KEY_TRANSMIT_PACKET_NUM:Ljava/lang/String; = " packets transmitted"

.field private static final KEY_UNKNOWN_HOST:Ljava/lang/String; = "ping: unknown host"

.field private static final PING_BUFFER_SIZE:I = 0x400

.field private static final PING_COMMAND:Ljava/lang/String; = "ping -c 5 -w 3000 "

.field private static final TAG:Ljava/lang/String; = "PingThread"


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/wifi/WifiTrafficPoller;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiTrafficPoller;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    .line 605
    const-string/jumbo v0, "PingThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 607
    iput-object p2, p0, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->mContext:Landroid/content/Context;

    .line 608
    iput-object p3, p0, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->mHandler:Landroid/os/Handler;

    .line 603
    return-void
.end method

.method private MSG_DEBUG(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-get0(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const-string/jumbo v0, "PingThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ PingThread ] :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    return-void
.end method

.method private MSG_ERROR(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 400
    const-string/jumbo v0, "PingThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ PingThread ] :: Error :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void
.end method

.method private getGateway()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 407
    iget-object v6, p0, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 409
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 411
    const-string/jumbo v6, "failed to get ConnectivityManager"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    .line 412
    return-object v8

    .line 415
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v4

    .line 417
    .local v4, "lp":Landroid/net/LinkProperties;
    if-nez v4, :cond_1

    .line 419
    const-string/jumbo v6, "failed to get link preperty"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    .line 420
    return-object v8

    .line 423
    :cond_1
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v5

    .line 425
    .local v5, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    if-nez v5, :cond_2

    .line 427
    const-string/jumbo v6, "failed to get routes"

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    .line 428
    return-object v8

    .line 431
    :cond_2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "info$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 433
    .local v2, "info":Landroid/net/RouteInfo;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 434
    invoke-virtual {v2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v6

    .line 433
    if-eqz v6, :cond_3

    .line 436
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 437
    .local v1, "gw":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Gateway: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_DEBUG(Ljava/lang/String;)V

    .line 438
    return-object v1

    .line 442
    .end local v1    # "gw":Ljava/lang/String;
    .end local v2    # "info":Landroid/net/RouteInfo;
    :cond_4
    return-object v8
.end method

.method private ping(Ljava/lang/String;)Lcom/android/server/wifi/WifiTrafficPoller$PingResult;
    .locals 29
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 447
    new-instance v19, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$PingResult;)V

    .line 448
    .local v19, "result":Lcom/android/server/wifi/WifiTrafficPoller$PingResult;
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->average_rtt:I

    .line 449
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->package_loss:I

    .line 451
    if-nez p1, :cond_0

    .line 453
    const-string/jumbo v25, "ping, invalid address"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    .line 454
    return-object v19

    .line 458
    :cond_0
    new-instance v25, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->address:Ljava/lang/String;

    .line 461
    const/16 v17, 0x0

    .line 463
    .local v17, "process":Ljava/lang/Process;
    const/4 v12, 0x0

    .line 464
    .local v12, "inputStream":Ljava/io/DataInputStream;
    const/4 v8, 0x0

    .line 466
    .local v8, "errorStream":Ljava/io/DataInputStream;
    const/16 v25, 0x400

    move/from16 v0, v25

    new-array v4, v0, [B

    .line 470
    .local v4, "buffer":[B
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "ping -c 5 -w 3000 "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v17

    .line 472
    .local v17, "process":Ljava/lang/Process;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "start to ping: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_DEBUG(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->waitFor()I

    move-result v21

    .line 476
    .local v21, "status":I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "ping "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " complete, status: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_DEBUG(Ljava/lang/String;)V

    .line 478
    new-instance v13, Ljava/io/DataInputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v13, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 479
    .end local v12    # "inputStream":Ljava/io/DataInputStream;
    .local v13, "inputStream":Ljava/io/DataInputStream;
    :try_start_1
    new-instance v9, Ljava/io/DataInputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 482
    .local v9, "errorStream":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v13, v4}, Ljava/io/DataInputStream;->read([B)I

    .end local v8    # "errorStream":Ljava/io/DataInputStream;
    move-result v5

    .line 483
    .local v5, "count":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v5, v0, :cond_c

    .line 485
    new-instance v11, Ljava/lang/String;

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-direct {v11, v4, v0, v5}, Ljava/lang/String;-><init>([BII)V

    .line 487
    .local v11, "input":Ljava/lang/String;
    const-string/jumbo v25, "\n"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 488
    .local v14, "line":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v25, v0

    if-lez v25, :cond_c

    .line 490
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v14

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_c

    .line 492
    aget-object v25, v14, v10

    if-eqz v25, :cond_5

    .line 493
    aget-object v25, v14, v10

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_5

    .line 495
    const/16 v23, -0x1

    .local v23, "transmit_num":I
    const/16 v18, -0x1

    .local v18, "receive_num":I
    const/16 v16, 0x0

    .local v16, "packet_loss":I
    const/4 v3, -0x1

    .line 497
    .local v3, "avg_rtt":I
    aget-object v25, v14, v10

    const-string/jumbo v26, " packets transmitted"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v25

    if-eqz v25, :cond_1

    .line 501
    :try_start_3
    aget-object v25, v14, v10

    aget-object v26, v14, v10

    const-string/jumbo v27, " packets transmitted"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    aget-object v27, v14, v10

    const-string/jumbo v28, " packets transmitted"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v23

    .line 508
    :cond_1
    :goto_1
    :try_start_4
    aget-object v25, v14, v10

    const-string/jumbo v26, " received"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v25

    if-eqz v25, :cond_2

    .line 512
    :try_start_5
    aget-object v25, v14, v10

    aget-object v26, v14, v10

    const-string/jumbo v27, " received"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    aget-object v27, v14, v10

    const-string/jumbo v28, " received"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v18

    .line 519
    :cond_2
    :goto_2
    :try_start_6
    aget-object v25, v14, v10

    const-string/jumbo v26, "% packet loss"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v25

    if-eqz v25, :cond_3

    .line 523
    :try_start_7
    aget-object v25, v14, v10

    aget-object v26, v14, v10

    const-string/jumbo v27, "% packet loss"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 524
    .local v22, "sub1":Ljava/lang/String;
    const-string/jumbo v25, ", "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v25

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 525
    .local v15, "loss":Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v16

    .line 532
    .end local v15    # "loss":Ljava/lang/String;
    .end local v22    # "sub1":Ljava/lang/String;
    :cond_3
    :goto_3
    :try_start_8
    aget-object v25, v14, v10

    const-string/jumbo v26, "rtt min/avg/max/mdev = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v25

    if-eqz v25, :cond_4

    .line 536
    :try_start_9
    aget-object v25, v14, v10

    const-string/jumbo v26, "rtt min/avg/max/mdev = "

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 537
    .local v20, "rtt":Ljava/lang/String;
    const-string/jumbo v25, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 538
    .local v24, "value":[Ljava/lang/String;
    if-eqz v24, :cond_4

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_4

    .line 540
    const/16 v25, 0x1

    aget-object v25, v24, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->average_rtt:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 548
    .end local v20    # "rtt":Ljava/lang/String;
    .end local v24    # "value":[Ljava/lang/String;
    :cond_4
    :goto_4
    if-lez v23, :cond_5

    if-lez v18, :cond_5

    .line 550
    sub-int v25, v23, v18

    mul-int/lit8 v25, v25, 0x64

    :try_start_a
    div-int v25, v25, v23

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->package_loss:I

    .line 490
    .end local v3    # "avg_rtt":I
    .end local v16    # "packet_loss":I
    .end local v18    # "receive_num":I
    .end local v23    # "transmit_num":I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 503
    .restart local v3    # "avg_rtt":I
    .restart local v16    # "packet_loss":I
    .restart local v18    # "receive_num":I
    .restart local v23    # "transmit_num":I
    :catch_0
    move-exception v6

    .line 504
    .local v6, "e":Ljava/lang/Exception;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " occured when get transmit packet num"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 563
    .end local v3    # "avg_rtt":I
    .end local v5    # "count":I
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "i":I
    .end local v11    # "input":Ljava/lang/String;
    .end local v14    # "line":[Ljava/lang/String;
    .end local v16    # "packet_loss":I
    .end local v18    # "receive_num":I
    .end local v23    # "transmit_num":I
    :catch_1
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    move-object v8, v9

    .end local v9    # "errorStream":Ljava/io/DataInputStream;
    .local v8, "errorStream":Ljava/io/DataInputStream;
    move-object v12, v13

    .line 564
    .end local v8    # "errorStream":Ljava/io/DataInputStream;
    .end local v13    # "inputStream":Ljava/io/DataInputStream;
    .end local v17    # "process":Ljava/lang/Process;
    .end local v21    # "status":I
    :goto_5
    :try_start_b
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "ping failed, Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " occured"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 567
    if-eqz v12, :cond_6

    .line 571
    :try_start_c
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 572
    const/4 v12, 0x0

    .line 579
    :cond_6
    :goto_6
    if-eqz v8, :cond_7

    .line 583
    :try_start_d
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 584
    const/4 v8, 0x0

    .line 591
    :cond_7
    :goto_7
    if-eqz v17, :cond_8

    .line 593
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->destroy()V

    .line 594
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_8
    const/16 v17, 0x0

    .line 598
    :cond_8
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "ping "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " complete, average rtt: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->average_rtt:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " ms, package loss: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->package_loss:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "%"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_DEBUG(Ljava/lang/String;)V

    .line 600
    return-object v19

    .line 514
    .restart local v3    # "avg_rtt":I
    .restart local v5    # "count":I
    .restart local v9    # "errorStream":Ljava/io/DataInputStream;
    .restart local v10    # "i":I
    .restart local v11    # "input":Ljava/lang/String;
    .restart local v13    # "inputStream":Ljava/io/DataInputStream;
    .restart local v14    # "line":[Ljava/lang/String;
    .restart local v16    # "packet_loss":I
    .restart local v17    # "process":Ljava/lang/Process;
    .restart local v18    # "receive_num":I
    .restart local v21    # "status":I
    .restart local v23    # "transmit_num":I
    :catch_2
    move-exception v6

    .line 515
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_e
    const-string/jumbo v25, "PingThread"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Exception: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " occured when get receive packet num"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    .line 566
    .end local v3    # "avg_rtt":I
    .end local v5    # "count":I
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "i":I
    .end local v11    # "input":Ljava/lang/String;
    .end local v14    # "line":[Ljava/lang/String;
    .end local v16    # "packet_loss":I
    .end local v18    # "receive_num":I
    .end local v23    # "transmit_num":I
    :catchall_0
    move-exception v25

    move-object v8, v9

    .end local v9    # "errorStream":Ljava/io/DataInputStream;
    .restart local v8    # "errorStream":Ljava/io/DataInputStream;
    move-object v12, v13

    .line 567
    .end local v8    # "errorStream":Ljava/io/DataInputStream;
    .end local v13    # "inputStream":Ljava/io/DataInputStream;
    .end local v17    # "process":Ljava/lang/Process;
    .end local v21    # "status":I
    :goto_9
    if-eqz v12, :cond_9

    .line 571
    :try_start_f
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    .line 572
    const/4 v12, 0x0

    .line 579
    :cond_9
    :goto_a
    if-eqz v8, :cond_a

    .line 583
    :try_start_10
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    .line 584
    const/4 v8, 0x0

    .line 591
    :cond_a
    :goto_b
    if-eqz v17, :cond_b

    .line 593
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->destroy()V

    .line 594
    const/16 v17, 0x0

    .line 566
    :cond_b
    throw v25

    .line 527
    .restart local v3    # "avg_rtt":I
    .restart local v5    # "count":I
    .restart local v9    # "errorStream":Ljava/io/DataInputStream;
    .restart local v10    # "i":I
    .restart local v11    # "input":Ljava/lang/String;
    .restart local v13    # "inputStream":Ljava/io/DataInputStream;
    .restart local v14    # "line":[Ljava/lang/String;
    .restart local v16    # "packet_loss":I
    .restart local v17    # "process":Ljava/lang/Process;
    .restart local v18    # "receive_num":I
    .restart local v21    # "status":I
    .restart local v23    # "transmit_num":I
    :catch_3
    move-exception v6

    .line 528
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_11
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " occured when get packet loss"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 543
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v6

    .line 544
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " occured when get average rtt"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 556
    .end local v3    # "avg_rtt":I
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "i":I
    .end local v11    # "input":Ljava/lang/String;
    .end local v14    # "line":[Ljava/lang/String;
    .end local v16    # "packet_loss":I
    .end local v18    # "receive_num":I
    .end local v23    # "transmit_num":I
    :cond_c
    invoke-virtual {v9, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    .line 557
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v5, v0, :cond_d

    .line 559
    new-instance v7, Ljava/lang/String;

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-direct {v7, v4, v0, v5}, Ljava/lang/String;-><init>([BII)V

    .line 560
    .local v7, "error":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "ping "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " complete, error stream: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_DEBUG(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 567
    .end local v7    # "error":Ljava/lang/String;
    :cond_d
    if-eqz v13, :cond_f

    .line 571
    :try_start_12
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    .line 572
    const/4 v12, 0x0

    .line 579
    .end local v13    # "inputStream":Ljava/io/DataInputStream;
    :goto_c
    if-eqz v9, :cond_e

    .line 583
    :try_start_13
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    .line 584
    const/4 v8, 0x0

    .line 591
    .end local v9    # "errorStream":Ljava/io/DataInputStream;
    :goto_d
    if-eqz v17, :cond_8

    .line 593
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_8

    .line 574
    .restart local v9    # "errorStream":Ljava/io/DataInputStream;
    .restart local v13    # "inputStream":Ljava/io/DataInputStream;
    :catch_5
    move-exception v6

    .line 575
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "ping, close inputStream failed, Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " occured"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/DataInputStream;
    .local v12, "inputStream":Ljava/io/DataInputStream;
    goto :goto_c

    .line 586
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v12    # "inputStream":Ljava/io/DataInputStream;
    :catch_6
    move-exception v6

    .line 587
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "ping, close errorStream failed, Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " occured"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    move-object v8, v9

    .end local v9    # "errorStream":Ljava/io/DataInputStream;
    .restart local v8    # "errorStream":Ljava/io/DataInputStream;
    goto :goto_d

    .line 574
    .end local v5    # "count":I
    .end local v8    # "errorStream":Ljava/io/DataInputStream;
    .end local v17    # "process":Ljava/lang/Process;
    .end local v21    # "status":I
    :catch_7
    move-exception v6

    .line 575
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "ping, close inputStream failed, Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " occured"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 586
    :catch_8
    move-exception v6

    .line 587
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "ping, close errorStream failed, Exception: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " occured"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 574
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v6

    .line 575
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "ping, close inputStream failed, Exception: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " occured"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 586
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v6

    .line 587
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "ping, close errorStream failed, Exception: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " occured"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->MSG_ERROR(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 566
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v25

    goto/16 :goto_9

    .local v8, "errorStream":Ljava/io/DataInputStream;
    .restart local v13    # "inputStream":Ljava/io/DataInputStream;
    .restart local v17    # "process":Ljava/lang/Process;
    .restart local v21    # "status":I
    :catchall_2
    move-exception v25

    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/DataInputStream;
    .restart local v12    # "inputStream":Ljava/io/DataInputStream;
    goto/16 :goto_9

    .line 563
    .end local v17    # "process":Ljava/lang/Process;
    .end local v21    # "status":I
    .local v12, "inputStream":Ljava/io/DataInputStream;
    :catch_b
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    goto/16 :goto_5

    .end local v6    # "e":Ljava/lang/Exception;
    .end local v12    # "inputStream":Ljava/io/DataInputStream;
    .restart local v13    # "inputStream":Ljava/io/DataInputStream;
    .restart local v17    # "process":Ljava/lang/Process;
    .restart local v21    # "status":I
    :catch_c
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/DataInputStream;
    .local v12, "inputStream":Ljava/io/DataInputStream;
    goto/16 :goto_5

    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "errorStream":Ljava/io/DataInputStream;
    .end local v12    # "inputStream":Ljava/io/DataInputStream;
    .restart local v5    # "count":I
    .restart local v9    # "errorStream":Ljava/io/DataInputStream;
    :cond_e
    move-object v8, v9

    .end local v9    # "errorStream":Ljava/io/DataInputStream;
    .local v8, "errorStream":Ljava/io/DataInputStream;
    goto/16 :goto_d

    .end local v8    # "errorStream":Ljava/io/DataInputStream;
    .restart local v9    # "errorStream":Ljava/io/DataInputStream;
    .restart local v13    # "inputStream":Ljava/io/DataInputStream;
    :cond_f
    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/DataInputStream;
    .restart local v12    # "inputStream":Ljava/io/DataInputStream;
    goto/16 :goto_c
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/16 v6, 0x14

    .line 614
    const/4 v1, 0x0

    .local v1, "gatewayResult":Lcom/android/server/wifi/WifiTrafficPoller$PingResult;
    const/4 v0, 0x0

    .line 616
    .local v0, "baiduResult":Lcom/android/server/wifi/WifiTrafficPoller$PingResult;
    invoke-direct {p0}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->getGateway()Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, "gw":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 620
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->ping(Ljava/lang/String;)Lcom/android/server/wifi/WifiTrafficPoller$PingResult;

    move-result-object v1

    .line 623
    .end local v1    # "gatewayResult":Lcom/android/server/wifi/WifiTrafficPoller$PingResult;
    :cond_0
    const-string/jumbo v4, "www.baidu.com"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->ping(Ljava/lang/String;)Lcom/android/server/wifi/WifiTrafficPoller$PingResult;

    move-result-object v0

    .line 625
    .local v0, "baiduResult":Lcom/android/server/wifi/WifiTrafficPoller$PingResult;
    const/4 v3, 0x0

    .line 627
    .local v3, "result":I
    if-eqz v1, :cond_3

    .line 628
    iget v4, v1, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->package_loss:I

    const/16 v5, 0x64

    if-lt v4, v5, :cond_3

    .line 630
    const/4 v3, 0x3

    .line 646
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 648
    iget-object v4, p0, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v4, v6, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 612
    :cond_2
    return-void

    .line 632
    :cond_3
    if-eqz v1, :cond_5

    .line 633
    iget v4, v1, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->package_loss:I

    if-gt v4, v6, :cond_4

    .line 634
    iget v4, v1, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->average_rtt:I

    if-le v4, v7, :cond_5

    .line 636
    :cond_4
    const/4 v3, 0x1

    .line 635
    goto :goto_0

    .line 638
    :cond_5
    if-eqz v0, :cond_1

    .line 639
    iget v4, v0, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->package_loss:I

    if-gt v4, v6, :cond_6

    .line 640
    iget v4, v0, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->average_rtt:I

    if-le v4, v7, :cond_7

    .line 643
    :cond_6
    :goto_1
    const/4 v3, 0x2

    goto :goto_0

    .line 641
    :cond_7
    if-eqz v1, :cond_1

    iget v4, v0, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->average_rtt:I

    iget v5, v1, Lcom/android/server/wifi/WifiTrafficPoller$PingResult;->average_rtt:I

    sub-int/2addr v4, v5

    const/16 v5, 0x1f4

    if-le v4, v5, :cond_1

    goto :goto_1
.end method
