.class abstract Lcom/android/internal/telephony/cdma/utk/BipRunnable;
.super Ljava/lang/Object;
.source "BipChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected mCacheBuf:[B

.field protected mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

.field protected mRun:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mRun:Z

    .line 776
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .line 777
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mCacheBuf:[B

    .line 774
    return-void
.end method


# virtual methods
.method public compAndCache([B)Z
    .locals 8
    .param p1, "data"    # [B

    .prologue
    .line 791
    const-string/jumbo v4, "BipRunnable"

    const-string/jumbo v5, " compAndCache"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mCacheBuf:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "cb":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 795
    .local v1, "cd":Ljava/lang/String;
    const/4 v3, 0x0

    .line 797
    .local v3, "isSame":Z
    if-nez v0, :cond_1

    .line 798
    :try_start_0
    const-string/jumbo v4, "BipRunnable"

    const-string/jumbo v5, " compAndCache: mCacheBuf = null, maybe first"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    .end local v3    # "isSame":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 803
    const-string/jumbo v4, "BipRunnable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " compAndCache: mCacheBuf = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string/jumbo v4, "BipRunnable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " compAndCache: data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :cond_0
    if-eqz p1, :cond_2

    array-length v4, p1

    if-lez v4, :cond_2

    .line 807
    array-length v4, p1

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mCacheBuf:[B

    .line 808
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mCacheBuf:[B

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 809
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mCacheBuf:[B

    array-length v5, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p1, v6, v4, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 816
    :goto_1
    return v3

    .line 800
    .restart local v3    # "isSame":Z
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .local v3, "isSame":Z
    goto :goto_0

    .line 811
    .end local v3    # "isSame":Z
    :cond_2
    const-string/jumbo v4, "BipRunnable"

    const-string/jumbo v5, " compAndCache: data = null"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 813
    :catch_0
    move-exception v2

    .line 814
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public sendMessageToChannel(IIILjava/lang/Object;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 780
    const-string/jumbo v1, "BipRunnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " sendMessageToChannel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    if-nez v1, :cond_0

    .line 782
    const-string/jumbo v1, "BipRunnable"

    const-string/jumbo v2, " no caller"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    return-void

    .line 786
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 787
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->sendMessage(Landroid/os/Message;)Z

    .line 779
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 820
    const-string/jumbo v0, "BipRunnable"

    const-string/jumbo v1, " stop"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mCacheBuf:[B

    .line 822
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->mRun:Z

    .line 819
    return-void
.end method
