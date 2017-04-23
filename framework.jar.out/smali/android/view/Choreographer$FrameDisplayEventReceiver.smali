.class final Landroid/view/Choreographer$FrameDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "Choreographer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameDisplayEventReceiver"
.end annotation


# instance fields
.field private mFrame:I

.field private mHavePendingVsync:Z

.field private mTimestampNanos:J

.field final synthetic this$0:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/Choreographer;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 839
    iput-object p1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    .line 840
    invoke-direct {p0, p2}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    .line 839
    return-void
.end method


# virtual methods
.method public onVsync(JII)V
    .locals 9
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "frame"    # I

    .prologue
    const/4 v8, 0x1

    .line 853
    if-eqz p3, :cond_0

    .line 854
    const-string/jumbo v1, "Choreographer"

    const-string/jumbo v4, "Received vsync from secondary display, but we don\'t support this case yet.  Choreographer needs a way to explicitly request vsync for a specific display to ensure it doesn\'t lose track of its scheduled vsync."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-virtual {p0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V

    .line 859
    return-void

    .line 867
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 868
    .local v2, "now":J
    invoke-static {}, Landroid/view/Choreographer;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 869
    const-string/jumbo v1, "Choreographer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onVsync: timestampNanos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",frame = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 870
    const-string/jumbo v5, ",now = "

    .line 869
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 870
    const-string/jumbo v5, ",mHavePendingVsync = "

    .line 869
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 870
    iget-boolean v5, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    .line 869
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 871
    const-string/jumbo v5, ",this = "

    .line 869
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 871
    iget-object v5, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    .line 869
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_1
    cmp-long v1, p1, v2

    if-lez v1, :cond_2

    .line 875
    const-string/jumbo v1, "Choreographer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Frame time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, p1, v2

    long-to-float v5, v6

    const v6, 0x358637bd    # 1.0E-6f

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 876
    const-string/jumbo v5, " ms in the future!  Check that graphics HAL is generating vsync "

    .line 875
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 877
    const-string/jumbo v5, "timestamps using the correct timebase."

    .line 875
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    move-wide p1, v2

    .line 881
    :cond_2
    iget-boolean v1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    if-eqz v1, :cond_3

    .line 882
    const-string/jumbo v1, "Choreographer"

    const-string/jumbo v4, "Already have a pending vsync event.  There should only be one at a time."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :goto_0
    iput-wide p1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mTimestampNanos:J

    .line 889
    iput p4, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mFrame:I

    .line 890
    iget-object v1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    invoke-static {v1}, Landroid/view/Choreographer;->-get2(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 891
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 892
    iget-object v1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    invoke-static {v1}, Landroid/view/Choreographer;->-get2(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;

    move-result-object v1

    const-wide/32 v4, 0xf4240

    div-long v4, p1, v4

    invoke-virtual {v1, v0, v4, v5}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 844
    return-void

    .line 885
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    iput-boolean v8, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 897
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    .line 898
    iget-object v0, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    iget-wide v2, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mTimestampNanos:J

    iget v1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mFrame:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/Choreographer;->doFrame(JI)V

    .line 896
    return-void
.end method
