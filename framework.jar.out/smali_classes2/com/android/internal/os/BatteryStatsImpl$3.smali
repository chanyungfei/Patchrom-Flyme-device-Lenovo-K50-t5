.class Lcom/android/internal/os/BatteryStatsImpl$3;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$cpuSpeedSteps:I

.field final synthetic val$cpuSpeeds:[J

.field final synthetic val$numWakelocksF:I


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;II[J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "val$numWakelocksF"    # I
    .param p3, "val$cpuSpeedSteps"    # I
    .param p4, "val$cpuSpeeds"    # [J

    .prologue
    .line 8032
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$numWakelocksF:I

    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$cpuSpeedSteps:I

    iput-object p4, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$cpuSpeeds:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidCpuTime(IJJJ)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "userTimeUs"    # J
    .param p4, "systemTimeUs"    # J
    .param p6, "powerMaUs"    # J

    .prologue
    .line 8036
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v4, p1}, Lcom/android/internal/os/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/internal/os/BatteryStatsImpl$Uid;

    move-result-object v2

    .line 8039
    .local v2, "u":Lcom/android/internal/os/BatteryStatsImpl$Uid;
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    add-long/2addr v4, p2

    iput-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuUserTimeUs:J

    .line 8040
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    add-long/2addr v4, p4

    iput-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl;->mTempTotalCpuSystemTimeUs:J

    .line 8042
    const/4 v1, 0x0

    .line 8052
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$numWakelocksF:I

    if-lez v3, :cond_0

    .line 8056
    const-wide/16 v4, 0x32

    mul-long/2addr v4, p2

    const-wide/16 v6, 0x64

    div-long p2, v4, v6

    .line 8057
    const-wide/16 v4, 0x32

    mul-long/2addr v4, p4

    const-wide/16 v6, 0x64

    div-long p4, v4, v6

    .line 8069
    :cond_0
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v3, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8070
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8071
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v3, p6, p7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8075
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$cpuSpeedSteps:I

    if-ge v0, v3, :cond_2

    .line 8076
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 8077
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v4, v3, v0

    .line 8079
    :cond_1
    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$cpuSpeeds:[J

    aget-wide v4, v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 8075
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8035
    :cond_2
    return-void
.end method
