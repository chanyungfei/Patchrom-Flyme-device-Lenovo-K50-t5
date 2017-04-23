.class public final Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$IdleHandler;,
        Landroid/os/MessageQueue$OnFileDescriptorEventListener;,
        Landroid/os/MessageQueue$FileDescriptorRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MESSAGE_DUMP_SIZE_MAX:I = 0x14

.field private static final TAG:Ljava/lang/String; = "MessageQueue"


# instance fields
.field private mBlocked:Z

.field private mFileDescriptorRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/MessageQueue$FileDescriptorRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mNextBarrierToken:I

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:J

.field private final mQuitAllowed:Z

.field private mQuitting:Z


# direct methods
.method constructor <init>(Z)V
    .locals 2
    .param p1, "quitAllowed"    # Z

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 74
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 75
    invoke-static {}, Landroid/os/MessageQueue;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 73
    return-void
.end method

.method private dispatchEvents(II)I
    .locals 8
    .param p1, "fd"    # I
    .param p2, "events"    # I

    .prologue
    const/4 v7, 0x0

    .line 270
    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/MessageQueue$FileDescriptorRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    .local v4, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    if-nez v4, :cond_0

    monitor-exit p0

    .line 273
    return v7

    .line 276
    :cond_0
    :try_start_1
    iget v3, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    .local v3, "oldWatchedEvents":I
    and-int/2addr p2, v3

    .line 278
    if-nez p2, :cond_1

    monitor-exit p0

    .line 279
    return v3

    .line 282
    :cond_1
    :try_start_2
    iget-object v1, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 283
    .local v1, "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    iget v5, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v5, "seq":I
    monitor-exit p0

    .line 288
    iget-object v6, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    .line 287
    invoke-interface {v1, v6, p2}, Landroid/os/MessageQueue$OnFileDescriptorEventListener;->onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I

    move-result v2

    .line 289
    .local v2, "newWatchedEvents":I
    if-eqz v2, :cond_2

    .line 290
    or-int/lit8 v2, v2, 0x4

    .line 295
    :cond_2
    if-eq v2, v3, :cond_4

    .line 296
    monitor-enter p0

    .line 297
    :try_start_3
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 298
    .local v0, "index":I
    if-ltz v0, :cond_3

    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_3

    .line 299
    iget v6, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    if-ne v6, v5, :cond_3

    .line 300
    iput v2, v4, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 301
    if-nez v2, :cond_3

    .line 302
    iget-object v6, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    monitor-exit p0

    .line 309
    .end local v0    # "index":I
    :cond_4
    return v2

    .line 270
    .end local v1    # "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    .end local v2    # "newWatchedEvents":I
    .end local v3    # "oldWatchedEvents":I
    .end local v4    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    .end local v5    # "seq":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 296
    .restart local v1    # "listener":Landroid/os/MessageQueue$OnFileDescriptorEventListener;
    .restart local v2    # "newWatchedEvents":I
    .restart local v3    # "oldWatchedEvents":I
    .restart local v4    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    .restart local v5    # "seq":I
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private dispose()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 90
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 91
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeDestroy(J)V

    .line 92
    iput-wide v2, p0, Landroid/os/MessageQueue;->mPtr:J

    .line 89
    :cond_0
    return-void
.end method

