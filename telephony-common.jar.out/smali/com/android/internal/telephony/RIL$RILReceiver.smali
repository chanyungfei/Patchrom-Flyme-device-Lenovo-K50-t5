.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field mStoped:Z

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/RIL;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->mStoped:Z

    .line 705
    const/16 v0, 0x5000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 704
    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 714
    const/4 v14, 0x0

    .line 715
    .local v14, "retryCount":I
    const-string/jumbo v15, "rild"

    .line 719
    .local v15, "rilSocket":Ljava/lang/String;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->mStoped:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    const-string/jumbo v20, "[RIL SWITCH] stoped now!"

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/RIL;->-wrap7(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 721
    return-void

    .line 724
    :cond_0
    const/16 v16, 0x0

    .line 728
    .local v16, "s":Landroid/net/LocalSocket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->isValidPhoneId(I)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 729
    :cond_1
    sget-object v19, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSlotId(I)I

    move-result v20

    aget-object v15, v19, v20

    .line 750
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/RIL;->mPreferredNetworkType:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v13

    .line 751
    .local v13, "phoneType":I
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v13, v0, :cond_2

    .line 752
    const-string/jumbo v15, "rild-via"

    .line 756
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "rilSocket["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "] = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/RIL;->-wrap7(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 759
    :try_start_1
    new-instance v17, Landroid/net/LocalSocket;

    invoke-direct/range {v17 .. v17}, Landroid/net/LocalSocket;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 760
    .end local v16    # "s":Landroid/net/LocalSocket;
    .local v17, "s":Landroid/net/LocalSocket;
    :try_start_2
    new-instance v9, Landroid/net/LocalSocketAddress;

    .line 761
    sget-object v19, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 760
    move-object/from16 v0, v19

    invoke-direct {v9, v15, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 762
    .local v9, "l":Landroid/net/LocalSocketAddress;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 795
    const/4 v14, 0x0

    .line 797
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 798
    const-string/jumbo v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ") Connected to \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 799
    const-string/jumbo v21, "\' socket"

    .line 798
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v20

    monitor-enter v20
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 805
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "queue size  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->-wrap7(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->size()I

    move-result v19

    add-int/lit8 v7, v19, -0x1

    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_a

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->remove(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 807
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 731
    .end local v7    # "i":I
    .end local v9    # "l":Landroid/net/LocalSocketAddress;
    .end local v13    # "phoneType":I
    .end local v17    # "s":Landroid/net/LocalSocket;
    .restart local v16    # "s":Landroid/net/LocalSocket;
    :cond_3
    :try_start_5
    const-string/jumbo v19, "ro.mtk_dt_support"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 733
    sget-object v19, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aget-object v15, v19, v20

    goto/16 :goto_1

    .line 736
    :cond_4
    const-string/jumbo v19, "ro.evdo_dt_support"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 738
    sget-object v19, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aget-object v15, v19, v20

    goto/16 :goto_1

    .line 739
    :cond_5
    const-string/jumbo v19, "ro.telephony.cl.config"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 741
    sget-object v19, Lcom/android/internal/telephony/RIL;->SOCKET_NAME_RIL:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aget-object v15, v19, v20

    goto/16 :goto_1

    .line 744
    :cond_6
    const-string/jumbo v15, "rild-md2"
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 763
    .restart local v13    # "phoneType":I
    :catch_0
    move-exception v5

    .line 765
    .end local v16    # "s":Landroid/net/LocalSocket;
    .local v5, "ex":Ljava/io/IOException;
    :goto_3
    if-eqz v16, :cond_7

    .line 766
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 775
    :cond_7
    :goto_4
    const/16 v19, 0x8

    move/from16 v0, v19

    if-ne v14, v0, :cond_9

    .line 776
    :try_start_7
    const-string/jumbo v19, "RILJ"

    .line 777
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Couldn\'t find \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 778
    const-string/jumbo v21, "\' socket after "

    .line 777
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 779
    const-string/jumbo v21, " times, continuing to retry silently"

    .line 777
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 776
    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 787
    :cond_8
    :goto_5
    const-wide/16 v20, 0xfa0

    :try_start_8
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 791
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 768
    :catch_1
    move-exception v6

    .local v6, "ex2":Ljava/io/IOException;
    goto :goto_4

    .line 780
    .end local v6    # "ex2":Ljava/io/IOException;
    :cond_9
    if-ltz v14, :cond_8

    const/16 v19, 0x8

    move/from16 v0, v19

    if-ge v14, v0, :cond_8

    .line 781
    :try_start_9
    const-string/jumbo v19, "RILJ"

    .line 782
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Couldn\'t find \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 783
    const-string/jumbo v21, "\' socket; retrying after timeout"

    .line 782
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 781
    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    .line 872
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v13    # "phoneType":I
    :catch_2
    move-exception v18

    .line 873
    .local v18, "tr":Ljava/lang/Throwable;
    const-string/jumbo v19, "RILJ"

    const-string/jumbo v20, "Uncaught exception"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/RIL;->-wrap5(Lcom/android/internal/telephony/RIL;I)V

    .line 713
    return-void

    .line 788
    .end local v18    # "tr":Ljava/lang/Throwable;
    .restart local v5    # "ex":Ljava/io/IOException;
    .restart local v13    # "phoneType":I
    :catch_3
    move-exception v4

    .local v4, "er":Ljava/lang/InterruptedException;
    goto :goto_6

    .line 811
    .end local v4    # "er":Ljava/lang/InterruptedException;
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v7    # "i":I
    .restart local v9    # "l":Landroid/net/LocalSocketAddress;
    .restart local v17    # "s":Landroid/net/LocalSocket;
    :cond_a
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "queue size  after "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->-wrap7(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->getPendingRequest()Lcom/android/internal/telephony/RILRequest;

    move-result-object v19

    if-eqz v19, :cond_c

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    const-string/jumbo v21, "reset pending switch request"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/internal/telephony/RIL;->-wrap7(Lcom/android/internal/telephony/RIL;Ljava/lang/String;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->getPendingRequest()Lcom/android/internal/telephony/RILRequest;

    move-result-object v12

    .line 819
    .local v12, "pendingRequest":Lcom/android/internal/telephony/RILRequest;
    iget-object v0, v12, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 820
    iget-object v0, v12, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 821
    iget-object v0, v12, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/Message;->sendToTarget()V

    .line 824
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->resetSendChldRequest()V

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/RIL;->-get0(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RIL$dtmfQueueHandler;

    move-result-object v19

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL$dtmfQueueHandler;->setPendingRequest(Lcom/android/internal/telephony/RILRequest;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .end local v12    # "pendingRequest":Lcom/android/internal/telephony/RILRequest;
    :cond_c
    :try_start_b
    monitor-exit v20
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    .line 830
    const/4 v10, 0x0

    .line 832
    .local v10, "length":I
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 835
    .local v8, "is":Ljava/io/InputStream;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v8, v0}, Lcom/android/internal/telephony/RIL;->-wrap2(Ljava/io/InputStream;[B)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    move-result v10

    .line 836
    if-gez v10, :cond_d

    .line 857
    .end local v8    # "is":Ljava/io/InputStream;
    :goto_8
    :try_start_d
    const-string/jumbo v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/RIL;->-get1(Lcom/android/internal/telephony/RIL;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ") Disconnected from \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 858
    const-string/jumbo v21, "\' socket"

    .line 857
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2

    .line 863
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/LocalSocket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2

    .line 867
    :goto_9
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 868
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/RIL;->-wrap3(Lcom/android/internal/telephony/RIL;IZ)V

    move-object/from16 v16, v17

    .end local v17    # "s":Landroid/net/LocalSocket;
    .local v16, "s":Landroid/net/LocalSocket;
    goto/16 :goto_0

    .line 802
    .end local v7    # "i":I
    .end local v10    # "length":I
    .end local v16    # "s":Landroid/net/LocalSocket;
    .restart local v17    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2

    .line 840
    .restart local v7    # "i":I
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v10    # "length":I
    :cond_d
    :try_start_10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 841
    .local v11, "p":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1, v10}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 842
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lcom/android/internal/telephony/RIL;->-wrap6(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 847
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_7

    .line 849
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v11    # "p":Landroid/os/Parcel;
    :catch_4
    move-exception v5

    .line 850
    .restart local v5    # "ex":Ljava/io/IOException;
    :try_start_11
    const-string/jumbo v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "\'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "\' socket closed"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 852
    .end local v5    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v18

    .line 853
    .restart local v18    # "tr":Ljava/lang/Throwable;
    const-string/jumbo v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Uncaught exception read length="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 854
    const-string/jumbo v21, "Exception:"

    .line 853
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 854
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v21

    .line 853
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2

    goto/16 :goto_8

    .line 864
    .end local v18    # "tr":Ljava/lang/Throwable;
    :catch_6
    move-exception v5

    .restart local v5    # "ex":Ljava/io/IOException;
    goto/16 :goto_9

    .line 763
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v7    # "i":I
    .end local v9    # "l":Landroid/net/LocalSocketAddress;
    .end local v10    # "length":I
    :catch_7
    move-exception v5

    .restart local v5    # "ex":Ljava/io/IOException;
    move-object/from16 v16, v17

    .end local v17    # "s":Landroid/net/LocalSocket;
    .restart local v16    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_3
.end method
