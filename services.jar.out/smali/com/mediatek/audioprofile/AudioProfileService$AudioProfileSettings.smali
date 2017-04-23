.class final Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;
.super Ljava/lang/Object;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AudioProfileSettings"
.end annotation


# static fields
.field private static final AUDIO_PROFILE_DIR:Ljava/lang/String; = "audio_profile"

.field private static final DATAS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILE:Ljava/lang/String; = "settings.ini"

.field private static final PROFILE_MIDDLE_CONTENT:Ljava/lang/String; = "]["

.field private static final PROFILE_PREFIX_CONTENT:Ljava/lang/String; = "{["

.field private static final PROFILE_SUFFIX_CONTENT:Ljava/lang/String; = "]}"

.field private static final SYSTEM_DIR:Ljava/lang/String; = "system"

.field private static sInstance:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;


# instance fields
.field private mCurrentUser:I

.field private mFile:Lcom/android/internal/os/AtomicFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3919
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->sInstance:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    .line 3924
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->DATAS:Ljava/util/Map;

    .line 3917
    return-void
.end method

.method private constructor <init>(I)V
    .locals 26
    .param p1, "userId"    # I

    .prologue
    .line 3930
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3923
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->mFile:Lcom/android/internal/os/AtomicFile;

    .line 3928
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->mCurrentUser:I

    .line 3931
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->mCurrentUser:I

    .line 3932
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    .line 3933
    .local v5, "directory":Ljava/io/File;
    new-instance v21, Ljava/io/File;

    const-string/jumbo v23, "system"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3934
    .local v21, "systemDir":Ljava/io/File;
    new-instance v20, Ljava/io/File;

    const-string/jumbo v23, "audio_profile"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3935
    .local v20, "syncDir":Ljava/io/File;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->mCurrentUser:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3936
    .local v18, "realFile":Ljava/io/File;
    new-instance v23, Lcom/android/internal/os/AtomicFile;

    new-instance v24, Ljava/io/File;

    const-string/jumbo v25, "settings.ini"

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct/range {v23 .. v24}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->mFile:Lcom/android/internal/os/AtomicFile;

    .line 3937
    sget-object v23, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->DATAS:Ljava/util/Map;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->clear()V

    .line 3938
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->isFileExisted()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 3939
    const/4 v10, 0x0

    .line 3941
    .local v10, "is":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->mFile:Lcom/android/internal/os/AtomicFile;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10

    .line 3942
    .local v10, "is":Ljava/io/InputStream;
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    move-object/from16 v0, v23

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3943
    .local v17, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 3944
    :cond_0
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "content":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 3945
    const-string/jumbo v23, "AudioProfileService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "AudioProfileSettings() content = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    const-string/jumbo v23, ""

    move-object/from16 v0, v23

    if-eq v3, v0, :cond_0

    .line 3949
    const/16 v16, 0x2

    .line 3950
    .local v16, "posOffset":I
    const-string/jumbo v23, "{["

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    .line 3951
    .local v19, "startPos":I
    const-string/jumbo v23, "]["

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 3952
    .local v12, "middlePos":I
    const-string/jumbo v23, "]}"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 3953
    .local v8, "endPos":I
    if-ltz v19, :cond_0

    .line 3954
    move/from16 v0, v19

    if-le v12, v0, :cond_0

    .line 3955
    move/from16 v0, v19

    if-le v8, v0, :cond_0

    .line 3956
    if-le v8, v12, :cond_0

    .line 3959
    add-int/lit8 v23, v19, 0x2

    move/from16 v0, v23

    invoke-virtual {v3, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 3960
    .local v11, "key":Ljava/lang/String;
    add-int/lit8 v23, v12, 0x2

    move/from16 v0, v23

    invoke-virtual {v3, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 3962
    .local v22, "value":Ljava/lang/String;
    sget-object v23, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->DATAS:Ljava/util/Map;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3964
    .end local v3    # "content":Ljava/lang/String;
    .end local v8    # "endPos":I
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "middlePos":I
    .end local v16    # "posOffset":I
    .end local v17    # "reader":Ljava/io/BufferedReader;
    .end local v19    # "startPos":I
    .end local v22    # "value":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 3965
    .local v6, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3968
    if-eqz v10, :cond_1

    .line 3969
    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3970
    .end local v6    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v10, 0x0

    .line 3930
    :cond_1
    :goto_2
    return-void

    .line 3968
    .restart local v3    # "content":Ljava/lang/String;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v17    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v10, :cond_1

    .line 3969
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 3972
    :catch_1
    move-exception v7

    .line 3973
    .local v7, "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3972
    .end local v3    # "content":Ljava/lang/String;
    .end local v7    # "e1":Ljava/io/IOException;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 3973
    .restart local v7    # "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3966
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v23

    .line 3968
    if-eqz v10, :cond_3

    .line 3969
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3970
    const/4 v10, 0x0

    .line 3966
    :cond_3
    :goto_3
    throw v23

    .line 3972
    :catch_3
    move-exception v7

    .line 3973
    .restart local v7    # "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 3977
    .end local v7    # "e1":Ljava/io/IOException;
    :cond_4
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_5

    .line 3978
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdir()Z

    move-result v15

    .line 3979
    .local v15, "mkSystemDirSuccess":Z
    const-string/jumbo v23, "AudioProfileService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "AudioProfileSettings() mkSystemDirSuccess = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3981
    .end local v15    # "mkSystemDirSuccess":Z
    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_6

    .line 3982
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdir()Z

    move-result v14

    .line 3983
    .local v14, "mkSyncDirSuccess":Z
    const-string/jumbo v23, "AudioProfileService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "AudioProfileSettings() mkSyncDirSuccess = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    .end local v14    # "mkSyncDirSuccess":Z
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_7

    .line 3986
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    move-result v13

    .line 3987
    .local v13, "mkRealFileSuccess":Z
    const-string/jumbo v23, "AudioProfileService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "AudioProfileSettings() mkRealFileSuccess = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3989
    .end local v13    # "mkRealFileSuccess":Z
    :cond_7
    new-instance v9, Ljava/io/File;

    const-string/jumbo v23, "settings.ini"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3990
    .local v9, "file":Ljava/io/File;
    const/4 v4, 0x1

    .line 3992
    .local v4, "createFile":Z
    :try_start_5
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v4

    .line 3997
    .end local v4    # "createFile":Z
    :goto_4
    const-string/jumbo v23, "AudioProfileService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "AudioProfileSettings() createFile = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3998
    new-instance v23, Lcom/android/internal/os/AtomicFile;

    move-object/from16 v0, v23

    invoke-direct {v0, v9}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->mFile:Lcom/android/internal/os/AtomicFile;

    goto/16 :goto_2

    .line 3993
    .restart local v4    # "createFile":Z
    :catch_4
    move-exception v6

    .line 3994
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 3995
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public static getInstance(I)Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 4003
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->sInstance:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    if-nez v0, :cond_0

    .line 4004
    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;-><init>(I)V

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->sInstance:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    .line 4006
    :cond_0
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->sInstance:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    iget v0, v0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->mCurrentUser:I

    if-eq v0, p0, :cond_1

    .line 4007
    new-instance v0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;-><init>(I)V

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->sInstance:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    .line 4009
    :cond_1
    sget-object v0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->sInstance:Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;

    return-object v0
.end method

.method private isFileExisted()Z
    .locals 4

    .prologue
    .line 4013
    iget-object v1, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->mFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v1}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 4014
    .local v0, "fileExists":Z
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFileExisted() fileExists = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4015
    return v0
.end method


# virtual methods
.method protected get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 4058
    sget-object v1, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->DATAS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4059
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4060
    move-object v0, p2

    .line 4062
    :cond_0
    const-string/jumbo v1, "AudioProfileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get() key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    return-object v0
.end method

.method protected getAllKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4067
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4068
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->DATAS:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4069
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4071
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method protected getAllValues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4075
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4076
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->DATAS:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4077
    .local v1, "value":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4079
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method protected put(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 4019
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4020
    :cond_0
    const-string/jumbo v8, "AudioProfileService"

    const-string/jumbo v9, "put() key is null or value is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    return v11

    .line 4023
    :cond_1
    const-string/jumbo v8, "AudioProfileService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "put() key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " , value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4024
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->isFileExisted()Z

    move-result v8

    if-nez v8, :cond_2

    .line 4025
    return v11

    .line 4027
    :cond_2
    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->DATAS:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4028
    .local v5, "oldValue":Ljava/lang/String;
    if-ne v5, p2, :cond_3

    .line 4029
    const/4 v8, 0x1

    return v8

    .line 4031
    :cond_3
    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->DATAS:Ljava/util/Map;

    invoke-interface {v8, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4032
    const/4 v7, 0x1

    .line 4033
    .local v7, "writeSucced":Z
    const/4 v4, 0x0

    .line 4035
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->mFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v8}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    .line 4036
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/PrintStream;

    invoke-direct {v6, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 4037
    .local v6, "ps":Ljava/io/PrintStream;
    sget-object v8, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->DATAS:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4038
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "{["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4039
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 4038
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4040
    const-string/jumbo v9, "]["

    .line 4038
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 4041
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 4038
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 4042
    const-string/jumbo v9, "]}"

    .line 4038
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4044
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4049
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "ps":Ljava/io/PrintStream;
    :catch_0
    move-exception v1

    .line 4050
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v8, "AudioProfileService"

    const-string/jumbo v9, "put() fail"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4051
    const/4 v7, 0x0

    .line 4053
    return v7

    .line 4046
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "entry$iterator":Ljava/util/Iterator;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "ps":Ljava/io/PrintStream;
    :cond_4
    :try_start_2
    invoke-virtual {v6}, Ljava/io/PrintStream;->flush()V

    .line 4047
    iget-object v8, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->mFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v8, v4}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 4048
    const-string/jumbo v8, "AudioProfileService"

    const-string/jumbo v9, "put() success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4053
    return v7

    .line 4052
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "ps":Ljava/io/PrintStream;
    :catchall_0
    move-exception v8

    .line 4053
    return v7
.end method

.method protected remove(Ljava/util/List;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 4083
    if-nez p1, :cond_0

    .line 4084
    return v12

    .line 4086
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    .line 4087
    .local v9, "size":I
    if-gtz v9, :cond_1

    .line 4088
    return v12

    .line 4090
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->isFileExisted()Z

    move-result v11

    if-nez v11, :cond_2

    .line 4091
    return v12

    .line 4093
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4094
    .local v5, "key":Ljava/lang/String;
    sget-object v11, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->DATAS:Ljava/util/Map;

    invoke-interface {v11, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .local v10, "value":Ljava/lang/String;
    goto :goto_0

    .line 4097
    .end local v5    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x1

    .line 4098
    .local v8, "remove":Z
    const/4 v4, 0x0

    .line 4100
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v11, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->mFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v11}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    .line 4101
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/PrintStream;

    invoke-direct {v7, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 4102
    .local v7, "ps":Ljava/io/PrintStream;
    sget-object v11, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->DATAS:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4103
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "{["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 4104
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 4103
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4105
    const-string/jumbo v12, "]["

    .line 4103
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 4106
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 4103
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 4107
    const-string/jumbo v12, "]}"

    .line 4103
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4108
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 4112
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "ps":Ljava/io/PrintStream;
    :catch_0
    move-exception v1

    .line 4113
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v11, "AudioProfileService"

    const-string/jumbo v12, "remove() fail"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4114
    const/4 v8, 0x0

    .line 4116
    return v8

    .line 4110
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "entry$iterator":Ljava/util/Iterator;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "ps":Ljava/io/PrintStream;
    :cond_4
    :try_start_2
    invoke-virtual {v7}, Ljava/io/PrintStream;->flush()V

    .line 4111
    iget-object v11, p0, Lcom/mediatek/audioprofile/AudioProfileService$AudioProfileSettings;->mFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v11, v4}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4116
    return v8

    .line 4115
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "ps":Ljava/io/PrintStream;
    :catchall_0
    move-exception v11

    .line 4116
    return v8
.end method
