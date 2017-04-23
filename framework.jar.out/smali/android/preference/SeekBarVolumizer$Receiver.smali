.class final Landroid/preference/SeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 399
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 417
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 419
    const-string/jumbo v5, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 420
    .local v3, "streamType":I
    const-string/jumbo v5, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 425
    .local v4, "streamValue":I
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get9(Landroid/preference/SeekBarVolumizer;)I

    move-result v5

    if-ne v3, v5, :cond_1

    const/4 v2, 0x1

    .line 432
    .local v2, "streamMatch":Z
    :goto_0
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get8(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    if-eq v4, v6, :cond_0

    .line 433
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get1(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v5

    iget-object v6, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v6}, Landroid/preference/SeekBarVolumizer;->-get9(Landroid/preference/SeekBarVolumizer;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 434
    if-nez v4, :cond_3

    const/4 v1, 0x1

    .line 435
    .local v1, "muted":Z
    :goto_1
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get10(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;

    move-result-object v5

    iget-object v6, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v6}, Landroid/preference/SeekBarVolumizer;->-get4(Landroid/preference/SeekBarVolumizer;)I

    move-result v6

    invoke-virtual {v5, v4, v6, v1}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    .line 416
    .end local v1    # "muted":Z
    .end local v2    # "streamMatch":Z
    .end local v3    # "streamType":I
    .end local v4    # "streamValue":I
    :cond_0
    :goto_2
    return-void

    .line 425
    .restart local v3    # "streamType":I
    .restart local v4    # "streamValue":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "streamMatch":Z
    goto :goto_0

    .line 433
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "muted":Z
    goto :goto_1

    .line 434
    .end local v1    # "muted":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "muted":Z
    goto :goto_1

    .line 437
    .end local v1    # "muted":Z
    .end local v2    # "streamMatch":Z
    .end local v3    # "streamType":I
    .end local v4    # "streamValue":I
    :cond_4
    const-string/jumbo v5, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 438
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get7(Landroid/preference/SeekBarVolumizer;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 439
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v6, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v6}, Landroid/preference/SeekBarVolumizer;->-get1(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v6

    invoke-static {v5, v6}, Landroid/preference/SeekBarVolumizer;->-set3(Landroid/preference/SeekBarVolumizer;I)I

    .line 441
    :cond_5
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get0(Landroid/preference/SeekBarVolumizer;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 442
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-wrap1(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_2

    .line 444
    :cond_6
    const-string/jumbo v5, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 445
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v6, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v6}, Landroid/preference/SeekBarVolumizer;->-get6(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v6

    invoke-static {v5, v6}, Landroid/preference/SeekBarVolumizer;->-set4(Landroid/preference/SeekBarVolumizer;I)I

    .line 446
    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-wrap1(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_2
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 403
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 404
    :cond_0
    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    .line 405
    if-eqz p1, :cond_1

    .line 406
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    const-string/jumbo v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-get3(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 402
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-get3(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
