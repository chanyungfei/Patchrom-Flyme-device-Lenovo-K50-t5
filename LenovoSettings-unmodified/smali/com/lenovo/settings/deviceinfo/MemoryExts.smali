.class public Lcom/lenovo/settings/deviceinfo/MemoryExts;
.super Ljava/lang/Object;
.source "MemoryExts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;
    }
.end annotation


# static fields
.field private static final ACTION_DYNAMIC_SD_SWAP:Ljava/lang/String; = "com.mediatek.SD_SWAP"

.field private static final APP_INSTALL_AUTO_ID:I = 0x0

.field private static final DLG_DEFAULT_WRITE_DISK_CHANGE_SD0_ASK:I = 0x4

.field private static final DLG_DEFAULT_WRITE_DISK_CHANGE_SD1_ASK:I = 0x5

.field private static final DLG_DEFAULT_WRITE_DISK_CHANGE_UNKNOWN:I = 0x6

.field private static final EXTERNAL_STORAGE_PATH:Ljava/lang/String; = "/storage/sdcard1"

.field private static final MEMORY_SD0_EMMC_MNT:Ljava/lang/String; = "/storage/sdcard0"

.field private static final MEMORY_SD0_EMMC_MNT_FLAG_ICS:Ljava/lang/String; = "/storage/sdcard0"

.field private static final MEMORY_SD1_EMMC_MNT:Ljava/lang/String; = "/storage/sdcard1"

.field private static final MEMORY_SD1_EMMC_MNT_FLAG_ICS:Ljava/lang/String; = "/storage/sdcard1"

.field private static final ORDER_PHONE_STORAGE:I = -0x3

.field private static final ORDER_SD_CARD:I = -0x2

.field private static final ORDER_USB_OTG:I = -0x1

.field private static final SD_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MemorySettings"

.field private static final USB_CABLE_CONNECTED_STATE:Ljava/lang/String; = "CONNECTED"

.field private static final USB_STORAGE_PATH:Ljava/lang/String; = "/storage/usbotg"

.field private static sClickedMountPoint:Ljava/lang/String;


# instance fields
.field private defaultWriteDiskListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private installLocationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mActivity:Landroid/app/Activity;

.field private mApkInstallerEntrance:Landroid/preference/Preference;

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDeafultWritePathPref:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

.field private mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

.field private mDefaultWritePath:Ljava/lang/String;

.field mDynSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mInstallLocationContainer:Landroid/preference/ListPreference;

.field private mInstallLocationEnabled:Z

.field private mIsAppInstallerInstalled:Z

.field private mIsCategoryAdded:Z

.field private mIsRemovableVolume:Z

.field private mIsUnmountingUsb:Z

.field private mResources:Landroid/content/res/Resources;

.field private mRootContainer:Landroid/preference/PreferenceScreen;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field private mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

