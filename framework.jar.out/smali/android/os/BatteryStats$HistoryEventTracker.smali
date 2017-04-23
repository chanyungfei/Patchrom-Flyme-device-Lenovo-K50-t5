.class public final Landroid/os/BatteryStats$HistoryEventTracker;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryEventTracker"
.end annotation


# instance fields
.field private final mActiveEvents:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1437
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/util/HashMap;

    .line 1436
    iput-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    .line 1435
    return-void
.end method


# virtual methods
.method public getStateForEvent(I)Ljava/util/HashMap;
    .locals 1
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1488
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public removeEvents(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 1483
    const v1, -0xc001

    and-int v0, p1, v1

    .line 1484
    .local v0, "idx":I
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1482
    return-void
.end method

.method public updateState(ILjava/lang/String;II)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "poolIdx"    # I

    .prologue
    const v5, -0xc001

    const/4 v4, 0x0

    .line 1440
    const v3, 0x8000

    and-int/2addr v3, p1

    if-eqz v3, :cond_4

    .line 1441
    and-int v1, p1, v5

    .line 1442
    .local v1, "idx":I
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v0, v3, v1

    .line 1443
    .local v0, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v0, :cond_0

    .line 1444
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1445
    .restart local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aput-object v0, v3, v1

    .line 1447
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    .line 1448
    .local v2, "uids":Landroid/util/SparseIntArray;
    if-nez v2, :cond_1

    .line 1449
    new-instance v2, Landroid/util/SparseIntArray;

    .end local v2    # "uids":Landroid/util/SparseIntArray;
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 1450
    .restart local v2    # "uids":Landroid/util/SparseIntArray;
    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    :cond_1
    invoke-virtual {v2, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 1454
    return v4

    .line 1456
    :cond_2
    invoke-virtual {v2, p3, p4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1479
    .end local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v1    # "idx":I
    .end local v2    # "uids":Landroid/util/SparseIntArray;
    :cond_3
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 1457
    :cond_4
    and-int/lit16 v3, p1, 0x4000

    if-eqz v3, :cond_3

    .line 1458
    and-int v1, p1, v5

    .line 1459
    .restart local v1    # "idx":I
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v0, v3, v1

    .line 1460
    .restart local v0    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v0, :cond_5

    .line 1462
    return v4

    .line 1464
    :cond_5
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    .line 1465
    .restart local v2    # "uids":Landroid/util/SparseIntArray;
    if-nez v2, :cond_6

    .line 1467
    return v4

    .line 1469
    :cond_6
    invoke-virtual {v2, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 1470
    if-gez v1, :cond_7

    .line 1472
    return v4

    .line 1474
    :cond_7
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 1475
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 1476
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
