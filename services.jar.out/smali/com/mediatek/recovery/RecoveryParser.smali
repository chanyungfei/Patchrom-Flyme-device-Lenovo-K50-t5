.class public Lcom/mediatek/recovery/RecoveryParser;
.super Ljava/lang/Object;
.source "RecoveryParser.java"


# instance fields
.field TAG:Ljava/lang/String;

.field public mModules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/recovery/Module;",
            ">;"
        }
    .end annotation
.end field

.field mRecoverySettingFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "RecoveryParser"

    .line 57
    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "etc"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "recovery.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryParser;->mRecoverySettingFile:Ljava/io/File;

    .line 63
    return-void
.end method

.method private getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    if-nez p2, :cond_0

    .line 119
    :goto_0
    return-object p2

    :cond_0
    const-string/jumbo v0, "."

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private readFile(Lcom/mediatek/recovery/Module;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 169
    new-instance v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;

    invoke-direct {v0}, Lcom/mediatek/recovery/RegisteredRecoveryFile;-><init>()V

    const-string/jumbo v1, "name"

    .line 171
    invoke-interface {p2, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    .line 172
    iget-object v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p1, Lcom/mediatek/recovery/Module;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "class"

    invoke-interface {p2, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/recovery/RecoveryParser;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->className:Ljava/lang/String;

    const-string/jumbo v1, "backup"

    .line 180
    invoke-interface {p2, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_2

    const-string/jumbo v2, "none"

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "boot"

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_0
    const-string/jumbo v2, "demand"

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 196
    :goto_1
    iget v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 198
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/mediatek/recovery/BackupServant;->getBackupDirectory()Ljava/io/File;

    move-result-object v3

    iget-object v4, p1, Lcom/mediatek/recovery/Module;->moduleName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 202
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fd

    invoke-static {v3, v4, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 206
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    :goto_2
    const-string/jumbo v1, "default"

    .line 209
    invoke-interface {p2, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_7

    const-string/jumbo v2, "none"

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "remove"

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "recover"

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 233
    :goto_3
    iget-object v1, p1, Lcom/mediatek/recovery/Module;->mRecoveryFiles:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mediatek/recovery/Module;->moduleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has a file tag without name attribute! Skip it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 182
    :cond_2
    iput v5, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    goto :goto_1

    .line 185
    :cond_3
    iput v5, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    goto/16 :goto_1

    .line 188
    :cond_4
    iget v2, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    goto/16 :goto_0

    .line 191
    :cond_5
    iget v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    goto/16 :goto_1

    .line 196
    :cond_6
    iget v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    goto :goto_2

    .line 211
    :cond_7
    iget v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    if-nez v1, :cond_8

    .line 214
    iput v5, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    goto :goto_3

    .line 212
    :cond_8
    iget v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    goto :goto_3

    .line 218
    :cond_9
    iput v5, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    goto :goto_3

    .line 220
    :cond_a
    iget v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    goto :goto_3

    .line 222
    :cond_b
    iget v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    if-nez v1, :cond_c

    .line 225
    iput v5, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    .line 226
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Register recovery file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " without backup flag try use RESTORE action!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Change to default action NONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 223
    :cond_c
    iget v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    goto/16 :goto_3
.end method

.method private readModule(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    const-string/jumbo v0, "name"

    .line 127
    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_1

    const-string/jumbo v1, "package"

    .line 134
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_2

    const-string/jumbo v2, "exceptionParserClass"

    .line 141
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_3

    .line 149
    new-instance v3, Lcom/mediatek/recovery/Module;

    invoke-direct {p0, v1, v2}, Lcom/mediatek/recovery/RecoveryParser;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v1, v2}, Lcom/mediatek/recovery/Module;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 155
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 165
    :goto_1
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Module definition at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not have name attribute! Skip it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Module definition at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not have packageName attribute! Skip it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Module definition at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not have exceptionParserClass attribute! Skip it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 155
    :cond_4
    if-eq v2, v5, :cond_6

    .line 156
    :cond_5
    if-eq v2, v5, :cond_0

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    .line 159
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "file"

    .line 160
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-direct {p0, v3, p1}, Lcom/mediatek/recovery/RecoveryParser;->readFile(Lcom/mediatek/recovery/Module;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 155
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-gt v4, v1, :cond_5

    goto/16 :goto_1
.end method


# virtual methods
.method public read()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 69
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/mediatek/recovery/RecoveryParser;->mRecoverySettingFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 70
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v2, 0x0

    .line 71
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 77
    :goto_0
    if-ne v2, v3, :cond_3

    .line 82
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 84
    :cond_1
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 93
    :goto_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 106
    :goto_3
    return-void

    .line 74
    :cond_2
    if-ne v2, v5, :cond_0

    goto :goto_0

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No start tag found in reocvery.xml, stop paring"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 84
    :cond_4
    if-eq v3, v6, :cond_6

    .line 85
    :cond_5
    if-eq v3, v6, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 88
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "module"

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    invoke-direct {p0, v0}, Lcom/mediatek/recovery/RecoveryParser;->readModule(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 95
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Recovery.xml doesn\'t exist!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 84
    :cond_6
    :try_start_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    if-gt v4, v2, :cond_5

    goto :goto_2

    .line 105
    :catch_1
    move-exception v1

    .line 97
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 98
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error while parsing reocvery.xml, line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getColumnNumber()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 105
    :catch_2
    move-exception v0

    .line 102
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 103
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryParser;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException while reading reocvery.xml, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
