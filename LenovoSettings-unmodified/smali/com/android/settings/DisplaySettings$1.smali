.class final Lcom/android/settings/DisplaySettings$1;
.super Lcom/lenovo/settings/search/BaseSearchIndexProvider;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/lenovo/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const-string v1, "screensaver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    invoke-static {p1}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_SMART_ROTATION_SUPPORT()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    const-string v1, "accelerometer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :goto_0
    invoke-static {p1}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_LCD_INVERT_SUPPORT()Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    const-string v1, "lcd_invert"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_1
    invoke-static {p1}, Lcom/lenovo/settings/manager/FeatureOption;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/FeatureOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/settings/manager/FeatureOption;->isSupportLENOVO_BUTTON_BKG_CTRL()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "persist.sys.button_bkg_ctrl"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 141
    const-string v1, "button_brightness"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_2
    const-string v1, "wifi_display"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v1, "notification_pulse"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    const-string v1, "clear_motion"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    return-object v0

    .line 132
    :cond_3
    const-string v1, "smart_rotation"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/settings/search/provider/SearchIndexableResource;>;"
    new-instance v1, Lcom/lenovo/settings/search/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Lcom/lenovo/settings/search/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 115
    .local v1, "sir":Lcom/lenovo/settings/search/provider/SearchIndexableResource;
    const v2, 0x7f060015

    iput v2, v1, Lcom/lenovo/settings/search/provider/SearchIndexableResource;->xmlResId:I

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    return-object v0
.end method
