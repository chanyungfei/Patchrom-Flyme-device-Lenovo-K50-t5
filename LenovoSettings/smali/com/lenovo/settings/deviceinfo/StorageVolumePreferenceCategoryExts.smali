.class public Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;
.super Ljava/lang/Object;
.source "StorageVolumePreferenceCategoryExts.java"


# static fields
.field private static final EXTRA_IS_USB_STORAGE:Ljava/lang/String; = "IsUsbStorage"

.field private static final EXTRA_STORAGE_VOLUME:Ljava/lang/String; = "volume"

.field private static final ORDER_STORAGE_LOW:I = -0x1

.field private static final PROPERTY_IS_VOLUME_SWAPPING:Ljava/lang/String; = "sys.sd.swapping"

.field private static final TAG:Ljava/lang/String; = "StorageVolume"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsInternalSD:Z

.field private mIsUsbStorage:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mVolume:Landroid/os/storage/StorageVolume;

.field private mVolumeDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    .line 48
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    .line 50
    const-string v0, "StorageVolume"

    const-string v1, " StorageVolumePreferenceCategoryExts "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "StorageVolume"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " StorageVolumePreferenceCategoryExts  volume.getPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->getConstantStringDIRECTORY_USBOTG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsUsbStorage:Z

    .line 54
    const-string v0, "StorageVolume"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsUsbStorage ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsUsbStorage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolumeDescription:Ljava/lang/String;

    .line 56
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsInternalSD:Z

    .line 57
    const-string v0, "StorageVolume"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage description :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEmulated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRemovable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "resId"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 132
    if-eqz p2, :cond_0

    iget-boolean v3, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsInternalSD:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsUsbStorage:Z

    if-nez v3, :cond_2

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    :cond_1
    :goto_0
    return-object v1

    .line 136
    :cond_2
    iget-object v3, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0c046d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "sdCardString":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v3, "sd"

    const-string v4, "SD"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v3, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 146
    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 147
    iget-object v3, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SD"

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 148
    const-string v3, "StorageVolume"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not replace SD card, Replace SD, str is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 152
    .local v2, "tr":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method


# virtual methods
.method public getFormatString(I)Ljava/lang/String;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsUsbStorage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c031e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolumeDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1
    .param p1, "usbResId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsUsbStorage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolumeDescription:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initPhoneStorageMountTogglePreference(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;Landroid/os/storage/StorageManager;)V
    .locals 4
    .param p1, "root"    # Landroid/preference/PreferenceCategory;
    .param p2, "mountToggle"    # Landroid/preference/Preference;
    .param p3, "storageManager"    # Landroid/os/storage/StorageManager;

    .prologue
    .line 107
    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 111
    .local v0, "isMounted":Z
    :goto_1
    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 113
    const-string v2, "StorageVolume"

    const-string v3, "Phone storage not in mounted state"

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v0    # "isMounted":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isInternalVolume()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSomeStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsInternalSD:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVolume(Landroid/os/storage/StorageVolume;)V
    .locals 3
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    .line 87
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->getConstantStringDIRECTORY_USBOTG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsUsbStorage:Z

    .line 90
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    iget-object v1, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolumeDescription:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsInternalSD:Z

    .line 92
    const-string v0, "StorageVolume"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEmulated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRemovable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVolumeBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "volume"

    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 81
    const-string v1, "IsUsbStorage"

    iget-boolean v2, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mIsUsbStorage:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    return-object v0
.end method

.method public setVolumeTitle(Landroid/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez v2, :cond_1

    .line 68
    invoke-static {}, Lcom/lenovo/settings/storage/StorageUtils;->isSomeStorageEmulated()Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f0c026c

    .line 71
    .local v0, "resId":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .end local v0    # "resId":I
    :goto_1
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    return-void

    .line 68
    :cond_0
    const v0, 0x7f0c0833

    goto :goto_0

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mVolume:Landroid/os/storage/StorageVolume;

    iget-object v3, p0, Lcom/lenovo/settings/deviceinfo/StorageVolumePreferenceCategoryExts;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
