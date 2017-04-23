.class Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BssidStatistics"
.end annotation


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private mBssidAvoidTimeMax:J

.field private mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

.field private mEntriesSize:I

.field private mGoodLinkTargetCount:I

.field private mGoodLinkTargetIndex:I

.field private mGoodLinkTargetRssi:I

.field private mLastTimeGood:J

.field private mLastTimePoor:J

.field private mLastTimeSample:J

.field private mRssiBase:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    return-wide p1
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1301
    iput-object p2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    .line 1302
    const/16 v1, -0x69

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    .line 1303
    const/16 v1, 0x3d

    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    .line 1304
    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    new-array v1, v1, [Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    .line 1305
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v0, v1, :cond_0

    .line 1306
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    new-instance v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-direct {v2, p1, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;D)V

    aput-object v2, v1, v0

    .line 1305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1300
    :cond_0
    return-void
.end method


# virtual methods
.method public findRssiTarget(IID)I
    .locals 17
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "threshold"    # D

    .prologue
    .line 1435
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int p1, p1, v9

    .line 1436
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int p2, p2, v9

    .line 1437
    const/4 v4, 0x0

    .line 1438
    .local v4, "emptyCount":I
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    const/4 v2, 0x1

    .line 1440
    .local v2, "d":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v10, "findRssiTarget start"

    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1442
    move/from16 v5, p1

    .local v5, "i":I
    :goto_1
    move/from16 v0, p2

    if-eq v5, v0, :cond_5

    .line 1444
    if-ltz v5, :cond_2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-ge v5, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v9, v9, v5

    invoke-static {v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get1(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_2

    .line 1445
    const/4 v4, 0x0

    .line 1446
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v8, v9, v5

    .line 1447
    .local v8, "rssi":I
    new-instance v3, Ljava/text/DecimalFormat;

    const-string/jumbo v9, "#.##"

    invoke-direct {v3, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1448
    .local v3, "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] rssi="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " threshold="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1449
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v12, v12, p3

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    .line 1448
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1449
    const-string/jumbo v11, "% value="

    .line 1448
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1450
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v11, v11, v5

    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    .line 1448
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1450
    const-string/jumbo v11, "% volume="

    .line 1448
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1451
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v11, v11, v5

    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get1(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    .line 1448
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v9, v9, v5

    invoke-static {v9}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v10

    cmpg-double v9, v10, p3

    if-gez v9, :cond_4

    .line 1456
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1457
    new-instance v3, Ljava/text/DecimalFormat;

    .end local v3    # "df":Ljava/text/DecimalFormat;
    const-string/jumbo v9, "#.##"

    invoke-direct {v3, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1458
    .restart local v3    # "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Scan target found: rssi="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " threshold="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1459
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v12, v12, p3

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    .line 1458
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1459
    const-string/jumbo v11, "% value="

    .line 1458
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1460
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v11, v11, v5

    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    .line 1458
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1460
    const-string/jumbo v11, "% volume="

    .line 1458
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1461
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v11, v11, v5

    invoke-static {v11}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get1(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    .line 1458
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1463
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v10, "findRssiTarget end"

    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1464
    return v8

    .line 1438
    .end local v2    # "d":I
    .end local v3    # "df":Ljava/text/DecimalFormat;
    .end local v5    # "i":I
    .end local v8    # "rssi":I
    :cond_1
    const/4 v2, -0x1

    .restart local v2    # "d":I
    goto/16 :goto_0

    .line 1466
    .restart local v5    # "i":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x3

    if-lt v4, v9, :cond_4

    .line 1468
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v8, v9, v5

    .line 1469
    .restart local v8    # "rssi":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->presetLoss(I)D

    move-result-wide v6

    .line 1470
    .local v6, "lossPreset":D
    new-instance v3, Ljava/text/DecimalFormat;

    const-string/jumbo v9, "#.##"

    invoke-direct {v3, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1471
    .restart local v3    # "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] rssi="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " threshold="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1472
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v12, v12, p3

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    .line 1471
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1472
    const-string/jumbo v11, "% value="

    .line 1471
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1473
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v6

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    .line 1471
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1473
    const-string/jumbo v11, "% volume=preset"

    .line 1471
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1475
    cmpg-double v9, v6, p3

    if-gez v9, :cond_4

    .line 1476
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1477
    new-instance v3, Ljava/text/DecimalFormat;

    .end local v3    # "df":Ljava/text/DecimalFormat;
    const-string/jumbo v9, "#.##"

    invoke-direct {v3, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1478
    .restart local v3    # "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Scan target found: rssi="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " threshold="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1479
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v12, v12, p3

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    .line 1478
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1479
    const-string/jumbo v11, "% value="

    .line 1478
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1480
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v6

    invoke-virtual {v3, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    .line 1478
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1480
    const-string/jumbo v11, "% volume=preset"

    .line 1478
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1482
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v10, "findRssiTarget end"

    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1483
    return v8

    .line 1442
    .end local v3    # "df":Ljava/text/DecimalFormat;
    .end local v6    # "lossPreset":D
    .end local v8    # "rssi":I
    :cond_4
    add-int/2addr v5, v2

    goto/16 :goto_1

    .line 1486
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v10, "findRssiTarget end"

    invoke-static {v9, v10}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1488
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    add-int v9, v9, p2

    return v9
.end method

.method public newLinkDetected()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1403
    iget-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 1404
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Previous avoidance still in effect, rssi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1405
    const-string/jumbo v5, " count="

    .line 1404
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1405
    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    .line 1404
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1406
    :cond_0
    return-void

    .line 1410
    :cond_1
    const/16 v0, -0x69

    .line 1411
    .local v0, "from":I
    const/16 v2, -0x2d

    .line 1412
    .local v2, "to":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get9(Lcom/android/server/wifi/WifiWatchdogStateMachine;)D

    move-result-wide v4

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v3

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1413
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    .line 1414
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v3

    aget-object v3, v3, v8

    iget v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    .line 1415
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "New link verifying target set, rssi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1416
    iget v5, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    .line 1415
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1418
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-boolean v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    if-eqz v3, :cond_3

    .line 1420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "newLinkDetected link speed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get14(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "target  rssi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1421
    .local v1, "ss":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get5(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    .line 1422
    iget-object v3, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v3, v3, Lcom/android/server/wifi/WifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1401
    .end local v1    # "ss":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public poorLinkDetected(I)Z
    .locals 20
    .param p1, "rssi"    # I

    .prologue
    .line 1354
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Poor link detected, rssi="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1356
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1357
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    move-wide/from16 v18, v0

    sub-long v8, v12, v18

    .line 1358
    .local v8, "lastGood":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    move-wide/from16 v18, v0

    sub-long v10, v12, v18

    .line 1361
    .local v10, "lastPoor":J
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    move/from16 v17, v0

    if-lez v17, :cond_1

    .line 1362
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get1()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->REDUCE_TIME_MS:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v17, v10, v18

    if-ltz v17, :cond_1

    .line 1363
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    goto :goto_0

    .line 1364
    :cond_1
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get1()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->SAMPLE_COUNT:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    .line 1367
    add-int/lit8 v6, p1, 0x3

    .line 1368
    .local v6, "from":I
    add-int/lit8 v16, p1, 0x14

    .line 1369
    .local v16, "to":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get9(Lcom/android/server/wifi/WifiWatchdogStateMachine;)D

    move-result-wide v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1370
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    move/from16 v17, v0

    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get1()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->RSSI_ADJ_DBM:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    .line 1371
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    move/from16 v17, v0

    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get1()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    .line 1374
    :cond_2
    const/4 v7, 0x0

    .local v7, "p":I
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v14, v17, -0x1

    .line 1375
    .local v14, "pmax":I
    :goto_1
    if-ge v7, v14, :cond_3

    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v17

    add-int/lit8 v18, v7, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->MIN_RSSI_DBM:I

    move/from16 v17, v0

    move/from16 v0, p1

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1376
    :cond_3
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get2()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    move-result-object v17

    aget-object v17, v17, v7

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v4, v0

    .line 1379
    .local v4, "avoidMax":J
    const-wide/16 v18, 0x0

    cmp-long v17, v4, v18

    if-gtz v17, :cond_4

    const/16 v17, 0x0

    return v17

    .line 1382
    :cond_4
    add-long v18, v12, v4

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    .line 1384
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "goodRssi="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " goodCount="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1385
    const-string/jumbo v19, " lastGood="

    .line 1384
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1385
    const-string/jumbo v19, " lastPoor="

    .line 1384
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1385
    const-string/jumbo v19, " avoidMax="

    .line 1384
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1388
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1389
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "poorLinkDetected link speed="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get14(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " target rssi="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1390
    .local v15, "ss":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get5(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v15, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wifi/WifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 1395
    .end local v15    # "ss":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x1

    return v17
.end method

.method public presetLoss(I)D
    .locals 11
    .param p1, "rssi"    # I

    .prologue
    const/16 v10, 0x5a

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1335
    const/16 v2, -0x5a

    if-gt p1, v2, :cond_0

    return-wide v8

    .line 1336
    :cond_0
    if-lez p1, :cond_1

    const-wide/16 v2, 0x0

    return-wide v2

    .line 1338
    :cond_1
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get28()[D

    move-result-object v2

    if-nez v2, :cond_2

    .line 1340
    const/16 v1, 0x5a

    .line 1341
    .local v1, "size":I
    new-array v2, v10, [D

    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set11([D)[D

    .line 1342
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_2

    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get28()[D

    move-result-object v2

    rsub-int/lit8 v3, v0, 0x5a

    int-to-double v4, v3

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double v4, v8, v4

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1344
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get28()[D

    move-result-object v2

    neg-int v3, p1

    aget-wide v2, v2, v3

    return-wide v2
.end method

.method public updateLoss(IDI)V
    .locals 8
    .param p1, "rssi"    # I
    .param p2, "value"    # D
    .param p4, "volume"    # I

    .prologue
    .line 1317
    if-gtz p4, :cond_0

    return-void

    .line 1318
    :cond_0
    iget v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    sub-int v1, p1, v2

    .line 1319
    .local v1, "index":I
    if-ltz v1, :cond_1

    iget v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    if-lt v1, v2, :cond_2

    :cond_1
    return-void

    .line 1320
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v2, v2, v1

    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    .line 1321
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1322
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "#.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1323
    .local v0, "df":Ljava/text/DecimalFormat;
    iget-object v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cache updated: loss["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1324
    const-string/jumbo v4, "% volume="

    .line 1323
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1324
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get1(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 1323
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1316
    .end local v0    # "df":Ljava/text/DecimalFormat;
    :cond_3
    return-void
.end method
