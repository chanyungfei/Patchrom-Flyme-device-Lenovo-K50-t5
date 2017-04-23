.class public Landroid/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActivityChooserModel$ActivityChooserModelClient;,
        Landroid/widget/ActivityChooserModel$ActivitySorter;,
        Landroid/widget/ActivityChooserModel$OnChooseActivityListener;,
        Landroid/widget/ActivityChooserModel$HistoricalRecord;,
        Landroid/widget/ActivityChooserModel$ActivityResolveInfo;,
        Landroid/widget/ActivityChooserModel$DefaultSorter;,
        Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;,
        Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTRIBUTE_TIME:Ljava/lang/String; = "time"

.field private static final ATTRIBUTE_WEIGHT:Ljava/lang/String; = "weight"

.field private static final DBG:Z

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ACTIVITY_INFLATION:I = 0x5

.field private static final DEFAULT_HISTORICAL_RECORD_WEIGHT:F = 1.0f

.field public static final DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String; = "activity_choser_model_history.xml"

.field public static final DEFAULT_HISTORY_MAX_LENGTH:I = 0x32

.field private static final HISTORY_FILE_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG_HISTORICAL_RECORD:Ljava/lang/String; = "historical-record"

.field private static final TAG_HISTORICAL_RECORDS:Ljava/lang/String; = "historical-records"

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

.field private mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

.field private mCanReadHistoricalData:Z

.field private final mContext:Landroid/content/Context;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field private final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field private final mInstanceLock:Ljava/lang/Object;

.field private mIntent:Landroid/content/Intent;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

.field private mReadShareHistoryCalled:Z

.field private mReloadActivities:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/widget/ActivityChooserModel;->DBG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/ActivityChooserModel;)Lcom/mediatek/common/media/IRCSePriorityExt;
    .locals 1

    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/ActivityChooserModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    return p1
.end method

.method static synthetic -set1(Landroid/widget/ActivityChooserModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 176
    const-class v0, Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    .line 177
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/widget/ActivityChooserModel;->DBG:Z

    .line 238
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    sput-object v0, Landroid/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    .line 109
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "historyFileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 373
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 249
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 264
    new-instance v0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;

    invoke-direct {v0, p0, v2}, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;)V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 281
    iput-object v2, p0, Landroid/widget/ActivityChooserModel;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    .line 286
    new-instance v0, Landroid/widget/ActivityChooserModel$DefaultSorter;

    invoke-direct {v0, p0, v2}, Landroid/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$DefaultSorter;)V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    .line 291
    const/16 v0, 0x32

    iput v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 301
    iput-boolean v3, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 312
    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 320
    iput-boolean v3, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 325
    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 374
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    .line 375
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    const-string/jumbo v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    :cond_0
    iput-object p2, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 381
    :goto_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 384
    const-class v0, Lcom/mediatek/common/media/IRCSePriorityExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    .line 383
    invoke-static {v0, v1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/media/IRCSePriorityExt;

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    .line 385
    sget-boolean v0, Landroid/widget/ActivityChooserModel;->DBG:Z

    if-eqz v0, :cond_1

    .line 386
    sget-object v0, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RCSe Plugin initiated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ActivityChooserModel;->mRCSePriorityExt:Lcom/mediatek/common/media/IRCSePriorityExt;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_1
    return-void

    .line 377
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method private addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z
    .locals 2
    .param p1, "historicalRecord"    # Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .prologue
    .line 807
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 808
    .local v0, "added":Z
    if-eqz v0, :cond_0

    .line 809
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 810
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 811
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->persistHistoricalDataIfNeeded()V

    .line 812
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 813
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V

    .line 815
    :cond_0
    return v0
.end method

.method private dumpActivities()V
    .locals 7

    .prologue
    .line 1216
    sget-boolean v4, Landroid/widget/ActivityChooserModel;->DBG:Z

    if-eqz v4, :cond_1

    .line 1217
    sget-object v4, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "dumpActivities starts."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 1220
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1221
    .local v1, "activityCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1222
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 1223
    .local v2, "currentActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    sget-object v4, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", activity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1226
    .end local v2    # "currentActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    :cond_0
    sget-object v4, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "dumpActivities ends."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .end local v1    # "activityCount":I
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private ensureConsistentState()V
    .locals 2

    .prologue
    .line 720
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->loadActivitiesIfNeeded()Z

    move-result v0

    .line 721
    .local v0, "stateChanged":Z
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->readHistoricalDataIfNeeded()Z

    move-result v1

    or-int/2addr v0, v1

    .line 722
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 723
    if-eqz v0, :cond_1

    .line 724
    sget-boolean v1, Landroid/widget/ActivityChooserModel;->DBG:Z

    if-eqz v1, :cond_0

    .line 725
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->dumpActivities()V

    .line 728
    :cond_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 729
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V

    .line 719
    :cond_1
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "historyFileName"    # Ljava/lang/String;

    .prologue
    .line 357
    sget-object v2, Landroid/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 358
    :try_start_0
    sget-object v1, Landroid/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel;

    .line 359
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    if-nez v0, :cond_0

    .line 360
    new-instance v0, Landroid/widget/ActivityChooserModel;

    .end local v0    # "dataModel":Landroid/widget/ActivityChooserModel;
    invoke-direct {v0, p0, p1}, Landroid/widget/ActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 361
    .restart local v0    # "dataModel":Landroid/widget/ActivityChooserModel;
    sget-object v1, Landroid/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 363
    return-object v0

    .line 357
    .end local v0    # "dataModel":Landroid/widget/ActivityChooserModel;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private loadActivitiesIfNeeded()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 757
    iget-boolean v5, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    .line 758
    iput-boolean v7, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 759
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 760
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 761
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    .line 760
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 762
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 763
    .local v3, "resolveInfoCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 764
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 765
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 766
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 767
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 768
    iget-boolean v8, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 766
    invoke-static {v5, v6, v7, v8}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v5

    if-nez v5, :cond_0

    .line 769
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    new-instance v6, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v6, p0, v2}, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroid/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    sget-boolean v5, Landroid/widget/ActivityChooserModel;->DBG:Z

    if-eqz v5, :cond_2

    .line 774
    sget-object v5, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadActivitiesIfNeeded, activities updated, mIntent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_2
    const/4 v5, 0x1

    return v5

    .line 779
    .end local v1    # "i":I
    .end local v3    # "resolveInfoCount":I
    .end local v4    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    return v7