.method private isPollingLocked()Z
    .locals 2

    .prologue
    .line 164
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeIsPolling(J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeInit()J
.end method

.method private static native nativeIsPolling(J)Z
.end method

.method private native nativePollOnce(JI)V
.end method

.method private static native nativeSetFileDescriptorEvents(JII)V
.end method

.method private static native nativeWake(J)V
.end method

.method private postSyncBarrier(J)I
    .locals 7
    .param p1, "when"    # J

    .prologue
    .line 470
    monitor-enter p0

    .line 471
    :try_start_0
    iget v3, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 472
    .local v3, "token":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 473
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->markInUse()V

    .line 474
    iput-wide p1, v0, Landroid/os/Message;->when:J

    .line 475
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 477
    const/4 v2, 0x0

    .line 478
    .local v2, "prev":Landroid/os/Message;
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 479
    .local v1, "p":Landroid/os/Message;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    .line 480
    .end local v2    # "prev":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_0

    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_0

    .line 481
    move-object v2, v1

    .line 482
    .local v2, "prev":Landroid/os/Message;
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 485
    .end local v2    # "prev":Landroid/os/Message;
    :cond_0
    if-eqz v2, :cond_1

    .line 486
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 487
    iput-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    .line 492
    return v3

    .line 489
    :cond_1
    :try_start_1
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 490
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 470
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "p":Landroid/os/Message;
    .end local v3    # "token":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private removeAllFutureMessagesLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 745
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 746
    .local v2, "now":J
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 747
    .local v1, "p":Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 748
    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_2

    .line 749
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V

    .line 744
    :cond_0
    return-void

    .line 760
    .local v0, "n":Landroid/os/Message;
    :cond_1
    move-object v1, v0

    .line 753
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 754
    .restart local v0    # "n":Landroid/os/Message;
    if-nez v0, :cond_3

    .line 755
    return-void

    .line 757
    :cond_3
    iget-wide v4, v0, Landroid/os/Message;->when:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    .line 762
    iput-object v6, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 764
    :goto_0
    move-object v1, v0

    .line 765
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 766
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 767
    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private removeAllMessagesLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 735
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 736
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_0

    .line 737
    iget-object v0, v1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 738
    .local v0, "n":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 739
    move-object v1, v0

    goto :goto_0

    .line 741
    .end local v0    # "n":Landroid/os/Message;
    :cond_0
    iput-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 734
    return-void
.end method

.method private updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .prologue
    const/4 v4, 0x0

    .line 229
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 231
    .local v0, "fdNum":I
    const/4 v1, -0x1

    .line 232
    .local v1, "index":I
    const/4 v2, 0x0

    .line 233
    .local v2, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-eqz v3, :cond_0

    .line 234
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 235
    if-ltz v1, :cond_0

    .line 236
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    check-cast v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    .line 237
    .local v2, "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    if-ne v3, p2, :cond_0

    .line 238
    return-void

    .line 243
    .end local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    :cond_0
    if-eqz p2, :cond_4

    .line 244
    or-int/lit8 p2, p2, 0x4

    .line 245
    if-nez v2, :cond_3

    .line 246
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    .line 247
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    .line 249
    :cond_1
    new-instance v2, Landroid/os/MessageQueue$FileDescriptorRecord;

    invoke-direct {v2, p1, p2, p3}, Landroid/os/MessageQueue$FileDescriptorRecord;-><init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 250
    .restart local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    .end local v2    # "record":Landroid/os/MessageQueue$FileDescriptorRecord;
    :goto_0
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5, v0, p2}, Landroid/os/MessageQueue;->nativeSetFileDescriptorEvents(JII)V

    .line 228
    :cond_2
    :goto_1
    return-void

    .line 252
    :cond_3
    iput-object p3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .line 253
    iput p2, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 254
    iget v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mSeq:I

    goto :goto_0

    .line 257
    :cond_4
    if-eqz v2, :cond_2

    .line 258
    iput v4, v2, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    .line 259
    iget-object v3, p0, Landroid/os/MessageQueue;->mFileDescriptorRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1
.end method


