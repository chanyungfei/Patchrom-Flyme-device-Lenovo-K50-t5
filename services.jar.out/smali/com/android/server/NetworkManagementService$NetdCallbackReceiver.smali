.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 769
    const/16 v0, 0x265

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 754
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get0(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get0(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 756
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->-set0(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 751
    :goto_0
    return-void

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->-get1(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 33
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 774
    const-string/jumbo v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onEvent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-string/jumbo v5, "Invalid event from daemon (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 776
    .local v18, "errorMessage":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 952
    :goto_0
    const/4 v5, 0x0

    return v5

    .line 785
    :sswitch_0
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "Iface"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 788
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "added"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 789
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->-wrap2(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 790
    const/4 v5, 0x1

    return v5

    .line 786
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 791
    :cond_1
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "removed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 792
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-static {v5, v6}, Lcom/android/server/NetworkManagementService;->-wrap6(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 793
    const/4 v5, 0x1

    return v5

    .line 794
    :cond_2
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "changed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 795
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    const-string/jumbo v11, "up"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->-wrap7(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 796
    const/4 v5, 0x1

    return v5

    .line 797
    :cond_3
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "linkstate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    .line 798
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    const-string/jumbo v11, "up"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->-wrap5(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 799
    const/4 v5, 0x1

    return v5

    .line 801
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 808
    :sswitch_1
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-lt v5, v6, :cond_5

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "limit"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 811
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "alert"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 812
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    const/4 v7, 0x4

    aget-object v7, p3, v7

    invoke-static {v5, v6, v7}, Lcom/android/server/NetworkManagementService;->-wrap8(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const/4 v5, 0x1

    return v5

    .line 809
    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 815
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 822
    :sswitch_2
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_7

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "IfaceClass"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 825
    const-wide/16 v8, 0x0

    .line 826
    .local v8, "timestampNanos":J
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_8

    .line 828
    const/4 v5, 0x4

    :try_start_0
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-wide v8

    .line 833
    :goto_1
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "active"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 834
    .local v24, "isActive":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 835
    if-eqz v24, :cond_9

    sget v7, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    .line 836
    :goto_2
    const/4 v10, 0x1

    .line 834
    invoke-static/range {v5 .. v10}, Lcom/android/server/NetworkManagementService;->-wrap3(Lcom/android/server/NetworkManagementService;IIJZ)V

    .line 837
    const/4 v5, 0x1

    return v5

    .line 823
    .end local v8    # "timestampNanos":J
    .end local v24    # "isActive":Z
    :cond_7
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 831
    .restart local v8    # "timestampNanos":J
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    goto :goto_1

    .line 836
    .restart local v24    # "isActive":Z
    :cond_9
    sget v7, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    goto :goto_2

    .line 845
    .end local v8    # "timestampNanos":J
    .end local v24    # "isActive":Z
    :sswitch_3
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x7

    if-lt v5, v6, :cond_a

    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "Address"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 849
    const/4 v5, 0x4

    aget-object v22, p3, v5

    .line 852
    .local v22, "iface":Ljava/lang/String;
    const/4 v5, 0x5

    :try_start_1
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 853
    .local v12, "flags":I
    const/4 v5, 0x6

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 855
    .local v13, "scope":I
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x7

    if-le v5, v6, :cond_b

    .line 858
    const/4 v5, 0x7

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 859
    .local v14, "valid":J
    const-string/jumbo v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "InterfaceAddressChange valid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    new-instance v10, Landroid/net/LinkAddress;

    const/4 v5, 0x3

    aget-object v11, p3, v5

    invoke-direct/range {v10 .. v15}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;IIJ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 874
    .end local v14    # "valid":J
    .local v10, "address":Landroid/net/LinkAddress;
    :goto_3
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "updated"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 875
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v22

    invoke-static {v5, v0, v10}, Lcom/android/server/NetworkManagementService;->-wrap1(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 879
    :goto_4
    const/4 v5, 0x1

    return v5

    .line 846
    .end local v10    # "address":Landroid/net/LinkAddress;
    .end local v12    # "flags":I
    .end local v13    # "scope":I
    .end local v22    # "iface":Ljava/lang/String;
    :cond_a
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 862
    .restart local v12    # "flags":I
    .restart local v13    # "scope":I
    .restart local v22    # "iface":Ljava/lang/String;
    :cond_b
    :try_start_2
    const-string/jumbo v5, "NetworkManagement"

    const-string/jumbo v6, "InterfaceAddressChange no valid field"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    new-instance v10, Landroid/net/LinkAddress;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-direct {v10, v5, v12, v13}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v10    # "address":Landroid/net/LinkAddress;
    goto :goto_3

    .line 869
    .end local v10    # "address":Landroid/net/LinkAddress;
    .end local v12    # "flags":I
    .end local v13    # "scope":I
    :catch_0
    move-exception v16

    .line 870
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "NetworkManagement"

    const-string/jumbo v6, "IllegalArgumentException"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 866
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v17

    .line 867
    .local v17, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "NetworkManagement"

    const-string/jumbo v6, "NumberFormatException"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 877
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    .restart local v10    # "address":Landroid/net/LinkAddress;
    .restart local v12    # "flags":I
    .restart local v13    # "scope":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v22

    invoke-static {v5, v0, v10}, Lcom/android/server/NetworkManagementService;->-wrap0(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    goto :goto_4

    .line 888
    .end local v10    # "address":Landroid/net/LinkAddress;
    .end local v12    # "flags":I
    .end local v13    # "scope":I
    .end local v22    # "iface":Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_d

    .line 889
    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "DnsInfo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 888
    if-eqz v5, :cond_d

    .line 890
    const/4 v5, 0x2

    aget-object v5, p3, v5

    const-string/jumbo v6, "servers"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 888
    if-eqz v5, :cond_d

    .line 892
    const/4 v5, 0x4

    :try_start_3
    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v26

    .line 896
    .local v26, "lifetime":J
    const/4 v5, 0x5

    aget-object v5, p3, v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 897
    .local v29, "servers":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    move-wide/from16 v0, v26

    move-object/from16 v2, v29

    invoke-static {v5, v6, v0, v1, v2}, Lcom/android/server/NetworkManagementService;->-wrap4(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 899
    .end local v26    # "lifetime":J
    .end local v29    # "servers":[Ljava/lang/String;
    :cond_d
    const/4 v5, 0x1

    return v5

    .line 893
    :catch_2
    move-exception v17

    .line 894
    .restart local v17    # "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 906
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    :sswitch_5
    const/4 v5, 0x1

    aget-object v5, p3, v5

    const-string/jumbo v6, "Route"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v6, 0x6

    if-ge v5, v6, :cond_f

    .line 907
    :cond_e
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 910
    :cond_f
    const/16 v32, 0x0

    .line 911
    .local v32, "via":Ljava/lang/String;
    const/4 v4, 0x0

    .line 912
    .local v4, "dev":Ljava/lang/String;
    const/16 v31, 0x1

    .line 913
    .local v31, "valid":Z
    const/16 v21, 0x4

    .end local v4    # "dev":Ljava/lang/String;
    .end local v32    # "via":Ljava/lang/String;
    .local v21, "i":I
    :goto_5
    add-int/lit8 v5, v21, 0x1

    move-object/from16 v0, p3

    array-length v6, v0

    if-ge v5, v6, :cond_14

    if-eqz v31, :cond_14

    .line 914
    aget-object v5, p3, v21

    const-string/jumbo v6, "dev"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 915
    if-nez v4, :cond_10

    .line 916
    add-int/lit8 v5, v21, 0x1

    aget-object v4, p3, v5

    .line 913
    :goto_6
    add-int/lit8 v21, v21, 0x2

    goto :goto_5

    .line 918
    :cond_10
    const/16 v31, 0x0

    goto :goto_6

    .line 920
    :cond_11
    aget-object v5, p3, v21

    const-string/jumbo v6, "via"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 921
    if-nez v32, :cond_12

    .line 922
    add-int/lit8 v5, v21, 0x1

    aget-object v32, p3, v5

    .local v32, "via":Ljava/lang/String;
    goto :goto_6

    .line 924
    .end local v32    # "via":Ljava/lang/String;
    :cond_12
    const/16 v31, 0x0

    goto :goto_6

    .line 927
    :cond_13
    const/16 v31, 0x0

    goto :goto_6

    .line 930
    :cond_14
    if-eqz v31, :cond_16

    .line 933
    const/16 v20, 0x0

    .line 934
    .local v20, "gateway":Ljava/net/InetAddress;
    if-eqz v32, :cond_15

    :try_start_4
    invoke-static/range {v32 .. v32}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v20

    .line 935
    .end local v20    # "gateway":Ljava/net/InetAddress;
    :cond_15
    new-instance v28, Landroid/net/RouteInfo;

    new-instance v5, Landroid/net/IpPrefix;

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-direct {v5, v6}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 936
    .local v28, "route":Landroid/net/RouteInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x2

    aget-object v6, p3, v6

    move-object/from16 v0, v28

    invoke-static {v5, v6, v0}, Lcom/android/server/NetworkManagementService;->-wrap9(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    .line 937
    const/4 v5, 0x1

    return v5

    .line 938
    .end local v28    # "route":Landroid/net/RouteInfo;
    :catch_3
    move-exception v16

    .line 940
    :cond_16
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 943
    .end local v21    # "i":I
    .end local v31    # "valid":Z
    :sswitch_6
    const/4 v5, 0x1

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 944
    .local v30, "uid":I
    const/4 v5, 0x2

    aget-object v5, p3, v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v19

    .line 946
    .local v19, "firstPacket":[B
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    move/from16 v0, v30

    move-object/from16 v1, v19

    invoke-interface {v5, v0, v1}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 947
    :catch_4
    move-exception v23

    .local v23, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_0

    .line 829
    .end local v19    # "firstPacket":[B
    .end local v23    # "ignored":Landroid/os/RemoteException;
    .end local v30    # "uid":I
    .restart local v8    # "timestampNanos":J
    :catch_5
    move-exception v25

    .local v25, "ne":Ljava/lang/NumberFormatException;
    goto/16 :goto_1

    .line 776
    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_0
        0x259 -> :sswitch_1
        0x265 -> :sswitch_2
        0x266 -> :sswitch_3
        0x267 -> :sswitch_4
        0x268 -> :sswitch_5
        0x269 -> :sswitch_6
    .end sparse-switch
.end method
