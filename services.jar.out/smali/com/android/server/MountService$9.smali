.class Lcom/android/server/MountService$9;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->formatPhoneStorageAndExternalSDCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$tempVolumes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;

    .prologue
    .line 4206
    .local p2, "val$tempVolumes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/VolumeInfo;>;"
    iput-object p1, p0, Lcom/android/server/MountService$9;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$9;->val$tempVolumes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x1e

    const/4 v10, 0x1

    .line 4208
    invoke-static {}, Lcom/android/server/MountService;->-get0()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 4209
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService$9;->this$0:Lcom/android/server/MountService;

    invoke-static {v6}, Lcom/android/server/MountService;->-get7(Lcom/android/server/MountService;)I

    move-result v4

    .line 4210
    .local v4, "userId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/MountService$9;->val$tempVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 4211
    iget-object v6, p0, Lcom/android/server/MountService$9;->val$tempVolumes:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 4214
    .local v5, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    if-ne v6, v10, :cond_1

    .line 4215
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 4216
    const-string/jumbo v6, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "use partition public to format, volume= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4217
    iget-object v6, p0, Lcom/android/server/MountService$9;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/MountService;->partitionPublic(Ljava/lang/String;)V

    .line 4218
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 4219
    iget-object v6, p0, Lcom/android/server/MountService$9;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/MountService;->forgetVolume(Ljava/lang/String;)V

    .line 4210
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4225
    :cond_1
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 4226
    const-string/jumbo v6, "MountService"

    const-string/jumbo v8, "volume is checking, wait.."

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4227
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v11, :cond_2

    .line 4229
    const-wide/16 v8, 0x3e8

    :try_start_1
    invoke-static {v8, v9}, Lcom/android/server/MountService$9;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4233
    :goto_3
    :try_start_2
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v6

    if-eq v6, v10, :cond_5

    .line 4234
    const-string/jumbo v6, "MountService"

    const-string/jumbo v8, "volume wait checking done!"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4240
    .end local v3    # "j":I
    :cond_2
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_3

    .line 4241
    const-string/jumbo v6, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "volume is mounted, unmount firstly, volume="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4243
    iget-object v6, p0, Lcom/android/server/MountService$9;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/MountService;->unmount(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4244
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_4
    if-ge v3, v11, :cond_3

    .line 4246
    const-wide/16 v8, 0x3e8

    :try_start_3
    invoke-static {v8, v9}, Lcom/android/server/MountService$9;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4250
    :goto_5
    :try_start_4
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v6

    if-nez v6, :cond_6

    .line 4251
    const-string/jumbo v6, "MountService"

    const-string/jumbo v8, "wait unmount done!"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4257
    .end local v3    # "j":I
    :cond_3
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v6

    const/16 v8, 0x9

    if-ne v6, v8, :cond_4

    .line 4258
    const-string/jumbo v6, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "volume is shared, unshared firstly volume="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4260
    iget-object v6, p0, Lcom/android/server/MountService$9;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Lcom/android/server/MountService;->-wrap6(Lcom/android/server/MountService;Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4261
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_6
    if-ge v3, v11, :cond_4

    .line 4263
    const-wide/16 v8, 0x3e8

    :try_start_5
    invoke-static {v8, v9}, Lcom/android/server/MountService$9;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4267
    :goto_7
    :try_start_6
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v6

    if-nez v6, :cond_7

    .line 4268
    const-string/jumbo v6, "MountService"

    const-string/jumbo v8, "wait unshare done!"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4274
    .end local v3    # "j":I
    :cond_4
    iget-object v6, p0, Lcom/android/server/MountService$9;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/MountService;->format(Ljava/lang/String;)V

    .line 4275
    const-string/jumbo v6, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "format Succeed! volume="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 4208
    .end local v1    # "i":I
    .end local v4    # "userId":I
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 4230
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "userId":I
    .restart local v5    # "vol":Landroid/os/storage/VolumeInfo;
    :catch_0
    move-exception v0

    .line 4231
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_7
    const-string/jumbo v6, "MountService"

    const-string/jumbo v8, "Exception when wait!"

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 4227
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 4247
    :catch_1
    move-exception v0

    .line 4248
    .restart local v0    # "ex":Ljava/lang/InterruptedException;
    const-string/jumbo v6, "MountService"

    const-string/jumbo v8, "Exception when wait!"

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 4244
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 4264
    :catch_2
    move-exception v0

    .line 4265
    .restart local v0    # "ex":Ljava/lang/InterruptedException;
    const-string/jumbo v6, "MountService"

    const-string/jumbo v8, "Exception when wait!"

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 4261
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 4279
    .end local v3    # "j":I
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_8
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.mediatek.ppl.MOUNT_SERVICE_WIPE_RESPONSE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4280
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/MountService$9;->this$0:Lcom/android/server/MountService;

    invoke-static {v6}, Lcom/android/server/MountService;->-get5(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4281
    const-string/jumbo v6, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Privacy Protection wipe: send "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v7

    .line 4207
    return-void
.end method
