.class public abstract Lcom/android/internal/content/PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "PackageMonitor.java"


# static fields
.field public static final PACKAGE_PERMANENT_CHANGE:I = 0x3

.field public static final PACKAGE_TEMPORARY_CHANGE:I = 0x2

.field public static final PACKAGE_UNCHANGED:I = 0x0

.field public static final PACKAGE_UPDATING:I = 0x1

.field static final sExternalFilt:Landroid/content/IntentFilter;

.field static final sNonDataFilt:Landroid/content/IntentFilter;

.field static final sPackageFilt:Landroid/content/IntentFilter;


# instance fields
.field private final GOOGLE_GMS_PACKAGES:[Ljava/lang/String;

.field private final GOOGLE_PLAY:Ljava/lang/String;

.field mAppearingPackages:[Ljava/lang/String;

.field mChangeType:I

.field mChangeUserId:I

.field mDisappearingPackages:[Ljava/lang/String;

.field mModifiedPackages:[Ljava/lang/String;

.field mRegisteredContext:Landroid/content/Context;

.field mRegisteredHandler:Landroid/os/Handler;

.field mSomePackagesChanged:Z

.field mTempArray:[Ljava/lang/String;

.field final mUpdatingPackages:Ljava/util/HashSet;
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
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    .line 46
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    .line 66
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 70
    const-string/jumbo v1, "com.google.android.gms"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "com.google.android.gsf"

    aput-object v1, v0, v3

    .line 72
    const-string/jumbo v1, "com.google.android.gsf.login"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 69
    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->GOOGLE_GMS_PACKAGES:[Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "com.android.vending"

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->GOOGLE_PLAY:Ljava/lang/String;

    .line 75
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method private disableOrEnableGsmPackage(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "disable"    # Z

    .prologue
    .line 443
    if-eqz p2, :cond_0

    .line 444
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->GOOGLE_GMS_PACKAGES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 446
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/content/PackageMonitor;->GOOGLE_GMS_PACKAGES:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 447
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 446
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "PackageMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GMS_FLAG package disable error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 453
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/content/PackageMonitor;->GOOGLE_GMS_PACKAGES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 455
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/content/PackageMonitor;->GOOGLE_GMS_PACKAGES:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 456
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 455
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 453
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 457
    :catch_1
    move-exception v0

    .line 458
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "PackageMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GMS_FLAG package enabled error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 442
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    return-void
.end method


# virtual methods
.method public anyPackagesAppearing()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public anyPackagesDisappearing()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public didSomePackagesChange()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    return v0
.end method

.method public getChangingUserId()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    return v0
.end method

.method getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 283
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    .line 283
    :cond_0
    const/4 v0, 0x0

    .local v0, "pkg":Ljava/lang/String;
    goto :goto_0
.end method

.method public getRegisteredHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isPackageAppearing(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 229
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    return v1

    .line 228
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 234
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method public isPackageDisappearing(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    return v1

    .line 243
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 249
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method public isPackageModified(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 263
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const/4 v1, 0x1

    return v1

    .line 262
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 268
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method isPackageUpdating(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isReplacing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 257
    iget v1, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBeginPackageChanges()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onFinishPackageChanges()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public onHandleUserStop(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # I

    .prologue
    .line 187
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 133
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 213
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 173
    if-eqz p3, :cond_1

    .line 174
    array-length v3, p3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p3, v1

    .line 175
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    const/4 v1, 0x1

    return v1

    .line 174
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 207
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 219
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 139
    return-void
.end method

.method public onPackageRemovedAllUsers(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 146
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 152
    return-void
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 149
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 193
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 196
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 289
    const-string/jumbo v8, "android.intent.extra.user_handle"

    .line 290
    const/16 v9, -0x2710

    .line 289
    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    .line 291
    iget v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    const/16 v9, -0x2710

    if-ne v8, v9, :cond_0

    .line 292
    const-string/jumbo v8, "PackageMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Intent broadcast does not contain user handle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onBeginPackageChanges()V

    .line 297
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 298
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 300
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 302
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, "pkg":Ljava/lang/String;
    const-string/jumbo v8, "android.intent.extra.UID"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 307
    .local v7, "uid":I
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 308
    if-eqz v5, :cond_1

    .line 309
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    .line 310
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    .line 311
    const-string/jumbo v8, "android.intent.extra.REPLACING"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 312
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    .line 313
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 314
    invoke-virtual {p0, v5, v7}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateFinished(Ljava/lang/String;I)V

    .line 315
    invoke-virtual {p0, v5}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 320
    :goto_0
    iget v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v5, v8}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    .line 321
    iget v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 322
    iget-object v9, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    monitor-enter v9

    .line 323
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    invoke-virtual {v8, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 329
    :cond_1
    :try_start_1
    const-string/jumbo v8, "com.android.vending"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/content/PackageMonitor;->GOOGLE_GMS_PACKAGES:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v8

    .line 331
    const/4 v9, 0x2

    .line 330
    if-ne v8, v9, :cond_2

    .line 331
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/16 v9, 0x3e8

    if-ne v8, v9, :cond_2

    .line 332
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8}, Lcom/android/internal/content/PackageMonitor;->disableOrEnableGsmPackage(Landroid/content/Context;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 434
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v7    # "uid":I
    :cond_2
    :goto_1
    iget-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    if-eqz v8, :cond_3

    .line 435
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onSomePackagesChanged()V

    .line 438
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->onFinishPackageChanges()V

    .line 439
    const/16 v8, -0x2710

    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeUserId:I

    .line 288
    return-void

    .line 317
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v7    # "uid":I
    :cond_4
    const/4 v8, 0x3

    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 318
    invoke-virtual {p0, v5, v7}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 334
    :catch_0
    move-exception v3

    .line 335
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "PackageMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "GMS_FLAG package disable error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 338
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v7    # "uid":I
    :cond_5
    const-string/jumbo v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 339
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 340
    .restart local v5    # "pkg":Ljava/lang/String;
    const-string/jumbo v8, "android.intent.extra.UID"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 341
    .restart local v7    # "uid":I
    if-eqz v5, :cond_7

    .line 342
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 343
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    .line 344
    const-string/jumbo v8, "android.intent.extra.REPLACING"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 345
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 346
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mUpdatingPackages:Ljava/util/HashSet;

    monitor-enter v8

    monitor-exit v8

    .line 350
    invoke-virtual {p0, v5, v7}, Lcom/android/internal/content/PackageMonitor;->onPackageUpdateStarted(Ljava/lang/String;I)V

    .line 362
    :cond_6
    :goto_2
    iget v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v5, v8}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    .line 365
    :cond_7
    const-string/jumbo v8, "PackageMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "GMS_FLAG Binder.getCallingUid() =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "; pkg =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :try_start_2
    const-string/jumbo v8, "com.android.vending"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/content/PackageMonitor;->GOOGLE_GMS_PACKAGES:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v8

    .line 369
    const/4 v9, 0x1

    .line 368
    if-ne v8, v9, :cond_2

    .line 369
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/16 v9, 0x3e8

    if-ne v8, v9, :cond_2

    .line 370
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/internal/content/PackageMonitor;->disableOrEnableGsmPackage(Landroid/content/Context;Z)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 372
    :catch_1
    move-exception v3

    .line 373
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "PackageMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "GMS_FLAG package disable error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 352
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_8
    const/4 v8, 0x3

    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 356
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 357
    invoke-virtual {p0, v5, v7}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 358
    const-string/jumbo v8, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 359
    invoke-virtual {p0, v5, v7}, Lcom/android/internal/content/PackageMonitor;->onPackageRemovedAllUsers(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 376
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v7    # "uid":I
    :cond_9
    const-string/jumbo v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 377
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 378
    .restart local v5    # "pkg":Ljava/lang/String;
    const-string/jumbo v8, "android.intent.extra.UID"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 380
    .restart local v7    # "uid":I
    const-string/jumbo v8, "android.intent.extra.changed_component_name_list"

    .line 379
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, "components":[Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 382
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mModifiedPackages:[Ljava/lang/String;

    .line 383
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mTempArray:[Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    .line 384
    const/4 v8, 0x3

    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 385
    invoke-virtual {p0, v5, v7, v2}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 386
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 388
    :cond_a
    invoke-virtual {p0, v5}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 390
    .end local v2    # "components":[Ljava/lang/String;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v7    # "uid":I
    :cond_b
    const-string/jumbo v8, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 391
    const-string/jumbo v8, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 392
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 394
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 395
    const-string/jumbo v9, "android.intent.extra.UID"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x0

    .line 393
    invoke-virtual {p0, p2, v8, v9, v10}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result v1

    .line 396
    .local v1, "canRestart":Z
    if-eqz v1, :cond_2

    const/4 v8, -0x1

    invoke-virtual {p0, v8}, Lcom/android/internal/content/PackageMonitor;->setResultCode(I)V

    goto/16 :goto_1

    .line 397
    .end local v1    # "canRestart":Z
    :cond_c
    const-string/jumbo v8, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 398
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iput-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 399
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 400
    iget-object v8, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 401
    const-string/jumbo v9, "android.intent.extra.UID"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    .line 400
    invoke-virtual {p0, p2, v8, v9, v10}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    goto/16 :goto_1

    .line 402
    :cond_d
    const-string/jumbo v8, "android.intent.action.UID_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 403
    const-string/jumbo v8, "android.intent.extra.UID"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/internal/content/PackageMonitor;->onUidRemoved(I)V

    goto/16 :goto_1

    .line 404
    :cond_e
    const-string/jumbo v8, "android.intent.action.USER_STOPPED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 405
    const-string/jumbo v8, "android.intent.extra.user_handle"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 406
    const-string/jumbo v8, "android.intent.extra.user_handle"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0, p2, v8}, Lcom/android/internal/content/PackageMonitor;->onHandleUserStop(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 408
    :cond_f
    const-string/jumbo v8, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 409
    const-string/jumbo v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 410
    .local v6, "pkgList":[Ljava/lang/String;
    iput-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mAppearingPackages:[Ljava/lang/String;

    .line 411
    const-string/jumbo v8, "android.intent.extra.REPLACING"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 412
    const/4 v8, 0x1

    .line 411
    :goto_3
    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 413
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 414
    if-eqz v6, :cond_2

    .line 415
    invoke-virtual {p0, v6}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    .line 416
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    array-length v8, v6

    if-ge v4, v8, :cond_2

    .line 417
    aget-object v8, v6, v4

    iget v9, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/content/PackageMonitor;->onPackageAppeared(Ljava/lang/String;I)V

    .line 416
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 412
    .end local v4    # "i":I
    :cond_10
    const/4 v8, 0x2

    goto :goto_3

    .line 420
    .end local v6    # "pkgList":[Ljava/lang/String;
    :cond_11
    const-string/jumbo v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 421
    const-string/jumbo v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 422
    .restart local v6    # "pkgList":[Ljava/lang/String;
    iput-object v6, p0, Lcom/android/internal/content/PackageMonitor;->mDisappearingPackages:[Ljava/lang/String;

    .line 423
    const-string/jumbo v8, "android.intent.extra.REPLACING"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 424
    const/4 v8, 0x1

    .line 423
    :goto_5
    iput v8, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    .line 425
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/content/PackageMonitor;->mSomePackagesChanged:Z

    .line 426
    if-eqz v6, :cond_2

    .line 427
    invoke-virtual {p0, v6}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    .line 428
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    array-length v8, v6

    if-ge v4, v8, :cond_2

    .line 429
    aget-object v8, v6, v4

    iget v9, p0, Lcom/android/internal/content/PackageMonitor;->mChangeType:I

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/content/PackageMonitor;->onPackageDisappeared(Ljava/lang/String;I)V

    .line 428
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 424
    .end local v4    # "i":I
    :cond_12
    const/4 v8, 0x2

    goto :goto_5
.end method

.method public onSomePackagesChanged()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public onUidRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 190
    return-void
.end method

.method public register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/os/Looper;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "externalStorage"    # Z

    .prologue
    const/4 v4, 0x0

    .line 83
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    .line 87
    if-nez p2, :cond_2

    .line 88
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    .line 92
    :goto_0
    if-eqz p3, :cond_3

    .line 93
    sget-object v3, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    iget-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 94
    sget-object v3, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    iget-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 95
    if-eqz p4, :cond_1

    .line 96
    sget-object v3, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    .line 97
    iget-object v5, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    .line 96
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 82
    :cond_1
    :goto_1
    return-void

    .line 90
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    goto :goto_0

    .line 100
    :cond_3
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sPackageFilt:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 101
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sNonDataFilt:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 102
    if-eqz p4, :cond_1

    .line 103
    sget-object v0, Lcom/android/internal/content/PackageMonitor;->sExternalFilt:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public register(Landroid/content/Context;Landroid/os/Looper;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/os/Looper;
    .param p3, "externalStorage"    # Z

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 77
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    iput-object v1, p0, Lcom/android/internal/content/PackageMonitor;->mRegisteredContext:Landroid/content/Context;

    .line 112
    return-void
.end method
