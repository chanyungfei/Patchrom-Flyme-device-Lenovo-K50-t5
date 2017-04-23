.class public Lcom/lenovo/memoryclean/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final CONTROLLABLE_SYSTEM_APPS_PATH:Ljava/lang/String; = "/etc/com_lenovo_security/controllable_system_apps"

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static sControllableSystemApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lenovo/memoryclean/Utils;->sControllableSystemApps:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 83
    if-eqz p1, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 94
    :goto_0
    return-object p1

    .line 84
    :cond_0
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static initControllableSystemApps()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lcom/lenovo/memoryclean/Utils;->initControllableSystemAppsIfNeed()V

    .line 28
    return-void
.end method

.method private static initControllableSystemAppsIfNeed()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 41
    sget-object v3, Lcom/lenovo/memoryclean/Utils;->sControllableSystemApps:Ljava/util/Set;

    monitor-enter v3

    .line 42
    :try_start_0
    sget-object v0, Lcom/lenovo/memoryclean/Utils;->sControllableSystemApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const-string/jumbo v0, "/etc/com_lenovo_security/controllable_system_apps"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    const-string/jumbo v0, "/etc/com_lenovo_security/controllable_system_apps"

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string/jumbo v0, ""

    .line 58
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    if-nez v0, :cond_2

    .line 65
    if-nez v4, :cond_3

    .line 68
    :goto_1
    if-nez v1, :cond_4

    .line 74
    :cond_0
    :goto_2
    :try_start_4
    monitor-exit v3

    .line 75
    return-void

    .line 43
    :cond_1
    monitor-exit v3

    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 50
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 59
    :cond_2
    :try_start_5
    sget-object v2, Lcom/lenovo/memoryclean/Utils;->sControllableSystemApps:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    :goto_3
    :try_start_6
    const-string/jumbo v2, "Utils"

    .line 62
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 65
    if-nez v4, :cond_5

    .line 68
    :goto_4
    if-eqz v1, :cond_0

    .line 69
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 72
    :catch_2
    move-exception v0

    goto :goto_2

    .line 66
    :cond_3
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 72
    :catch_3
    move-exception v0

    goto :goto_2

    .line 69
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 74
    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0

    .line 66
    :cond_5
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 73
    :catchall_1
    move-exception v0

    move-object v1, v2

    .line 65
    :goto_5
    if-nez v4, :cond_6

    .line 68
    :goto_6
    if-nez v1, :cond_7

    .line 72
    :goto_7
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 66
    :cond_6
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_6

    .line 72
    :catch_4
    move-exception v1

    goto :goto_7

    .line 69
    :cond_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_7

    .line 73
    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method public static isInControllableSystemApps(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/lenovo/memoryclean/Utils;->initControllableSystemAppsIfNeed()V

    .line 36
    sget-object v1, Lcom/lenovo/memoryclean/Utils;->sControllableSystemApps:Ljava/util/Set;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/lenovo/memoryclean/Utils;->sControllableSystemApps:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
