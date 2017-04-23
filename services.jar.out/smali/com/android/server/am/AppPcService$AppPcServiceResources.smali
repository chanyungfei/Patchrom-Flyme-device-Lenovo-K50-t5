.class Lcom/android/server/am/AppPcService$AppPcServiceResources;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppPcServiceResources"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppPcService$AppPcServiceResources$id;,
        Lcom/android/server/am/AppPcService$AppPcServiceResources$layout;,
        Lcom/android/server/am/AppPcService$AppPcServiceResources$string;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2661
    return-void
.end method

.method public static getLayoutFromSecurityApp(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2605
    invoke-static {p0}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getSecurityAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2606
    if-eqz v0, :cond_0

    .line 2609
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "layout"

    .line 2610
    # getter for: Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$3500()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2611
    if-eqz v1, :cond_1

    .line 2614
    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->setTheme(I)V

    .line 2615
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2616
    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2617
    return-object v0

    .line 2607
    :cond_0
    return-object v4

    .line 2612
    :cond_1
    return-object v4
.end method

.method private static getSecurityAppContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2572
    :try_start_0
    # getter for: Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$3500()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2577
    :goto_0
    return-object v0

    .line 2576
    :catch_0
    move-exception v1

    const-string/jumbo v1, "Security_AppPcService"

    const-string/jumbo v2, "getSecurityAppContext error"

    .line 2575
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2581
    invoke-static {p0}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getSecurityAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2582
    if-eqz v0, :cond_0

    .line 2585
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "string"

    .line 2586
    # getter for: Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$3500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2587
    if-eqz v1, :cond_1

    .line 2590
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2583
    :cond_0
    return-object v3

    .line 2588
    :cond_1
    return-object v3
.end method

.method public static varargs getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2593
    invoke-static {p0}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getSecurityAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2594
    if-eqz v0, :cond_0

    .line 2597
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "string"

    .line 2598
    # getter for: Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$3500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2599
    if-eqz v1, :cond_1

    .line 2602
    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2595
    :cond_0
    return-object v3

    .line 2600
    :cond_1
    return-object v3
.end method

.method public static getVersionCodeFromSecurityApp(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2669
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2673
    :try_start_0
    # getter for: Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$3500()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2674
    if-nez v1, :cond_0

    .line 2683
    :goto_0
    return v0

    .line 2675
    :cond_0
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2681
    :catch_0
    move-exception v0

    .line 2679
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, -0x1

    .line 2680
    goto :goto_0
.end method
