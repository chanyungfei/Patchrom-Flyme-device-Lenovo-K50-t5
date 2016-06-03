.class public Lcom/android/settings/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final TAG:Ljava/lang/String; = "MediaFormat"


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIsInternalSD:Z

.field private mIsUsbStorage:Z

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mVolumeDescription:Ljava/lang/String;

.field private mVolumePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    new-instance v0, Lcom/android/settings/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormat$1;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 128
    new-instance v0, Lcom/android/settings/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormat$2;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MediaFormat;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MediaFormat;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MediaFormat;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MediaFormat;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/MediaFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MediaFormat;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 4

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040068

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 144
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    const v2, 0x7f0b00bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 146
    .local v0, "finalText":Landroid/widget/TextView;
    const v1, 0x7f0c077e

    invoke-direct {p0, v1}, Lcom/android/settings/MediaFormat;->getVolumeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    const v2, 0x7f0b00bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 152
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    const v2, 0x7f0c077f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 155
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .end local v0    # "finalText":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 159
    return-void
.end method

.method private establishInitialState()V
    .locals 4

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040069

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 177
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    const v2, 0x7f0b00bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 179
    .local v0, "initialText":Landroid/widget/TextView;
    const v1, 0x7f0c077c

    invoke-direct {p0, v1}, Lcom/android/settings/MediaFormat;->getVolumeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    const v2, 0x7f0b00be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 184
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    const v2, 0x7f0c077d

    invoke-direct {p0, v2}, Lcom/android/settings/MediaFormat;->getVolumeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .end local v0    # "initialText":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 190
    return-void
.end method

.method private getVolumeString(I)Ljava/lang/String;
    .locals 6
    .param p1, "stringId"    # I

    .prologue
    .line 251
    iget-object v3, p0, Lcom/android/settings/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/MediaFormat;->mIsInternalSD:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/MediaFormat;->mIsUsbStorage:Z

    if-nez v3, :cond_2

    .line 252
    :cond_0
    const-string v3, "MediaFormat"

    const-string v4, "+mVolumeDescription is null or external sd card, use default string"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/settings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 280
    :cond_1
    :goto_0
    return-object v1

    .line 256
    :cond_2
    const v3, 0x7f0c046d

    invoke-virtual {p0, v3}, Lcom/android/settings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "sdCardString":Ljava/lang/String;
    const-string v3, "MediaFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdCardString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/settings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/settings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 262
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 264
    const-string v3, "sd"

    const-string v4, "SD"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 265
    const-string v3, "MediaFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdCardString"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/settings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 267
    const-string v3, "MediaFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "str"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/settings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/settings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SD"

    iget-object v5, p0, Lcom/android/settings/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 271
    const-string v3, "MediaFormat"

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

    .line 273
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 275
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

    .line 278
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .prologue
    .line 94
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0c0780

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0c0781

    invoke-direct {p0, v2}, Lcom/android/settings/MediaFormat;->getVolumeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 107
    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 114
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 115
    :cond_2
    if-nez p2, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 196
    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 197
    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 198
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 200
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 202
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 203
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    const-string v1, "volume"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 206
    const-string v1, "IsUsbStorage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/MediaFormat;->mIsUsbStorage:Z

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mVolumePath:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/MediaFormat;->mIsInternalSD:Z

    .line 215
    :cond_1
    const v1, 0x7f0c077a

    invoke-direct {p0, v1}, Lcom/android/settings/MediaFormat;->getVolumeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    :goto_1
    const/16 v1, 0x37

    invoke-direct {p0, v1}, Lcom/android/settings/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 230
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    .line 233
    :cond_3
    return-void

    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    move v1, v3

    .line 212
    goto :goto_0

    .line 217
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "IsUsbStorage"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/MediaFormat;->mIsUsbStorage:Z

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "storage_volume"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 220
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_2

    .line 221
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mVolumePath:Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-nez v1, :cond_6

    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/MediaFormat;->mIsInternalSD:Z

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_2
.end method
