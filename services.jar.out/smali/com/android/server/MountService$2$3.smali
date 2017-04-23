.class Lcom/android/server/MountService$2$3;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$2;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/MountService$2;

    .prologue
    .line 4111
    iput-object p1, p0, Lcom/android/server/MountService$2$3;->this$1:Lcom/android/server/MountService$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 4113
    iget-object v9, p0, Lcom/android/server/MountService$2$3;->this$1:Lcom/android/server/MountService$2;

    iget-object v9, v9, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v9, v10}, Lcom/android/server/MountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v8

    .line 4114
    .local v8, "volumes":[Landroid/os/storage/VolumeInfo;
    invoke-static {}, Lcom/android/server/MountService;->-get1()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 4115
    :try_start_0
    iget-object v9, p0, Lcom/android/server/MountService$2$3;->this$1:Lcom/android/server/MountService$2;

    iget-object v9, v9, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-static {v9}, Lcom/android/server/MountService;->-get7(Lcom/android/server/MountService;)I

    move-result v6

    .line 4116
    .local v6, "userId":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v8

    if-ge v4, v9, :cond_5

    .line 4117
    aget-object v7, v8, v4

    .line 4118
    .local v7, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4119
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    if-eqz v9, :cond_1

    .line 4120
    :cond_0
    const-string/jumbo v9, "MountService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "no need format, skip volume="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4116
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4124
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v9

    const/4 v11, 0x2

    if-ne v9, v11, :cond_4

    .line 4125
    iget-object v9, p0, Lcom/android/server/MountService$2$3;->this$1:Lcom/android/server/MountService$2;

    iget-object v9, v9, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/server/MountService;->unmount(Ljava/lang/String;)V

    .line 4127
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    const/16 v9, 0x14

    if-ge v5, v9, :cond_2

    .line 4128
    const-wide/16 v12, 0x3e8

    invoke-static {v12, v13}, Lcom/android/server/MountService$2$3;->sleep(J)V

    .line 4129
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v9

    if-nez v9, :cond_3

    .line 4130
    const-string/jumbo v9, "MountService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unmount Succeeded, volume="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4141
    .end local v5    # "j":I
    :cond_2
    :goto_3
    iget-object v9, p0, Lcom/android/server/MountService$2$3;->this$1:Lcom/android/server/MountService$2;

    iget-object v9, v9, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/server/MountService;->format(Ljava/lang/String;)V

    .line 4142
    const-string/jumbo v9, "MountService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "format Succeed! volume="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4143
    :catch_0
    move-exception v1

    .line 4144
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string/jumbo v9, "MountService"

    const-string/jumbo v11, "SD format exception"

    invoke-static {v9, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 4114
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "i":I
    .end local v6    # "userId":I
    .end local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 4127
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "userId":I
    .restart local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4135
    .end local v5    # "j":I
    :cond_4
    :try_start_3
    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v9

    const/16 v11, 0x9

    if-ne v9, v11, :cond_2

    .line 4136
    const-string/jumbo v9, "MountService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "volume is shared, unshared firstly, volume="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4138
    iget-object v9, p0, Lcom/android/server/MountService$2$3;->this$1:Lcom/android/server/MountService$2;

    iget-object v9, v9, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v9, v11, v12}, Lcom/android/server/MountService;->-wrap6(Lcom/android/server/MountService;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 4145
    :catch_1
    move-exception v0

    .line 4146
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string/jumbo v9, "MountService"

    const-string/jumbo v11, "SD format exception"

    invoke-static {v9, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 4149
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 4150
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v9, "MountService"

    const-string/jumbo v11, "SD format exception"

    invoke-static {v9, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 4147
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v3

    .line 4148
    .local v3, "e":Ljava/lang/SecurityException;
    const-string/jumbo v9, "MountService"

    const-string/jumbo v11, "SD format exception"

    invoke-static {v9, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .end local v3    # "e":Ljava/lang/SecurityException;
    .end local v7    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_5
    monitor-exit v10

    .line 4112
    return-void
.end method
