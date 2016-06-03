.class public final Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDevicePreference"

.field private static sDimAlpha:I


# instance fields
.field private final mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/high16 v0, -0x80000000

    sput v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cachedDevice"    # Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 63
    sget v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    .line 64
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 65
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 66
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 69
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 71
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 72
    const-string v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 73
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_config_bluetooth"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    const v2, 0x7f040079

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setWidgetLayoutResource(I)V

    .line 78
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cachedDevice"    # Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .param p3, "type"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 88
    sget v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 89
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 90
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 91
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 94
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 95
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method private askDisconnect()V
    .locals 8

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 215
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    const v5, 0x7f0c04af

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 219
    :cond_0
    const v5, 0x7f0c04a2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "message":Ljava/lang/String;
    const v5, 0x7f0c04a1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "title":Ljava/lang/String;
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 228
    .local v1, "disconnectListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-static {v0, v5, v1, v4, v6}, Lcom/android/settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 230
    return-void
.end method

.method private getBtClassDrawable()I
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 305
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 308
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_0

    .line 309
    const-string v6, "BluetoothDevicePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lenovo test++, bt class : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    if-eqz v0, :cond_2

    .line 313
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 333
    :goto_0
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v3

    .line 334
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .line 335
    .local v2, "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    invoke-interface {v2, v0}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    .line 336
    .local v4, "resId":I
    if-eqz v4, :cond_1

    .line 354
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;>;"
    .end local v4    # "resId":I
    :goto_1
    return v4

    .line 315
    :sswitch_0
    const v4, 0x7f02004f

    goto :goto_1

    .line 318
    :sswitch_1
    const v4, 0x7f020049

    goto :goto_1

    .line 321
    :sswitch_2
    invoke-static {v0}, Lcom/android/settings/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    goto :goto_1

    .line 324
    :sswitch_3
    const v4, 0x7f02004d

    goto :goto_1

    .line 330
    :cond_2
    const-string v6, "BluetoothDevicePreference"

    const-string v7, "mBtClass is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;>;"
    :cond_3
    if-eqz v0, :cond_6

    .line 341
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 342
    const v4, 0x7f02004b

    goto :goto_1

    .line 345
    :cond_4
    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 346
    const v4, 0x7f02004c

    goto :goto_1

    .line 350
    :cond_5
    const v4, 0x7f020055

    goto :goto_1

    :cond_6
    move v4, v5

    .line 354
    goto :goto_1

    .line 313
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
    .end sparse-switch
.end method

.method private getConnectionSummary()I
    .locals 10

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 242
    .local v1, "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    const-string v7, "BluetoothDevicePreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getConnectionSummary"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v6, 0x0

    .line 245
    .local v6, "profileConnected":Z
    const/4 v0, 0x0

    .line 246
    .local v0, "a2dpNotConnected":Z
    const/4 v3, 0x0

    .line 248
    .local v3, "headsetNotConnected":Z
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;

    .line 249
    .local v5, "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    invoke-virtual {v1, v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;)I

    move-result v2

    .line 251
    .local v2, "connectionStatus":I
    if-eqz v5, :cond_1

    .line 252
    const-string v7, "BluetoothDevicePreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "profile name is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_1
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 269
    :pswitch_0
    invoke-interface {v5}, Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;->isProfileReady()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 271
    instance-of v7, v5, Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v7, :cond_2

    .line 272
    const/4 v0, 0x1

    goto :goto_0

    .line 258
    :pswitch_1
    invoke-static {v2}, Lcom/android/settings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v7

    .line 300
    .end local v2    # "connectionStatus":I
    .end local v5    # "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    :goto_1
    return v7

    .line 261
    .restart local v2    # "connectionStatus":I
    .restart local v5    # "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    :pswitch_2
    const-string v7, "BluetoothDevicePreference"

    const-string v8, "profileConnected = true"

    invoke-static {v7, v8}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/4 v6, 0x1

    .line 263
    goto :goto_0

    .line 273
    :cond_2
    instance-of v7, v5, Lcom/android/settings/bluetooth/HeadsetProfile;

    if-eqz v7, :cond_0

    .line 274
    const/4 v3, 0x1

    goto :goto_0

    .line 281
    .end local v2    # "connectionStatus":I
    .end local v5    # "profile":Lcom/lenovoframework/adapter/essential/LocalBluetoothProfile;
    :cond_3
    if-eqz v6, :cond_7

    .line 282
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 283
    const v7, 0x7f0c04a9

    goto :goto_1

    .line 284
    :cond_4
    if-eqz v0, :cond_5

    .line 285
    const v7, 0x7f0c04a7

    goto :goto_1

    .line 286
    :cond_5
    if-eqz v3, :cond_6

    .line 287
    const v7, 0x7f0c04a6

    goto :goto_1

    .line 289
    :cond_6
    const v7, 0x7f0c04a5

    goto :goto_1

    .line 293
    :cond_7
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 300
    const/4 v7, 0x0

    goto :goto_1

    .line 295
    :pswitch_3
    const v7, 0x7f0c04ae

    goto :goto_1

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 293
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
    .end packed-switch
.end method

.method private pair()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c05ac

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Landroid/preference/Preference;

    .prologue
    .line 190
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 192
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 195
    .end local p1    # "another":Landroid/preference/Preference;
    :goto_0
    return v0

    .restart local p1    # "another":Landroid/preference/Preference;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local p1    # "another":Landroid/preference/Preference;
    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 176
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 177
    :cond_0
    const/4 v0, 0x0

    .line 179
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 151
    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 156
    const v1, 0x7f0b00d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 157
    .local v0, "deviceDetails":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 164
    .end local v0    # "deviceDetails":Landroid/widget/ImageView;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 165
    return-void

    .line 160
    .restart local v0    # "deviceDetails":Landroid/widget/ImageView;
    :cond_2
    sget v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 172
    :cond_0
    return-void
.end method

.method onClicked()V
    .locals 4

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 202
    .local v0, "bondState":I
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->askDisconnect()V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 205
    const-string v1, "BluetoothDevicePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0

    .line 207
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->pair()V

    goto :goto_0
.end method

.method public onDeviceAttributesChanged()V
    .locals 3

    .prologue
    .line 127
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getConnectionSummary()I

    move-result v1

    .line 130
    .local v1, "summaryResId":I
    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    .line 136
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v0

    .line 137
    .local v0, "iconResId":I
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setIcon(I)V

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    .line 146
    return-void

    .line 133
    .end local v0    # "iconResId":I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    .restart local v0    # "iconResId":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onPrepareForRemoval()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 112
    const-string v0, "BluetoothDevicePreference"

    const-string v1, "onPrepareForRemoval"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "BluetoothDevicePreference"

    const-string v1, "dismiss dialog"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 119
    :cond_0
    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 107
    return-void
.end method
