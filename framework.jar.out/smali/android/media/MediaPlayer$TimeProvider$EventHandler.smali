.class Landroid/media/MediaPlayer$TimeProvider$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer$TimeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaPlayer$TimeProvider;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/MediaPlayer$TimeProvider;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4127
    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    .line 4128
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4127
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 4133
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 4134
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 4132
    :cond_0
    :goto_0
    return-void

    .line 4136
    :pswitch_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->-wrap2(Landroid/media/MediaPlayer$TimeProvider;Z)V

    goto :goto_0

    .line 4139
    :pswitch_1
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->-wrap2(Landroid/media/MediaPlayer$TimeProvider;Z)V

    goto :goto_0

    .line 4142
    :pswitch_2
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {v0}, Landroid/media/MediaPlayer$TimeProvider;->-wrap1(Landroid/media/MediaPlayer$TimeProvider;)V

    goto :goto_0

    .line 4145
    :pswitch_3
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider$EventHandler;->this$1:Landroid/media/MediaPlayer$TimeProvider;

    invoke-static {v0}, Landroid/media/MediaPlayer$TimeProvider;->-wrap0(Landroid/media/MediaPlayer$TimeProvider;)V

    goto :goto_0

    .line 4134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
