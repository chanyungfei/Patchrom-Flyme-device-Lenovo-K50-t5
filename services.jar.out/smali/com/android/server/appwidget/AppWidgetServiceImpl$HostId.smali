.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HostId"
.end annotation


# instance fields
.field final hostId:I

.field final packageName:Ljava/lang/String;

.field final uid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "hostId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3474
    iput p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    .line 3475
    iput p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    .line 3476
    iput-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    .line 3473
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3481
    if-ne p0, p1, :cond_0

    .line 3482
    return v4

    .line 3484
    :cond_0
    if-nez p1, :cond_1

    .line 3485
    return v3

    .line 3487
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 3488
    return v3

    :cond_2
    move-object v0, p1

    .line 3490
    check-cast v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 3491
    .local v0, "other":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    iget v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    if-eq v1, v2, :cond_3

    .line 3492
    return v3

    .line 3494
    :cond_3
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    iget v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    if-eq v1, v2, :cond_4

    .line 3495
    return v3

    .line 3497
    :cond_4
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 3498
    iget-object v1, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 3499
    return v3

    .line 3501
    :cond_5
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3502
    return v3

    .line 3504
    :cond_6
    return v4
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 3509
    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    .line 3510
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    add-int v0, v1, v2

    .line 3511
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3512
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 3511
    :goto_0
    add-int v0, v2, v1

    .line 3513
    return v0

    .line 3512
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HostId{user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", app:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3519
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 3518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3519
    const-string/jumbo v1, ", hostId:"

    .line 3518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3519
    iget v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    .line 3518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3520
    const-string/jumbo v1, ", pkg:"

    .line 3518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3520
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    .line 3518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3520
    const/16 v1, 0x7d

    .line 3518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
