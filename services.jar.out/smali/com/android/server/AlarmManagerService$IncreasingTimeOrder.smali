.class public Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncreasingTimeOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/AlarmManagerService$Alarm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I
    .locals 10
    .param p1, "a1"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "a2"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 2382
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 2383
    .local v0, "when1":J
    iget-wide v2, p2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 2384
    .local v2, "when2":J
    sub-long v4, v0, v2

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    .line 2385
    return v7

    .line 2387
    :cond_0
    sub-long v4, v0, v2

    cmp-long v4, v4, v8

    if-gez v4, :cond_1

    .line 2388
    return v6

    .line 2391
    :cond_1
    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v4, :cond_2

    .line 2392
    const-string/jumbo v4, "com.lenovo.deskclock"

    iget-object v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2391
    if-eqz v4, :cond_2

    .line 2393
    return v6

    .line 2395
    :cond_2
    iget-object v4, p2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v4, :cond_3

    .line 2396
    const-string/jumbo v4, "com.lenovo.deskclock"

    iget-object v5, p2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2395
    if-eqz v4, :cond_3

    .line 2397
    return v7

    .line 2401
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a1"    # Ljava/lang/Object;
    .param p2, "a2"    # Ljava/lang/Object;

    .prologue
    .line 2381
    check-cast p1, Lcom/android/server/AlarmManagerService$Alarm;

    .end local p1    # "a1":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/AlarmManagerService$Alarm;

    .end local p2    # "a2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;->compare(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v0

    return v0
.end method
