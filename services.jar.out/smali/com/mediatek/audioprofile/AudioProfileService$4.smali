.class Lcom/mediatek/audioprofile/AudioProfileService$4;
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

    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->-com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->-com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

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
    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->-com_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues:[I

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
    .line 386
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 21
    .param p1, "selfChange"    # Z

    .prologue
    .line 389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-get4(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v20

    monitor-enter v20

    .line 390
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-get10(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    move-result-object v3

    move/from16 v0, p1

    invoke-interface {v3, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->onRingtoneChange(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v20

    .line 391
    return-void

    .line 394
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-get4(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 395
    .local v2, "activeScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->-get4(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v17

    .line 397
    .local v17, "activeState":Lcom/mediatek/audioprofile/AudioProfileState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-get7(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "ringtone"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->-get24(Lcom/mediatek/audioprofile/AudioProfileService;)I

    move-result v6

    .line 396
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 398
    .local v19, "uriString":Ljava/lang/String;
    if-nez v19, :cond_1

    const/4 v8, 0x0

    .line 401
    :goto_0
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    if-nez v3, :cond_2

    if-eqz v8, :cond_2

    .line 400
    const/16 v18, 0x1

    .line 404
    .local v18, "isPassiveChange":Z
    :goto_1
    const-string/jumbo v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ringtone changed, mResetFlag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileService;->-get18(Lcom/mediatek/audioprofile/AudioProfileService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 405
    const-string/jumbo v6, "  isPassiveChange = "

    .line 404
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 406
    const-string/jumbo v6, " uriString = "

    .line 404
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileService$4;->-getcom_mediatek_audioprofile_AudioProfileManager$ScenarioSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setShouldSyncToSystemFlag(IZ)V

    .line 451
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v5, "Ringtone changed in silent profile, sync to system if switch to last active profile."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit v20

    .line 388
    return-void

    .line 398
    .end local v18    # "isPassiveChange":Z
    :cond_1
    :try_start_2
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .local v8, "systemUri":Landroid/net/Uri;
    goto :goto_0

    .line 402
    .end local v8    # "systemUri":Landroid/net/Uri;
    :cond_2
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    if-eqz v3, :cond_4

    .line 403
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    invoke-virtual {v3, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v18, 0x0

    .restart local v18    # "isPassiveChange":Z
    goto :goto_1

    .end local v18    # "isPassiveChange":Z
    :cond_3
    const/16 v18, 0x1

    .restart local v18    # "isPassiveChange":Z
    goto :goto_1

    .line 402
    .end local v18    # "isPassiveChange":Z
    :cond_4
    const/16 v18, 0x0

    .restart local v18    # "isPassiveChange":Z
    goto :goto_1

    .line 410
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-get10(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->shouldSyncGeneralRingtoneToOutdoor()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 414
    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-get18(Lcom/mediatek/audioprofile/AudioProfileService;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 429
    :cond_5
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v5, "Ringtone changed by itself, do nothing!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 389
    .end local v2    # "activeScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v17    # "activeState":Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v18    # "isPassiveChange":Z
    .end local v19    # "uriString":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v20

    throw v3

    .line 415
    .restart local v2    # "activeScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .restart local v17    # "activeState":Lcom/mediatek/audioprofile/AudioProfileState;
    .restart local v18    # "isPassiveChange":Z
    .restart local v19    # "uriString":Ljava/lang/String;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-get15(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v3

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 416
    .local v4, "generalKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-get15(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v3

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 417
    .local v10, "outdoorKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->-get21(Lcom/mediatek/audioprofile/AudioProfileService;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iput-object v8, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->-get21(Lcom/mediatek/audioprofile/AudioProfileService;)J

    move-result-wide v6

    invoke-virtual {v3, v10, v6, v7}, Lcom/mediatek/audioprofile/AudioProfileService;->getProfileState(Ljava/lang/String;J)Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v3

    iput-object v8, v3, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    .line 421
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileService;->-get21(Lcom/mediatek/audioprofile/AudioProfileService;)J

    move-result-wide v6

    .line 420
    const/4 v5, 0x1

    .line 419
    invoke-static/range {v3 .. v8}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap3(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-get21(Lcom/mediatek/audioprofile/AudioProfileService;)J

    move-result-wide v12

    .line 423
    const/4 v11, 0x1

    move-object v14, v8

    .line 422
    invoke-static/range {v9 .. v14}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap3(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 425
    const-string/jumbo v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ringtone changed by other app in non-silent profile, synchronize to active profile: new uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 437
    .end local v4    # "generalKey":Ljava/lang/String;
    .end local v10    # "outdoorKey":Ljava/lang/String;
    :cond_7
    :pswitch_1
    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-get18(Lcom/mediatek/audioprofile/AudioProfileService;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 445
    :cond_8
    const-string/jumbo v3, "AudioProfileService"

    const-string/jumbo v5, "Ringtone changed by itself, do nothing!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 438
    :cond_9
    move-object/from16 v0, v17

    iput-object v8, v0, Lcom/mediatek/audioprofile/AudioProfileState;->mRingerStream:Landroid/net/Uri;

    .line 439
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-get4(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v12

    .line 441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/audioprofile/AudioProfileService$4;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->-get21(Lcom/mediatek/audioprofile/AudioProfileService;)J

    move-result-wide v14

    .line 440
    const/4 v13, 0x1

    move-object/from16 v16, v8

    .line 439
    invoke-static/range {v11 .. v16}, Lcom/mediatek/audioprofile/AudioProfileService;->-wrap3(Lcom/mediatek/audioprofile/AudioProfileService;Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 442
    const-string/jumbo v3, "AudioProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ringtone changed by other app in non-silent profile, synchronize to active profile: new uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
