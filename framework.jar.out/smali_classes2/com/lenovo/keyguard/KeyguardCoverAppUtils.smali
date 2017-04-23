.class public Lcom/lenovo/keyguard/KeyguardCoverAppUtils;
.super Ljava/lang/Object;
.source "KeyguardCoverAppUtils.java"


# static fields
.field private static final COVER_APP_LOCKED:I = 0x1

.field private static final KEYGUARD_COVER_APP_COMPONENT:Ljava/lang/String; = "cover_app_component"

.field private static final KEYGUARD_COVER_APP_DISABLE:Ljava/lang/String; = "disable"

.field private static final KEYGUARD_COVER_APP_LOCK:Ljava/lang/String; = "cover_app_lock"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCoverAppLock(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 20
    if-nez p0, :cond_0

    .line 21
    return v8

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 26
    const-string/jumbo v7, "cover_app_component"

    .line 24
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "coverAppComponentString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 29
    const-string/jumbo v7, "cover_app_lock"

    .line 27
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 31
    .local v3, "coverAppLockFlag":I
    if-ne v3, v9, :cond_1

    if-eqz v2, :cond_1

    .line 32
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 33
    const-string/jumbo v6, "disable"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 51
    :cond_1
    return v8

    .line 34
    :cond_2
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 35
    .local v1, "coverAppComponentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    .line 36
    const-string/jumbo v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 37
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 39
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 40
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    .local v5, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v5, :cond_1

    .line 42
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 43
    return v9
.end method
