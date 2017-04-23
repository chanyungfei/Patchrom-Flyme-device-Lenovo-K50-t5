.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer;
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3019
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 3020
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3021
    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3019
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3026
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get2(Landroid/media/MediaPlayer;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 3027
    const-string/jumbo v8, "MediaPlayer"

    const-string/jumbo v9, "mediaplayer went away with unhandled events"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    return-void

    .line 3030
    :cond_0
    const-string/jumbo v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleMessage msg:("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 3216
    const-string/jumbo v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown message type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    return-void

    .line 3034
    :sswitch_0
    :try_start_0
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3043
    :goto_0
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 3044
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 3045
    :cond_1
    return-void

    .line 3035
    :catch_0
    move-exception v2

    .line 3040
    .local v2, "e":Ljava/lang/RuntimeException;
    const/16 v8, 0x64

    const/4 v9, 0x1

    const/16 v10, -0x3f2

    const/4 v11, 0x0

    .line 3039
    invoke-virtual {p0, v8, v9, v10, v11}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 3041
    .local v4, "msg2":Landroid/os/Message;
    invoke-virtual {p0, v4}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3048
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "msg2":Landroid/os/Message;
    :sswitch_1
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 3049
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3050
    :cond_2
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;Z)V

    .line 3051
    return-void

    .line 3055
    :sswitch_2
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get16(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v7

    .line 3056
    .local v7, "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v7, :cond_3

    .line 3057
    invoke-virtual {v7}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V

    .line 3025
    .end local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :cond_3
    :goto_1
    :sswitch_3
    return-void

    .line 3065
    :sswitch_4
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get16(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v7

    .line 3066
    .restart local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v7, :cond_3

    .line 3067
    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 3073
    .end local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_5
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 3074
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v8, v9, v10}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 3075
    :cond_5
    return-void

    .line 3078
    :sswitch_6
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get9(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 3079
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get9(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 3085
    :cond_6
    :sswitch_7
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get16(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v7

    .line 3086
    .restart local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v7, :cond_7

    .line 3087
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 3090
    :cond_7
    return-void

    .line 3093
    .end local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_8
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get13(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 3094
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get13(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v8

    .line 3095
    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    .line 3094
    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 3097
    :cond_8
    return-void

    .line 3100
    :sswitch_9
    const-string/jumbo v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    const/4 v3, 0x0

    .line 3102
    .local v3, "error_was_handled":Z
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get6(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 3103
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get6(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v3

    .line 3105
    .end local v3    # "error_was_handled":Z
    :cond_9
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v8

    if-eqz v8, :cond_a

    if-eqz v3, :cond_b

    .line 3108
    :cond_a
    :goto_3
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;Z)V

    .line 3109
    return-void

    .line 3106
    :cond_b
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_3

    .line 3112
    :sswitch_a
    iget v8, p1, Landroid/os/Message;->arg1:I

    sparse-switch v8, :sswitch_data_1

    .line 3142
    :cond_c
    :goto_4
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get7(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 3143
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get7(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 3146
    :cond_d
    return-void

    .line 3114
    :sswitch_b
    const-string/jumbo v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Info ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3118
    :sswitch_c
    :try_start_1
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3127
    :goto_5
    :sswitch_d
    const/16 v8, 0x322

    iput v8, p1, Landroid/os/Message;->arg1:I

    .line 3129
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 3130
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto :goto_4

    .line 3119
    :catch_1
    move-exception v2

    .line 3121
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    const/16 v8, 0x64

    const/4 v9, 0x1

    const/16 v10, -0x3f2

    const/4 v11, 0x0

    .line 3120
    invoke-virtual {p0, v8, v9, v10, v11}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 3122
    .restart local v4    # "msg2":Landroid/os/Message;
    invoke-virtual {p0, v4}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 3135
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .end local v4    # "msg2":Landroid/os/Message;
    :sswitch_e
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get16(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v7

    .line 3136
    .restart local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v7, :cond_c

    .line 3137
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/16 v9, 0x2bd

    if-ne v8, v9, :cond_e

    const/4 v8, 0x1

    :goto_6
    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer$TimeProvider;->onBuffering(Z)V

    goto/16 :goto_4

    :cond_e
    const/4 v8, 0x0

    goto :goto_6

    .line 3148
    .end local v7    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_f
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get12(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v8

    if-nez v8, :cond_f

    .line 3149
    return-void

    .line 3150
    :cond_f
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v8, :cond_11

    .line 3151
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get12(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    .line 3160
    :cond_10
    :goto_7
    return-void

    .line 3153
    :cond_11
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Landroid/os/Parcel;

    if-eqz v8, :cond_10

    .line 3154
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Parcel;

    .line 3155
    .local v5, "parcel":Landroid/os/Parcel;
    new-instance v6, Landroid/media/TimedText;

    invoke-direct {v6, v5}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    .line 3156
    .local v6, "text":Landroid/media/TimedText;
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 3157
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get12(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9, v6}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto :goto_7

    .line 3163
    .end local v5    # "parcel":Landroid/os/Parcel;
    .end local v6    # "text":Landroid/media/TimedText;
    :sswitch_10
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get10(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v8

    if-nez v8, :cond_12

    .line 3164
    return-void

    .line 3166
    :cond_12
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Landroid/os/Parcel;

    if-eqz v8, :cond_13

    .line 3167
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Parcel;

    .line 3168
    .restart local v5    # "parcel":Landroid/os/Parcel;
    new-instance v0, Landroid/media/SubtitleData;

    invoke-direct {v0, v5}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    .line 3169
    .local v0, "data":Landroid/media/SubtitleData;
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 3170
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get10(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9, v0}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    .line 3172
    .end local v0    # "data":Landroid/media/SubtitleData;
    .end local v5    # "parcel":Landroid/os/Parcel;
    :cond_13
    return-void

    .line 3175
    :sswitch_11
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    move-result-object v8

    if-nez v8, :cond_14

    .line 3176
    return-void

    .line 3178
    :cond_14
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Landroid/os/Parcel;

    if-eqz v8, :cond_15

    .line 3179
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Parcel;

    .line 3180
    .restart local v5    # "parcel":Landroid/os/Parcel;
    invoke-static {v5}, Landroid/media/TimedMetaData;->createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;

    move-result-object v1

    .line 3181
    .local v1, "data":Landroid/media/TimedMetaData;
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 3182
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9, v1}, Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;->onTimedMetaDataAvailable(Landroid/media/MediaPlayer;Landroid/media/TimedMetaData;)V

    .line 3184
    .end local v1    # "data":Landroid/media/TimedMetaData;
    .end local v5    # "parcel":Landroid/os/Parcel;
    :cond_15
    return-void

    .line 3187
    :sswitch_12
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get7(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 3188
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_16

    .line 3189
    const-string/jumbo v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MEDIA_PAUSE_COMPLETE failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    :cond_16
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get7(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    const/16 v11, 0x35a

    invoke-interface {v8, v9, v11, v10}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_1

    .line 3196
    :sswitch_13
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get7(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 3197
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_17

    .line 3198
    const-string/jumbo v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MEDIA_PLAY_COMPLETE failed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    :cond_17
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get7(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    const/16 v11, 0x35b

    invoke-interface {v8, v9, v11, v10}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_1

    .line 3206
    :sswitch_14
    const-string/jumbo v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Duration update (duration="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDurationUpdateListener;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 3208
    iget-object v8, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v8}, Landroid/media/MediaPlayer;->-get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnDurationUpdateListener;

    move-result-object v8

    iget-object v9, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v8, v9, v10}, Landroid/media/MediaPlayer$OnDurationUpdateListener;->onDurationUpdate(Landroid/media/MediaPlayer;I)V

    goto/16 :goto_1

    .line 3031
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_8
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_2
        0x9 -> :sswitch_7
        0x63 -> :sswitch_f
        0x64 -> :sswitch_9
        0xc8 -> :sswitch_a
        0xc9 -> :sswitch_10
        0xca -> :sswitch_11
        0x12c -> :sswitch_14
        0x258 -> :sswitch_12
        0x259 -> :sswitch_13
    .end sparse-switch

    .line 3112
    :sswitch_data_1
    .sparse-switch
        0x2bc -> :sswitch_b
        0x2bd -> :sswitch_e
        0x2be -> :sswitch_e
        0x322 -> :sswitch_c
        0x323 -> :sswitch_d
    .end sparse-switch
.end method