# virtual methods
.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 120
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    if-nez p3, :cond_1

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    monitor-enter p0

    .line 201
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 192
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 773
    monitor-enter p0

    .line 774
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 775
    .local v2, "now":J
    const/4 v1, 0x0

    .line 776
    .local v1, "n":I
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .local v0, "msg":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    .line 777
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v2, v3}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 778
    add-int/lit8 v1, v1, 0x1

    .line 776
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 780
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "(Total messages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", polling="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 781
    const-string/jumbo v5, ", quitting="

    .line 780
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 781
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 780
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 781
    const-string/jumbo v5, ")"

    .line 780
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 772
    return-void

    .line 773
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "n":I
    .end local v2    # "now":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public final declared-synchronized dumpMessageQueue()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x14

    monitor-enter p0

    .line 894
    :try_start_0
    const-string/jumbo v1, ""

    .line 895
    .local v1, "messageQueue":Ljava/lang/String;
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v3, :cond_2

    .line 896
    const-string/jumbo v3, "MessageQueue"

    const-string/jumbo v4, "Dump first 20 messages in Queue: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Dump first "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " messages in Queue: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 898
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 899
    .local v2, "tempMsg":Landroid/os/Message;
    const/4 v0, 0x0

    .line 900
    .local v0, "count":I
    :goto_0
    if-eqz v2, :cond_1

    .line 901
    add-int/lit8 v0, v0, 0x1

    .line 902
    if-gt v0, v6, :cond_0

    .line 903
    const-string/jumbo v3, "MessageQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Dump Message in Queue ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Dump Message in Queue ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 906
    :cond_0
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 909
    :cond_1
    const-string/jumbo v3, "MessageQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Total Message Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Total Message Count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .end local v0    # "count":I
    .end local v2    # "tempMsg":Landroid/os/Message;
    :goto_1
    monitor-exit p0

    .line 915
    return-object v1

    .line 912
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mMessages is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 913
    const-string/jumbo v3, "MessageQueue"

    const-string/jumbo v4, "mMessages is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v1    # "messageQueue":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method enqueueMessage(Landroid/os/Message;J)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "when"    # J

    .prologue
    const/4 v7, 0x0

    .line 539
    iget-object v4, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v4, :cond_0

    .line 540
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Message must have a target."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 542
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 543
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " This message is already in use."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 547
    :cond_1
    iget-boolean v4, p1, Landroid/os/Message;->hasRecycle:Z

    if-eqz v4, :cond_2

    .line 548
    const-string/jumbo v4, "MessageQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Warning: message has been recycled. msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return v7

    .line 553
    :cond_2
    monitor-enter p0

    .line 554
    :try_start_0
    iget-boolean v4, p0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v4, :cond_3

    .line 555
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 556
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " sending message to a Handler on a dead thread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 555
    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 559
    return v7

    .line 562
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->markInUse()V

    .line 563
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 564
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 566
    .local v2, "p":Landroid/os/Message;
    if-eqz v2, :cond_4

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_6

    .line 568
    :cond_4
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 569
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 570
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 592
    :goto_0
    if-eqz v1, :cond_5

    .line 593
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5}, Landroid/os/MessageQueue;->nativeWake(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit p0

    .line 596
    const/4 v4, 0x1

    return v4

    .line 566
    :cond_6
    :try_start_2
    iget-wide v4, v2, Landroid/os/Message;->when:J

    cmp-long v4, p2, v4

    if-ltz v4, :cond_4

    .line 575
    iget-boolean v4, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v4, :cond_9

    iget-object v4, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v4, :cond_9

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v1

    .line 578
    :cond_7
    :goto_1
    move-object v3, v2

    .line 579
    .local v3, "prev":Landroid/os/Message;
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 580
    if-eqz v2, :cond_8

    iget-wide v4, v2, Landroid/os/Message;->when:J

    cmp-long v4, p2, v4

    if-gez v4, :cond_a

    .line 587
    :cond_8
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 588
    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 553
    .end local v2    # "p":Landroid/os/Message;
    .end local v3    # "prev":Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 575
    .restart local v2    # "p":Landroid/os/Message;
    :cond_9
    const/4 v1, 0x0

    .local v1, "needWake":Z
    goto :goto_1

    .line 583
    .end local v1    # "needWake":Z
    .restart local v3    # "prev":Landroid/os/Message;
    :cond_a
    if-eqz v1, :cond_7

    :try_start_3
    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v4

    if-eqz v4, :cond_7

    .line 584
    const/4 v1, 0x0

    .restart local v1    # "needWake":Z
    goto :goto_1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 79
    return-void

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 82
    throw v0
.end method

.method hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 600
    if-nez p1, :cond_0

    .line 601
    return v2

    .line 604
    :cond_0
    monitor-enter p0

    .line 605
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 606
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_3

    .line 607
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget v1, v0, Landroid/os/Message;->what:I

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p3, :cond_2

    .line 608
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 610
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    monitor-exit p0

    .line 612
    return v2

    .line 604
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 617
    if-nez p1, :cond_0

    .line 618
    return v2

    .line 621
    :cond_0
    monitor-enter p0

    .line 622
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 623
    .local v0, "p":Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_3

    .line 624
    iget-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v1, p1, :cond_2

    iget-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v1, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p3, :cond_2

    .line 625
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 627
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    monitor-exit p0

    .line 629
    return v2

    .line 621
    .end local v0    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isIdle()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 106
    .local v0, "now":J
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v4, v3, Landroid/os/Message;->when:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 104
    .end local v0    # "now":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isPolling()Z
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    .line 157
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->isPollingLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method next()Landroid/os/Message;
    .locals 18

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/os/MessageQueue;->mPtr:J

    .line 317
    .local v12, "ptr":J
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-nez v14, :cond_0

    .line 318
    const/4 v14, 0x0

    return-object v14

    .line 321
    :cond_0
    const/4 v7, -0x1

    .line 322
    .local v7, "pendingIdleHandlerCount":I
    const/4 v6, 0x0

    .line 324
    .local v6, "nextPollTimeoutMillis":I
    :goto_0
    if-eqz v6, :cond_1

    .line 325
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 328
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v6}, Landroid/os/MessageQueue;->nativePollOnce(JI)V

    .line 330
    monitor-enter p0

    .line 332
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 333
    .local v8, "now":J
    const/4 v10, 0x0

    .line 334
    .local v10, "prevMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 335
    .local v5, "msg":Landroid/os/Message;
    if-eqz v5, :cond_3

    iget-object v14, v5, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v14, :cond_3

    .line 338
    .end local v10    # "prevMsg":Landroid/os/Message;
    :cond_2
    move-object v10, v5

    .line 339
    .local v10, "prevMsg":Landroid/os/Message;
    iget-object v5, v5, Landroid/os/Message;->next:Landroid/os/Message;

    .line 340
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/os/Message;->isAsynchronous()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 342
    .end local v10    # "prevMsg":Landroid/os/Message;
    :cond_3
    if-eqz v5, :cond_6

    .line 343
    iget-wide v14, v5, Landroid/os/Message;->when:J

    cmp-long v14, v8, v14

    if-gez v14, :cond_4

    .line 345
    iget-wide v14, v5, Landroid/os/Message;->when:J

    sub-long/2addr v14, v8

    const-wide/32 v16, 0x7fffffff

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v6, v14

    .line 365
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/os/MessageQueue;->mQuitting:Z

    if-eqz v14, :cond_7

    .line 366
    invoke-direct/range {p0 .. p0}, Landroid/os/MessageQueue;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    const/4 v14, 0x0

    monitor-exit p0

    return-object v14

    .line 348
    :cond_4
    const/4 v14, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 349
    if-eqz v10, :cond_5

    .line 350
    iget-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v14, v10, Landroid/os/Message;->next:Landroid/os/Message;

    .line 354
    :goto_2
    const/4 v14, 0x0

    iput-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    .line 356
    invoke-virtual {v5}, Landroid/os/Message;->markInUse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 357
    return-object v5

    .line 352
    :cond_5
    :try_start_2
    iget-object v14, v5, Landroid/os/Message;->next:Landroid/os/Message;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 330
    .end local v5    # "msg":Landroid/os/Message;
    .end local v8    # "now":J
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 361
    .restart local v5    # "msg":Landroid/os/Message;
    .restart local v8    # "now":J
    :cond_6
    const/4 v6, -0x1

    goto :goto_1

    .line 373
    :cond_7
    if-gez v7, :cond_9

    .line 374
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v14, v14, Landroid/os/Message;->when:J

    cmp-long v14, v8, v14

    if-gez v14, :cond_9

    .line 375
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 377
    :cond_9
    if-gtz v7, :cond_a

    .line 379
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/os/MessageQueue;->mBlocked:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    goto/16 :goto_0

    .line 383
    :cond_a
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v14, :cond_b

    .line 384
    const/4 v14, 0x4

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    new-array v14, v14, [Landroid/os/MessageQueue$IdleHandler;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 386
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/os/MessageQueue$IdleHandler;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 391
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v7, :cond_d

    .line 392
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v3, v14, v2

    .line 393
    .local v3, "idler":Landroid/os/MessageQueue$IdleHandler;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    const/4 v15, 0x0

    aput-object v15, v14, v2

    .line 395
    const/4 v4, 0x0

    .line 397
    .local v4, "keep":Z
    :try_start_5
    invoke-interface {v3}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result v4

    .line 402
    .end local v4    # "keep":Z
    :goto_4
    if-nez v4, :cond_c

    .line 403
    monitor-enter p0

    .line 404
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    .line 391
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 398
    .restart local v4    # "keep":Z
    :catch_0
    move-exception v11

    .line 399
    .local v11, "t":Ljava/lang/Throwable;
    const-string/jumbo v14, "MessageQueue"

    const-string/jumbo v15, "IdleHandler threw exception"

    invoke-static {v14, v15, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 403
    .end local v4    # "keep":Z
    .end local v11    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v14

    monitor-exit p0

    throw v14

    .line 410
    .end local v3    # "idler":Landroid/os/MessageQueue$IdleHandler;
    :cond_d
    const/4 v7, 0x0

    .line 414
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public postSyncBarrier()I
    .locals 2

    .prologue
    .line 464
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/os/MessageQueue;->postSyncBarrier(J)I

    move-result v0

    return v0
.end method

.method quit(Z)V
    .locals 2
    .param p1, "safe"    # Z

    .prologue
    .line 419
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v0, :cond_0

    .line 420
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    monitor-enter p0

    .line 424
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    .line 425
    return-void

    .line 427
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuitting:Z

    .line 429
    if-eqz p1, :cond_2

    .line 430
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllFutureMessagesLocked()V

    .line 436
    :goto_0
    iget-wide v0, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v0, v1}, Landroid/os/MessageQueue;->nativeWake(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 418
    return-void

    .line 432
    :cond_2
    :try_start_2
    invoke-direct {p0}, Landroid/os/MessageQueue;->removeAllMessagesLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 702
    if-nez p1, :cond_0

    .line 703
    return-void

    .line 706
    :cond_0
    monitor-enter p0

    .line 707
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 710
    .local v2, "p":Landroid/os/Message;
    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    .line 711
    if-eqz p2, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_2

    .line 712
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 713
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 714
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 715
    move-object v2, v0

    goto :goto_0

    .line 719
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    :goto_1
    if-eqz v2, :cond_5

    .line 720
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 721
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 722
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    if-eqz p2, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_4

    .line 723
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 724
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 725
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 706
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 729
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_4
    move-object v2, v0

    goto :goto_1

    .end local v0    # "n":Landroid/os/Message;
    :cond_5
    monitor-exit p0

    .line 701
    return-void
.end method

.method public removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .prologue
    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 138
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 634
    if-nez p1, :cond_0

    .line 635
    return-void

    .line 638
    :cond_0
    monitor-enter p0

    .line 639
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 642
    .local v2, "p":Landroid/os/Message;
    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    iget v3, v2, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_2

    .line 643
    if-eqz p3, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_2

    .line 644
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 645
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 646
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 647
    move-object v2, v0

    goto :goto_0

    .line 651
    .end local v0    # "n":Landroid/os/Message;
    :cond_2
    :goto_1
    if-eqz v2, :cond_5

    .line 652
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 653
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 654
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    iget v3, v0, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_4

    .line 655
    if-eqz p3, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_4

    .line 656
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 657
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 658
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 638
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 662
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_4
    move-object v2, v0

    goto :goto_1

    .end local v0    # "n":Landroid/os/Message;
    :cond_5
    monitor-exit p0

    .line 633
    return-void
.end method

.method removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "r"    # Ljava/lang/Runnable;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 668
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 669
    :cond_0
    return-void

    .line 672
    :cond_1
    monitor-enter p0

    .line 673
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 676
    .local v2, "p":Landroid/os/Message;
    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_3

    .line 677
    if-eqz p3, :cond_2

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_3

    .line 678
    :cond_2
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 679
    .local v0, "n":Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 680
    invoke-virtual {v2}, Landroid/os/Message;->recycleUnchecked()V

    .line 681
    move-object v2, v0

    goto :goto_0

    .line 685
    .end local v0    # "n":Landroid/os/Message;
    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    .line 686
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 687
    .restart local v0    # "n":Landroid/os/Message;
    if-eqz v0, :cond_5

    .line 688
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_5

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_5

    .line 689
    if-eqz p3, :cond_4

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_5

    .line 690
    :cond_4
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 691
    .local v1, "nn":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycleUnchecked()V

    .line 692
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 672
    .end local v0    # "n":Landroid/os/Message;
    .end local v1    # "nn":Landroid/os/Message;
    .end local v2    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 696
    .restart local v0    # "n":Landroid/os/Message;
    .restart local v2    # "p":Landroid/os/Message;
    :cond_5
    move-object v2, v0

    goto :goto_1

    .end local v0    # "n":Landroid/os/Message;
    :cond_6
    monitor-exit p0

    .line 667
    return-void
.end method

.method public removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_0
    monitor-enter p0

    .line 223
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Landroid/os/MessageQueue;->updateOnFileDescriptorEventListenerLocked(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 217
    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeSyncBarrier(I)V
    .locals 6
    .param p1, "token"    # I

    .prologue
    .line 509
    monitor-enter p0

    .line 510
    const/4 v2, 0x0

    .line 511
    .local v2, "prev":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 512
    .end local v2    # "prev":Landroid/os/Message;
    .local v1, "p":Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_0

    iget v3, v1, Landroid/os/Message;->arg1:I

    if-eq v3, p1, :cond_1

    .line 513
    :cond_0
    move-object v2, v1

    .line 514
    .local v2, "prev":Landroid/os/Message;
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 516
    .end local v2    # "prev":Landroid/os/Message;
    :cond_1
    if-nez v1, :cond_2

    .line 517
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    .end local v1    # "p":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 521
    .restart local v1    # "p":Landroid/os/Message;
    :cond_2
    if-eqz v2, :cond_4

    .line 522
    :try_start_1
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 523
    const/4 v0, 0x0

    .line 528
    .local v0, "needWake":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycleUnchecked()V

    .line 532
    if-eqz v0, :cond_3

    iget-boolean v3, p0, Landroid/os/MessageQueue;->mQuitting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_7

    :cond_3
    :goto_2
    monitor-exit p0

    .line 506
    return-void

    .line 525
    .end local v0    # "needWake":Z
    :cond_4
    :try_start_2
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 526
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-eqz v3, :cond_6

    :cond_5
    const/4 v0, 0x1

    .restart local v0    # "needWake":Z
    goto :goto_1

    .end local v0    # "needWake":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "needWake":Z
    goto :goto_1

    .line 533
    :cond_7
    iget-wide v4, p0, Landroid/os/MessageQueue;->mPtr:J

    invoke-static {v4, v5}, Landroid/os/MessageQueue;->nativeWake(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
