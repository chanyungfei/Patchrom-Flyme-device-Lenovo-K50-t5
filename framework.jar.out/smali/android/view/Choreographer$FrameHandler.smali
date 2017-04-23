.class final Landroid/view/Choreographer$FrameHandler;
.super Landroid/os/Handler;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/Choreographer;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 809
    iput-object p1, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    .line 810
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 809
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 815
    invoke-static {}, Landroid/view/Choreographer;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    const-string/jumbo v0, "Choreographer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FrameHandler handleMessage: msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 814
    :goto_0
    return-void

    .line 821
    :pswitch_0
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/Choreographer;->doFrame(JI)V

    goto :goto_0

    .line 824
    :pswitch_1
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->doScheduleVsync()V

    goto :goto_0

    .line 827
    :pswitch_2
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->doScheduleCallback(I)V

    goto :goto_0

    .line 819
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
