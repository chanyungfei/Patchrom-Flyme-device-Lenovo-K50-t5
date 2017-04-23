.class public Lcom/mediatek/bluetooth/ConfigHelper;
.super Ljava/lang/Object;
.source "ConfigHelper.java"


# static fields
.field private static final ADVANCED_SETTING_IDS:[Ljava/lang/String;

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ConfigHelper"

.field private static mInit:Z

.field private static profileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/bluetooth/ProfileConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/bluetooth/ConfigHelper;->profileList:Ljava/util/ArrayList;

    .line 57
    sput-boolean v2, Lcom/mediatek/bluetooth/ConfigHelper;->mInit:Z

    .line 173
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 174
    const-string/jumbo v1, "profile_supported_ftp"

    aput-object v1, v0, v2

    .line 175
    const-string/jumbo v1, "profile_supported_simap"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 176
    const-string/jumbo v1, "profile_supported_prxr"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 177
    const-string/jumbo v1, "profile_supported_maps"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 173
    sput-object v0, Lcom/mediatek/bluetooth/ConfigHelper;->ADVANCED_SETTING_IDS:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSupportedProfiles(Ljava/lang/String;)Z
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string/jumbo v2, "/system/etc/bluetooth/btconfig.xml"

    invoke-static {v2}, Lcom/mediatek/bluetooth/ConfigHelper;->readXML(Ljava/lang/String;)V

    .line 140
    sget-object v2, Lcom/mediatek/bluetooth/ConfigHelper;->profileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Lcom/mediatek/bluetooth/ProfileConfig;

    .line 142
    .local v1, "profiles":[Lcom/mediatek/bluetooth/ProfileConfig;
    sget-object v2, Lcom/mediatek/bluetooth/ConfigHelper;->profileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 145
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/ProfileConfig;->getProfileID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Advanced "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/ProfileConfig;->getProfileID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Enabled!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    .line 148
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/ProfileConfig;->getProfileEnabled()Z

    move-result v2

    return v2

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Advanced "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Disabled!\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    .line 152
    const/4 v2, 0x0

    return v2
.end method

.method public static isAdvanceSettingEnabled()Z
    .locals 5

    .prologue
    .line 182
    const-string/jumbo v3, "/system/etc/bluetooth/btconfig.xml"

    invoke-static {v3}, Lcom/mediatek/bluetooth/ConfigHelper;->readXML(Ljava/lang/String;)V

    .line 183
    sget-object v3, Lcom/mediatek/bluetooth/ConfigHelper;->profileList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/mediatek/bluetooth/ProfileConfig;

    .line 185
    .local v2, "profiles":[Lcom/mediatek/bluetooth/ProfileConfig;
    sget-object v3, Lcom/mediatek/bluetooth/ConfigHelper;->profileList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 186
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    sget-object v3, Lcom/mediatek/bluetooth/ConfigHelper;->ADVANCED_SETTING_IDS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 190
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/ProfileConfig;->getProfileID()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/mediatek/bluetooth/ConfigHelper;->ADVANCED_SETTING_IDS:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/mediatek/bluetooth/ProfileConfig;->getProfileEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    const-string/jumbo v3, "Advanced Settings Enabled!\n"

    invoke-static {v3}, Lcom/mediatek/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    .line 195
    const/4 v3, 0x1

    return v3

    .line 188
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "i":I
    :cond_2
    const-string/jumbo v3, "Advanced Settings Disabled!\n"

    invoke-static {v3}, Lcom/mediatek/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    .line 201
    const/4 v3, 0x0

    return v3
.end method

.method public static isAdvancedProfileEnabled()Z
    .locals 3

    .prologue
    .line 157
    const-string/jumbo v2, "/system/etc/bluetooth/btconfig.xml"

    invoke-static {v2}, Lcom/mediatek/bluetooth/ConfigHelper;->readXML(Ljava/lang/String;)V

    .line 158
    sget-object v2, Lcom/mediatek/bluetooth/ConfigHelper;->profileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Lcom/mediatek/bluetooth/ProfileConfig;

    .line 160
    .local v1, "profiles":[Lcom/mediatek/bluetooth/ProfileConfig;
    sget-object v2, Lcom/mediatek/bluetooth/ConfigHelper;->profileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 163
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/mediatek/bluetooth/ProfileConfig;->getProfileEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    const-string/jumbo v2, "Advanced Profile Enabled!\n"

    invoke-static {v2}, Lcom/mediatek/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    .line 166
    const/4 v2, 0x1

    return v2

    .line 161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    const-string/jumbo v2, "Advanced Profile Disabled!\n"

    invoke-static {v2}, Lcom/mediatek/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    .line 170
    const/4 v2, 0x0

    return v2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 204
    return-void
.end method

.method public static readXML(Ljava/lang/String;)V
    .locals 13
    .param p0, "xmlFileName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 62
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v9, "xmlFile":Ljava/io/File;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 65
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-boolean v10, Lcom/mediatek/bluetooth/ConfigHelper;->mInit:Z

    if-eqz v10, :cond_0

    .line 67
    const-string/jumbo v10, "ConfigHelper"

    const-string/jumbo v11, "btconfig.xml has be read!\n"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 72
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .local v3, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 80
    .local v7, "strName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 81
    .local v8, "strValue":Ljava/lang/String;
    const/4 v5, 0x0

    .line 82
    .local v5, "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    :try_start_1
    const-string/jumbo v10, "UTF-8"

    invoke-interface {v4, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 84
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .local v2, "eventType":I
    move-object v6, v5

    .line 85
    .end local v5    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    .end local v7    # "strName":Ljava/lang/String;
    .end local v8    # "strValue":Ljava/lang/String;
    .local v6, "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    :goto_0
    if-eq v2, v12, :cond_8

    .line 86
    packed-switch v2, :pswitch_data_0

    :cond_1
    :pswitch_0
    move-object v5, v6

    .line 126
    .end local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    .local v5, "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 127
    const-string/jumbo v10, "Get Next EventType!\n"

    invoke-static {v10}, Lcom/mediatek/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v6, v5

    .end local v5    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    .restart local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    goto :goto_0

    .line 73
    .end local v2    # "eventType":I
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readXML Failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    .line 75
    return-void

    .line 88
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "eventType":I
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    :pswitch_1
    :try_start_2
    const-string/jumbo v10, "Xml Start Document!\n"

    invoke-static {v10}, Lcom/mediatek/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    move-object v5, v6

    .line 89
    .end local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    .restart local v5    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    goto :goto_1

    .line 91
    .end local v5    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    .restart local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    :pswitch_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "strName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[START TAG]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    .line 93
    if-eqz v7, :cond_2

    const-string/jumbo v10, "profile"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 95
    new-instance v5, Lcom/mediatek/bluetooth/ProfileConfig;

    invoke-direct {v5}, Lcom/mediatek/bluetooth/ProfileConfig;-><init>()V

    .end local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    .restart local v5    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    goto :goto_1

    .end local v5    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    .restart local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    :cond_2
    move-object v5, v6

    .line 94
    .end local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    .restart local v5    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    goto :goto_1

    .line 99
    .end local v5    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    .end local v7    # "strName":Ljava/lang/String;
    .restart local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    :pswitch_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 101
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[TAG]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " [TEXT] is whitespace!\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    move-object v5, v6

    .line 102
    .end local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    .restart local v5    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    goto :goto_1

    .line 104
    .end local v5    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    .restart local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "strValue":Ljava/lang/String;
    if-eqz v7, :cond_5

    const-string/jumbo v10, "name"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 107
    invoke-virtual {v6, v8}, Lcom/mediatek/bluetooth/ProfileConfig;->setProfileID(Ljava/lang/String;)V

    .line 115
    :cond_4
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[TAG]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " [TEXT] is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    move-object v5, v6

    .line 116
    .end local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    .restart local v5    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    goto/16 :goto_1

    .line 109
    .end local v5    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    .restart local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    :cond_5
    if-eqz v7, :cond_4

    const-string/jumbo v10, "value"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 110
    const-string/jumbo v10, "true"

    invoke-virtual {v8, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_6

    .line 111
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/mediatek/bluetooth/ProfileConfig;->setProfileEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 132
    .end local v8    # "strValue":Ljava/lang/String;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v5, v6

    .line 133
    .end local v2    # "eventType":I
    .end local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readXML Failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 113
    .restart local v2    # "eventType":I
    .restart local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    .restart local v8    # "strValue":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v6, v10}, Lcom/mediatek/bluetooth/ProfileConfig;->setProfileEnabled(Z)V

    goto :goto_2

    .line 118
    .end local v8    # "strValue":Ljava/lang/String;
    :pswitch_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 119
    .restart local v7    # "strName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[END TAG]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/bluetooth/ConfigHelper;->log(Ljava/lang/String;)V

    .line 120
    if-eqz v7, :cond_7

    const-string/jumbo v10, "profile"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 122
    sget-object v10, Lcom/mediatek/bluetooth/ConfigHelper;->profileList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v5, v6

    .line 124
    .end local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    .restart local v5    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    goto/16 :goto_1

    .line 130
    .end local v5    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    .end local v7    # "strName":Ljava/lang/String;
    .restart local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    :cond_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 131
    const/4 v10, 0x1

    sput-boolean v10, Lcom/mediatek/bluetooth/ConfigHelper;->mInit:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v5, v6

    .end local v6    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    .restart local v5    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    goto :goto_4

    .line 132
    .end local v2    # "eventType":I
    .end local v5    # "profileConfig":Lcom/mediatek/bluetooth/ProfileConfig;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
