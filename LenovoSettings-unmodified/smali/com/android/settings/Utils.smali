.class public Lcom/android/settings/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BADNESS_COLORS:[I

.field public static final DISABLED_ALPHA:F = 0.4f

.field private static final META_DATA_PREFERENCE_ICON:Ljava/lang/String; = "com.android.settings.icon"

.field private static final META_DATA_PREFERENCE_SUMMARY:Ljava/lang/String; = "com.android.settings.summary"

.field private static final META_DATA_PREFERENCE_TITLE:Ljava/lang/String; = "com.android.settings.title"

.field public static final PARENTS_KEY_DEVICE:Ljava/lang/String; = "about_device"

.field public static final PARENTS_KEY_DEVICEINFO:Ljava/lang/String; = "deviceinfo_settings"

.field public static final PARENTS_KEY_DISPLAY:Ljava/lang/String; = "display_settings"

.field public static final PARENTS_KEY_KEYS:Ljava/lang/String; = "keys_settings"

.field public static final PARENTS_KEY_LIGHT:Ljava/lang/String; = "lights_settings"

.field public static final PARENTS_KEY_SIMLOCK:Ljava/lang/String; = "sim_lock"

.field public static final PARENTS_KEY_STATUS_INFO:Ljava/lang/String; = "status_info"

.field public static final PARENTS_KEY_SYSAPP:Ljava/lang/String; = "sysapp_settings"

.field public static final PARENTS_KEY_TOUCH:Ljava/lang/String; = "touch_settings"

.field public static final PARENTS_KEY_WIRELESS:Ljava/lang/String; = "wireless_settings"

.field public static final PLUGIN_CERAMICS:Ljava/lang/String; = "ceramics_settings"

.field public static final PLUGIN_KEY_AIR_PLANE:Ljava/lang/String; = "toggle_airplane"

.field public static final PLUGIN_KEY_APP_MANAGER:Ljava/lang/String; = "applications_settings"

.field public static final PLUGIN_KEY_CALL_SETTINGS:Ljava/lang/String; = "call_settings"

.field public static final PLUGIN_KEY_DATA_CONNECT:Ljava/lang/String; = "data_connect_settings"

.field public static final PLUGIN_KEY_FINGER_PRINT:Ljava/lang/String; = "fingerprint_settings"

.field public static final PLUGIN_KEY_FONT:Ljava/lang/String; = "font_settings"

.field public static final PLUGIN_KEY_GLOVE_MODE:Ljava/lang/String; = "glove_mode_enable"

.field public static final PLUGIN_KEY_HOTSPOT:Ljava/lang/String; = "personal_hotspot"

.field public static final PLUGIN_KEY_LEPOWER:Ljava/lang/String; = "lepower_settings"

.field public static final PLUGIN_KEY_LIGHT_EFFECT:Ljava/lang/String; = "light_settings"

.field public static final PLUGIN_KEY_LOCKSCREEN:Ljava/lang/String; = "lock_settings"

.field public static final PLUGIN_KEY_LTE_SETTINGS:Ljava/lang/String; = "mobile_4g_settings"

.field public static final PLUGIN_KEY_MOBILE_NW:Ljava/lang/String; = "mobile_network_settings"

.field public static final PLUGIN_KEY_MULTI_SIM:Ljava/lang/String; = "multi_sim_settings"

.field public static final PLUGIN_KEY_NOTIFICATION:Ljava/lang/String; = "notification_settings"

.field public static final PLUGIN_KEY_RINGTONE:Ljava/lang/String; = "ringtone_settings"

.field public static final PLUGIN_KEY_SCH_PWR_ONOFF:Ljava/lang/String; = "power_setting"

.field public static final PLUGIN_KEY_SCREEN_MODE:Ljava/lang/String; = "teos_settings"

.field public static final PLUGIN_KEY_SIMLOCK:Ljava/lang/String; = "sim_lock_plugin"

.field public static final PLUGIN_KEY_SIMSELECT:Ljava/lang/String; = "sim_select"

.field public static final PLUGIN_KEY_SMART_STANDBY:Ljava/lang/String; = "smart_standby_enable"

.field public static final PLUGIN_KEY_SYSUPDATE:Ljava/lang/String; = "system_update"

.field public static final PLUGIN_KEY_WALLPAPER:Ljava/lang/String; = "theme_settings"

.field public static final PLUGIN_KEY_WIFI:Ljava/lang/String; = "wifi_settings"

.field public static final PLUGIN_WIDE_TOUCH:Ljava/lang/String; = "wide_touch"

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "Utils"

.field public static final UPDATE_PREFERENCE_FLAG_SET_TITLE_TO_MATCHING_ACTIVITY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/Utils;->BADNESS_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x3bc7d8
        -0x1ab6e8
        -0xb8500
        -0x540d4
        -0x9861c9
        -0xf580be
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPreferencePlugin(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "rootprs"    # Landroid/preference/PreferenceScreen;
    .param p2, "parentKey"    # Ljava/lang/String;

    .prologue
    .line 840
    invoke-static {p2}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getItemsByParentKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 841
    .local v3, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    if-nez v3, :cond_1

    .line 842
    const-string v5, "Utils"

    const-string v6, "plugins size is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_0
    return-void

    .line 847
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 848
    .local v2, "pluginSize":I
    const-string v5, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plugins size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 850
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 851
    .local v1, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v5

    if-nez v5, :cond_3

    .line 852
    :cond_2
    const-string v5, "Utils"

    const-string v6, "plugin is null or not valid."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 856
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v4

    .line 859
    .local v4, "prf":Landroid/preference/Preference;
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public static addPreferencePluginSort(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 14
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "rootprs"    # Landroid/preference/PreferenceScreen;
    .param p2, "parentKey"    # Ljava/lang/String;

    .prologue
    .line 866
    invoke-static/range {p2 .. p2}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getItemsByParentKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 867
    .local v7, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_2

    .line 868
    :cond_0
    const-string v11, "Utils"

    const-string v12, "plugins size is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_1
    return-void

    .line 871
    :cond_2
    const-string v11, "Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "plugins size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 873
    .local v8, "preList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    .line 874
    .local v5, "originalCount":I
    if-lez v5, :cond_9

    .line 875
    const-string v11, "Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Original preference count="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_3

    .line 877
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    .line 878
    .local v9, "pref":Landroid/preference/Preference;
    const-string v11, "Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Preference index="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", key="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 881
    .end local v9    # "pref":Landroid/preference/Preference;
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "j":I
    :goto_1
    if-lez v3, :cond_8

    .line 882
    add-int/lit8 v11, v3, -0x1

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 883
    .local v6, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v11

    if-nez v11, :cond_6

    .line 884
    :cond_4
    const-string v11, "Utils"

    const-string v12, "plugin is null or not valid."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 887
    :cond_6
    const-string v11, "Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Plugin position="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", key="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 v9, 0x0

    .line 891
    .restart local v9    # "pref":Landroid/preference/Preference;
    :try_start_0
    invoke-virtual {v6, p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 896
    :goto_3
    if-eqz v9, :cond_5

    .line 899
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v9}, Lcom/android/settings/Utils;->updatePluginPreferenceEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 903
    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v11

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_7

    .line 904
    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v8, v11, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/Exception;
    const-string v11, "Utils"

    const-string v12, "[addPreferencePluginSort] getPreference() failed: "

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    const/4 v9, 0x0

    goto :goto_3

    .line 906
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 909
    .end local v6    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .end local v9    # "pref":Landroid/preference/Preference;
    :cond_8
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 911
    const/4 v1, 0x0

    .local v1, "h":I
    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_1

    .line 912
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/Preference;

    .line 913
    .local v4, "newPref":Landroid/preference/Preference;
    const-string v11, "Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "New index="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", key="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 915
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 911
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 918
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "newPref":Landroid/preference/Preference;
    :cond_9
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_1

    .line 920
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 921
    .restart local v6    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v11

    if-nez v11, :cond_b

    .line 922
    :cond_a
    const-string v11, "Utils"

    const-string v12, "plugin is null or not valid."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 925
    :cond_b
    invoke-virtual {v6, p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v10

    .line 926
    .local v10, "prf":Landroid/preference/Preference;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v10}, Lcom/android/settings/Utils;->updatePluginPreferenceEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 930
    invoke-virtual {p1, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_6
.end method

.method public static addPreferencePluginSortForChar(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "rootprs"    # Landroid/preference/PreferenceScreen;
    .param p2, "parentKey"    # Ljava/lang/String;

    .prologue
    const/high16 v12, 0x41200000    # 10.0f

    .line 937
    invoke-static {p2}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getItemsByParentKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 939
    .local v5, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    if-nez v5, :cond_1

    .line 940
    const-string v9, "Utils"

    const-string v10, "plugins size is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_0
    return-void

    .line 943
    :cond_1
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "plugins size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 945
    .local v6, "preList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    if-lez v9, :cond_8

    .line 946
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "rootprs.getPreferenceCount() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 948
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " i = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    .line 950
    .local v7, "pref":Landroid/preference/Preference;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 952
    .end local v7    # "pref":Landroid/preference/Preference;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "j":I
    :goto_1
    if-lez v3, :cond_7

    .line 953
    add-int/lit8 v9, v3, -0x1

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 954
    .local v4, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v9

    if-nez v9, :cond_5

    .line 955
    :cond_3
    const-string v9, "Utils"

    const-string v10, "plugin is null or not valid."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 958
    :cond_5
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "j = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v8, 0x0

    .line 964
    .local v8, "prf":Landroid/preference/Preference;
    :try_start_0
    invoke-virtual {v4, p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 969
    :goto_3
    if-eqz v8, :cond_4

    .line 972
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lcom/android/settings/Utils;->updatePluginPreferenceEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 976
    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v9

    mul-float/2addr v9, v12

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOrder(I)V

    .line 977
    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v9

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_6

    .line 978
    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v6, v9, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "Utils"

    const-string v10, "[addPreferencePluginSortForChar] getPreference() failed: "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 967
    const/4 v8, 0x0

    goto :goto_3

    .line 980
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 983
    .end local v4    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .end local v8    # "prf":Landroid/preference/Preference;
    :cond_7
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 985
    const/4 v1, 0x0

    .local v1, "h":I
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_0

    .line 986
    const-string v10, "Utils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " h ="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "preList.get(h)"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    invoke-virtual {v9}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    invoke-virtual {p1, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 985
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 991
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 993
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 994
    .restart local v4    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v9

    if-nez v9, :cond_b

    .line 995
    :cond_9
    const-string v9, "Utils"

    const-string v10, "plugin is null or not valid."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_a
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 998
    :cond_b
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "position = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v11

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "--key-->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v8, 0x0

    .line 1001
    .restart local v8    # "prf":Landroid/preference/Preference;
    :try_start_1
    invoke-virtual {v4, p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 1006
    :goto_7
    if-eqz v8, :cond_a

    .line 1009
    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v9

    mul-float/2addr v9, v12

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOrder(I)V

    .line 1010
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lcom/android/settings/Utils;->updatePluginPreferenceEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 1014
    invoke-virtual {p1, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 1002
    :catch_1
    move-exception v0

    .line 1003
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v9, "Utils"

    const-string v10, "[addPreferencePluginSortForChar] getPreference() failed: "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1004
    const/4 v8, 0x0

    goto :goto_7
.end method

.method public static addPreferencePluginSortSpecialWireless(Landroid/app/Activity;Landroid/preference/PreferenceScreen;Ljava/lang/String;I)V
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "rootprs"    # Landroid/preference/PreferenceScreen;
    .param p2, "parentKey"    # Ljava/lang/String;
    .param p3, "pluginStartMove"    # I

    .prologue
    .line 1040
    invoke-static {p2}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getItemsByParentKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1042
    .local v5, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    if-nez v5, :cond_1

    .line 1043
    const-string v9, "Utils"

    const-string v10, "plugins size is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_0
    return-void

    .line 1046
    :cond_1
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "plugins size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1048
    .local v6, "preList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    if-lez v9, :cond_8

    .line 1049
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " rootprs.getPreferenceCount() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 1051
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "i = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    .line 1053
    .local v7, "pref":Landroid/preference/Preference;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1055
    .end local v7    # "pref":Landroid/preference/Preference;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "j":I
    :goto_1
    if-lez v3, :cond_7

    .line 1056
    add-int/lit8 v9, v3, -0x1

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 1057
    .local v4, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1058
    :cond_3
    const-string v9, "Utils"

    const-string v10, "plugin is null or not valid."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1061
    :cond_5
    const-string v9, "Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "j = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :try_start_0
    invoke-virtual {v4, p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1073
    .local v8, "prf":Landroid/preference/Preference;
    :goto_3
    if-eqz v8, :cond_4

    .line 1076
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lcom/android/settings/Utils;->updatePluginPreferenceEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 1080
    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v9

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_6

    .line 1081
    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPosition()F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v9, p3

    invoke-virtual {v6, v9, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 1069
    .end local v8    # "prf":Landroid/preference/Preference;
    :catch_0
    move-exception v0

    .line 1070
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "Utils"

    const-string v10, "[addPreferencePluginSortSpecialWireless] getPreference() failed: "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1071
    const/4 v8, 0x0

    .restart local v8    # "prf":Landroid/preference/Preference;
    goto :goto_3

    .line 1083
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1086
    .end local v4    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .end local v8    # "prf":Landroid/preference/Preference;
    :cond_7
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1088
    const/4 v1, 0x0

    .local v1, "h":I
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_0

    .line 1089
    const-string v10, "Utils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "h ="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "preList.get(h)"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    invoke-virtual {v9}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    invoke-virtual {v9, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 1091
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/Preference;

    invoke-virtual {p1, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1088
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1094
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 1096
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 1097
    .restart local v4    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->isPluginValid()Z

    move-result v9

    if-nez v9, :cond_a

    .line 1098
    :cond_9
    const-string v9, "Utils"

    const-string v10, "plugin is null or not valid."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1101
    :cond_a
    invoke-virtual {v4, p0}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v8

    .line 1102
    .restart local v8    # "prf":Landroid/preference/Preference;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Lcom/android/settings/Utils;->updatePluginPreferenceEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 1106
    invoke-virtual {p1, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_6
.end method

.method public static buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResId"    # I
    .param p2, "positiveAction"    # Ljava/lang/Runnable;

    .prologue
    .line 700
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 701
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 702
    const v1, 0x7f0c0b9d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 703
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/Utils$1;

    invoke-direct {v2, p2}, Lcom/android/settings/Utils$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 709
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 711
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 1357
    if-eqz p1, :cond_0

    .line 1359
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1360
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1361
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    .line 1363
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return v2
.end method

.method public static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v5, 0x1

    .line 604
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 606
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    .line 610
    .local v0, "avatarDataStream":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 611
    const/4 v5, 0x0

    .line 620
    :goto_0
    return v5

    .line 613
    :cond_0
    if-eqz p1, :cond_1

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    .line 614
    .local v4, "userId":I
    :goto_1
    const-string v6, "user"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 615
    .local v3, "um":Landroid/os/UserManager;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 616
    .local v2, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v4, v2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 618
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 619
    :catch_0
    move-exception v6

    goto :goto_0

    .line 613
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "userId":I
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    goto :goto_1
.end method

.method public static createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .param p0, "localeStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 462
    if-nez p0, :cond_0

    .line 463
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 471
    :goto_0
    return-object v1

    .line 464
    :cond_0
    const-string v1, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "brokenDownLocale":[Ljava/lang/String;
    array-length v1, v0

    if-ne v4, v1, :cond_1

    .line 467
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_1
    array-length v1, v0

    if-ne v5, v1, :cond_2

    .line 469
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_2
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v4, v0, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createRemoveConfirmationDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "removingUserId"    # I
    .param p2, "onConfirmListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 1260
    const-string v5, "user"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1261
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1264
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 1265
    const v2, 0x7f0c0b8f

    .line 1266
    .local v2, "titleResId":I
    const v1, 0x7f0c0b92

    .line 1277
    .local v1, "messageResId":I
    :goto_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0b97

    invoke-virtual {v5, v6, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1284
    .local v0, "dlg":Landroid/app/Dialog;
    return-object v0

    .line 1267
    .end local v0    # "dlg":Landroid/app/Dialog;
    .end local v1    # "messageResId":I
    .end local v2    # "titleResId":I
    :cond_0
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1268
    const v2, 0x7f0c0b91

    .line 1269
    .restart local v2    # "titleResId":I
    const v1, 0x7f0c0b94

    .restart local v1    # "messageResId":I
    goto :goto_0

    .line 1270
    .end local v1    # "messageResId":I
    .end local v2    # "titleResId":I
    :cond_1
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1271
    const v2, 0x7f0c001c

    .line 1272
    .restart local v2    # "titleResId":I
    const v1, 0x7f0c001d

    .restart local v1    # "messageResId":I
    goto :goto_0

    .line 1274
    .end local v1    # "messageResId":I
    .end local v2    # "titleResId":I
    :cond_2
    const v2, 0x7f0c0b90

    .line 1275
    .restart local v2    # "titleResId":I
    const v1, 0x7f0c0b93

    .restart local v1    # "messageResId":I
    goto :goto_0
.end method

.method public static exePauseByParentKey(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "parentKey"    # Ljava/lang/String;

    .prologue
    .line 1389
    invoke-static {p1}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getItemsByParentKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1391
    .local v2, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    if-nez v2, :cond_1

    .line 1392
    const-string v3, "Utils"

    const-string v4, "plugins size is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_0
    return-void

    .line 1395
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 1406
    .local v1, "pluginItemInfo":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    invoke-virtual {v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getSettingItem()Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->pause()V

    goto :goto_0
.end method

.method public static exeResumeByParentKey(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "parentKey"    # Ljava/lang/String;

    .prologue
    .line 1367
    invoke-static {p1}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getItemsByParentKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1369
    .local v2, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/pluginItem/PluginItemInfo;>;"
    if-nez v2, :cond_1

    .line 1370
    const-string v3, "Utils"

    const-string v4, "plugins size is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_0
    return-void

    .line 1373
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    .line 1384
    .local v1, "pluginItemInfo":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    invoke-virtual {v1}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getSettingItem()Lcom/lenovo/settings/pluginItem/AbstractSettingItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/settings/pluginItem/AbstractSettingItem;->resume()V

    goto :goto_0
.end method

.method public static forceCustomPadding(Landroid/view/View;Z)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "additive"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1238
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1239
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f080053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1241
    .local v2, "paddingSide":I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    :goto_0
    add-int v3, v2, v5

    .line 1242
    .local v3, "paddingStart":I
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    :goto_1
    add-int v1, v2, v5

    .line 1243
    .local v1, "paddingEnd":I
    const v5, 0x1050023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1246
    .local v0, "paddingBottom":I
    invoke-virtual {p0, v3, v6, v1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1247
    return-void

    .end local v0    # "paddingBottom":I
    .end local v1    # "paddingEnd":I
    .end local v3    # "paddingStart":I
    :cond_0
    move v5, v6

    .line 1241
    goto :goto_0

    .restart local v3    # "paddingStart":I
    :cond_1
    move v5, v6

    .line 1242
    goto :goto_1
.end method

.method public static forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "list"    # Landroid/widget/ListView;
    .param p3, "ignoreSidePadding"    # Z

    .prologue
    .line 546
    const/high16 v0, 0x2000000

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 547
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 548
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 549
    return-void
.end method

.method public static formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # D
    .param p3, "withSeconds"    # Z

    .prologue
    const v5, 0x15180

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1311
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 1312
    .local v4, "seconds":I
    if-nez p3, :cond_0

    .line 1314
    add-int/lit8 v4, v4, 0x1e

    .line 1317
    :cond_0
    const/4 v0, 0x0

    .local v0, "days":I
    const/4 v1, 0x0

    .local v1, "hours":I
    const/4 v2, 0x0

    .line 1318
    .local v2, "minutes":I
    if-lt v4, v5, :cond_1

    .line 1319
    div-int v0, v4, v5

    .line 1320
    mul-int/2addr v5, v0

    sub-int/2addr v4, v5

    .line 1322
    :cond_1
    const/16 v5, 0xe10

    if-lt v4, v5, :cond_2

    .line 1323
    div-int/lit16 v1, v4, 0xe10

    .line 1324
    mul-int/lit16 v5, v1, 0xe10

    sub-int/2addr v4, v5

    .line 1326
    :cond_2
    const/16 v5, 0x3c

    if-lt v4, v5, :cond_3

    .line 1327
    div-int/lit8 v2, v4, 0x3c

    .line 1328
    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    .line 1330
    :cond_3
    if-eqz p3, :cond_7

    .line 1331
    if-lez v0, :cond_4

    .line 1332
    const v5, 0x7f0c0906

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1334
    :cond_4
    if-lez v1, :cond_5

    .line 1335
    const v5, 0x7f0c0907

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1337
    :cond_5
    if-lez v2, :cond_6

    .line 1338
    const v5, 0x7f0c0908

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1340
    :cond_6
    const v5, 0x7f0c0909

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1343
    :cond_7
    if-lez v0, :cond_8

    .line 1344
    const v5, 0x7f0c090a

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1346
    :cond_8
    if-lez v1, :cond_9

    .line 1347
    const v5, 0x7f0c090b

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1350
    :cond_9
    const v5, 0x7f0c090c

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v0, 0x0

    .line 442
    if-nez p0, :cond_1

    .line 452
    :cond_0
    return-object v0

    .line 443
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 445
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    const-string v0, ""

    .line 448
    .local v0, "addresses":Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatPercentage(D)Ljava/lang/String;
    .locals 2
    .param p0, "percentage"    # D

    .prologue
    .line 487
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 488
    .local v0, "bf":Landroid/text/BidiFormatter;
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatPercentage(I)Ljava/lang/String;
    .locals 4
    .param p0, "percentage"    # I

    .prologue
    .line 482
    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPercentage(JJ)Ljava/lang/String;
    .locals 4
    .param p0, "amount"    # J
    .param p2, "total"    # J

    .prologue
    .line 477
    long-to-double v0, p0

    long-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryLevel(Landroid/content/Intent;)I
    .locals 4
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 506
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 507
    .local v0, "level":I
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 508
    .local v1, "scale":I
    mul-int/lit8 v2, v0, 0x64

    div-int/2addr v2, v1

    return v2
.end method

.method public static getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 502
    invoke-static {p0}, Lcom/android/settings/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 512
    move-object v0, p1

    .line 514
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "plugged"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 515
    .local v1, "plugType":I
    const-string v5, "status"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 518
    .local v3, "status":I
    if-ne v3, v8, :cond_3

    .line 519
    const v5, 0x7f0c047d

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 520
    .local v4, "statusString":Ljava/lang/String;
    if-lez v1, :cond_0

    .line 522
    if-ne v1, v7, :cond_1

    .line 523
    const v2, 0x7f0c047e

    .line 529
    .local v2, "resId":I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 541
    .end local v2    # "resId":I
    :cond_0
    :goto_1
    return-object v4

    .line 524
    :cond_1
    if-ne v1, v8, :cond_2

    .line 525
    const v2, 0x7f0c047f

    .restart local v2    # "resId":I
    goto :goto_0

    .line 527
    .end local v2    # "resId":I
    :cond_2
    const v2, 0x7f0c0480

    .restart local v2    # "resId":I
    goto :goto_0

    .line 531
    .end local v2    # "resId":I
    .end local v4    # "statusString":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    .line 532
    const v5, 0x7f0c0481

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "statusString":Ljava/lang/String;
    goto :goto_1

    .line 533
    .end local v4    # "statusString":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x4

    if-ne v3, v5, :cond_5

    .line 534
    const v5, 0x7f0c0482

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "statusString":Ljava/lang/String;
    goto :goto_1

    .line 535
    .end local v4    # "statusString":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x5

    if-ne v3, v5, :cond_6

    .line 536
    const v5, 0x7f0c0483

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "statusString":Ljava/lang/String;
    goto :goto_1

    .line 538
    .end local v4    # "statusString":Ljava/lang/String;
    :cond_6
    const v5, 0x7f0c047c

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "statusString":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 435
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 437
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 438
    .local v1, "prop":Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInsecureTargetUser(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 9
    .param p0, "activityToken"    # Landroid/os/IBinder;
    .param p1, "arguments"    # Landroid/os/Bundle;
    .param p2, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 1204
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v2, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 1205
    .local v2, "currentUser":Landroid/os/UserHandle;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1207
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    new-instance v5, Landroid/os/UserHandle;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 1209
    .local v5, "launchedFromUser":Landroid/os/UserHandle;
    if-eqz v5, :cond_0

    invoke-virtual {v5, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1227
    .end local v5    # "launchedFromUser":Landroid/os/UserHandle;
    :goto_0
    return-object v5

    .line 1212
    .restart local v5    # "launchedFromUser":Landroid/os/UserHandle;
    :cond_0
    if-eqz p2, :cond_1

    const-string v6, "android.intent.extra.USER"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    move-object v4, v6

    .line 1214
    .local v4, "extrasUser":Landroid/os/UserHandle;
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v5, v4

    .line 1215
    goto :goto_0

    .end local v4    # "extrasUser":Landroid/os/UserHandle;
    :cond_1
    move-object v4, v7

    .line 1212
    goto :goto_1

    .line 1217
    .restart local v4    # "extrasUser":Landroid/os/UserHandle;
    :cond_2
    if-eqz p1, :cond_3

    const-string v6, "android.intent.extra.USER"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    move-object v1, v6

    .line 1219
    .local v1, "argumentsUser":Landroid/os/UserHandle;
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_4

    move-object v5, v1

    .line 1220
    goto :goto_0

    .end local v1    # "argumentsUser":Landroid/os/UserHandle;
    :cond_3
    move-object v1, v7

    .line 1217
    goto :goto_2

    .line 1222
    .end local v4    # "extrasUser":Landroid/os/UserHandle;
    .end local v5    # "launchedFromUser":Landroid/os/UserHandle;
    :catch_0
    move-exception v3

    .line 1224
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "Utils"

    const-string v8, "Could not talk to activity manager."

    invoke-static {v6, v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v7

    .line 1225
    goto :goto_0

    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v1    # "argumentsUser":Landroid/os/UserHandle;
    .restart local v4    # "extrasUser":Landroid/os/UserHandle;
    .restart local v5    # "launchedFromUser":Landroid/os/UserHandle;
    :cond_4
    move-object v5, v2

    .line 1227
    goto :goto_0
.end method

.method private static getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 637
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 641
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "account_type IS NULL AND account_name IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 647
    .local v6, "localRawProfile":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-object v4

    .line 650
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 655
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 653
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 655
    .local v8, "localRowProfileId":J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 659
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data2"

    aput-object v3, v2, v11

    const-string v3, "data3"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 665
    .local v10, "structuredName":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 668
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_3

    .line 677
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 655
    .end local v8    # "localRowProfileId":J
    .end local v10    # "structuredName":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 671
    .restart local v8    # "localRowProfileId":J
    .restart local v10    # "structuredName":Landroid/database/Cursor;
    :cond_3
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 672
    .local v7, "partialName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 673
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v7

    .line 677
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v4, v7

    goto :goto_0

    .end local v7    # "partialName":Ljava/lang/String;
    :catchall_1
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;
    .locals 7
    .param p0, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 796
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    .line 797
    .local v4, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 798
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 799
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 800
    .local v2, "profile":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 798
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 803
    :cond_1
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 804
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 808
    .end local v2    # "profile":Landroid/os/UserHandle;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "full"    # Z

    .prologue
    .line 624
    if-eqz p1, :cond_0

    .line 625
    invoke-static {p0}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 627
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 682
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 683
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 685
    .local v6, "profile":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 693
    :goto_0
    return-object v3

    .line 688
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 691
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 10
    .param p0, "activityToken"    # Landroid/os/IBinder;
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "arguments"    # Landroid/os/Bundle;
    .param p3, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 1154
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-direct {v2, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 1155
    .local v2, "currentUser":Landroid/os/UserHandle;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1157
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    .line 1158
    .local v5, "launchedFromPackage":Ljava/lang/String;
    const-string v8, "com.android.settings"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1160
    .local v6, "launchedFromSettingsApp":Z
    new-instance v7, Landroid/os/UserHandle;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    .line 1162
    .local v7, "launchedFromUser":Landroid/os/UserHandle;
    if-eqz v7, :cond_0

    invoke-virtual {v7, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1164
    invoke-static {p1, v7}, Lcom/android/settings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1188
    .end local v5    # "launchedFromPackage":Ljava/lang/String;
    .end local v6    # "launchedFromSettingsApp":Z
    .end local v7    # "launchedFromUser":Landroid/os/UserHandle;
    :goto_0
    return-object v7

    .line 1168
    .restart local v5    # "launchedFromPackage":Ljava/lang/String;
    .restart local v6    # "launchedFromSettingsApp":Z
    .restart local v7    # "launchedFromUser":Landroid/os/UserHandle;
    :cond_0
    if-eqz p3, :cond_1

    const-string v8, "android.intent.extra.USER"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    move-object v4, v8

    .line 1170
    .local v4, "extrasUser":Landroid/os/UserHandle;
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1172
    if-eqz v6, :cond_2

    invoke-static {p1, v4}, Lcom/android/settings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v7, v4

    .line 1173
    goto :goto_0

    .end local v4    # "extrasUser":Landroid/os/UserHandle;
    :cond_1
    move-object v4, v1

    .line 1168
    goto :goto_1

    .line 1176
    .restart local v4    # "extrasUser":Landroid/os/UserHandle;
    :cond_2
    if-eqz p2, :cond_3

    const-string v8, "android.intent.extra.USER"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/os/UserHandle;

    move-object v1, v8

    .line 1178
    .local v1, "argumentsUser":Landroid/os/UserHandle;
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1180
    if-eqz v6, :cond_4

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    move-object v7, v1

    .line 1181
    goto :goto_0

    .line 1184
    .end local v1    # "argumentsUser":Landroid/os/UserHandle;
    .end local v4    # "extrasUser":Landroid/os/UserHandle;
    .end local v5    # "launchedFromPackage":Ljava/lang/String;
    .end local v6    # "launchedFromSettingsApp":Z
    .end local v7    # "launchedFromUser":Landroid/os/UserHandle;
    :catch_0
    move-exception v3

    .line 1186
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "Utils"

    const-string v9, "Could not talk to activity manager."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_4
    move-object v7, v2

    .line 1188
    goto :goto_0
.end method

.method private static getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 632
    invoke-static {p0}, Lcom/android/settings/Utils;->getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, "given":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "given":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "given":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 10
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    const v8, 0x7f0c0788

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 577
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 578
    .local v3, "usbRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 579
    .local v5, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, "bluetoothRegexs":[Ljava/lang/String;
    array-length v9, v3

    if-eqz v9, :cond_0

    move v2, v6

    .line 582
    .local v2, "usbAvailable":Z
    :goto_0
    array-length v9, v5

    if-eqz v9, :cond_1

    move v4, v6

    .line 583
    .local v4, "wifiAvailable":Z
    :goto_1
    array-length v9, v1

    if-eqz v9, :cond_2

    move v0, v6

    .line 585
    .local v0, "bluetoothAvailable":Z
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    move v6, v8

    .line 598
    :goto_3
    return v6

    .end local v0    # "bluetoothAvailable":Z
    .end local v2    # "usbAvailable":Z
    .end local v4    # "wifiAvailable":Z
    :cond_0
    move v2, v7

    .line 581
    goto :goto_0

    .restart local v2    # "usbAvailable":Z
    :cond_1
    move v4, v7

    .line 582
    goto :goto_1

    .restart local v4    # "wifiAvailable":Z
    :cond_2
    move v0, v7

    .line 583
    goto :goto_2

    .line 587
    .restart local v0    # "bluetoothAvailable":Z
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    move v6, v8

    .line 588
    goto :goto_3

    .line 589
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    move v6, v8

    .line 590
    goto :goto_3

    .line 591
    :cond_5
    if-eqz v4, :cond_6

    .line 592
    const v6, 0x7f0c0785

    goto :goto_3

    .line 593
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 594
    const v6, 0x7f0c0787

    goto :goto_3

    .line 595
    :cond_7
    if-eqz v2, :cond_8

    .line 596
    const v6, 0x7f0c0784

    goto :goto_3

    .line 598
    :cond_8
    const v6, 0x7f0c0786

    goto :goto_3
.end method

.method public static getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "um"    # Landroid/os/UserManager;
    .param p2, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 1292
    iget-object v1, p2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1293
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1294
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1295
    invoke-static {p0, v0}, Lcom/android/settings/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settings/drawable/CircleFramedDrawable;

    move-result-object v1

    .line 1298
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    :cond_0
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 422
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 424
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 425
    .local v1, "prop":Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static hasMultipleUsers(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 715
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 835
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isBatteryPresent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 492
    const-string v0, "present"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCharacterBlackScreenQuickShotFlashModeSupport(Landroid/content/Context;)Z
    .locals 1
    .param p0, "mActivity"    # Landroid/content/Context;

    .prologue
    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method public static isGuestMode(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1412
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "security_private_mode_pattern"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1414
    .local v1, "privateMode":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    .line 1417
    .end local v1    # "privateMode":I
    :cond_0
    :goto_0
    return v2

    .line 1415
    :catch_0
    move-exception v0

    .line 1416
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Utils"

    const-string v4, "security_private_mode_pattern read failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isManagedProfile(Landroid/os/UserManager;)Z
    .locals 2
    .param p0, "userManager"    # Landroid/os/UserManager;

    .prologue
    .line 1233
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1234
    .local v0, "currentUser":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    return v1
.end method

.method public static isMonkeyRunning()Z
    .locals 1

    .prologue
    .line 398
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method static isOemUnlockEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1022
    const-string v1, "persistent_data_block"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 1024
    .local v0, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v1

    return v1
.end method

.method private static isProfileOf(Landroid/os/UserManager;Landroid/os/UserHandle;)Z
    .locals 3
    .param p0, "um"    # Landroid/os/UserManager;
    .param p1, "otherUser"    # Landroid/os/UserHandle;

    .prologue
    const/4 v0, 0x0

    .line 1137
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1138
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 825
    invoke-static {p0}, Lcom/android/settings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 831
    :cond_0
    :goto_0
    return v1

    .line 829
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "toggleable":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 405
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 407
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 411
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 413
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleResId"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "isShortcut"    # Z

    .prologue
    .line 782
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 783
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 784
    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    const-string v1, ":settings:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 786
    const-string v1, ":settings:show_fragment_title_resid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 787
    const-string v1, ":settings:show_fragment_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 788
    const-string v1, ":settings:show_fragment_as_shortcut"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 789
    return-object v0
.end method

.method public static prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V
    .locals 9
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "list"    # Landroid/view/View;
    .param p3, "ignoreSidePadding"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 558
    invoke-virtual {p2}, Landroid/view/View;->getScrollBarStyle()I

    move-result v5

    const/high16 v8, 0x2000000

    if-ne v5, v8, :cond_1

    move v1, v7

    .line 559
    .local v1, "movePadding":Z
    :goto_0
    if-eqz v1, :cond_0

    instance-of v5, p0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_0

    .line 560
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v7, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 562
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 563
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f080053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 564
    .local v3, "paddingSide":I
    const v5, 0x1050023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 567
    .local v2, "paddingBottom":I
    if-eqz p3, :cond_2

    move v0, v6

    .line 568
    .local v0, "effectivePaddingSide":I
    :goto_1
    invoke-virtual {p2, v0, v6, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 570
    .end local v0    # "effectivePaddingSide":I
    .end local v2    # "paddingBottom":I
    .end local v3    # "paddingSide":I
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void

    .end local v1    # "movePadding":Z
    :cond_1
    move v1, v6

    .line 558
    goto :goto_0

    .restart local v1    # "movePadding":Z
    .restart local v2    # "paddingBottom":I
    .restart local v3    # "paddingSide":I
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_2
    move v0, v3

    .line 567
    goto :goto_1
.end method

.method static setOemUnlockEnabled(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 1032
    const-string v1, "persistent_data_block"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 1034
    .local v0, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    invoke-virtual {v0, p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    .line 1035
    return-void
.end method

.method public static startMultwindowMode(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # I

    .prologue
    .line 822
    return-void
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 736
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 738
    return-void
.end method

.method public static startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "isShortcut"    # Z

    .prologue
    .line 743
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move-object v4, p6

    move v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v7

    .line 745
    .local v7, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 747
    :try_start_0
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :goto_0
    return-void

    .line 748
    :catch_0
    move-exception v6

    .line 749
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    const-string v0, "Utils"

    const-string v1, "startWithFragment failed!"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 753
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    :try_start_1
    invoke-virtual {p3, v7, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 754
    :catch_1
    move-exception v6

    .line 755
    .restart local v6    # "e":Landroid/content/ActivityNotFoundException;
    const-string v0, "Utils"

    const-string v1, "startWithFragment failed!"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleResId"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p5, "isShortcut"    # Z
    .param p6, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 762
    invoke-static/range {p0 .. p5}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    .line 764
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 765
    return-void
.end method

.method public static updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "header"    # Landroid/preference/PreferenceActivity$Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Landroid/preference/PreferenceActivity$Header;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v1, p2, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 338
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 341
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v10, 0x80

    invoke-virtual {v5, v1, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 342
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 343
    .local v3, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 344
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 345
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    .line 348
    const/4 v9, 0x0

    .line 349
    .local v9, "title":Ljava/lang/String;
    const/4 v8, 0x0

    .line 353
    .local v8, "summary":Ljava/lang/String;
    :try_start_0
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 355
    .local v6, "res":Landroid/content/res/Resources;
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 357
    .local v4, "metaData":Landroid/os/Bundle;
    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 359
    const-string v10, "com.android.settings.title"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 360
    const-string v10, "com.android.settings.summary"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 370
    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 371
    invoke-virtual {v7, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 377
    :cond_1
    iput-object v9, p2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 378
    iput-object v8, p2, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 380
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    iput-object v10, p2, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 383
    const/4 v10, 0x1

    .line 391
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "listSize":I
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v8    # "summary":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    :goto_2
    return v10

    .line 343
    .restart local v0    # "i":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "listSize":I
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "listSize":I
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 391
    const/4 v10, 0x0

    goto :goto_2

    .line 364
    .restart local v0    # "i":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "listSize":I
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "summary":Ljava/lang/String;
    .restart local v9    # "title":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_1

    .line 362
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method public static updatePluginPreferenceEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/preference/Preference;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginKey"    # Ljava/lang/String;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1113
    if-nez p2, :cond_0

    .line 1130
    :goto_0
    return-void

    .line 1117
    :cond_0
    const-string v5, "toggle_airplane"

    invoke-static {v5}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getPluginDependencyByKey(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1119
    .local v0, "airPlaneDep":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1120
    invoke-static {p0}, Lcom/android/settings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1121
    invoke-virtual {p2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 1123
    :cond_1
    invoke-static {p0}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v2

    .line 1124
    .local v2, "telephonyPlugin":Lcom/lenovo/settings/manager/TelephonyPlugin;
    invoke-virtual {v2, p0}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v1

    .line 1125
    .local v1, "insertedSimCount":I
    if-lez v1, :cond_2

    :goto_1
    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    .line 1128
    .end local v1    # "insertedSimCount":I
    .end local v2    # "telephonyPlugin":Lcom/lenovo/settings/manager/TelephonyPlugin;
    :cond_3
    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static updatePreferenceToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentPreferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-virtual/range {p1 .. p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/IconPreferenceScreen;

    .line 272
    .local v8, "preference":Lcom/android/settings/IconPreferenceScreen;
    if-nez v8, :cond_0

    .line 273
    const/4 v13, 0x0

    .line 331
    :goto_0
    return v13

    .line 276
    :cond_0
    invoke-virtual {v8}, Lcom/android/settings/IconPreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 277
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_4

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 280
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/16 v13, 0x80

    invoke-virtual {v7, v3, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 281
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 282
    .local v5, "listSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_4

    .line 283
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 284
    .local v10, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_3

    .line 286
    const/4 v2, 0x0

    .line 287
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    .line 288
    .local v12, "title":Ljava/lang/String;
    const/4 v11, 0x0

    .line 292
    .local v11, "summary":Ljava/lang/String;
    :try_start_0
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 294
    .local v9, "res":Landroid/content/res/Resources;
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v13, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 296
    .local v6, "metaData":Landroid/os/Bundle;
    if-eqz v9, :cond_1

    if-eqz v6, :cond_1

    .line 297
    const-string v13, "com.android.settings.icon"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 298
    const-string v13, "com.android.settings.title"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 299
    const-string v13, "com.android.settings.summary"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 309
    .end local v6    # "metaData":Landroid/os/Bundle;
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 310
    invoke-virtual {v10, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 314
    :cond_2
    invoke-virtual {v8, v2}, Lcom/android/settings/IconPreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 315
    invoke-virtual {v8, v12}, Lcom/android/settings/IconPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual {v8, v11}, Lcom/android/settings/IconPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 319
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/android/settings/IconPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 323
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 282
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "summary":Ljava/lang/String;
    .end local v12    # "title":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 329
    .end local v1    # "i":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "listSize":I
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 331
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 303
    .restart local v1    # "i":I
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "listSize":I
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "summary":Ljava/lang/String;
    .restart local v12    # "title":Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_2

    .line 301
    :catch_1
    move-exception v13

    goto :goto_2
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentPreferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preferenceKey"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    const/4 v7, 0x0

    .line 209
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 210
    .local v5, "preference":Landroid/preference/Preference;
    if-nez v5, :cond_0

    .line 243
    :goto_0
    return v7

    .line 214
    :cond_0
    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 215
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 218
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 219
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 220
    .local v3, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 221
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 222
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    .line 226
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 230
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    .line 232
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 235
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 220
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 241
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "listSize":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