.end method

.method private persistHistoricalDataIfNeeded()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 626
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    if-nez v0, :cond_0

    .line 627
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v0, :cond_1

    .line 630
    return-void

    .line 632
    :cond_1
    iput-boolean v5, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 633
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 634
    new-instance v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 635
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v5

    iget-object v3, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 634
    invoke-virtual {v0, v1, v2}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 625
    :cond_2
    return-void
.end method

.method private pruneExcessiveHistoricalRecordsIfNeeded()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 822
    iget-object v3, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    sub-int v1, v3, v4

    .line 823
    .local v1, "pruneCount":I
    if-gtz v1, :cond_0

    .line 824
    return-void

    .line 826
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 827
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 828
    iget-object v3, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 827
    .local v2, "prunedRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 821
    .end local v2    # "prunedRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    :cond_1
    return-void
.end method

.method private readHistoricalDataIfNeeded()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 790
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    :cond_0
    return v1

    .line 792
    :cond_1
    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 793
    iput-boolean v2, p0, Landroid/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 794
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->readHistoricalDataImpl()V

    .line 795
    return v2
.end method

.method private readHistoricalDataImpl()V
    .locals 18

    .prologue
    .line 1064
    const/4 v3, 0x0

    .line 1066
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1074
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 1075
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v15}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v8, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1077
    const/4 v12, 0x0

    .line 1078
    .local v12, "type":I
    :goto_0
    const/4 v15, 0x1

    if-eq v12, v15, :cond_0

    const/4 v15, 0x2

    if-eq v12, v15, :cond_0

    .line 1079
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    goto :goto_0

    .line 1067
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    .local v3, "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .line 1071
    .local v4, "fnfe":Ljava/io/FileNotFoundException;
    return-void

    .line 1082
    .end local v4    # "fnfe":Ljava/io/FileNotFoundException;
    .local v3, "fis":Ljava/io/FileInputStream;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_0
    const-string/jumbo v15, "historical-records"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 1083
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v16, "Share records file does not start with historical-records tag."

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1119
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_1
    move-exception v14

    .line 1120
    .local v14, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    sget-object v15, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Error reading historical recrod file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1124
    if-eqz v3, :cond_1

    .line 1126
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 1063
    .end local v14    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-void

    .line 1087
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 1088
    .local v5, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1091
    :cond_3
    :goto_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v12

    .line 1092
    const/4 v15, 0x1

    if-ne v12, v15, :cond_4

    .line 1124
    if-eqz v3, :cond_1

    .line 1126
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 1127
    :catch_2
    move-exception v6

    .local v6, "ioe":Ljava/io/IOException;
    goto :goto_1

    .line 1095
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_4
    const/4 v15, 0x3

    if-eq v12, v15, :cond_3

    const/4 v15, 0x4

    if-eq v12, v15, :cond_3

    .line 1098
    :try_start_6
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1099
    .local v7, "nodeName":Ljava/lang/String;
    const-string/jumbo v15, "historical-record"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 1100
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v16, "Share records file not well-formed."

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1121
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_3
    move-exception v6

    .line 1122
    .restart local v6    # "ioe":Ljava/io/IOException;
    :try_start_7
    sget-object v15, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Error reading historical recrod file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1124
    if-eqz v3, :cond_1

    .line 1126
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    .line 1127
    :catch_4
    move-exception v6

    goto :goto_1

    .line 1103
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v7    # "nodeName":Ljava/lang/String;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_5
    :try_start_9
    const-string/jumbo v15, "activity"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v8, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1105
    .local v2, "activity":Ljava/lang/String;
    const-string/jumbo v15, "time"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v8, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1107
    .local v10, "time":J
    const-string/jumbo v15, "weight"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v8, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 1108
    .local v13, "weight":F
    new-instance v9, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    invoke-direct {v9, v2, v10, v11, v13}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 1109
    .local v9, "readRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 1123
    .end local v2    # "activity":Ljava/lang/String;
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "readRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v10    # "time":J
    .end local v12    # "type":I
    .end local v13    # "weight":F
    :catchall_0
    move-exception v15

    .line 1124
    if-eqz v3, :cond_6

    .line 1126
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1123
    :cond_6
    :goto_3
    throw v15

    .line 1127
    .restart local v14    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    goto/16 :goto_1

    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v14    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v6

    .restart local v6    # "ioe":Ljava/io/IOException;
    goto :goto_3
