.class Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService$PermControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionRecord"
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mCode:I

.field private mData:Landroid/os/Bundle;

.field private mIsInControllableSystemApp:Z

.field private mIsSystemApp:Z

.field private mPackageName:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$1:Lcom/android/server/am/AppPcService$PermControlService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService$PermControlService;ILjava/lang/String;IILandroid/os/Bundle;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1955
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1953
    iput-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsSystemApp:Z

    .line 1954
    iput-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsInControllableSystemApp:Z

    .line 1956
    iput p4, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mUid:I

    .line 1957
    iput p2, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I

    .line 1958
    iput-object p6, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mData:Landroid/os/Bundle;

    .line 1959
    iput-object p3, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;

    .line 1960
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1963
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mAppName:Ljava/lang/String;

    .line 1964
    return-void

    .line 1961
    :cond_0
    invoke-virtual {p1, p4, p5}, Lcom/android/server/am/AppPcService$PermControlService;->getPackageName(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$2100(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z
    .locals 1

    .prologue
    .line 1947
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsSystemApp:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z
    .locals 1

    .prologue
    .line 1947
    iget-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsInControllableSystemApp:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I
    .locals 1

    .prologue
    .line 1947
    iget v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mUid:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I
    .locals 1

    .prologue
    .line 1947
    iget v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I

    return v0
.end method

.method private getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1966
    if-eqz p1, :cond_0

    .line 1971
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService;->access$3200(Lcom/android/server/am/AppPcService$PermControlService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 1972
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1973
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1974
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-eqz v0, :cond_1

    .line 1977
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsSystemApp:Z

    .line 1978
    invoke-static {p1}, Lcom/lenovo/common/AppPcUtils;->isInControllableSystemApps(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsInControllableSystemApp:Z

    .line 1983
    :goto_0
    return-object v1

    .line 1967
    :cond_0
    return-object v1

    .line 1975
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsSystemApp:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1982
    :catch_0
    move-exception v0

    .line 1981
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
