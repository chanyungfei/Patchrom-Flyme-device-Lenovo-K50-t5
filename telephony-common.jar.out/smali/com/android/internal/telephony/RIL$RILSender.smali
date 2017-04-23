.class Lcom/android/internal/telephony/RIL$RILSender;
.super Landroid/os/Handler;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILSender"
.end annotation


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RIL;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/RIL;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    .line 531
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 535
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    .line 530
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 548
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/RILRequest;

    .line 549
    .local v7, "rr":Lcom/android/internal/telephony/RILRequest;
    const/4 v6, 0x0

    .line 551
    .local v6, "req":Lcom/android/internal/telephony/RILRequest;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 547
    .end local v6    # "req":Lcom/android/internal/telephony/RILRequest;
    :cond_0
    :goto_0
    return-void

    .line 556
    .restart local v6    # "req":Lcom/android/internal/telephony/RILRequest;
    :pswitch_0
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v8, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 558
    .local v8, "s":Landroid/net/LocalSocket;
    if-nez v8, :cond_1

    .line 559
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 560
    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 561
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->-wrap4(Lcom/android/internal/telephony/RIL;)V

    .line 562
    return-void

    .line 566
    :cond_1
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v9}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 567
    .local v2, "data":[B
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v9, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 568
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    iget v11, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v9, v11, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 569
    iget-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 570
    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v10

    .line 573
    array-length v9, v2

    const/16 v10, 0x5000

    if-le v9, v10, :cond_2

    .line 574
    new-instance v9, Ljava/lang/RuntimeException;

    .line 575
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Parcel larger than max bytes allowed! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 576
    array-length v11, v2

    .line 575
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 574
    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 588
    .end local v2    # "data":[B
    .end local v8    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v3

    .line 589
    .local v3, "ex":Ljava/io/IOException;
    const-string/jumbo v9, "RILJ"

    const-string/jumbo v10, "IOException"

    invoke-static {v9, v10, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v10, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {v9, v10}, Lcom/android/internal/telephony/RIL;->-wrap1(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v6

    .line 593
    .local v6, "req":Lcom/android/internal/telephony/RILRequest;
    if-eqz v6, :cond_0

    .line 594
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 595
    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 596
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->-wrap4(Lcom/android/internal/telephony/RIL;)V

    goto :goto_0

    .line 567
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v2    # "data":[B
    .local v6, "req":Lcom/android/internal/telephony/RILRequest;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10

    throw v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 598
    .end local v2    # "data":[B
    .end local v8    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v4

    .line 599
    .local v4, "exc":Ljava/lang/RuntimeException;
    const-string/jumbo v9, "RILJ"

    const-string/jumbo v10, "Uncaught exception "

    invoke-static {v9, v10, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget v10, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {v9, v10}, Lcom/android/internal/telephony/RIL;->-wrap1(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v6

    .line 603
    .local v6, "req":Lcom/android/internal/telephony/RILRequest;
    if-eqz v6, :cond_0

    .line 604
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 605
    invoke-virtual {v7}, Lcom/android/internal/telephony/RILRequest;->release()V

    .line 606
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->-wrap4(Lcom/android/internal/telephony/RIL;)V

    goto/16 :goto_0

    .line 580
    .end local v4    # "exc":Ljava/lang/RuntimeException;
    .restart local v2    # "data":[B
    .local v6, "req":Lcom/android/internal/telephony/RILRequest;
    .restart local v8    # "s":Landroid/net/LocalSocket;
    :cond_2
    :try_start_4
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput-byte v11, v10, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-byte v10, v9, v11

    .line 581
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    array-length v10, v2

    shr-int/lit8 v10, v10, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    const/4 v11, 0x2

    aput-byte v10, v9, v11

    .line 582
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    array-length v10, v2

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    const/4 v11, 0x3

    aput-byte v10, v9, v11

    .line 586
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/RIL$RILSender;->dataLength:[B

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write([B)V

    .line 587
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 623
    .end local v2    # "data":[B
    .end local v8    # "s":Landroid/net/LocalSocket;
    :pswitch_1
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v10, v9, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v10

    .line 624
    :try_start_5
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v9}, Lcom/android/internal/telephony/RIL;->-wrap0(Lcom/android/internal/telephony/RIL;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 626
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 627
    .local v1, "count":I
    const-string/jumbo v9, "RILJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_3

    .line 630
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILSender;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    move-object v7, v0

    .line 631
    const-string/jumbo v9, "RILJ"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 632
    iget v12, v7, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v12}, Lcom/android/internal/telephony/RIL;->requestToString(I)Ljava/lang/String;

    move-result-object v12

    .line 631
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 629
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v1    # "count":I
    .end local v5    # "i":I
    :cond_3
    monitor-exit v10

    goto/16 :goto_0

    .line 623
    :catchall_1
    move-exception v9

    monitor-exit v10

    throw v9

    .line 551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 540
    return-void
.end method