.end method

.method private sortActivitiesIfNeeded()Z
    .locals 4

    .prologue
    .line 741
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 742
    :cond_1
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 744
    iget-object v3, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 743
    invoke-interface {v0, v1, v2, v3}, Landroid/widget/ActivityChooserModel$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 745
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public chooseActivity(I)Landroid/content/Intent;
    .locals 11
    .param p1, "index"    # I

    .prologue
    const/4 v10, 0x0

    .line 496
    iget-object v7, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v7

    .line 503
    :try_start_0
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    if-gez p1, :cond_1

    :cond_0
    monitor-exit v7

    .line 504
    return-object v10

    .line 507
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 509
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 511
    .local v2, "chosenActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    .line 512
    iget-object v6, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 513
    iget-object v8, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 511
    invoke-direct {v3, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .local v3, "chosenName":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 516
    .local v0, "choiceIntent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 518
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    if-eqz v6, :cond_3

    .line 520
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 521
    .local v1, "choiceIntentCopy":Landroid/content/Intent;
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-interface {v6, p0, v1}, Landroid/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Landroid/widget/ActivityChooserModel;Landroid/content/Intent;)Z

    move-result v4

    .line 524
    .local v4, "handled":Z
    sget-boolean v6, Landroid/widget/ActivityChooserModel;->DBG:Z

    if-eqz v6, :cond_2

    .line 525
    sget-object v6, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Callback to onChooseActivity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 526
    const-string/jumbo v9, ", handled = "

    .line 525
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 526
    const-string/jumbo v9, ", this = "

    .line 525
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_2
    if-eqz v4, :cond_3

    .line 531
    new-instance v5, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/high16 v6, 0x3f800000    # 1.0f

    .line 531
    invoke-direct {v5, v3, v8, v9, v6}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 533
    .local v5, "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v5}, Landroid/widget/ActivityChooserModel;->addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 534
    return-object v10

    .line 538
    .end local v1    # "choiceIntentCopy":Landroid/content/Intent;
    .end local v4    # "handled":Z
    .end local v5    # "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    :cond_3
    :try_start_2
    new-instance v5, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/high16 v6, 0x3f800000    # 1.0f

    .line 538
    invoke-direct {v5, v3, v8, v9, v6}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 540
    .restart local v5    # "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v5}, Landroid/widget/ActivityChooserModel;->addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    .line 542
    return-object v0

    .line 496
    .end local v0    # "choiceIntent":Landroid/content/Intent;
    .end local v2    # "chosenActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "chosenName":Landroid/content/ComponentName;
    .end local v5    # "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 709
    invoke-super {p0}, Landroid/database/DataSetObservable;->finalize()V

    .line 710
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 708
    return-void
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 449
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 450
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 451
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getActivityCount()I
    .locals 2

    .prologue
    .line 434
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 436
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .locals 6
    .param p1, "activity"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 463
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 464
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 465
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 466
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 467
    .local v1, "activityCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 468
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 469
    .local v2, "currentActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v4, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, p1, :cond_0

    monitor-exit v5

    .line 470
    return v3

    .line 467
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 473
    .end local v2    # "currentActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    :cond_1
    const/4 v4, -0x1

    monitor-exit v5

    return v4

    .line 463
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .end local v1    # "activityCount":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 572
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 573
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 574
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    .line 578
    const/4 v0, 0x0

    return-object v0

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getHistoryMaxSize()I
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 691
    :try_start_0
    iget v1, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 690
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getHistorySize()I
    .locals 2

    .prologue
    .line 701
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 702
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 703
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 701
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_0
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 421
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setActivitySorter(Landroid/widget/ActivityChooserModel$ActivitySorter;)V
    .locals 2
    .param p1, "activitySorter"    # Landroid/widget/ActivityChooserModel$ActivitySorter;

    .prologue
    .line 647
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 648
    :try_start_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 649
    return-void

    .line 651
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    .line 652
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    .line 646
    return-void

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDefaultActivity(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    .line 592
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 593
    :try_start_0
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 595
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 596
    .local v2, "newDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 599
    .local v3, "oldDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v3, :cond_0

    .line 601
    iget v5, v3, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v7, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    sub-float/2addr v5, v7

    .line 602
    const/high16 v7, 0x40a00000    # 5.0f

    .line 601
    add-float v4, v5, v7

    .line 607
    .local v4, "weight":F
    :goto_0
    new-instance v0, Landroid/content/ComponentName;

    .line 608
    iget-object v5, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 609
    iget-object v7, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 607
    invoke-direct {v0, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    .local v0, "defaultName":Landroid/content/ComponentName;
    new-instance v1, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 610
    invoke-direct {v1, v0, v8, v9, v4}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 612
    .local v1, "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v1}, Landroid/widget/ActivityChooserModel;->addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 591
    return-void

    .line 604
    .end local v0    # "defaultName":Landroid/content/ComponentName;
    .end local v1    # "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v4    # "weight":F
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "weight":F
    goto :goto_0

    .line 592
    .end local v2    # "newDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "oldDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v4    # "weight":F
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public setHistoryMaxSize(I)V
    .locals 2
    .param p1, "historyMaxSize"    # I

    .prologue
    .line 672
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 673
    :try_start_0
    iget v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit v1

    .line 674
    return-void

    .line 676
    :cond_0
    :try_start_1
    iput p1, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 677
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 678
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    .line 671
    return-void

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 400
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 401
    :try_start_0
    sget-boolean v0, Landroid/widget/ActivityChooserModel;->DBG:Z

    if-eqz v0, :cond_0

    .line 402
    sget-object v0, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIntent, intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 403
    const-string/jumbo v3, ", backtrace = "

    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 403
    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 403
    const-string/jumbo v3, ", this = "

    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    monitor-exit v1

    .line 407
    return-void

    .line 409
    :cond_1
    :try_start_1
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 411
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 399
    return-void

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setOnChooseActivityListener(Landroid/widget/ActivityChooserModel$OnChooseActivityListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    .prologue
    .line 552
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 553
    :try_start_0
    sget-boolean v0, Landroid/widget/ActivityChooserModel;->DBG:Z

    if-eqz v0, :cond_0

    .line 554
    sget-object v0, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOnChooseActivityListener, listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 555
    const-string/jumbo v3, ", backtrace = "

    .line 554
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 555
    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 554
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 555
    const-string/jumbo v3, ", this = "

    .line 554
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 551
    return-void

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
