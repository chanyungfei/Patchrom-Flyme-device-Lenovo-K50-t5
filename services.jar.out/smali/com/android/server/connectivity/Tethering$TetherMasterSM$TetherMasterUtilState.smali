.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
.super Lcom/android/internal/util/State;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterUtilState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;
    }
.end annotation


# static fields
.field protected static final TRY_TO_SETUP_MOBILE_CONNECTION:Z = true

.field protected static final WAIT_FOR_NETWORK_TO_SETTLE:Z


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 2244
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private checkDataEnabled(I)Z
    .locals 5
    .param p1, "networkType"    # I

    .prologue
    .line 2367
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2368
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 2370
    .local v0, "dataEnabled":Z
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    .line 2371
    .local v0, "dataEnabled":Z
    const-string/jumbo v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkDataEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    return v0
.end method


# virtual methods
.method protected chooseUpstreamType(Z)V
    .locals 27
    .param p1, "tryCell"    # Z

    .prologue
    .line 2378
    const/16 v21, -0x1

    .line 2379
    .local v21, "upType":I
    const/4 v11, 0x0

    .line 2380
    .local v11, "iface":Ljava/lang/String;
    const/4 v12, 0x0

    .line 2382
    .local v12, "ifacePD":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    .line 2384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 2386
    :try_start_0
    const-string/jumbo v23, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "]chooseUpstreamType has upstream iface types:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->-get12(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "netType$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 2388
    .local v16, "netType":Ljava/lang/Integer;
    const-string/jumbo v23, "Tethering"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2384
    .end local v16    # "netType":Ljava/lang/Integer;
    .end local v17    # "netType$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v23

    monitor-exit v24

    throw v23

    .line 2392
    .restart local v17    # "netType$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->-get12(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .line 2394
    .restart local v16    # "netType":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    .line 2395
    .local v13, "info":Landroid/net/NetworkInfo;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 2396
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v21

    .end local v13    # "info":Landroid/net/NetworkInfo;
    .end local v16    # "netType":Ljava/lang/Integer;
    :cond_2
    monitor-exit v24

    .line 2403
    const-string/jumbo v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "]chooseUpstreamType("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "), preferredApn ="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)I

    move-result v25

    .line 2403
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2404
    const-string/jumbo v25, ", got type="

    .line 2403
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    const-string/jumbo v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "pre-checkDataEnabled + "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->checkDataEnabled(I)Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    const/16 v23, 0x4

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 2409
    const/16 v23, 0x5

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 2410
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->checkDataEnabled(I)Z

    move-result v23

    .line 2408
    if-eqz v23, :cond_b

    .line 2411
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnUpstreamMobileConnection(I)Z

    .line 2423
    :cond_4
    :goto_1
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 2425
    const/16 v20, 0x1

    .line 2426
    .local v20, "tryAgainLater":Z
    const-string/jumbo v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "tryCell = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ",mPreferredUpstreamMobileApn = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)I

    move-result v25

    .line 2426
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    if-eqz p1, :cond_5

    .line 2429
    const/16 v23, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->checkDataEnabled(I)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 2430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->-get7(Lcom/android/server/connectivity/Tethering;)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOnUpstreamMobileConnection(I)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 2432
    const/16 v20, 0x0

    .line 2434
    :cond_5
    if-eqz v20, :cond_6

    .line 2435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x2710

    const/16 v26, 0x5

    move-object/from16 v0, v23

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(IJ)V

    .line 2440
    .end local v20    # "tryAgainLater":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->-wrap8(Lcom/android/server/connectivity/Tethering;)Z

    move-result v23

    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "Ipv6TetherMaster"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 2441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 2442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-wrap4(Lcom/android/server/connectivity/Tethering;I)Z

    move-result v23

    if-nez v23, :cond_c

    .line 2443
    const-string/jumbo v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "we have no ipv6 address, upType:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    const/16 v21, -0x1

    .line 2461
    .end local v12    # "ifacePD":Ljava/lang/String;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "Ipv6TetherMaster"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->-wrap7(Lcom/android/server/connectivity/Tethering;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 2462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)Z

    move-result v23

    .line 2461
    if-eqz v23, :cond_9

    .line 2464
    const-string/jumbo v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "mPreviousDhcpv6PDIface:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get6(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2465
    const-string/jumbo v25, ",ifacePD:"

    .line 2464
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2465
    const-string/jumbo v25, ",upType:"

    .line 2464
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get6(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_8

    .line 2468
    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get6(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    if-eq v12, v0, :cond_10

    .line 2471
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->stopDhcpv6PDSequence()V

    .line 2474
    :cond_8
    if-eqz v12, :cond_9

    .line 2476
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->runDhcpv6PDSequence(Ljava/lang/String;)V

    .line 2477
    const/4 v12, 0x0

    .line 2481
    :cond_9
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 2556
    .end local v11    # "iface":Ljava/lang/String;
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V

    .line 2377
    return-void

    .line 2412
    .restart local v11    # "iface":Ljava/lang/String;
    .restart local v12    # "ifacePD":Ljava/lang/String;
    :cond_b
    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 2419
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()Z

    goto/16 :goto_1

    .line 2445
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->-wrap7(Lcom/android/server/connectivity/Tethering;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 2446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v15

    .line 2447
    .local v15, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v15, :cond_d

    .line 2448
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    .line 2451
    .end local v12    # "ifacePD":Ljava/lang/String;
    :cond_d
    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Lcom/android/server/connectivity/Tethering;->-wrap3(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 2455
    :cond_e
    const/4 v12, 0x0

    .restart local v12    # "ifacePD":Ljava/lang/String;
    goto/16 :goto_2

    .line 2452
    .end local v12    # "ifacePD":Ljava/lang/String;
    :cond_f
    const-string/jumbo v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "we have no dhcp ipv6 PD address, iface:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    const/16 v21, -0x1

    .line 2451
    goto/16 :goto_2

    .line 2469
    .end local v15    # "linkProperties":Landroid/net/LinkProperties;
    :cond_10
    if-nez v12, :cond_8

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    goto/16 :goto_3

    .line 2487
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v15

    .line 2488
    .restart local v15    # "linkProperties":Landroid/net/LinkProperties;
    if-eqz v15, :cond_12

    .line 2489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->-wrap8(Lcom/android/server/connectivity/Tethering;)Z

    move-result v23

    if-eqz v23, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "Ipv6TetherMaster"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 2490
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    .line 2507
    .end local v11    # "iface":Ljava/lang/String;
    :cond_12
    :goto_5
    if-eqz v11, :cond_a

    .line 2508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->-get1(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v6

    .line 2509
    .local v6, "dnsServers":[Ljava/lang/String;
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v7

    .line 2510
    .local v7, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    if-eqz v7, :cond_1b

    .line 2513
    new-instance v22, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v23

    invoke-direct/range {v22 .. v23}, Ljava/util/ArrayList;-><init>(I)V

    .line 2514
    .local v22, "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "dnsAddress$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 2517
    .local v4, "dnsAddress":Ljava/net/InetAddress;
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2495
    .end local v4    # "dnsAddress":Ljava/net/InetAddress;
    .end local v5    # "dnsAddress$iterator":Ljava/util/Iterator;
    .end local v6    # "dnsServers":[Ljava/lang/String;
    .end local v7    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .end local v22    # "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .restart local v11    # "iface":Ljava/lang/String;
    :cond_13
    const-string/jumbo v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Finding IPv4 upstream interface on: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v23

    sget-object v24, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 2496
    invoke-static/range {v23 .. v24}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v14

    .line 2498
    .local v14, "ipv4Default":Landroid/net/RouteInfo;
    if-eqz v14, :cond_14

    .line 2499
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v11

    .line 2500
    .local v11, "iface":Ljava/lang/String;
    const-string/jumbo v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Found interface "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v14}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2502
    .local v11, "iface":Ljava/lang/String;
    :cond_14
    const-string/jumbo v23, "Tethering"

    const-string/jumbo v24, "No IPv4 upstream interface, giving up."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2522
    .end local v11    # "iface":Ljava/lang/String;
    .end local v14    # "ipv4Default":Landroid/net/RouteInfo;
    .restart local v5    # "dnsAddress$iterator":Ljava/util/Iterator;
    .restart local v6    # "dnsServers":[Ljava/lang/String;
    .restart local v7    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    .restart local v22    # "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_15
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2523
    .local v19, "sortedDnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "ia$iterator":Ljava/util/Iterator;
    :cond_16
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/InetAddress;

    .line 2524
    .local v9, "ia":Ljava/net/InetAddress;
    instance-of v0, v9, Ljava/net/Inet6Address;

    move/from16 v23, v0

    if-eqz v23, :cond_16

    .line 2525
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2528
    .end local v9    # "ia":Ljava/net/InetAddress;
    :cond_17
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_18
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/net/InetAddress;

    .line 2529
    .restart local v9    # "ia":Ljava/net/InetAddress;
    instance-of v0, v9, Ljava/net/Inet4Address;

    move/from16 v23, v0

    if-eqz v23, :cond_18

    .line 2530
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2533
    .end local v9    # "ia":Ljava/net/InetAddress;
    :cond_19
    move-object/from16 v22, v19

    .line 2535
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_1a

    .line 2536
    invoke-static/range {v22 .. v22}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v6

    .line 2538
    :cond_1a
    const-string/jumbo v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "v4 and v6 Dnses: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    .end local v5    # "dnsAddress$iterator":Ljava/util/Iterator;
    .end local v10    # "ia$iterator":Ljava/util/Iterator;
    .end local v19    # "sortedDnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .end local v22    # "v4Dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_1b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkForType(I)Landroid/net/Network;

    move-result-object v18

    .line 2542
    .local v18, "network":Landroid/net/Network;
    if-nez v18, :cond_1c

    .line 2543
    const-string/jumbo v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "No Network for upstream type "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    :cond_1c
    const-string/jumbo v23, "Tethering"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Setting DNS forwarders: Network="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2547
    const-string/jumbo v25, ", dnsServers="

    .line 2546
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2547
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 2546
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v6}, Landroid/os/INetworkManagementService;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 2550
    .end local v18    # "network":Landroid/net/Network;
    :catch_0
    move-exception v8

    .line 2551
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v23, "Tethering"

    const-string/jumbo v24, "Setting DNS forwarders failed!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get7(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_4
.end method

.method protected enableString(I)Ljava/lang/String;
    .locals 1
    .param p1, "apnType"    # I

    .prologue
    .line 2253
    packed-switch p1, :pswitch_data_0

    .line 2260
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 2255
    :pswitch_1
    const-string/jumbo v0, "enableDUNAlways"

    return-object v0

    .line 2258
    :pswitch_2
    const-string/jumbo v0, "enableHIPRI"

    return-object v0

    .line 2253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected notifyTetheredOfNewUpstreamIface(Ljava/lang/String;)V
    .locals 9
    .param p1, "ifaceName"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xc

    const/4 v7, 0x0

    .line 2560
    const-string/jumbo v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[MSM_TetherModeAlive]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2561
    const-string/jumbo v6, "] notifying tethered with iface ="

    .line 2560
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v4, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    .line 2565
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get5(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "o$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .local v0, "o":Ljava/lang/Object;
    move-object v2, v0

    .line 2566
    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2567
    .local v2, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz p1, :cond_0

    iget-object v4, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2568
    iget-object v4, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2569
    invoke-virtual {v2, v8, v7}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 2574
    .end local v0    # "o":Ljava/lang/Object;
    .end local v2    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v4, v4, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2575
    if-eqz p1, :cond_3

    .line 2576
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2580
    :goto_1
    const-string/jumbo v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifying tethered with change iface ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get5(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "sm$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2584
    .restart local v2    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    invoke-virtual {v2, v8, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2

    .line 2578
    .end local v2    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .end local v3    # "sm$iterator":Ljava/util/Iterator;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "empty,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 2559
    .restart local v3    # "sm$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 2250
    const/4 v0, 0x0

    return v0
.end method

.method protected runDhcpv6PDSequence(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2591
    const-string/jumbo v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runDhcpv6PDSequence:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2594
    const-string/jumbo v0, "Tethering"

    const-string/jumbo v1, "mDhcpv6PDThread is null, creating thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;

    .line 2596
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;

    invoke-direct {v2, p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState$MyRunDhcpv6PDSequence;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2597
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2590
    :goto_0
    return-void

    .line 2601
    :cond_0
    const-string/jumbo v0, "Tethering"

    const-string/jumbo v1, "mDhcpv6PDThread is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected turnOffMasterTetherSettings()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2340
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2347
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2348
    const-string/jumbo v1, "TetherMaster"

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2349
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2361
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 2362
    const/4 v1, 0x1

    return v1

    .line 2341
    :catch_0
    move-exception v0

    .line 2342
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get12(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 2343
    return v3

    .line 2350
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    const-string/jumbo v1, "Ipv6TetherMaster"

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2351
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setIpv6ForwardingEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2356
    :catch_1
    move-exception v0

    .line 2357
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get8(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 2358
    return v3

    .line 2354
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method protected turnOffUpstreamMobileConnection()Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 2295
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set0(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    .line 2296
    const-string/jumbo v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[MSM_TetherModeAlive]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] mMobileApnReserved:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2297
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v2

    .line 2296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 2299
    const-string/jumbo v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[MSM_TetherModeAlive]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] Try to stopUsingNetworkFeature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2301
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->enableString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2300
    invoke-virtual {v0, v2, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 2302
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v0, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    .line 2304
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected turnOnMasterTetherSettings()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2309
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2310
    const-string/jumbo v2, "TetherMaster"

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 2326
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get2(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2336
    :goto_1
    return v5

    .line 2314
    :cond_1
    :try_start_2
    const-string/jumbo v2, "Ipv6TetherMaster"

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2315
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpv6ForwardingEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2321
    :catch_0
    move-exception v0

    .line 2322
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get9(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 2323
    return v4

    .line 2327
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2329
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopTethering()V

    .line 2330
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v2, v2, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-get2(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 2331
    :catch_2
    move-exception v1

    .line 2332
    .local v1, "ee":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get11(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-wrap2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/IState;)V

    .line 2333
    return v4
.end method

.method protected turnOnUpstreamMobileConnection(I)Z
    .locals 7
    .param p1, "apnType"    # I

    .prologue
    const/4 v6, 0x0

    .line 2263
    const/4 v2, 0x1

    .line 2264
    .local v2, "retValue":Z
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    return v6

    .line 2265
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get3(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)I

    move-result v3

    if-eq p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->turnOffUpstreamMobileConnection()Z

    .line 2266
    :cond_1
    const/4 v1, 0x3

    .line 2267
    .local v1, "result":I
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->enableString(I)Ljava/lang/String;

    move-result-object v0

    .line 2268
    .local v0, "enableString":Ljava/lang/String;
    if-nez v0, :cond_2

    return v6

    .line 2269
    :cond_2
    const-string/jumbo v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[MSM_TetherModeAlive]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] Try to startUsingNetworkFeature"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v3, v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->-wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v1

    .line 2272
    const-string/jumbo v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[MSM_TetherModeAlive]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get4(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] startUsingNetworkFeature result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    packed-switch v1, :pswitch_data_0

    .line 2287
    const/4 v2, 0x0

    .line 2291
    :goto_0
    return v2

    .line 2277
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v3, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-set2(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)I

    goto :goto_0

    .line 2274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
