.class Landroid/media/SubtitleTrack$CueList;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CueList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleTrack$CueList$EntryIterator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CueList"


# instance fields
.field public DEBUG:Z

.field private mCues:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/media/SubtitleTrack$CueList;)Ljava/util/SortedMap;
    .locals 1

    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/SubtitleTrack$CueList;Landroid/media/SubtitleTrack$Cue;J)V
    .locals 0
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;
    .param p2, "timeMs"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleTrack$CueList;->DEBUG:Z

    .line 598
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    .line 597
    return-void
.end method

.method private addEvent(Landroid/media/SubtitleTrack$Cue;J)Z
    .locals 4
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;
    .param p2, "timeMs"    # J

    .prologue
    .line 425
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 426
    .local v0, "cues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    if-nez v0, :cond_1

    .line 427
    new-instance v0, Ljava/util/Vector;

    .end local v0    # "cues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 428
    .restart local v0    # "cues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 435
    const/4 v1, 0x1

    return v1

    .line 429
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    const/4 v1, 0x0

    return v1
.end method

.method private removeEvent(Landroid/media/SubtitleTrack$Cue;J)V
    .locals 4
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;
    .param p2, "timeMs"    # J

    .prologue
    .line 439
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 440
    .local v0, "cues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 443
    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Landroid/media/SubtitleTrack$Cue;)V
    .locals 10
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;

    .prologue
    .line 450
    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-wide v6, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 451
    return-void

    .line 453
    :cond_0
    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-direct {p0, p1, v4, v5}, Landroid/media/SubtitleTrack$CueList;->addEvent(Landroid/media/SubtitleTrack$Cue;J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 454
    return-void

    .line 457
    :cond_1
    iget-wide v0, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    .line 458
    .local v0, "lastTimeMs":J
    iget-object v4, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v4, :cond_3

    .line 459
    iget-object v5, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_3

    aget-wide v2, v5, v4

    .line 460
    .local v2, "timeMs":J
    cmp-long v7, v2, v0

    if-lez v7, :cond_2

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v7, v2, v8

    if-gez v7, :cond_2

    .line 461
    invoke-direct {p0, p1, v2, v3}, Landroid/media/SubtitleTrack$CueList;->addEvent(Landroid/media/SubtitleTrack$Cue;J)Z

    .line 462
    move-wide v0, v2

    .line 459
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 467
    .end local v2    # "timeMs":J
    :cond_3
    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-direct {p0, p1, v4, v5}, Landroid/media/SubtitleTrack$CueList;->addEvent(Landroid/media/SubtitleTrack$Cue;J)Z

    .line 448
    return-void
.end method

.method public entriesBetween(JJ)Ljava/lang/Iterable;
    .locals 7
    .param p1, "lastTimeMs"    # J
    .param p3, "timeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 482
    new-instance v0, Landroid/media/SubtitleTrack$CueList$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/SubtitleTrack$CueList$1;-><init>(Landroid/media/SubtitleTrack$CueList;JJ)V

    return-object v0
.end method

.method public nextTimeAfter(J)J
    .locals 9
    .param p1, "timeMs"    # J

    .prologue
    const-wide/16 v6, -0x1

    .line 497
    const/4 v2, 0x0

    .line 499
    .local v2, "tail":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;>;"
    :try_start_0
    iget-object v3, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    const-wide/16 v4, 0x1

    add-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    .line 500
    .local v2, "tail":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;>;"
    if-eqz v2, :cond_0

    .line 501
    invoke-interface {v2}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    .line 503
    :cond_0
    return-wide v6

    .line 507
    .end local v2    # "tail":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;>;"
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Ljava/util/NoSuchElementException;
    return-wide v6

    .line 505
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-wide v6
.end method

.method public remove(Landroid/media/SubtitleTrack$Cue;)V
    .locals 5
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;

    .prologue
    .line 471
    iget-wide v2, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-direct {p0, p1, v2, v3}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    .line 472
    iget-object v2, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v2, :cond_0

    .line 473
    iget-object v3, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-wide v0, v3, v2

    .line 474
    .local v0, "timeMs":J
    invoke-direct {p0, p1, v0, v1}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    .line 473
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    .end local v0    # "timeMs":J
    :cond_0
    iget-wide v2, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-direct {p0, p1, v2, v3}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    .line 470
    return-void
.end method
