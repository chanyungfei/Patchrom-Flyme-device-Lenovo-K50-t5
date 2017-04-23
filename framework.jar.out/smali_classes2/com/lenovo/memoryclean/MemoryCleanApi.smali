.class public Lcom/lenovo/memoryclean/MemoryCleanApi;
.super Ljava/lang/Object;
.source "MemoryCleanApi.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MemoryCleanApi"


# instance fields
.field private mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

.field private mContext:Landroid/content/Context;

.field private mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

.field private mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

.field private mSystemApp:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "eng"

    .line 36
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->DEBUG:Z

    return-void

    :cond_1
    const-string/jumbo v1, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSystemApp:Ljava/util/HashSet;

    return-void
.end method

.method private ActivityManagerRemoveTask(Landroid/app/ActivityManager;I)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "android.app.ActivityManager"

    const-string/jumbo v1, "removeTask"

    .line 269
    new-array v2, v6, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/lenovo/memoryclean/LoadMethod;->isMethodExisted(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    .line 272
    if-eqz v0, :cond_0

    .line 278
    new-array v0, v6, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    .line 279
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string/jumbo v2, "android.app.ActivityManager"

    const-string/jumbo v3, "removeTask"

    .line 280
    invoke-static {p1, v2, v3, v0, v1}, Lcom/lenovo/memoryclean/LoadMethod;->MethodInvoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :goto_0
    return-void

    .line 274
    :cond_0
    new-array v0, v5, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    .line 275
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "android.app.ActivityManager"

    const-string/jumbo v3, "removeTask"

    .line 276
    invoke-static {p1, v2, v3, v0, v1}, Lcom/lenovo/memoryclean/LoadMethod;->MethodInvoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getIgnorePkgename(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 613
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "com.lenovo.fmservice"

    .line 615
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.HOME"

    .line 619
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 621
    if-nez v0, :cond_1

    :goto_0
    const-string/jumbo v0, "input_method"

    .line 633
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 635
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 636
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 643
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 650
    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 662
    :cond_0
    :goto_2
    return-object v1

    .line 622
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 636
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 637
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 656
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private getMemInfoForPid(Landroid/content/Context;I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 181
    new-array v2, v0, [I

    aput p2, v2, v1

    const-string/jumbo v0, "activity"

    .line 183
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 184
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 186
    array-length v2, v0

    if-gtz v2, :cond_1

    move v0, v1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 187
    :cond_1
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    .line 188
    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private initSystemApps()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSystemApp:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    return-void

    .line 72
    :cond_0
    return-void

    .line 76
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 77
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    .line 79
    :cond_2
    iget-object v2, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSystemApp:Ljava/util/HashSet;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_3
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    goto :goto_0
.end method

.method private isApplicationCanBeRemoved(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 732
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSystemApp:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    return v2

    .line 733
    :cond_0
    invoke-static {p2}, Lcom/lenovo/memoryclean/Utils;->isInControllableSystemApps(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 736
    return v1

    .line 734
    :cond_1
    return v2
.end method

.method private static isCurrentHomeActivity(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 671
    if-eqz p2, :cond_1

    .line 676
    :goto_0
    if-nez p2, :cond_2

    :cond_0
    :goto_1
    return v0

    .line 672
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 673
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    goto :goto_0

    .line 676
    :cond_2
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static loadFirstTask(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "activity"

    .line 566
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 568
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v2, v2, v1}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v0

    .line 570
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 603
    :cond_0
    return-object v3

    .line 571
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 573
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 574
    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-nez v2, :cond_2

    .line 590
    :goto_0
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/lenovo/memoryclean/MemoryCleanApi;->isCurrentHomeActivity(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 594
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v2, -0x200001

    and-int/2addr v0, v2

    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 596
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 597
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_0

    .line 600
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 575
    :cond_2
    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 591
    :cond_3
    return-object v3
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/lenovo/memoryclean/MemoryCleanApi;
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/lenovo/memoryclean/Version;->printfVersion()V

    .line 53
    new-instance v0, Lcom/lenovo/memoryclean/MemoryCleanApi;

    invoke-direct {v0}, Lcom/lenovo/memoryclean/MemoryCleanApi;-><init>()V

    .line 54
    iput-object p0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    .line 56
    new-instance v1, Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/LockPkgApi;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    .line 57
    new-instance v1, Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/AutoBootApi;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    .line 58
    new-instance v1, Lcom/lenovo/memoryclean/SuperWhiteListApi;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/SuperWhiteListApi;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

    .line 60
    return-object v0
.end method


# virtual methods
.method public cleanMemory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0, v0}, Lcom/lenovo/memoryclean/MemoryCleanApi;->cleanMemory(Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public cleanMemory(Ljava/util/HashSet;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v1}, Lcom/lenovo/memoryclean/AutoBootApi;->loadFromDbIfNeed()V

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v1}, Lcom/lenovo/memoryclean/LockPkgApi;->loadWhiteFromDbIfNeed()V

    .line 292
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/memoryclean/RecentTask;->getRecentTask(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/lenovo/memoryclean/MemoryCleanApi;->getIgnorePkgename(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 299
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 300
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 301
    if-nez p1, :cond_2

    .line 304
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/memoryclean/MemoryCleanApi;->loadFirstTask(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "activity"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 311
    if-nez v2, :cond_3

    .line 331
    :cond_0
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 333
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 334
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 335
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 336
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 379
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 393
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_f

    .line 472
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 479
    return-object v8

    .line 302
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 311
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 312
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/memoryclean/RecentTask;

    .line 314
    sget-boolean v6, Lcom/lenovo/memoryclean/MemoryCleanApi;->DEBUG:Z

    if-nez v6, :cond_5

    .line 317
    :goto_5
    iget-object v6, v2, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v2, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    iget-object v7, v2, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/lenovo/memoryclean/LockPkgApi;->isInLockList(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 320
    sget-boolean v6, Lcom/lenovo/memoryclean/MemoryCleanApi;->DEBUG:Z

    if-nez v6, :cond_6

    .line 324
    :goto_6
    iget v2, v2, Lcom/lenovo/memoryclean/RecentTask;->mPersistentTaskId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/lenovo/memoryclean/MemoryCleanApi;->ActivityManagerRemoveTask(Landroid/app/ActivityManager;I)V

    goto :goto_4

    :cond_5
    const-string/jumbo v6, "MemoryCleanApi"

    .line 315
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "td.mPackageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    const-string/jumbo v6, "MemoryCleanApi"

    .line 321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "am.removeTask: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 336
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 340
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

    iget-object v11, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11, v3}, Lcom/lenovo/memoryclean/SuperWhiteListApi;->isInSuperWhiteProcess(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 346
    iget-object v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 347
    array-length v11, v10

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v11, :cond_1

    aget-object v12, v10, v2

    .line 348
    sget-boolean v13, Lcom/lenovo/memoryclean/MemoryCleanApi;->DEBUG:Z

    if-nez v13, :cond_a

    .line 351
    :goto_8
    if-nez v4, :cond_b

    .line 356
    :goto_9
    invoke-virtual {v3, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

    invoke-virtual {v13, v12}, Lcom/lenovo/memoryclean/SuperWhiteListApi;->isInSuperWhiteList(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 362
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v13, v12}, Lcom/lenovo/memoryclean/LockPkgApi;->isInLockList(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 366
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lenovo/memoryclean/MemoryCleanApi;->isInWhiteList(Ljava/lang/String;)Z

    move-result v13

    .line 367
    if-eqz v13, :cond_c

    .line 371
    invoke-virtual {v7, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_8
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 341
    :cond_9
    sget-boolean v10, Lcom/lenovo/memoryclean/MemoryCleanApi;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string/jumbo v10, "MemoryCleanApi"

    .line 342
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "cleanMemory ignore rapInfo.processName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v13, "MemoryCleanApi"

    .line 349
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "RunningApp pkgName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 351
    :cond_b
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    goto :goto_9

    .line 369
    :cond_c
    invoke-virtual {v6, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 379
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 380
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/lenovo/memoryclean/MemoryCleanApi;->isApplicationCanBeRemoved(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 387
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    const-string/jumbo v4, "MemoryCleanApi"

    .line 389
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "killBackgroundProcesses  pkgName="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 382
    :cond_e
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    const-string/jumbo v4, "MemoryCleanApi"

    .line 384
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "forceStopPackage  pkgName="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 393
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 394
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    const-string/jumbo v4, "MemoryCleanApi"

    .line 397
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "killBackgroundProcesses  pkgName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public cleanOneTask(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 482
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 483
    iget-object v1, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v1}, Lcom/lenovo/memoryclean/LockPkgApi;->loadWhiteFromDbIfNeed()V

    .line 484
    iget-object v1, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v1}, Lcom/lenovo/memoryclean/AutoBootApi;->loadFromDbIfNeed()V

    .line 486
    iget-object v1, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

    invoke-virtual {v1, p1}, Lcom/lenovo/memoryclean/SuperWhiteListApi;->isInSuperWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v1, p1}, Lcom/lenovo/memoryclean/AutoBootApi;->isInAutoBootAbleList(Ljava/lang/String;)Z

    move-result v1

    .line 490
    if-eqz v1, :cond_2

    .line 494
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    const-string/jumbo v1, "MemoryCleanApi"

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "killBackgroundProcesses  pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_1
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/lenovo/memoryclean/MemoryCleanApi;->ActivityManagerRemoveTask(Landroid/app/ActivityManager;I)V

    .line 499
    return-void

    .line 490
    :cond_2
    iget-object v1, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/lenovo/memoryclean/MemoryCleanApi;->isApplicationCanBeRemoved(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    const-string/jumbo v1, "MemoryCleanApi"

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "forceStopPackage  pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public forceCleanMemory(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/AutoBootApi;->loadFromDbIfNeed()V

    .line 508
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/LockPkgApi;->loadWhiteFromDbIfNeed()V

    .line 510
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 511
    iget-object v1, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/memoryclean/RecentTask;->getRecentTask(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 512
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 513
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 514
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 516
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 529
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 539
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    .line 549
    if-nez v3, :cond_7

    .line 559
    :cond_1
    return-object v5

    .line 516
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 518
    iget-object v7, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

    invoke-virtual {v7, v1}, Lcom/lenovo/memoryclean/SuperWhiteListApi;->isInSuperWhiteList(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 521
    iget-object v7, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v7, v1}, Lcom/lenovo/memoryclean/AutoBootApi;->isInAutoBootAbleList(Ljava/lang/String;)Z

    move-result v7

    .line 522
    if-eqz v7, :cond_3

    .line 526
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 524
    :cond_3
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 529
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 530
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    iget-object v6, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v1}, Lcom/lenovo/memoryclean/MemoryCleanApi;->isApplicationCanBeRemoved(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 535
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    const-string/jumbo v6, "MemoryCleanApi"

    .line 536
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "killBackgroundProcesses  pkgName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 532
    :cond_5
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    const-string/jumbo v6, "MemoryCleanApi"

    .line 533
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "forceStopPackage  pkgName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 539
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 540
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    const-string/jumbo v4, "MemoryCleanApi"

    .line 542
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "killBackgroundProcesses  pkgName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 549
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 550
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 551
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/memoryclean/RecentTask;

    .line 552
    iget-object v7, v2, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 554
    iget v2, v2, Lcom/lenovo/memoryclean/RecentTask;->mPersistentTaskId:I

    invoke-direct {p0, v0, v2}, Lcom/lenovo/memoryclean/MemoryCleanApi;->ActivityManagerRemoveTask(Landroid/app/ActivityManager;I)V

    goto :goto_3
.end method

.method public getCleanAbleInfo()Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 100
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/AutoBootApi;->loadFromDbIfNeed()V

    .line 101
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/LockPkgApi;->loadWhiteFromDbIfNeed()V

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/lenovo/memoryclean/MemoryCleanApi;->getIgnorePkgename(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 107
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 108
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 110
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/memoryclean/MemoryCleanApi;->loadFirstTask(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 112
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 113
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    .line 117
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 118
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 119
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 155
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 156
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 172
    return-object v9

    .line 119
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 123
    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 125
    iget-object v11, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 126
    aget-object v1, v11, v4

    .line 127
    array-length v12, v11

    move v3, v4

    :goto_2
    if-lt v3, v12, :cond_2

    .line 133
    :goto_3
    if-nez v6, :cond_4

    .line 138
    :goto_4
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 127
    :cond_2
    aget-object v13, v11, v3

    .line 128
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 130
    goto :goto_3

    .line 133
    :cond_4
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    .line 157
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    iget-object v2, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/lenovo/memoryclean/MemoryCleanApi;->getMemInfoForPid(Landroid/content/Context;I)I

    move-result v2

    .line 162
    sget-boolean v4, Lcom/lenovo/memoryclean/MemoryCleanApi;->DEBUG:Z

    if-nez v4, :cond_6

    .line 165
    :goto_5
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    .line 169
    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "MemoryCleanApi"

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pid == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " packageName == "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " memory == "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 166
    :cond_7
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 167
    add-int/2addr v1, v2

    goto :goto_6
.end method

.method public getRunningAppCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/memoryclean/RecentTask;->getRecentTask(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 89
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 92
    return v0

    .line 90
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/AutoBootApi;->loadFromDbIfNeed()V

    .line 65
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/LockPkgApi;->loadWhiteFromDbIfNeed()V

    .line 66
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/SuperWhiteListApi;->init()V

    .line 67
    invoke-direct {p0}, Lcom/lenovo/memoryclean/MemoryCleanApi;->initSystemApps()V

    .line 68
    invoke-static {}, Lcom/lenovo/memoryclean/Utils;->initControllableSystemApps()V

    .line 69
    return-void
.end method

.method public isInHideWhiteList(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 223
    iget-object v1, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/lenovo/memoryclean/MemoryCleanApi;->getIgnorePkgename(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 224
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInLockList(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0, p1}, Lcom/lenovo/memoryclean/LockPkgApi;->isInLockList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInWhiteList(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 201
    iget-object v1, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v1, p1}, Lcom/lenovo/memoryclean/AutoBootApi;->isInAutoBootAbleList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v1, p1}, Lcom/lenovo/memoryclean/LockPkgApi;->isInLockList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public lockPkg(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0, p1}, Lcom/lenovo/memoryclean/LockPkgApi;->lockPkg(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerContentObserve()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/AutoBootApi;->registerContentObserve()V

    .line 251
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/LockPkgApi;->registerContentObserve()V

    .line 252
    return-void
.end method

.method public unLockPkg(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0, p1}, Lcom/lenovo/memoryclean/LockPkgApi;->unLockPkg(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unRegisterContentObserve()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/AutoBootApi;->unRegisterContentObserve()V

    .line 259
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/LockPkgApi;->unRegisterContentObserve()V

    .line 260
    return-void
.end method
