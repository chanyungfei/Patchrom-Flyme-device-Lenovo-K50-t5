.class public Landroid/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;,
        Landroid/preference/PreferenceManager$OnActivityResultListener;,
        Landroid/preference/PreferenceManager$OnActivityStopListener;,
        Landroid/preference/PreferenceManager$OnActivityDestroyListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final KEY_HAS_SET_DEFAULT_VALUES:Ljava/lang/String; = "_has_set_default_values"

.field public static final METADATA_KEY_PREFERENCES:Ljava/lang/String; = "android.preference"

.field private static final TAG:Ljava/lang/String; = "PreferenceManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityDestroyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceManager$OnActivityDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceManager$OnActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityStopListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceManager$OnActivityStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFragment:Landroid/preference/PreferenceFragment;

.field private mNextId:J

.field private mNextRequestCode:I

.field private mNoCommit:Z

.field private mOnPreferenceTreeClickListener:Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mPreferencesScreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharedPreferencesMode:I

.field private mSharedPreferencesName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/preference/PreferenceManager;->DBG:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "firstRequestCode"    # I

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/preference/PreferenceManager;->mNextId:J

    .line 153
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mActivity:Landroid/app/Activity;

    .line 154
    iput p2, p0, Landroid/preference/PreferenceManager;->mNextRequestCode:I

    .line 156
    invoke-direct {p0, p1}, Landroid/preference/PreferenceManager;->init(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/preference/PreferenceManager;->mNextId:J

    .line 168
    invoke-direct {p0, p1}, Landroid/preference/PreferenceManager;->init(Landroid/content/Context;)V

    .line 167
    return-void
.end method

.method private dismissAllScreens()V
    .locals 3

    .prologue
    .line 788
    monitor-enter p0

    .line 790
    :try_start_0
    iget-object v2, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit p0

    .line 791
    return-void

    .line 794
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 795
    .local v1, "screensToDismiss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    iget-object v2, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 798
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 799
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 798
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 788
    .end local v0    # "i":I
    .end local v1    # "screensToDismiss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 784
    .restart local v0    # "i":I
    .restart local v1    # "screensToDismiss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/DialogInterface;>;"
    :cond_1
    return-void
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-static {}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    .line 385
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultSharedPreferencesMode()I
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    .line 174
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method private queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 201
    const/16 v1, 0x80

    .line 200
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultValues(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "readAgain"    # Z

    .prologue
    .line 460
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-static {}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    .line 460
    invoke-static {p0, v0, v1, p1, p2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 457
    return-void
.end method

.method public static setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;
    .param p2, "sharedPreferencesMode"    # I
    .param p3, "resId"    # I
    .param p4, "readAgain"    # Z

    .prologue
    const/4 v5, 0x0

    .line 495
    const-string/jumbo v4, "_has_set_default_values"

    .line 494
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 497
    .local v0, "defaultValueSp":Landroid/content/SharedPreferences;
    if-nez p4, :cond_0

    const-string/jumbo v4, "_has_set_default_values"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 493
    :goto_0
    return-void

    .line 498
    :cond_0
    new-instance v2, Landroid/preference/PreferenceManager;

    invoke-direct {v2, p0}, Landroid/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 499
    .local v2, "pm":Landroid/preference/PreferenceManager;
    invoke-virtual {v2, p1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v2, p2}, Landroid/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    .line 501
    const/4 v4, 0x0

    invoke-virtual {v2, p0, p3, v4}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    .line 504
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "_has_set_default_values"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 506
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 507
    :catch_0
    move-exception v3

    .line 511
    .local v3, "unused":Ljava/lang/AbstractMethodError;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setNoCommit(Z)V
    .locals 2
    .param p1, "noCommit"    # Z

    .prologue
    .line 549
    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 551
    :try_start_0
    iget-object v1, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/preference/PreferenceManager;->mNoCommit:Z

    .line 548
    return-void

    .line 552
    :catch_0
    move-exception v0

    .line 556
    .local v0, "unused":Ljava/lang/AbstractMethodError;
    iget-object v1, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method addPreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "screen"    # Landroid/content/DialogInterface;

    .prologue
    .line 754
    monitor-enter p0

    .line 756
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 757
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    .line 760
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 753
    return-void

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 298
    new-instance v0, Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 299
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 300
    return-object v0
.end method

.method dispatchActivityDestroy()V
    .locals 4

    .prologue
    .line 721
    const/4 v2, 0x0

    .line 723
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityDestroyListener;>;"
    monitor-enter p0

    .line 724
    :try_start_0
    iget-object v3, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 725
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityDestroyListener;>;"
    iget-object v3, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 729
    if-eqz v2, :cond_1

    .line 730
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 731
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 732
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    invoke-interface {v3}, Landroid/preference/PreferenceManager$OnActivityDestroyListener;->onActivityDestroy()V

    .line 731
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 723
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 737
    :cond_1
    invoke-direct {p0}, Landroid/preference/PreferenceManager;->dismissAllScreens()V

    .line 720
    return-void
.end method

.method dispatchActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 623
    monitor-enter p0

    .line 624
    :try_start_0
    iget-object v3, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    return-void

    .line 625
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityResultListener;>;"
    monitor-exit p0

    .line 628
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 629
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 630
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceManager$OnActivityResultListener;

    invoke-interface {v3, p1, p2, p3}, Landroid/preference/PreferenceManager$OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 620
    :cond_1
    return-void

    .line 623
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityResultListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 629
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityResultListener;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method dispatchActivityStop()V
    .locals 4

    .prologue
    .line 675
    monitor-enter p0

    .line 676
    :try_start_0
    iget-object v3, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    return-void

    .line 677
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityStopListener;>;"
    monitor-exit p0

    .line 680
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 681
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 682
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceManager$OnActivityStopListener;

    invoke-interface {v3}, Landroid/preference/PreferenceManager$OnActivityStopListener;->onActivityStop()V

    .line 681
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 675
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityStopListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 672
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceManager$OnActivityStopListener;>;"
    :cond_1
    return-void
.end method

.method dispatchNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 781
    invoke-direct {p0}, Landroid/preference/PreferenceManager;->dismissAllScreens()V

    .line 780
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 2
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 429
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 430
    return-object v1

    .line 433
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 526
    iget-boolean v0, p0, Landroid/preference/PreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 528
    invoke-virtual {p0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 531
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0

    .line 533
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method getFragment()Landroid/preference/PreferenceFragment;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mFragment:Landroid/preference/PreferenceFragment;

    return-object v0
.end method

.method getNextId()J
    .locals 4

    .prologue
    .line 309
    monitor-enter p0

    .line 310
    :try_start_0
    iget-wide v0, p0, Landroid/preference/PreferenceManager;->mNextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/preference/PreferenceManager;->mNextId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNextRequestCode()I
    .locals 2

    .prologue
    .line 748
    monitor-enter p0

    .line 749
    :try_start_0
    iget v0, p0, Landroid/preference/PreferenceManager;->mNextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/preference/PreferenceManager;->mNextRequestCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 748
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getOnPreferenceTreeClickListener()Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-object v0
.end method

.method getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    .line 370
    iget v2, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesMode:I

    .line 369
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 373
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSharedPreferencesMode()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesMode:I

    return v0
.end method

.method public getSharedPreferencesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    return-object v0
.end method

.method inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 13
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .param p2, "rootPreferences"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 220
    sget-boolean v10, Landroid/preference/PreferenceManager;->DBG:Z

    if-eqz v10, :cond_0

    .line 221
    const-string/jumbo v10, "PreferenceManager"

    const-string/jumbo v11, "inflateFromIntent"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    invoke-direct {p0, p1}, Landroid/preference/PreferenceManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 225
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 227
    .local v5, "inflatedRes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 228
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 229
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 231
    .local v7, "metaData":Landroid/os/Bundle;
    if-eqz v7, :cond_1

    const-string/jumbo v10, "android.preference"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 237
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 238
    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v12, "android.preference"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 237
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 240
    .local v9, "uniqueResId":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 241
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 245
    :try_start_0
    iget-object v10, p0, Landroid/preference/PreferenceManager;->mContext:Landroid/content/Context;

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 252
    .local v2, "context":Landroid/content/Context;
    new-instance v6, Landroid/preference/PreferenceInflater;

    invoke-direct {v6, v2, p0}, Landroid/preference/PreferenceInflater;-><init>(Landroid/content/Context;Landroid/preference/PreferenceManager;)V

    .line 253
    .local v6, "inflater":Landroid/preference/PreferenceInflater;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 254
    const-string/jumbo v11, "android.preference"

    .line 253
    invoke-virtual {v1, v10, v11}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 256
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v10, 0x1

    .line 255
    invoke-virtual {v6, v8, p2, v10}, Landroid/preference/PreferenceInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "rootPreferences":Landroid/preference/PreferenceScreen;
    check-cast p2, Landroid/preference/PreferenceScreen;

    .line 257
    .restart local p2    # "rootPreferences":Landroid/preference/PreferenceScreen;
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 227
    .end local v2    # "context":Landroid/content/Context;
    .end local v6    # "inflater":Landroid/preference/PreferenceInflater;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "uniqueResId":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 246
    .restart local v9    # "uniqueResId":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 247
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v10, "PreferenceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Could not create context for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 248
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    .line 247
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 261
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "metaData":Landroid/os/Bundle;
    .end local v9    # "uniqueResId":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, p0}, Landroid/preference/PreferenceScreen;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 263
    return-object p2
.end method

.method public inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "rootPreferences"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v3, 0x1

    .line 280
    sget-boolean v1, Landroid/preference/PreferenceManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 281
    const-string/jumbo v1, "PreferenceManager"

    const-string/jumbo v2, "inflateFromResource"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    invoke-direct {p0, v3}, Landroid/preference/PreferenceManager;->setNoCommit(Z)V

    .line 287
    new-instance v0, Landroid/preference/PreferenceInflater;

    invoke-direct {v0, p1, p0}, Landroid/preference/PreferenceInflater;-><init>(Landroid/content/Context;Landroid/preference/PreferenceManager;)V

    .line 288
    .local v0, "inflater":Landroid/preference/PreferenceInflater;
    invoke-virtual {v0, p2, p3, v3}, Landroid/preference/PreferenceInflater;->inflate(ILandroid/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "rootPreferences":Landroid/preference/PreferenceScreen;
    check-cast p3, Landroid/preference/PreferenceScreen;

    .line 289
    .restart local p3    # "rootPreferences":Landroid/preference/PreferenceScreen;
    invoke-virtual {p3, p0}, Landroid/preference/PreferenceScreen;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 292
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/preference/PreferenceManager;->setNoCommit(Z)V

    .line 294
    return-object p3
.end method

.method registerOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    .prologue
    .line 692
    monitor-enter p0

    .line 693
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    .line 697
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 698
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 691
    return-void

    .line 692
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method registerOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityResultListener;

    .prologue
    .line 593
    monitor-enter p0

    .line 594
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    .line 598
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 599
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 592
    return-void

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityStopListener;

    .prologue
    .line 643
    monitor-enter p0

    .line 644
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    .line 648
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 649
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 642
    return-void

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method removePreferencesScreen(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "screen"    # Landroid/content/DialogInterface;

    .prologue
    .line 765
    monitor-enter p0

    .line 767
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    .line 768
    return-void

    .line 771
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferencesScreens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 764
    return-void

    .line 765
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setFragment(Landroid/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/preference/PreferenceFragment;

    .prologue
    .line 181
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mFragment:Landroid/preference/PreferenceFragment;

    .line 180
    return-void
.end method

.method setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    .prologue
    .line 810
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    .line 809
    return-void
.end method

.method setPreferences(Landroid/preference/PreferenceScreen;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 413
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-eq p1, v0, :cond_0

    .line 414
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 415
    const/4 v0, 0x1

    return v0

    .line 418
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setSharedPreferencesMode(I)V
    .locals 1
    .param p1, "sharedPreferencesMode"    # I

    .prologue
    .line 356
    iput p1, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesMode:I

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 355
    return-void
.end method

.method public setSharedPreferencesName(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;

    .prologue
    .line 333
    iput-object p1, p0, Landroid/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 332
    return-void
.end method

.method shouldCommit()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Landroid/preference/PreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method unregisterOnActivityDestroyListener(Landroid/preference/PreferenceManager$OnActivityDestroyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    .prologue
    .line 709
    monitor-enter p0

    .line 710
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityDestroyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 708
    return-void

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method unregisterOnActivityResultListener(Landroid/preference/PreferenceManager$OnActivityResultListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityResultListener;

    .prologue
    .line 610
    monitor-enter p0

    .line 611
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 609
    return-void

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/preference/PreferenceManager$OnActivityStopListener;

    .prologue
    .line 661
    monitor-enter p0

    .line 662
    :try_start_0
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Landroid/preference/PreferenceManager;->mActivityStopListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 660
    return-void

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
