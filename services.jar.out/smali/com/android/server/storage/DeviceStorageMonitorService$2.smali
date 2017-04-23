.class Lcom/android/server/storage/DeviceStorageMonitorService$2;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "DeviceStorageMonitorService.java"


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
    .line 463
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 6
    .param p1, "stats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-static {v0, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->-set0(Lcom/android/server/storage/DeviceStorageMonitorService;J)J

    .line 466
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-static {v0, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->-set1(Lcom/android/server/storage/DeviceStorageMonitorService;J)J

    .line 467
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-static {v0, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->-set3(Lcom/android/server/storage/DeviceStorageMonitorService;J)J

    .line 468
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get1(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get2(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get4(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->-set7(Lcom/android/server/storage/DeviceStorageMonitorService;J)J

    .line 469
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->-set5(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    .line 470
    const-string/jumbo v0, "DeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mStatsObserver  mCacheSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get1(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mCodeSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get2(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 471
    const-string/jumbo v2, "mDataSize="

    .line 470
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 471
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get4(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v2

    .line 470
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 471
    const-string/jumbo v2, "mTotalSize="

    .line 470
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 471
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get10(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v2

    .line 470
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-void
.end method
