.class public Lcom/lenovo/settings/pluginItem/PluginItemInfo;
.super Ljava/lang/Object;
.source "PluginItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/pluginItem/PluginItemInfo$1;,
        Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
    }
.end annotation


# static fields
.field private static final KEY_CLASS:Ljava/lang/String; = "lenovo-class"

.field private static final KEY_VERSION:Ljava/lang/String; = "lenovo-version"

.field private static final TAG:Ljava/lang/String; = "Plugin"

.field private static sPathClassLoaderCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPresetPlugin:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mClassContext:Landroid/content/Context;

.field private mClassLoader:Ldalvik/system/PathClassLoader;

.field protected mClassName:Ljava/lang/String;

.field protected mIntentDescription:Ljava/lang/String;

.field protected mKey:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field protected mPackageName:Ljava/lang/String;

.field protected mParentKey:Ljava/lang/String;

.field protected mPluginDependency:Ljava/lang/String;

.field protected mPosition:F

.field private mPreference:Landroid/preference/Preference;

.field private mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

.field protected mSourceDir:Ljava/lang/String;

.field protected mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 350
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    .line 352
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "personal_hotspot"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "mobile_network_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "ringtone_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "lock_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "notification_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "call_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "power_setting"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "multi_sim_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "lepower_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    const-string v1, "applications_settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 362
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 66
    if-nez p2, :cond_0

    .line 78
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    .line 73
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 74
    .local v0, "metaData":Landroid/os/Bundle;
    const-string v1, "lenovo-class"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassName:Ljava/lang/String;

    .line 75
    const-string v1, "lenovo-version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mVersion:Ljava/lang/String;

    .line 76
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    .line 77
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->initPlugin(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getClassLoader(Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;
    .locals 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v3, 0x0

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "classLoaderItem":Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
    sget-object v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPathClassLoaderCache:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 139
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPathClassLoaderCache:Ljava/util/HashMap;

    .line 144
    :goto_0
    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;

    .end local v0    # "classLoaderItem":Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
    invoke-direct {v0, v3}, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;-><init>(Lcom/lenovo/settings/pluginItem/PluginItemInfo$1;)V

    .line 146
    .restart local v0    # "classLoaderItem":Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
    sget-object v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPathClassLoaderCache:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    iget-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->sourceDir:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->pathClassLoader:Ldalvik/system/PathClassLoader;

    if-eqz v1, :cond_3

    .line 150
    iget-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->sourceDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->sourceDir:Ljava/lang/String;

    .line 152
    iput-object v3, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->pathClassLoader:Ldalvik/system/PathClassLoader;

    .line 153
    new-instance v1, Ldalvik/system/PathClassLoader;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->pathClassLoader:Ldalvik/system/PathClassLoader;

    .line 160
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->pathClassLoader:Ldalvik/system/PathClassLoader;

    return-object v1

    .line 141
    :cond_2
    sget-object v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPathClassLoaderCache:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "classLoaderItem":Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
    check-cast v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;

    .restart local v0    # "classLoaderItem":Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;
    goto :goto_0

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->sourceDir:Ljava/lang/String;

    .line 157
    new-instance v1, Ldalvik/system/PathClassLoader;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v1, v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo$PathClassLoaderItem;->pathClassLoader:Ldalvik/system/PathClassLoader;

    goto :goto_1
.end method

.method public static isPresetPlugin(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pluginKey"    # Ljava/lang/String;

    .prologue
    .line 365
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadObject()Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 303
    invoke-virtual {p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPluginClass()Ljava/lang/Class;

    move-result-object v4

    .line 305
    .local v4, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_0

    .line 306
    const-string v8, "Plugin"

    const-string v9, "<loadObject> class is null."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 344
    :goto_0
    return-object v5

    .line 311
    :cond_0
    const/4 v5, 0x0

    .line 313
    .local v5, "obj":Ljava/lang/Object;
    const/4 v8, 0x1

    :try_start_0
    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 314
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassContext:Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 327
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "obj":Ljava/lang/Object;
    :goto_1
    if-eqz v5, :cond_1

    instance-of v8, v5, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    if-eqz v8, :cond_1

    move-object v6, v5

    .line 328
    check-cast v6, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    .line 329
    .local v6, "settingItem":Lcom/lenovo/settings/pluginItem/AbstractSettingItem;
    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->getKey()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    .line 330
    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->getParentKey()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mParentKey:Ljava/lang/String;

    .line 331
    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->getPosition()F

    move-result v7

    iput v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPosition:F

    .line 333
    iput-object v6, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    .line 334
    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->getDependencyPluginKey()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPluginDependency:Ljava/lang/String;

    goto :goto_0

    .line 315
    .end local v6    # "settingItem":Lcom/lenovo/settings/pluginItem/AbstractSettingItem;
    .restart local v5    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "Plugin"

    const-string v9, "<createObject> constructor with context not success."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    goto :goto_1

    .line 319
    :catch_1
    move-exception v2

    .line 320
    .local v2, "e1":Ljava/lang/InstantiationException;
    const-string v8, "Plugin"

    const-string v9, "<createObject> localClass.newInstance InstantiationException."

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 321
    .end local v2    # "e1":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v3

    .line 322
    .local v3, "e2":Ljava/lang/IllegalAccessException;
    const-string v8, "Plugin"

    const-string v9, "<createObject> localClass.newInstance IllegalAccessException."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "e2":Ljava/lang/IllegalAccessException;
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_1
    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    .line 337
    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mParentKey:Ljava/lang/String;

    .line 338
    const/4 v8, 0x0

    iput v8, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPosition:F

    .line 339
    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    .line 340
    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    .line 341
    iput-object v7, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPluginDependency:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPluginDependency:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mIntentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mParentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginClass()Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v3, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 241
    const-string v3, "Plugin"

    const-string v4, "<loadClass> className is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 255
    :goto_0
    return-object v1

    .line 245
    :cond_0
    const/4 v1, 0x0

    .line 247
    .local v1, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassName:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassLoader:Ldalvik/system/PathClassLoader;

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "Plugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<loadClass> Cannot find class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 250
    goto :goto_0

    .line 251
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Plugin"

    const-string v4, "<loadClass> Class.forName, IllegalArgumentException."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 253
    goto :goto_0

    .line 254
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public getPosition()F
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPosition:F

    return v0
.end method

.method public getPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 267
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    if-nez v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-object v0

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 272
    iput-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    invoke-virtual {v0, p1}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    .line 277
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getHeaderPluginItem(Ljava/lang/String;)Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    const v1, 0x7f040080

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 281
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    const v1, 0x7f04005f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    goto :goto_0
.end method

.method public getSettingItem()Lcom/lenovo/settings/pluginItem/AbstractSettingItem;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    return-object v0
.end method

.method public getSourceDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public initPlugin(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->initPlugin(Landroid/content/Context;Z)V

    .line 97
    return-void
.end method

.method public initPlugin(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "force"    # Z

    .prologue
    .line 107
    if-nez p2, :cond_0

    sget-object v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 111
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassContext:Landroid/content/Context;

    .line 113
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :goto_2
    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 127
    const-string v1, "Plugin"

    const-string v2, "<Plugin> sourceDir is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<Plugin> package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassContext:Landroid/content/Context;

    goto :goto_1

    .line 122
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 123
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Plugin"

    const-string v2, "<Plugin> getApplicationInfo failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 131
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getClassLoader(Ljava/lang/ClassLoader;)Ldalvik/system/PathClassLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassLoader:Ldalvik/system/PathClassLoader;

    .line 133
    invoke-direct {p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->loadObject()Ljava/lang/Object;

    goto :goto_0
.end method

.method public isPluginValid()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 293
    iget-object v3, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    if-nez v3, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v1

    .line 297
    :cond_1
    iget-object v3, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 298
    .local v0, "pkgState":I
    if-eqz v0, :cond_2

    if-ne v2, v0, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassContext:Landroid/content/Context;

    .line 82
    iput-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    .line 83
    iput-object v0, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    .line 84
    return-void
.end method

.method public releaseForHeaderPluginItem()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    sget-object v0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->sPresetPlugin:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iput-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassContext:Landroid/content/Context;

    .line 89
    iput-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSettingItem:Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    .line 90
    iput-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPreference:Landroid/preference/Preference;

    .line 91
    iput-object v2, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassLoader:Ldalvik/system/PathClassLoader;

    .line 93
    :cond_0
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mClassName:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .param p1, "dependency"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPluginDependency:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setIntentDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "intentDes"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mIntentDescription:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "newKey"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mKey:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPackageName:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setParentKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "newKey"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mParentKey:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setPosition(F)V
    .locals 0
    .param p1, "newPosition"    # F

    .prologue
    .line 184
    iput p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mPosition:F

    .line 185
    return-void
.end method

.method public setSourceDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceDir"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mSourceDir:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->mVersion:Ljava/lang/String;

    .line 209
    return-void
.end method