.field private mWritePathAdded:[Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Landroid/os/storage/StorageManager;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p3, "storageManager"    # Landroid/os/storage/StorageManager;

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    .line 75
    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    .line 76
    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsUnmountingUsb:Z

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    .line 134
    new-instance v0, Lcom/lenovo/settings/deviceinfo/MemoryExts$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$1;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->installLocationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 325
    new-instance v0, Lcom/lenovo/settings/deviceinfo/MemoryExts$2;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$2;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->defaultWriteDiskListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 598
    new-instance v0, Lcom/lenovo/settings/deviceinfo/MemoryExts$7;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$7;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    .line 110
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    .line 111
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    .line 112
    iput-object p2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    .line 113
    iput-object p3, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 114
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mResources:Landroid/content/res/Resources;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/settings/deviceinfo/MemoryExts;[Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # [Landroid/os/storage/StorageVolume;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/settings/deviceinfo/MemoryExts;)[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateInstallLocation()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/settings/deviceinfo/MemoryExts;I)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->showDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateDefaultWriteDisk()V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/settings/deviceinfo/MemoryExts;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->setEmmcDefaultStorage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/settings/deviceinfo/MemoryExts;Landroid/os/storage/IMountService;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # Landroid/os/storage/IMountService;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->doMount(Landroid/os/storage/IMountService;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->sClickedMountPoint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/settings/deviceinfo/MemoryExts;)[Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lenovo/settings/deviceinfo/MemoryExts;[Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;
    .param p1, "x1"    # [Landroid/os/storage/StorageVolume;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    return-object p1
.end method

.method static synthetic access$900(Lcom/lenovo/settings/deviceinfo/MemoryExts;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private doMount(Landroid/os/storage/IMountService;)V
    .locals 3
    .param p1, "mountService"    # Landroid/os/storage/IMountService;

    .prologue
    .line 556
    new-instance v0, Lcom/lenovo/settings/deviceinfo/MemoryExts$6;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts$6;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;Landroid/os/storage/IMountService;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/settings/deviceinfo/MemoryExts$6;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 572
    return-void
.end method

.method private filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;
    .locals 7
    .param p1, "volumes"    # [Landroid/os/storage/StorageVolume;

    .prologue
    .line 479
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v2, "storageVolumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 482
    :try_start_0
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Volume : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v6, p1, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , emulated : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_1
    const-string v3, "not_present"

    iget-object v4, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 490
    aget-object v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 493
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/storage/StorageVolume;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/storage/StorageVolume;

    return-object v3
.end method

.method private getAppInstallLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "default_install_location"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 149
    .local v0, "selectedLocation":I
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectedLocation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getEmmcDefaultStorage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 664
    const-string v1, "persist.sys.emmc"

    const-string v2, "/storage/sdcard0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "path":Ljava/lang/String;
    const-string v1, "MemorySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEmmcDefaultStorage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return-object v0
.end method

.method private initApkInstaller()V
    .locals 3

    .prologue
    .line 184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    .line 185
    iget-boolean v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    if-eqz v1, :cond_0

    .line 186
    new-instance v1, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    .line 187
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    const v2, 0x7f0c03cd

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 188
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    const v2, 0x7f0c03ce

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 189
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 191
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mediatek.apkinstaller"

    const-string v2, "com.mediatek.apkinstaller.APKInstaller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 197
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private initDefaultWriteDisk()V
    .locals 19

    .prologue
    .line 222
    const-string v15, "MemorySettings"

    const-string v16, "initDefaultWriteDisk"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v15, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    .line 224
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    const v16, 0x7f0c0353

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 230
    .local v1, "availableVolumes":[Landroid/os/storage/StorageVolume;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v14, "writePathList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v15}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, "mPathList":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v15}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v13

    .line 238
    .local v13, "volumes":[Landroid/os/storage/StorageVolume;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v7, "mVolumePathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v10, "storageVolumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v15, v6

    if-ge v3, v15, :cond_1

    .line 242
    const-string v15, "MemorySettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "VolumePath: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget-object v17, v13, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ,state is: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v17, v0

    aget-object v18, v6, v3

    invoke-virtual/range {v17 .. v18}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ,emulated is: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget-object v17, v13, v3

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", path is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    aget-object v17, v13, v3

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v15, "not_present"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v16, v0

    aget-object v17, v6, v3

    invoke-virtual/range {v16 .. v17}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 247
    const-string v15, "MemorySettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v17, v6, v3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  is present, so add it. "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    aget-object v15, v6, v3

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    aget-object v15, v13, v3

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 252
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    .line 253
    .local v5, "length":I
    const-string v15, "MemorySettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "default path group length = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-ge v3, v15, :cond_9

    .line 256
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 257
    .local v12, "volume":Landroid/os/storage/StorageVolume;
    new-instance v9, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v9, v15}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 258
    .local v9, "preference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v9, v15}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 260
    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mResources:Landroid/content/res/Resources;

    const v16, 0x7f0c023e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 262
    .local v11, "title":Ljava/lang/CharSequence;
    :goto_2
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 263
    .local v8, "path":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->getEmmcDefaultStorage()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "emmcPath":Ljava/lang/String;
    const-string v15, "MemorySettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "emmcPath="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v15, "/storage/sdcard0"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 266
    const-string v15, "MemorySettings"

    const-string v16, "initDefaultWriteDisk equal "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "path":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 268
    .restart local v8    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12, v15}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 288
    :cond_2
    :goto_3
    const-string v15, "MemorySettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "title:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", path="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v9, v11}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {v9, v8}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setPath(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->defaultWriteDiskListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v9, v15}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 294
    const-string v15, "/storage/usbotg"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 295
    const-string v15, "MemorySettings"

    const-string v16, "This is OTG storage"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setEnabled(Z)V

    .line 298
    :cond_3
    const-string v15, "/storage/sdcard1"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->isDeviceEncrypted()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 299
    const-string v15, "MemorySettings"

    const-string v16, "The device is encrypted."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setEnabled(Z)V

    .line 303
    :cond_4
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 260
    .end local v2    # "emmcPath":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mResources:Landroid/content/res/Resources;

    const v16, 0x7f0c023f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto/16 :goto_2

    .line 270
    .restart local v2    # "emmcPath":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v11    # "title":Ljava/lang/CharSequence;
    :cond_6
    const-string v15, "MemorySettings"

    const-string v16, "initDefaultWriteDisk not equal "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v15, "/storage/sdcard0"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 272
    move-object v8, v2

    .line 273
    invoke-interface {v7, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 274
    .local v4, "idx":I
    const/4 v15, -0x1

    if-le v4, v15, :cond_2

    if-ge v4, v5, :cond_2

    .line 275
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/StorageVolume;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 277
    .end local v4    # "idx":I
    :cond_7
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 278
    const-string v8, "/storage/sdcard0"

    .line 279
    const-string v15, "/storage/sdcard0"

    invoke-interface {v7, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 280
    .restart local v4    # "idx":I
    const/4 v15, -0x1

    if-le v4, v15, :cond_2

    if-ge v4, v5, :cond_2

    .line 281
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/StorageVolume;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 284
    .end local v4    # "idx":I
    :cond_8
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "path":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 285
    .restart local v8    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12, v15}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 307
    .end local v2    # "emmcPath":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "preference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v11    # "title":Ljava/lang/CharSequence;
    .end local v12    # "volume":Landroid/os/storage/StorageVolume;
    :cond_9
    const/4 v15, 0x0

    new-array v15, v15, [Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    invoke-interface {v14, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .line 308
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Z

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    .line 309
    return-void
.end method

.method private initInstallLocation()V
    .locals 4

    .prologue
    const v3, 0x7f0c085a

    const/4 v0, 0x0

    .line 118
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "set_install_location"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    .line 120
    iget-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    .line 122
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 123
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    const v1, 0x7f0c085b

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 124
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 125
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    const v1, 0x7f0e0030

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 126
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    const v1, 0x7f0e00a1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 127
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->getAppInstallLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->installLocationListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 132
    :cond_1
    return-void
.end method

.method private isDeviceEncrypted()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 312
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 314
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getEncryptionState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eq v4, v3, :cond_0

    .line 322
    :goto_0
    return v3

    .line 314
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v2

    .line 317
    .local v2, "re":Landroid/os/RemoteException;
    const-string v4, "MemorySettings"

    const-string v5, "Error getting encryption state"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 318
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v4, "MemorySettings"

    const-string v5, "Illegal state exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method private isPkgInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 213
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 214
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    const/4 v2, 0x1

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private setEmmcDefaultStorage(Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 626
    const/4 v4, 0x0

    .line 627
    .local v4, "propPath":Ljava/lang/String;
    const-string v6, "MemorySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setEmmcDefaultStorage:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v6, "/storage/sdcard0"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 629
    const-string v4, "/storage/sdcard0"

    .line 630
    const-string v6, "emmc"

    invoke-direct {p0, v6}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->writeSwitchProperty(Ljava/lang/String;)V

    .line 638
    :goto_0
    const-string v6, "persist.sys.emmc"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v6, "MemorySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set  persist.sys.emmc ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v6, :cond_0

    .line 642
    const-string v6, "persist.sys.sd.defaultpath"

    const-string v7, "/storage/sdcard0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v6, "MemorySettings"

    const-string v7, "set  persist.sys.sd.defaultpath =/storage/sdcard0"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 647
    .local v5, "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v5}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 648
    iput-object v5, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .line 646
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 631
    .end local v0    # "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    :cond_2
    const-string v6, "/storage/sdcard1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 632
    const-string v4, "/storage/sdcard1"

    .line 633
    const-string v6, "sdcard"

    invoke-direct {p0, v6}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->writeSwitchProperty(Ljava/lang/String;)V

    goto :goto_0

    .line 635
    :cond_3
    const-string v4, "/storage/sdcard0"

    .line 636
    const-string v6, "emmc"

    invoke-direct {p0, v6}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->writeSwitchProperty(Ljava/lang/String;)V

    goto :goto_0

    .line 652
    .restart local v0    # "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    :cond_4
    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    if-eqz v6, :cond_5

    .line 653
    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_5

    .line 654
    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    iput-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .line 655
    const-string v6, "/storage/sdcard0"

    iput-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWritePath:Ljava/lang/String;

    .line 659
    :cond_5
    iget-object v6, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 660
    .local v3, "pm":Landroid/os/PowerManager;
    if-eqz v3, :cond_6

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 661
    :cond_6
    return-void
.end method

.method private showDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v5, 0x7f0c0522

    const/4 v0, 0x0

    const v4, 0x7f0c0838

    const v3, 0x1040014

    .line 346
    const-string v1, "MemorySettings"

    const-string v2, "wht createdDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    packed-switch p1, :pswitch_data_0

    .line 383
    :goto_0
    return-object v0

    .line 349
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/deviceinfo/MemoryExts$3;

    invoke-direct {v2, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$3;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0240

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 361
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/lenovo/settings/deviceinfo/MemoryExts$4;

    invoke-direct {v2, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$4;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0241

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 373
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/lenovo/settings/deviceinfo/MemoryExts$5;

    invoke-direct {v1, p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts$5;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0242

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateAPKInstaller()V
    .locals 10

    .prologue
    .line 200
    iget-boolean v7, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsAppInstallerInstalled:Z

    if-nez v7, :cond_0

    .line 209
    :goto_0
    return-void

    .line 201
    :cond_0
    const/4 v1, 0x0

    .line 202
    .local v1, "flag":Z
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 203
    .local v4, "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 204
    .local v6, "writePath":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, "volumeState":Ljava/lang/String;
    const-string v7, "MemorySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Path : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    if-nez v1, :cond_1

    const-string v7, "mounted"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 202
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 208
    .end local v4    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v5    # "volumeState":Ljava/lang/String;
    .end local v6    # "writePath":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mApkInstallerEntrance:Landroid/preference/Preference;

    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateDefaultWriteDisk()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 389
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    array-length v8, v8

    if-ge v1, v8, :cond_3

    .line 390
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    aget-object v4, v8, v1

    .line 391
    .local v4, "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 392
    .local v7, "writePath":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 393
    .local v5, "volumeState":Ljava/lang/String;
    const-string v8, "MemorySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDefaultWriteDisk Path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " volume state is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v8, "mounted"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 396
    const-string v8, "MemorySettings"

    const-string v9, "updateDefaultWriteDisk mount"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aget-boolean v8, v8, v1

    if-nez v8, :cond_0

    .line 398
    const-string v8, "MemorySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateDefaultWriteDisk addPreference "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 400
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aput-boolean v12, v8, v1

    .line 389
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    :cond_1
    const-string v8, "MemorySettings"

    const-string v9, "updateDefaultWriteDisk not mount"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aget-boolean v8, v8, v1

    if-eqz v8, :cond_2

    .line 405
    const-string v8, "MemorySettings"

    const-string v9, "updateDefaultWriteDisk have add,it need to remove"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {v4, v11}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 407
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 408
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mWritePathAdded:[Z

    aput-boolean v11, v8, v1

    goto :goto_1

    .line 410
    :cond_2
    const-string v8, "MemorySettings"

    const-string v9, "updateDefaultWriteDisk have not add"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 417
    .end local v4    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v5    # "volumeState":Ljava/lang/String;
    .end local v7    # "writePath":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v6

    .line 418
    .local v6, "writeDiskNum":I
    iget-boolean v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    if-eqz v8, :cond_5

    if-nez v6, :cond_5

    .line 419
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 420
    iput-boolean v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    .line 429
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->getEmmcDefaultStorage()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWritePath:Ljava/lang/String;

    .line 430
    const-string v8, "MemorySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get default path : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWritePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v3, :cond_8

    aget-object v4, v0, v2

    .line 432
    .restart local v4    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    const-string v8, "MemorySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "volumeItemPreference.getPath=-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-virtual {v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/storage/sdcard0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 434
    invoke-virtual {v4, v12}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    .line 435
    iput-object v4, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDeafultWritePathPref:Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .line 431
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 421
    .end local v0    # "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    :cond_5
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v8}, Lcom/lenovo/settings/storage/StorageUtils;->isSupport_MULTI_STORAGE(Landroid/os/storage/StorageManager;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 422
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 423
    iput-boolean v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    goto :goto_2

    .line 424
    :cond_6
    iget-boolean v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    if-nez v8, :cond_4

    if-lez v6, :cond_4

    .line 425
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mRootContainer:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDefaultWriteDiskContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 426
    iput-boolean v12, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsCategoryAdded:Z

    goto :goto_2

    .line 437
    .restart local v0    # "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    :cond_7
    invoke-virtual {v4, v11}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->setChecked(Z)Z

    goto :goto_4

    .line 440
    .end local v4    # "volumeItemPreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    :cond_8
    return-void
.end method

.method private updateInstallLocation()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 154
    iget-boolean v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationEnabled:Z

    if-nez v11, :cond_0

    .line 181
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    .line 157
    .local v7, "volumePreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    invoke-virtual {v7}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 158
    .local v9, "writePath":Ljava/lang/String;
    iget-object v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v11, v9}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, "volumeState":Ljava/lang/String;
    const-string v11, "shared"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 160
    iget-object v10, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v10, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 161
    const-string v10, "MemorySettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Volume state is MEDIA_SHARED, path "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 166
    .end local v7    # "volumePreference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v8    # "volumeState":Ljava/lang/String;
    .end local v9    # "writePath":Ljava/lang/String;
    :cond_2
    const-string v5, ""

    .line 167
    .local v5, "primaryExternalStorage":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 168
    .local v6, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 170
    iget-object v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v11}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 174
    .end local v6    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_3
    iget-object v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 175
    .local v2, "entries":[Ljava/lang/CharSequence;
    aput-object v5, v2, v10

    .line 176
    iget-object v11, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v11, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 179
    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSupportMtk2SDCardSwap()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isExSdcardInserted()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    move v1, v10

    .line 180
    .local v1, "enable":Z
    :cond_5
    iget-object v10, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mInstallLocationContainer:Landroid/preference/ListPreference;

    invoke-virtual {v10, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 167
    .end local v1    # "enable":Z
    .end local v2    # "entries":[Ljava/lang/CharSequence;
    .restart local v6    # "storageVolume":Landroid/os/storage/StorageVolume;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private writeSwitchProperty(Ljava/lang/String;)V
    .locals 6
    .param p1, "mLable"    # Ljava/lang/String;

    .prologue
    .line 671
    const-string v3, "persist.sys.switch_storage"

    const-string v4, "none,0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "propertyValue":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "split":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 674
    .local v0, "cid":Ljava/lang/String;
    const-string v3, "flyrea"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set the persist == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const-string v3, "persist.sys.switch_storage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set persist.sys.switch_storage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return-void
.end method


# virtual methods
.method public getResourceId(II)I
    .locals 1
    .param p1, "usbResId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsUnmountingUsb:Z

    if-eqz v0, :cond_0

    .end local p1    # "usbResId":I
    :goto_0
    return p1

    .restart local p1    # "usbResId":I
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->filterInvalidVolumes([Landroid/os/storage/StorageVolume;)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 475
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method public initMtkCategory()V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->initApkInstaller()V

    .line 444
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->initInstallLocation()V

    .line 445
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->initDefaultWriteDisk()V

    .line 446
    return-void
.end method

.method public isAddPhysicalCategory(Landroid/os/storage/StorageVolume;)Z
    .locals 6
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 498
    iget-object v3, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    .line 500
    .local v2, "sm":Landroid/os/storage/StorageManager;
    invoke-static {v2}, Lcom/lenovo/settings/storage/StorageUtils;->isFuseOn(Landroid/os/storage/StorageManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSupportMtk2SDCardSwap()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 503
    .local v0, "isCategory":Z
    :goto_0
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAddPhysicalCategory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isEmulated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/storage/sdcard1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 506
    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSupport_External_Storage()Z

    move-result v0

    .line 509
    :cond_1
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/storage/StorageUtils;->isOtgVolume(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 511
    iget-object v3, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "otgState":Ljava/lang/String;
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "otg volume path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 514
    const/4 v0, 0x0

    .line 517
    .end local v1    # "otgState":Ljava/lang/String;
    :cond_2
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAddPhysicalCategory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return v0

    .line 500
    .end local v0    # "isCategory":Z
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public isInUMSState()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 455
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageWritePathList:[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;

    .local v0, "arr$":[Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 457
    .local v4, "preference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    :try_start_0
    invoke-virtual {v4}, Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 458
    .local v6, "writePath":Ljava/lang/String;
    const-string v8, "MemorySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isInUMSState "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v8, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 460
    .local v5, "volumeState":Ljava/lang/String;
    const-string v8, "shared"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 461
    const-string v8, "MemorySettings"

    const-string v9, "Current is UMS state, remove the unmount dialog"

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    const/4 v7, 0x1

    .line 470
    .end local v4    # "preference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    .end local v5    # "volumeState":Ljava/lang/String;
    .end local v6    # "writePath":Ljava/lang/String;
    :cond_0
    :goto_1
    return v7

    .line 464
    .restart local v4    # "preference":Lcom/lenovo/settings/deviceinfo/RadioButtonPreference;
    :catch_0
    move-exception v1

    .line 465
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "MemorySettings"

    const-string v9, "isInUMSState has Exception"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 455
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "volumeState":Ljava/lang/String;
    .restart local v6    # "writePath":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public mount(Landroid/os/storage/IMountService;)V
    .locals 3
    .param p1, "mountService"    # Landroid/os/storage/IMountService;

    .prologue
    .line 522
    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSupportMtk2SDCardSwap()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/storage/sdcard1"

    sget-object v2, Lcom/lenovo/settings/deviceinfo/MemoryExts;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsRemovableVolume:Z

    if-eqz v1, :cond_0

    .line 525
    new-instance v0, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;-><init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;Landroid/os/storage/IMountService;)V

    .line 526
    .local v0, "dialog":Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SwapAlert"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 530
    .end local v0    # "dialog":Lcom/lenovo/settings/deviceinfo/MemoryExts$SwapAlertFragment;
    :goto_0
    return-void

    .line 528
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->doMount(Landroid/os/storage/IMountService;)V

    goto :goto_0
.end method

.method public registerSdSwapReceiver(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;>;"
    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSupportMtk2SDCardSwap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mCategories:Ljava/util/ArrayList;

    .line 586
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 587
    .local v0, "mFilter":Landroid/content/IntentFilter;
    const-string v1, "com.mediatek.SD_SWAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 588
    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 590
    .end local v0    # "mFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public setVolumeParameter(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V
    .locals 1
    .param p1, "mountPoint"    # Ljava/lang/String;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 579
    sput-object p1, Lcom/lenovo/settings/deviceinfo/MemoryExts;->sClickedMountPoint:Ljava/lang/String;

    .line 580
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mIsRemovableVolume:Z

    .line 581
    return-void
.end method

.method public unRegisterSdSwapReceiver()V
    .locals 2

    .prologue
    .line 593
    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSupportMtk2SDCardSwap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mDynSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 596
    :cond_0
    return-void
.end method

.method public updateMtkCategory()V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateInstallLocation()V

    .line 450
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateAPKInstaller()V

    .line 451
    invoke-direct {p0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateDefaultWriteDisk()V

    .line 452
    return-void
.end method
