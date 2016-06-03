.class public Lcom/android/settings/deviceinfo/Memory;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Memory.java"

# interfaces
.implements Lcom/lenovo/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;,
        Lcom/android/settings/deviceinfo/Memory$ClearCacheObserver;
    }
.end annotation


# static fields
.field private static final DLG_CONFIRM_UNMOUNT:I = 0x1

.field private static final DLG_ERROR_UNMOUNT:I = 0x2

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "MemorySettings"

.field private static final TAG_CONFIRM_CLEAR_CACHE:Ljava/lang/String; = "confirmClearCache"

.field private static final USB_STORAGE_1_PATH:Ljava/lang/String; = "/storage/usbotg1"

.field private static final USB_STORAGE_PATH:Ljava/lang/String; = "/storage/usbotg"

.field private static sClickedMountPoint:Ljava/lang/String;

.field private static sLastClickedMountToggle:Landroid/preference/Preference;


# instance fields
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

.field mIsUsbConnected:Z

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMemoryExts:Lcom/lenovo/settings/deviceinfo/MemoryExts;

.field private mMountService:Landroid/os/storage/IMountService;

.field mOtgVolume:Landroid/os/storage/StorageVolume;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mVolumePrefCategory:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 623
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$6;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/Memory$6;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/Memory;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/Memory;->mIsUsbConnected:Z

    .line 97
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mOtgVolume:Landroid/os/storage/StorageVolume;

    .line 206
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$1;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 421
    new-instance v0, Lcom/android/settings/deviceinfo/Memory$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Memory$4;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 579
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Memory;)Lcom/lenovo/settings/deviceinfo/MemoryExts;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Memory;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMemoryExts:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Memory;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Memory;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getOtgVolume()Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/Memory;Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Memory;
    .param p1, "x1"    # Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->addCategory(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/Memory;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Memory;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/Memory;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Memory;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->getUsbState(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Memory;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Memory;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/Memory;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->onCacheCleared()V

    return-void
.end method

