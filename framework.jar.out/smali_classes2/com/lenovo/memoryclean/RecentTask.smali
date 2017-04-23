.class public Lcom/lenovo/memoryclean/RecentTask;
.super Ljava/lang/Object;
.source "RecentTask.java"


# static fields
.field private static final DISPLAY_TASKS:I = 0x14

.field private static final MAX_TASKS:I

.field private static final TAG:Ljava/lang/String; = "RecentTask"


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mPersistentTaskId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x15

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    .line 26
    sput v1, Lcom/lenovo/memoryclean/RecentTask;->MAX_TASKS:I

    .line 28
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v0

    sput v0, Lcom/lenovo/memoryclean/RecentTask;->MAX_TASKS:I

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/lenovo/memoryclean/RecentTask;->mPersistentTaskId:I

    .line 33
    iput-object p2, p0, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static getRecentTask(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/memoryclean/RecentTask;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "activity"

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 45
    sget v3, Lcom/lenovo/memoryclean/RecentTask;->MAX_TASKS:I

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    return-object v1

    .line 48
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    const-string/jumbo v4, "RecentTask"

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get recentInfo - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v4, Landroid/content/Intent;

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 55
    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-nez v5, :cond_2

    .line 61
    :goto_1
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const v6, -0x200001

    and-int/2addr v5, v6

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    invoke-virtual {v2, v4, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 67
    if-eqz v4, :cond_0

    const-string/jumbo v5, "RecentTask"

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "recent task:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v5, Lcom/lenovo/memoryclean/RecentTask;

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v0, v4}, Lcom/lenovo/memoryclean/RecentTask;-><init>(ILjava/lang/String;)V

    .line 70
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 57
    :cond_2
    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1
.end method
