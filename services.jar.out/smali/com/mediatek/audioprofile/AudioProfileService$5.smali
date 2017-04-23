.class Lcom/mediatek/audioprofile/AudioProfileService$5;
.super Landroid/database/ContentObserver;
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

    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileService$5;->-com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileService$5;->-com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

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
    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileService$5;->-com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

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

.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/AudioProfileService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11
    .param p1, "selfChange"    # Z

    .prologue
    .line 465
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->-get4(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v8

    monitor-enter v8

    .line 466
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->-get10(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->onNotificationChange(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    monitor-exit v8

    .line 467
    return-void

    .line 469
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->-get4(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 470
    .local v0, "activeScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v9}, Lcom/mediatek/audioprofile/AudioProfileService;->-get4(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v1

    .line 472
    .local v1, "activeState":Lcom/mediatek/audioprofile/AudioProfileState;
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->-get7(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "notification_sound"

    iget-object v10, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v10}, Lcom/mediatek/audioprofile/AudioProfileService;->-get24(Lcom/mediatek/audioprofile/AudioProfileService;)I

    move-result v10

    .line 471
    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 473
    .local v6, "uriString":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 474
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileService;->SILENT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 477
    .local v5, "systemUri":Landroid/net/Uri;
    :goto_0
    iget-object v7, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-nez v7, :cond_2

    if-eqz v5, :cond_2

    .line 476
    const/4 v3, 0x1

    .line 480
    .local v3, "isPassiveChange":Z
    :goto_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService$5;->-getcom_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues()[I

    move-result-object v7

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    .line 524
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Lcom/mediatek/audioprofile/AudioProfileService;->setShouldSyncToSystemFlag(IZ)V

    .line 525
    const-string/jumbo v7, "AudioProfileService"

    const-string/jumbo v9, "Notification changed in silent profile, sync to system if switch to last active profile"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit v8

    .line 464
    return-void

    .line 474
    .end local v3    # "isPassiveChange":Z
    .end local v5    # "systemUri":Landroid/net/Uri;
    :cond_1
    :try_start_2
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .restart local v5    # "systemUri":Landroid/net/Uri;
    goto :goto_0

    .line 478
    :cond_2
    iget-object v7, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    if-eqz v7, :cond_4

    .line 479
    iget-object v7, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    invoke-virtual {v7, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v3, 0x0

    .restart local v3    # "isPassiveChange":Z
    goto :goto_1

    .end local v3    # "isPassiveChange":Z
    :cond_3
    const/4 v3, 0x1

    .restart local v3    # "isPassiveChange":Z
    goto :goto_1

    .line 478
    .end local v3    # "isPassiveChange":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isPassiveChange":Z
    goto :goto_1

    .line 483
    :pswitch_0
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->-get10(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    move-result-object v7

    invoke-interface {v7}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 487
    if-eqz v3, :cond_5

    .line 488
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->-get15(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v7

    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 489
    .local v2, "generalKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileService;->-get15(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v7

    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v9}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v9

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 490
    .local v4, "outdoorKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-virtual {v7, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iput-object v5, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 491
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-virtual {v7, v4}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v7

    iput-object v5, v7, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 492
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    .line 493
    const/4 v9, 0x2

    .line 492
    invoke-virtual {v7, v2, v9, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 495
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    .line 496
    const/4 v9, 0x2

    .line 495
    invoke-virtual {v7, v4, v9, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 498
    const-string/jumbo v7, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Notification changed by other app in non-silent profile, synchronize to active profile: new uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 465
    .end local v0    # "activeScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v1    # "activeState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v2    # "generalKey":Ljava/lang/String;
    .end local v3    # "isPassiveChange":Z
    .end local v4    # "outdoorKey":Ljava/lang/String;
    .end local v5    # "systemUri":Landroid/net/Uri;
    .end local v6    # "uriString":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 502
    .restart local v0    # "activeScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v1    # "activeState":Lcom/mediatek/audioprofile/AudioProfileState;
    .restart local v3    # "isPassiveChange":Z
    .restart local v5    # "systemUri":Landroid/net/Uri;
    .restart local v6    # "uriString":Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string/jumbo v7, "AudioProfileService"

    const-string/jumbo v9, "Notification changed by itself, do nothing!"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 510
    :cond_6
    :pswitch_1
    if-eqz v3, :cond_7

    .line 511
    iput-object v5, v1, Lcom/mediatek/audioprofile/AudioProfileState;->mNotificationStream:Landroid/net/Uri;

    .line 512
    iget-object v7, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v9, p0, Lcom/mediatek/audioprofile/AudioProfileService$5;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v9}, Lcom/mediatek/audioprofile/AudioProfileService;->-get4(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v9

    .line 513
    const/4 v10, 0x2

    .line 512
    invoke-virtual {v7, v9, v10, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->persistRingtoneUriToDatabase(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 515
    const-string/jumbo v7, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Notification changed by other app in non-silent profile, synchronize to active profile: new uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 519
    :cond_7
    const-string/jumbo v7, "AudioProfileService"

    const-string/jumbo v9, "Notification changed by itself, do nothing!"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 480
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
