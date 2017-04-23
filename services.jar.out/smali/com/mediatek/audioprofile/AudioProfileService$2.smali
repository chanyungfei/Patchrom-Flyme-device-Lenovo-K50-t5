.class Lcom/mediatek/audioprofile/AudioProfileService$2;
.super Lcom/mediatek/common/audioprofile/AudioProfileListener;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic -com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$mediatek$audioprofile$AudioProfileManager$Scenario:[I

.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method private static synthetic -getcom_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileService$2;->-com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileService$2;->-com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileService$2;->-com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/AudioProfileService;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingerVolumeChanged(IILjava/lang/String;)V
    .locals 7
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 306
    if-ne p1, p2, :cond_0

    .line 307
    const-string/jumbo v5, "AudioProfileService"

    const-string/jumbo v6, "onRingerVolumeChanged with Volume don\'t change, do nothing!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void

    .line 312
    :cond_0
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->-get10(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    move-result-object v5

    invoke-interface {v5, p1, p2, p3}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->onRingerVolumeChanged(IILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 313
    return-void

    .line 315
    :cond_1
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->-get17(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->-get4(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 316
    .local v0, "activeProfileState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->-get4(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v1

    .line 317
    .local v1, "activeScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService$2;->-getcom_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues()[I

    move-result-object v5

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 352
    if-lez p1, :cond_2

    if-nez p2, :cond_2

    .line 353
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->-get12(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, p2, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyRingerVolumeChanged(IILjava/lang/String;)V

    .line 354
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->-get12(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    .line 355
    const-string/jumbo v5, "AudioProfileService"

    const-string/jumbo v6, "onRingerVolumeChanged: sync volume 1->0 to last active profile when it cause ringemode change!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_2
    :goto_0
    return-void

    .line 319
    :pswitch_0
    const/4 v4, 0x0

    .line 320
    .local v4, "minVolume":I
    const/16 v3, 0xf

    .line 321
    .local v3, "maxVolume":I
    if-lez p2, :cond_3

    const/16 v5, 0xf

    if-eq p2, v5, :cond_3

    .line 322
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->-get10(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v5

    .line 321
    if-eqz v5, :cond_3

    .line 325
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->-get15(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v6}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 326
    .local v2, "generalProfilekey":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-virtual {v5, v2, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    .line 327
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-virtual {v5, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;)V

    .line 328
    const-string/jumbo v5, "AudioProfileService"

    const-string/jumbo v6, "onRingerVolumeChanged in outdoor profile, so change to general profile!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 335
    .end local v2    # "generalProfilekey":Ljava/lang/String;
    .end local v3    # "maxVolume":I
    .end local v4    # "minVolume":I
    :cond_3
    :pswitch_1
    iget v5, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerVolume:I

    if-eq v5, p2, :cond_2

    .line 338
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->-get4(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, p2, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->notifyRingerVolumeChanged(IILjava/lang/String;)V

    .line 339
    iget-object v5, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v6, p0, Lcom/mediatek/audioprofile/AudioProfileService$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->-get4(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    .line 340
    const-string/jumbo v5, "AudioProfileService"

    const-string/jumbo v6, "onRingerVolumeChanged: ringer volume changed, sysn to active profile except silent, meeting and outdoor!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
