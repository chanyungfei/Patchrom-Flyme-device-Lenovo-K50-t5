.class Lcom/mediatek/audioprofile/AudioProfileService$7;
.super Landroid/content/BroadcastReceiver;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$7;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 640
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "AudioProfileService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBootCompleteReceiver receive action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "Persist profile settings to system when boot complete!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$7;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v2, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap5(Lcom/mediatek/audioprofile/AudioProfileService;Z)V

    .line 652
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$7;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-get4(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v1

    .line 653
    .local v1, "activeScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$7;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-get19(Lcom/mediatek/audioprofile/AudioProfileService;)I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 654
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$7;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    .line 655
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$7;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-get4(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    .line 654
    invoke-virtual {v2, v3, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->getStreamVolume(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 656
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$7;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-get5(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v6, v5, v5}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    .line 658
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$7;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-get5(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v2

    .line 659
    const/4 v3, 0x5

    .line 658
    invoke-virtual {v2, v3, v5, v5}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    .line 660
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "Persist system volume to be 0 if ringermode is normal and volume is 0 when boot complete!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    .end local v1    # "activeScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/audioprofile/AudioProfileService$7;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v2}, Lcom/mediatek/audioprofile/AudioProfileService;->-get6(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 665
    const-string/jumbo v2, "AudioProfileService"

    const-string/jumbo v3, "unregister mBootCompleteReceiver!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return-void
.end method
