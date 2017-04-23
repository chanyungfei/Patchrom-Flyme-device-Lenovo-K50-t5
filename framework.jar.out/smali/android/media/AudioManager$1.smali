.class Landroid/media/AudioManager$1;
.super Landroid/media/IAudioFocusDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioManager;

    .prologue
    .line 2242
    iput-object p1, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IAudioFocusDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAudioFocusChange(ILjava/lang/String;)V
    .locals 4
    .param p1, "focusChange"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 2245
    iget-object v2, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->-get2(Landroid/media/AudioManager;)Landroid/media/AudioManager$FocusEventHandlerDelegate;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager$FocusEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2246
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->-get2(Landroid/media/AudioManager;)Landroid/media/AudioManager$FocusEventHandlerDelegate;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager$FocusEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2249
    invoke-static {}, Landroid/media/AudioManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2250
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "DS_AUDIO_FOCUS_CHANGE_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2251
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.dolby"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2252
    const-string/jumbo v2, "packageName"

    iget-object v3, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    invoke-static {v3}, Landroid/media/AudioManager;->-wrap0(Landroid/media/AudioManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2253
    packed-switch p1, :pswitch_data_0

    .line 2244
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2257
    .restart local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    const-string/jumbo v2, "focusChange"

    const-string/jumbo v3, "loss"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2258
    iget-object v2, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->-wrap0(Landroid/media/AudioManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2263
    :pswitch_2
    const-string/jumbo v2, "focusChange"

    const-string/jumbo v3, "gain"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2264
    iget-object v2, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->-wrap0(Landroid/media/AudioManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2253
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
