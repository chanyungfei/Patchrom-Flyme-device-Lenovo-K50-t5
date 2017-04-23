.class Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
.super Ljava/lang/Object;
.source "JobStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadJobMapFromDiskRunnable"
.end annotation


# instance fields
.field private final jobSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/job/JobStore;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobStore;Landroid/util/ArraySet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p2, "jobSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    iput-object p1, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p2, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Landroid/util/ArraySet;

    .line 418
    return-void
.end method

.method private buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 617
    const-string/jumbo v4, "jobid"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 618
    .local v2, "jobId":I
    const-string/jumbo v4, "package"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 619
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "class"

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    .local v1, "cname":Landroid/content/ComponentName;
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    return-object v4
.end method

.method private buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 626
    const-string/jumbo v1, "unmetered"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 628
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 630
    :cond_0
    const-string/jumbo v1, "connectivity"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    if-eqz v0, :cond_1

    .line 632
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 634
    :cond_1
    const-string/jumbo v1, "idle"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 635
    if-eqz v0, :cond_2

    .line 636
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 638
    :cond_2
    const-string/jumbo v1, "charging"

    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    if-eqz v0, :cond_3

    .line 640
    invoke-virtual {p1, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 625
    :cond_3
    return-void
.end method

.method private buildExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 26
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 668
    .local v18, "nowWallclock":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 670
    .local v16, "nowElapsed":J
    const-wide/16 v4, 0x0

    .line 671
    .local v4, "earliestRunTimeElapsed":J
    const-wide v8, 0x7fffffffffffffffL

    .line 672
    .local v8, "latestRunTimeElapsed":J
    const-string/jumbo v21, "deadline"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 673
    .local v20, "val":Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 674
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 676
    .local v10, "latestRuntimeWallclock":J
    sub-long v22, v10, v18

    const-wide/16 v24, 0x0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 677
    .local v12, "maxDelayElapsed":J
    add-long v8, v16, v12

    .line 679
    .end local v10    # "latestRuntimeWallclock":J
    .end local v12    # "maxDelayElapsed":J
    :cond_0
    const-string/jumbo v21, "delay"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 680
    if-eqz v20, :cond_1

    .line 681
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 683
    .local v6, "earliestRuntimeWallclock":J
    sub-long v22, v6, v18

    const-wide/16 v24, 0x0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 684
    .local v14, "minDelayElapsed":J
    add-long v4, v16, v14

    .line 687
    .end local v6    # "earliestRuntimeWallclock":J
    .end local v14    # "minDelayElapsed":J
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v21

    return-object v21
.end method

.method private maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "jobBuilder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v5, 0x0

    .line 649
    const-string/jumbo v4, "initial-backoff"

    invoke-interface {p2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 651
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 652
    .local v2, "initialBackoff":J
    const-string/jumbo v4, "backoff-policy"

    invoke-interface {p2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 654
    .local v0, "backoffPolicy":I
    invoke-virtual {p1, v2, v3, v0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 648
    .end local v0    # "backoffPolicy":I
    .end local v2    # "initialBackoff":J
    :cond_0
    return-void
.end method

.method private readJobMapImpl(Ljava/io/FileInputStream;)Ljava/util/List;
    .locals 12
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileInputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 453
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 454
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 456
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 457
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v11, :cond_0

    .line 458
    if-eq v1, v10, :cond_0

    .line 459
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 460
    const-string/jumbo v7, "JobStore"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    :cond_0
    if-ne v1, v10, :cond_2

    .line 463
    invoke-static {}, Lcom/android/server/job/JobStore;->-get0()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 464
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v8, "No persisted jobs."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_1
    return-object v9

    .line 469
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 470
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "job-info"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 471
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v2, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :try_start_0
    const-string/jumbo v7, "version"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 475
    .local v6, "version":I
    if-eqz v6, :cond_3

    .line 476
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v8, "Invalid version number, aborting jobs file read."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    return-object v9

    .line 479
    .end local v6    # "version":I
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v8, "Invalid version number, aborting jobs file read."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-object v9

    .line 483
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "version":I
    :cond_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 486
    :cond_4
    if-ne v1, v11, :cond_6

    .line 487
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 489
    const-string/jumbo v7, "job"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 490
    invoke-direct {p0, v3}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->restoreJobFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    .line 491
    .local v4, "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v4, :cond_7

    .line 492
    invoke-static {}, Lcom/android/server/job/JobStore;->-get0()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 493
    const-string/jumbo v7, "JobStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Read out "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_5
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    .end local v4    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_6
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 502
    if-ne v1, v10, :cond_4

    .line 503
    return-object v2

    .line 497
    .restart local v4    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_7
    const-string/jumbo v7, "JobStore"

    const-string/jumbo v8, "Error reading job from file."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 505
    .end local v2    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "persistedJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v6    # "version":I
    :cond_8
    return-object v9
.end method

.method private restoreJobFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/job/controllers/JobStatus;
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildBuilderFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/job/JobInfo$Builder;

    move-result-object v10

    .line 521
    .local v10, "jobBuilder":Landroid/app/job/JobInfo$Builder;
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 522
    const-string/jumbo v1, "uid"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 531
    .local v3, "uid":I
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 532
    .local v8, "eventType":I
    const/4 v1, 0x4

    if-eq v8, v1, :cond_0

    .line 534
    const/4 v1, 0x2

    if-ne v8, v1, :cond_1

    .line 535
    const-string/jumbo v1, "constraints"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 534
    :goto_0
    if-nez v1, :cond_2

    .line 537
    const/4 v1, 0x0

    return-object v1

    .line 523
    .end local v3    # "uid":I
    .end local v8    # "eventType":I
    .end local v10    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "JobStore"

    const-string/jumbo v2, "Error parsing job\'s required fields, skipping"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v1, 0x0

    return-object v1

    .line 534
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "uid":I
    .restart local v8    # "eventType":I
    .restart local v10    # "jobBuilder":Landroid/app/job/JobInfo$Builder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 540
    :cond_2
    :try_start_1
    invoke-direct {p0, v10, p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildConstraintsFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 545
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 549
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 550
    const/4 v1, 0x4

    if-eq v8, v1, :cond_3

    .line 551
    const/4 v1, 0x2

    if-eq v8, v1, :cond_4

    .line 552
    const/4 v1, 0x0

    return-object v1

    .line 541
    :catch_1
    move-exception v0

    .line 542
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "JobStore"

    const-string/jumbo v2, "Error reading constraints, skipping."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v1, 0x0

    return-object v1

    .line 557
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->buildExecutionTimesFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    .line 565
    .local v11, "runtimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-string/jumbo v1, "periodic"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 567
    :try_start_3
    const-string/jumbo v1, "period"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 568
    .local v12, "val":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 593
    .end local v12    # "val":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-direct {p0, v10, p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->maybeBuildBackoffPolicyFromXml(Landroid/app/job/JobInfo$Builder;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 595
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 599
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 600
    const/4 v1, 0x4

    if-eq v8, v1, :cond_6

    .line 601
    const/4 v1, 0x2

    if-ne v8, v1, :cond_d

    const-string/jumbo v1, "extras"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_2
    if-nez v1, :cond_e

    .line 602
    invoke-static {}, Lcom/android/server/job/JobStore;->-get0()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 603
    const-string/jumbo v1, "JobStore"

    const-string/jumbo v2, "Error reading extras, skipping."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_7
    const/4 v1, 0x0

    return-object v1

    .line 558
    .end local v11    # "runtimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_2
    move-exception v0

    .line 559
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/server/job/JobStore;->-get0()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 560
    const-string/jumbo v1, "JobStore"

    const-string/jumbo v2, "Error parsing execution time parameters, skipping."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_8
    const/4 v1, 0x0

    return-object v1

    .line 569
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v11    # "runtimes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_3
    move-exception v0

    .line 570
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "JobStore"

    const-string/jumbo v2, "Error reading periodic execution criteria, skipping."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v1, 0x0

    return-object v1

    .line 573
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    const-string/jumbo v1, "one-off"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 575
    :try_start_4
    iget-object v1, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_a

    .line 576
    iget-object v1, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v10, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 578
    :cond_a
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    .line 580
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 579
    invoke-virtual {v10, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 582
    :catch_4
    move-exception v0

    .line 583
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "JobStore"

    const-string/jumbo v2, "Error reading job execution criteria, skipping."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v1, 0x0

    return-object v1

    .line 587
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    invoke-static {}, Lcom/android/server/job/JobStore;->-get0()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 588
    const-string/jumbo v1, "JobStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid parameter tag, skipping - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_c
    const/4 v1, 0x0

    return-object v1

    .line 601
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 608
    :cond_e
    invoke-static {p1}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v9

    .line 609
    .local v9, "extras":Landroid/os/PersistableBundle;
    invoke-virtual {v10, v9}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 610
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 612
    new-instance v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v10}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    iget-object v4, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;IJJ)V

    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 426
    :try_start_0
    iget-object v6, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    invoke-static {v6}, Lcom/android/server/job/JobStore;->-get1(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 427
    .local v3, "fis":Ljava/io/FileInputStream;
    iget-object v7, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->this$0:Lcom/android/server/job/JobStore;

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 428
    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->readJobMapImpl(Ljava/io/FileInputStream;)Ljava/util/List;

    move-result-object v5

    .line 429
    .local v5, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v5, :cond_0

    .line 430
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 431
    iget-object v8, p0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->jobSet:Landroid/util/ArraySet;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v8, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_0
    :try_start_2
    monitor-exit v7

    .line 435
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 423
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    :goto_1
    return-void

    .line 427
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 436
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 438
    const-string/jumbo v6, "JobStore"

    const-string/jumbo v7, "Could not find jobs file, probably there was nothing to load."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 444
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 445
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 446
    const-string/jumbo v6, "JobStore"

    const-string/jumbo v7, "Error parsing xml."

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 440
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 441
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 442
    const-string/jumbo v6, "JobStore"

    const-string/jumbo v7, "Error parsing xml."

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
