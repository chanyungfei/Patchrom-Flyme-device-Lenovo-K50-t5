.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .prologue
    .line 2748
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 2750
    const-string/jumbo v0, "AlarmManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2748
    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 2755
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2762
    .local v3, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    const-string/jumbo v2, "ro.mtk_ipo_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-get0(Lcom/android/server/AlarmManagerService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2765
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mNativeData:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v2, v18, v20

    if-eqz v2, :cond_1

    .line 2766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2767
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v18

    .line 2770
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-get1(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2771
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-get1(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v18
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2780
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService;->mNativeData:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Lcom/android/server/AlarmManagerService;->-wrap3(Lcom/android/server/AlarmManagerService;J)I

    move-result v13

    .line 2782
    .local v13, "result":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2785
    .local v6, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2787
    .local v4, "nowELAPSED":J
    const/high16 v2, 0x10000

    and-int/2addr v2, v13

    if-eqz v2, :cond_5

    .line 2792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 2793
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v14, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 2795
    .local v14, "lastTimeChangeClockTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    move-wide/from16 v20, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    sub-long v20, v4, v20

    .line 2794
    add-long v10, v14, v20

    .local v10, "expectedClockTime":J
    monitor-exit v18

    .line 2797
    const-wide/16 v18, 0x0

    cmp-long v2, v14, v18

    if-eqz v2, :cond_3

    const-wide/16 v18, 0x1f4

    sub-long v18, v10, v18

    cmp-long v2, v6, v18

    if-gez v2, :cond_8

    .line 2801
    :cond_3
    :goto_2
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v2, :cond_4

    .line 2802
    const-string/jumbo v2, "AlarmManager"

    const-string/jumbo v18, "Time changed notification from kernel; rebatching"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    .line 2805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    .line 2806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 2807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 2808
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v0, v2, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    iput v0, v2, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    .line 2809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v6, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 2810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v4, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v18

    .line 2812
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.TIME_SET"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2813
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v2, 0x24000000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v2, v12, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2819
    or-int/lit8 v13, v13, 0x5

    .line 2823
    .end local v10    # "expectedClockTime":J
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "lastTimeChangeClockTime":J
    :cond_5
    const/high16 v2, 0x10000

    if-eq v13, v2, :cond_0

    .line 2826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 2827
    :try_start_7
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v2, :cond_6

    .line 2828
    const-string/jumbo v2, "AlarmManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Checking for alarms... rtc="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 2829
    const-string/jumbo v20, ", elapsed="

    .line 2828
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2827
    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z

    move-result v9

    .line 2848
    .local v9, "hasWakeup":Z
    if-nez v9, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 2852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v4, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 2853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 2854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v20

    const-wide/16 v22, 0x3

    mul-long v20, v20, v22

    const-wide/16 v22, 0x2

    div-long v20, v20, v22

    .line 2853
    add-long v20, v20, v4

    move-wide/from16 v0, v20

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 2856
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v0, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    move/from16 v19, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 2858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-wrap8(Lcom/android/server/AlarmManagerService;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :goto_3
    monitor-exit v18

    goto/16 :goto_0

    .line 2766
    .end local v4    # "nowELAPSED":J
    .end local v6    # "nowRTC":J
    .end local v9    # "hasWakeup":Z
    .end local v13    # "result":I
    :catchall_0
    move-exception v2

    :try_start_8
    monitor-exit v18

    throw v2
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    .line 2773
    :catch_0
    move-exception v8

    .line 2774
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "AlarmManager"

    const-string/jumbo v18, "InterruptedException "

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2770
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    :try_start_9
    monitor-exit v18

    throw v2
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    .line 2792
    .restart local v4    # "nowELAPSED":J
    .restart local v6    # "nowRTC":J
    .restart local v13    # "result":I
    :catchall_2
    move-exception v2

    monitor-exit v18

    throw v2

    .line 2798
    .restart local v10    # "expectedClockTime":J
    .restart local v14    # "lastTimeChangeClockTime":J
    :cond_8
    const-wide/16 v18, 0x1f4

    add-long v18, v18, v10

    cmp-long v2, v6, v18

    if-lez v2, :cond_5

    goto/16 :goto_2

    .line 2807
    :catchall_3
    move-exception v2

    monitor-exit v18

    throw v2

    .line 2865
    .end local v10    # "expectedClockTime":J
    .end local v14    # "lastTimeChangeClockTime":J
    .restart local v9    # "hasWakeup":Z
    :cond_9
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->-wrap8(Lcom/android/server/AlarmManagerService;)V

    .line 2867
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 2868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 2869
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    move-wide/from16 v20, v0

    sub-long v16, v4, v20

    .line 2872
    .local v16, "thisDelayTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    move-wide/from16 v20, v0

    add-long v20, v20, v16

    move-wide/from16 v0, v20

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 2873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v0, v2, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    move-wide/from16 v20, v0

    cmp-long v2, v20, v16

    if-gez v2, :cond_a

    .line 2874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 2876
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2878
    .end local v16    # "thisDelayTime":J
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto/16 :goto_3

    .line 2826
    .end local v9    # "hasWakeup":Z
    :catchall_4
    move-exception v2

    monitor-exit v18

    throw v2
.end method
