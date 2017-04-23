.class Lcom/android/server/storage/DeviceStorageMonitorService$3;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"

# interfaces
.implements Lcom/android/server/storage/DeviceStorageMonitorInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkMemory()V
    .locals 4

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    .line 574
    return-void
.end method

.method public getMemoryLowThreshold()J
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    return-wide v0
.end method

.method public isMemoryCriticalLow()Z
    .locals 8

    .prologue
    .line 591
    const-wide/16 v2, 0x0

    .line 593
    .local v2, "tempFreeMem":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get9(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/os/StatFs;

    move-result-object v1

    invoke-static {}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get0()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get9(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/os/StatFs;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    .line 595
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get9(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/os/StatFs;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v6, v1

    .line 594
    mul-long v2, v4, v6

    .line 601
    :goto_0
    const-wide/32 v4, 0xa00000

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 602
    const/4 v1, 0x1

    return v1

    .line 596
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get6(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v2

    .line 599
    const-string/jumbo v1, "DeviceStorageMonitorService"

    const-string/jumbo v4, "Failed to get current free storage size."

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isMemoryLow()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 581
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-boolean v1, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get8(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method