.method private addCategory(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 1
    .param p1, "category"    # Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 154
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 155
    return-void
.end method

.method private doUnmount()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 481
    const-string v3, "/storage/usbotg"

    sget-object v4, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v1, 0x7f0c03d3

    .line 483
    .local v1, "informTextId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 484
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 486
    .local v2, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    sget-object v3, Lcom/android/settings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 487
    sget-object v3, Lcom/android/settings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const v4, 0x7f0c0732

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 488
    sget-object v3, Lcom/android/settings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const v4, 0x7f0c0733

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 489
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings unMountVolume : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    sget-object v3, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_1
    return-void

    .line 481
    .end local v1    # "informTextId":I
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_0
    const v1, 0x7f0c0731

    goto :goto_0

    .line 491
    .restart local v1    # "informTextId":I
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_1
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 303
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 304
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 305
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 310
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 307
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "MemorySettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 302
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getOtgVolume()Landroid/os/storage/StorageVolume;
    .locals 9

    .prologue
    .line 194
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 195
    .local v3, "storageVolumes":[Landroid/os/storage/StorageVolume;
    const-string v5, "MemorySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getOtgVolume length =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move-object v0, v3

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 197
    .local v4, "volume":Landroid/os/storage/StorageVolume;
    const-string v5, "MemorySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current volume = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", state =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v4    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    move-object v0, v3

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 200
    .restart local v4    # "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/storage/usbotg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    .end local v4    # "volume":Landroid/os/storage/StorageVolume;
    :goto_2
    return-object v4

    .line 199
    .restart local v4    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    .end local v4    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private getUsbState(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 701
    const/4 v1, 0x0

    .line 702
    .local v1, "usbState":Z
    const/4 v0, 0x2

    .line 703
    .local v0, "Connected":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usb_connected_pc"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 704
    .local v2, "usbStateValue":I
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUsbState  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 706
    const/4 v1, 0x1

    .line 707
    const-string v3, "MemorySettings"

    const-string v4, "usb is connected."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :goto_0
    return v1

    .line 709
    :cond_0
    const-string v3, "MemorySettings"

    const-string v4, "usb have been disconnected."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hasAppsAccessingStorage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 503
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 504
    .local v0, "mountService":Landroid/os/storage/IMountService;
    sget-object v2, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v1

    .line 505
    .local v1, "stUsers":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 519
    :cond_0
    return v3
.end method

.method private isMassStorageEnabled()Z
    .locals 3

    .prologue
    .line 159
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 160
    .local v1, "volumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v1}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 161
    .local v0, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private mount()V
    .locals 3

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 541
    .local v0, "mountService":Landroid/os/storage/IMountService;
    if-eqz v0, :cond_0

    .line 542
    :try_start_0
    sget-object v1, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 549
    :goto_0
    return-void

    .line 544
    :cond_0
    const-string v1, "MemorySettings"

    const-string v2, "Mount service is null, can\'t mount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 546
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onCacheCleared()V
    .locals 3

    .prologue
    .line 552
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 553
    .local v0, "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onCacheCleared()V

    goto :goto_0

    .line 555
    .end local v0    # "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->removeDialog(I)V

    .line 499
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Memory;->showDialog(I)V

    .line 500
    return-void
.end method

.method private showFormatDialog(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 4
    .param p1, "category"    # Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .prologue
    .line 376
    const-string v2, "MemorySettings"

    const-string v3, "showFormatDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 378
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c031a

    const v3, 0x7f0c0778

    invoke-virtual {p1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 380
    const v2, 0x7f0c031b

    const v3, 0x7f0c0779

    invoke-virtual {p1, v2, v3}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 382
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/deviceinfo/Memory$2;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/deviceinfo/Memory$2;-><init>(Lcom/android/settings/deviceinfo/Memory;Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 409
    const v2, 0x1040009

    new-instance v3, Lcom/android/settings/deviceinfo/Memory$3;

    invoke-direct {v3, p0}, Lcom/android/settings/deviceinfo/Memory$3;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 415
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 416
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 418
    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 525
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    .line 536
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->doUnmount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MemorySettings"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v1, 0x7f0c06ff

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 113
    .local v0, "context":Landroid/content/Context;
    const-string v2, "usb"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 115
    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 116
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 118
    const v2, 0x7f060011

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 120
    new-instance v2, Lcom/lenovo/settings/deviceinfo/MemoryExts;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct {v2, v3, v4, v5}, Lcom/lenovo/settings/deviceinfo/MemoryExts;-><init>(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Landroid/os/storage/StorageManager;)V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mMemoryExts:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    .line 121
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mMemoryExts:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    invoke-virtual {v2}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v11

    .line 122
    .local v11, "storageVolumes":[Landroid/os/storage/StorageVolume;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mMemoryExts:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    invoke-virtual {v2}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->initMtkCategory()V

    .line 123
    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildForInternal(Landroid/content/Context;)Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Memory;->addCategory(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 125
    move-object v8, v11

    .local v8, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v10, v8

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v12, v8, v9

    .line 126
    .local v12, "volume":Landroid/os/storage/StorageVolume;
    const-string v2, "MemorySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "judge volume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mMemoryExts:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    invoke-virtual {v2, v12}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->isAddPhysicalCategory(Landroid/os/storage/StorageVolume;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-static {v0, v12}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Memory;->addCategory(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 125
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 133
    .end local v12    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mMemoryExts:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->registerSdSwapReceiver(Ljava/util/ArrayList;)V

    .line 138
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Memory;->setHasOptionsMenu(Z)V

    .line 140
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v3, Lcom/android/settings/SubSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addShowInfoAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const v4, 0x7f0c0838

    const/4 v1, 0x0

    .line 453
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 476
    :goto_0
    return-object v0

    .line 455
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "/storage/usbotg"

    sget-object v3, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c03cf

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings/deviceinfo/Memory$5;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/Memory$5;-><init>(Lcom/android/settings/deviceinfo/Memory;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0522

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v0, "/storage/usbotg"

    sget-object v2, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c03d0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0c072d

    goto :goto_1

    :cond_1
    const v0, 0x7f0c072e

    goto :goto_2

    .line 468
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "/storage/usbotg"

    sget-object v3, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0c03d1

    :goto_3
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v0, "/storage/usbotg"

    sget-object v2, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0c03d2

    :goto_4
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0c072f

    goto :goto_3

    :cond_3
    const v0, 0x7f0c0730

    goto :goto_4

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 268
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 258
    :cond_0
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory;->mMemoryExts:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    invoke-virtual {v0}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->unRegisterSdSwapReceiver()V

    .line 262
    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 263
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v3, 0x7f0c0309

    const/4 v2, 0x0

    .line 284
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 298
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 286
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 296
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    const-class v0, Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/settings/deviceinfo/Memory;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b026b
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 245
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 248
    .local v0, "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    goto :goto_0

    .line 250
    .end local v0    # "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 315
    const-string v8, "cache"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 316
    invoke-static {p0}, Lcom/android/settings/deviceinfo/Memory$ConfirmClearCacheFragment;->show(Lcom/android/settings/deviceinfo/Memory;)V

    .line 370
    :cond_0
    :goto_0
    return v6

    .line 320
    :cond_1
    iget-object v8, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 321
    .local v1, "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v3

    .line 322
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_3

    .line 324
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-nez v8, :cond_0

    .line 326
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v8, "MemorySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No activity found for intent "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0c03d8

    invoke-static {v8, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 340
    .end local v0    # "anfe":Landroid/content/ActivityNotFoundException;
    :cond_3
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 341
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_8

    invoke-virtual {v1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 342
    sput-object p2, Lcom/android/settings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    .line 343
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    .line 345
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 346
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mMemoryExts:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    sget-object v8, Lcom/android/settings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-virtual {v7, v8, v5}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->setVolumeParameter(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V

    .line 349
    :cond_4
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, "state":Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "mounted_ro"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 352
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->unmount()V

    goto/16 :goto_0

    .line 355
    :cond_6
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 356
    iget-object v7, p0, Lcom/android/settings/deviceinfo/Memory;->mMemoryExts:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->mount(Landroid/os/storage/IMountService;)V

    goto/16 :goto_0

    .line 358
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Memory;->mount()V

    goto/16 :goto_0

    .line 365
    .end local v4    # "state":Ljava/lang/String;
    :cond_8
    if-eqz v5, :cond_2

    invoke-virtual {v1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->formatToggleClicked(Landroid/preference/Preference;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 366
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Memory;->showFormatDialog(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    goto/16 :goto_1

    .end local v1    # "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :cond_9
    move v6, v7

    .line 370
    goto/16 :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 280
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 167
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .restart local v2    # "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mMemoryExts:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    invoke-virtual {v3}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->isInUMSState()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Memory;->removeDialog(I)V

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mMemoryExts:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    invoke-virtual {v3}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->updateMtkCategory()V

    .line 188
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 189
    .local v0, "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    goto :goto_0

    .line 191
    .end local v0    # "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_2
    return-void
.end method
