.class public Landroid/graphics/FontListParser;
.super Ljava/lang/Object;
.source "FontListParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/FontListParser$Config;,
        Landroid/graphics/FontListParser$Font;,
        Landroid/graphics/FontListParser$Alias;,
        Landroid/graphics/FontListParser$Family;
    }
.end annotation


# static fields
.field private static isDefaultAndroidFont:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Landroid/graphics/FontListParser;->isDefaultAndroidFont:Z

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Landroid/graphics/FontListParser$Config;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 92
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 93
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 96
    invoke-static {}, Landroid/content/res/ThemeExtraConfiguration;->isDefaultAndroidFont()Z

    move-result v1

    sput-boolean v1, Landroid/graphics/FontListParser;->isDefaultAndroidFont:Z

    .line 99
    invoke-static {v0}, Landroid/graphics/FontListParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 99
    return-object v1

    .line 100
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v1

    .line 101
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 100
    throw v1
.end method

.method private static readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Alias;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 179
    new-instance v0, Landroid/graphics/FontListParser$Alias;

    invoke-direct {v0}, Landroid/graphics/FontListParser$Alias;-><init>()V

    .line 180
    .local v0, "alias":Landroid/graphics/FontListParser$Alias;
    const-string/jumbo v2, "name"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    .line 181
    const-string/jumbo v2, "to"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    .line 182
    const-string/jumbo v2, "weight"

    invoke-interface {p0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "weightStr":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 184
    const/16 v2, 0x190

    iput v2, v0, Landroid/graphics/FontListParser$Alias;->weight:I

    .line 188
    :goto_0
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 189
    return-object v0

    .line 186
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/graphics/FontListParser$Alias;->weight:I

    goto :goto_0
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Config;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 107
    new-instance v0, Landroid/graphics/FontListParser$Config;

    invoke-direct {v0}, Landroid/graphics/FontListParser$Config;-><init>()V

    .line 108
    .local v0, "config":Landroid/graphics/FontListParser$Config;
    const-string/jumbo v2, "familyset"

    const/4 v3, 0x0

    invoke-interface {p0, v4, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 110
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 111
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "family"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    invoke-static {p0}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Family;

    move-result-object v1

    .line 115
    .local v1, "family":Landroid/graphics/FontListParser$Family;
    iget-boolean v2, v1, Landroid/graphics/FontListParser$Family;->invalid:Z

    if-nez v2, :cond_0

    .line 116
    iget-object v2, v0, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    .end local v1    # "family":Landroid/graphics/FontListParser$Family;
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "alias"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    iget-object v2, v0, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    invoke-static {p0}, Landroid/graphics/FontListParser;->readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Alias;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_2
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 128
    :cond_3
    return-object v0
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/FontListParser$Family;
    .locals 15
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 133
    const-string/jumbo v12, "name"

    invoke-interface {p0, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "name":Ljava/lang/String;
    const-string/jumbo v12, "lang"

    invoke-interface {p0, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "lang":Ljava/lang/String;
    const-string/jumbo v12, "variant"

    invoke-interface {p0, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, "variant":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v2, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontListParser$Font;>;"
    const/4 v4, 0x0

    .line 141
    .local v4, "invalid":Z
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_4

    .line 142
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 143
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, "tag":Ljava/lang/String;
    const-string/jumbo v12, "font"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 145
    const-string/jumbo v12, "weight"

    invoke-interface {p0, v14, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 146
    .local v11, "weightStr":Ljava/lang/String;
    if-nez v11, :cond_1

    const/16 v10, 0x190

    .line 147
    .local v10, "weight":I
    :goto_1
    const-string/jumbo v12, "italic"

    const-string/jumbo v13, "style"

    invoke-interface {p0, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 148
    .local v5, "isItalic":Z
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "filename":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "/system/fonts/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "fullFilename":Ljava/lang/String;
    sget-boolean v12, Landroid/graphics/FontListParser;->isDefaultAndroidFont:Z

    if-eqz v12, :cond_2

    const-string/jumbo v12, "LenovoFont.ttf"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 153
    const-string/jumbo v12, "FontListParser"

    const-string/jumbo v13, "Changing to NotoSansHans-Regular.otf, don\'t add LenovoFont.ttf to list!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v4, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "filename":Ljava/lang/String;
    .end local v3    # "fullFilename":Ljava/lang/String;
    .end local v5    # "isItalic":Z
    .end local v10    # "weight":I
    :cond_1
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .restart local v10    # "weight":I
    goto :goto_1

    .line 156
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v3    # "fullFilename":Ljava/lang/String;
    .restart local v5    # "isItalic":Z
    :cond_2
    new-instance v12, Landroid/graphics/FontListParser$Font;

    invoke-direct {v12, v3, v10, v5}, Landroid/graphics/FontListParser$Font;-><init>(Ljava/lang/String;IZ)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v1    # "filename":Ljava/lang/String;
    .end local v3    # "fullFilename":Ljava/lang/String;
    .end local v5    # "isItalic":Z
    .end local v10    # "weight":I
    .end local v11    # "weightStr":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 168
    .end local v8    # "tag":Ljava/lang/String;
    :cond_4
    new-instance v0, Landroid/graphics/FontListParser$Family;

    invoke-direct {v0, v7, v2, v6, v9}, Landroid/graphics/FontListParser$Family;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .local v0, "family":Landroid/graphics/FontListParser$Family;
    iput-boolean v4, v0, Landroid/graphics/FontListParser$Family;->invalid:Z

    .line 170
    return-object v0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x1

    .line 194
    .local v0, "depth":I
    :goto_0
    if-lez v0, :cond_0

    .line 195
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 197
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 198
    goto :goto_0

    .line 200
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 201
    goto :goto_0

    .line 192
    :cond_0
    return-void

    .line 195
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
