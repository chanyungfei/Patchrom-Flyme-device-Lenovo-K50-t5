.class public Lcom/android/internal/telephony/uicc/SpnOverride;
.super Ljava/lang/Object;
.source "SpnOverride.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;
    }
.end annotation


# static fields
.field private static CarrierVirtualSpnMapByEfGid1:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static CarrierVirtualSpnMapByEfPnn:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static CarrierVirtualSpnMapByEfSpn:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "SpnOverride"

.field static final OEM_SPN_OVERRIDE_PATH:Ljava/lang/String; = "telephony/spn-conf.xml"

.field static final PARTNER_SPN_OVERRIDE_PATH:Ljava/lang/String; = "etc/spn-conf.xml"

.field private static final PARTNER_VIRTUAL_SPN_BY_EF_GID1_OVERRIDE_PATH:Ljava/lang/String; = "etc/virtual-spn-conf-by-efgid1.xml"

.field private static final PARTNER_VIRTUAL_SPN_BY_EF_PNN_OVERRIDE_PATH:Ljava/lang/String; = "etc/virtual-spn-conf-by-efpnn.xml"

.field private static final PARTNER_VIRTUAL_SPN_BY_EF_SPN_OVERRIDE_PATH:Ljava/lang/String; = "etc/virtual-spn-conf-by-efspn.xml"

.field private static final PARTNER_VIRTUAL_SPN_BY_IMSI_OVERRIDE_PATH:Ljava/lang/String; = "etc/virtual-spn-conf-by-imsi.xml"

.field static final sInstSync:Ljava/lang/Object;

.field private static sInstance:Lcom/android/internal/telephony/uicc/SpnOverride;


# instance fields
.field private CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

.field private mCarrierSpnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->sInstSync:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    .line 109
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SpnOverride;->loadSpnOverrides()V

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfSpn:Ljava/util/HashMap;

    .line 115
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->loadVirtualSpnOverridesByEfSpn()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    .line 119
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SpnOverride;->loadVirtualSpnOverridesByImsi()V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfPnn:Ljava/util/HashMap;

    .line 123
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->loadVirtualSpnOverridesByEfPnn()V

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfGid1:Ljava/util/HashMap;

    .line 127
    invoke-static {}, Lcom/android/internal/telephony/uicc/SpnOverride;->loadVirtualSpnOverridesByEfGid1()V

    .line 107
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/uicc/SpnOverride;
    .locals 2

    .prologue
    .line 98
    sget-object v1, Lcom/android/internal/telephony/uicc/SpnOverride;->sInstSync:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->sInstance:Lcom/android/internal/telephony/uicc/SpnOverride;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/SpnOverride;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->sInstance:Lcom/android/internal/telephony/uicc/SpnOverride;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 103
    sget-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->sInstance:Lcom/android/internal/telephony/uicc/SpnOverride;

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "imsiDB"    # Ljava/lang/String;
    .param p2, "imsiSIM"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 345
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 346
    .local v3, "len":I
    const/4 v2, 0x0

    .line 348
    .local v2, "idxCompare":I
    const-string/jumbo v4, "SpnOverride"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mvno match imsi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "pattern = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    if-gtz v3, :cond_0

    return v7

    .line 350
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    return v7

    .line 352
    :cond_1
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 353
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 354
    .local v0, "c":C
    const/16 v4, 0x78

    if-eq v0, v4, :cond_2

    const/16 v4, 0x58

    if-ne v0, v4, :cond_3

    .line 352
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v0, v4, :cond_2

    .line 357
    return v7

    .line 360
    .end local v0    # "c":C
    :cond_4
    const/4 v4, 0x1

    return v4
.end method

.method private loadSpnOverrides()V
    .locals 19

    .prologue
    .line 142
    const-string/jumbo v16, "SpnOverride"

    const-string/jumbo v17, "loadSpnOverrides"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v12, 0x0

    .line 144
    .local v12, "spnFile":Ljava/io/File;
    const-string/jumbo v16, "OP09"

    const-string/jumbo v17, "ro.operator.optr"

    const-string/jumbo v18, ""

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 145
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCT6MSupport()Z

    move-result v16

    .line 144
    if-eqz v16, :cond_3

    .line 146
    :cond_0
    new-instance v12, Ljava/io/File;

    .end local v12    # "spnFile":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v16

    .line 147
    const-string/jumbo v17, "etc/spn-conf-op09.xml"

    .line 146
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    .local v12, "spnFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_1

    .line 149
    const-string/jumbo v16, "SpnOverride"

    const-string/jumbo v17, "No spn-conf-op09.xml file"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v12, Ljava/io/File;

    .end local v12    # "spnFile":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v16

    .line 151
    const-string/jumbo v17, "etc/spn-conf.xml"

    .line 150
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    .restart local v12    # "spnFile":Ljava/io/File;
    :cond_1
    :goto_0
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v16

    .line 161
    const-string/jumbo v17, "telephony/spn-conf.xml"

    .line 160
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .local v8, "oemSpnFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 165
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 166
    .local v10, "oemSpnTime":J
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    .line 167
    .local v14, "sysSpnTime":J
    const-string/jumbo v16, "SpnOverride"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "SPN Timestamp: oemTime = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " sysTime = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    cmp-long v16, v10, v14

    if-lez v16, :cond_2

    .line 171
    const-string/jumbo v16, "SpnOverride"

    const-string/jumbo v17, "SPN in OEM image is newer than System image"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    move-object v12, v8

    .line 181
    .end local v10    # "oemSpnTime":J
    .end local v14    # "sysSpnTime":J
    :cond_2
    :goto_1
    :try_start_0
    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .local v13, "spnReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 189
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 191
    const-string/jumbo v16, "spnOverrides"

    move-object/from16 v0, v16

    invoke-static {v9, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 194
    :goto_2
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 196
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v16, "spnOverride"

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 206
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 139
    .end local v6    # "name":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_3
    return-void

    .line 155
    .end local v8    # "oemSpnFile":Ljava/io/File;
    .end local v13    # "spnReader":Ljava/io/FileReader;
    .local v12, "spnFile":Ljava/io/File;
    :cond_3
    new-instance v12, Ljava/io/File;

    .end local v12    # "spnFile":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v16

    .line 156
    const-string/jumbo v17, "etc/spn-conf.xml"

    .line 155
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v12, "spnFile":Ljava/io/File;
    goto/16 :goto_0

    .line 176
    .restart local v8    # "oemSpnFile":Ljava/io/File;
    :cond_4
    const-string/jumbo v16, "SpnOverride"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "No SPN in OEM image = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 177
    const-string/jumbo v18, " Load SPN from system image"

    .line 176
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 182
    :catch_0
    move-exception v3

    .line 183
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v16, "SpnOverride"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Can not open "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 201
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "spnReader":Ljava/io/FileReader;
    :cond_5
    :try_start_2
    const-string/jumbo v16, "numeric"

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, "numeric":Ljava/lang/String;
    const-string/jumbo v16, "spn"

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 207
    .end local v2    # "data":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "numeric":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v5

    .line 208
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v16, "SpnOverride"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Exception in spn-conf parser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 209
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v4

    .line 210
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v16, "SpnOverride"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Exception in spn-conf parser "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private static loadVirtualSpnOverridesByEfGid1()V
    .locals 12

    .prologue
    .line 411
    const-string/jumbo v9, "SpnOverride"

    const-string/jumbo v10, "loadVirtualSpnOverridesByEfGid1"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "etc/virtual-spn-conf-by-efgid1.xml"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 415
    .local v7, "spnFile":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .local v8, "spnReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 424
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 426
    const-string/jumbo v9, "virtualSpnOverridesByEfGid1"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 429
    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 431
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v9, "virtualSpnOverride"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 441
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 409
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    return-void

    .line 416
    .end local v8    # "spnReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Can\'t open "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 418
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v11

    .line 417
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 418
    const-string/jumbo v11, "/"

    .line 417
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 418
    const-string/jumbo v11, "etc/virtual-spn-conf-by-efgid1.xml"

    .line 417
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void

    .line 436
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "spnReader":Ljava/io/FileReader;
    :cond_0
    :try_start_2
    const-string/jumbo v9, "mccmncgid1"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, "mccmncgid1":Ljava/lang/String;
    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 438
    .local v6, "spn":Ljava/lang/String;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "test mccmncgid1 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget-object v9, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfGid1:Ljava/util/HashMap;

    invoke-virtual {v9, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 442
    .end local v3    # "mccmncgid1":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "spn":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 443
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in virtual-spn-conf-by-efgid1 parser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 444
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 445
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in virtual-spn-conf-by-efgid1 parser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static loadVirtualSpnOverridesByEfPnn()V
    .locals 12

    .prologue
    .line 364
    const-string/jumbo v9, "SpnOverride"

    const-string/jumbo v10, "loadVirtualSpnOverridesByEfPnn"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "etc/virtual-spn-conf-by-efpnn.xml"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 368
    .local v7, "spnFile":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .local v8, "spnReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 377
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 379
    const-string/jumbo v9, "virtualSpnOverridesByEfPnn"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 382
    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 384
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v9, "virtualSpnOverride"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 394
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 362
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    return-void

    .line 369
    .end local v8    # "spnReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Can\'t open "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 371
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v11

    .line 370
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 371
    const-string/jumbo v11, "/"

    .line 370
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 371
    const-string/jumbo v11, "etc/virtual-spn-conf-by-efpnn.xml"

    .line 370
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-void

    .line 389
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "spnReader":Ljava/io/FileReader;
    :cond_0
    :try_start_2
    const-string/jumbo v9, "mccmncpnn"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, "mccmncpnn":Ljava/lang/String;
    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 391
    .local v6, "spn":Ljava/lang/String;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "test mccmncpnn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    sget-object v9, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfPnn:Ljava/util/HashMap;

    invoke-virtual {v9, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 395
    .end local v3    # "mccmncpnn":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "spn":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 396
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in virtual-spn-conf-by-efpnn parser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 397
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 398
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in virtual-spn-conf-by-efpnn parser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static loadVirtualSpnOverridesByEfSpn()V
    .locals 12

    .prologue
    .line 218
    const-string/jumbo v9, "SpnOverride"

    const-string/jumbo v10, "loadVirtualSpnOverridesByEfSpn"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "etc/virtual-spn-conf-by-efspn.xml"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 222
    .local v7, "spnFile":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .local v8, "spnReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 231
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 233
    const-string/jumbo v9, "virtualSpnOverridesByEfSpn"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 236
    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 238
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v9, "virtualSpnOverride"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 248
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 216
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    return-void

    .line 223
    .end local v8    # "spnReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Can\'t open "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 225
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v11

    .line 224
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 225
    const-string/jumbo v11, "/"

    .line 224
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 225
    const-string/jumbo v11, "etc/virtual-spn-conf-by-efspn.xml"

    .line 224
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void

    .line 243
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "spnReader":Ljava/io/FileReader;
    :cond_0
    :try_start_2
    const-string/jumbo v9, "mccmncspn"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "mccmncspn":Ljava/lang/String;
    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, "spn":Ljava/lang/String;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "test mccmncspn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-object v9, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfSpn:Ljava/util/HashMap;

    invoke-virtual {v9, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 249
    .end local v3    # "mccmncspn":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "spn":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 250
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in virtual-spn-conf-by-efspn parser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 251
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 252
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in virtual-spn-conf-by-efspn parser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private loadVirtualSpnOverridesByImsi()V
    .locals 12

    .prologue
    .line 265
    const-string/jumbo v9, "SpnOverride"

    const-string/jumbo v10, "loadVirtualSpnOverridesByImsi"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "etc/virtual-spn-conf-by-imsi.xml"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    .local v7, "spnFile":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .local v8, "spnReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 278
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 280
    const-string/jumbo v9, "virtualSpnOverridesByImsi"

    invoke-static {v5, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 283
    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 285
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v9, "virtualSpnOverride"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 295
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 263
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1
    return-void

    .line 270
    .end local v8    # "spnReader":Ljava/io/FileReader;
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Can\'t open "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 272
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v11

    .line 271
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 272
    const-string/jumbo v11, "/"

    .line 271
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 272
    const-string/jumbo v11, "etc/virtual-spn-conf-by-imsi.xml"

    .line 271
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void

    .line 290
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "spnReader":Ljava/io/FileReader;
    :cond_0
    :try_start_2
    const-string/jumbo v9, "imsipattern"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "imsipattern":Ljava/lang/String;
    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 292
    .local v6, "spn":Ljava/lang/String;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "test imsipattern = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;

    invoke-direct {v10, p0, v3, v6}, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;-><init>(Lcom/android/internal/telephony/uicc/SpnOverride;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 296
    .end local v3    # "imsipattern":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "spn":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 297
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in virtual-spn-conf-by-imsi parser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 298
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 299
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "SpnOverride"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception in virtual-spn-conf-by-imsi parser "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method containsCarrier(Ljava/lang/String;)Z
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsCarrierEx(Ljava/lang/String;)Z
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 699
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method getSpn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->mCarrierSpnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSpnByEfGid1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "gid1"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 450
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 451
    :cond_0
    return-object v1

    .line 450
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    sget-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfGid1:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSpnByEfPnn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "pnn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 403
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 404
    :cond_0
    return-object v1

    .line 403
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    sget-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfPnn:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSpnByEfSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "spn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 257
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 258
    :cond_0
    return-object v1

    .line 257
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    sget-object v0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByEfSpn:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSpnByImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 304
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 305
    :cond_0
    return-object v5

    .line 304
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 309
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;

    .line 310
    .local v1, "vsbi":Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;
    const-string/jumbo v2, "SpnOverride"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSpnByImsi(): mccmnc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 311
    const-string/jumbo v4, ", pattern = "

    .line 310
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 311
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    .line 310
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v2, v1, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/SpnOverride;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    iget-object v2, v1, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;->name:Ljava/lang/String;

    return-object v2

    .line 308
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "vsbi":Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;
    :cond_3
    return-object v5
.end method

.method public getSpnEx(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 703
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorMvnoForImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 321
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 322
    :cond_0
    return-object v5

    .line 321
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 327
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SpnOverride;->CarrierVirtualSpnMapByImsi:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;

    .line 328
    .local v1, "vsbi":Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;
    const-string/jumbo v2, "SpnOverride"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isOperatorMvnoForImsi(): mccmnc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 329
    const-string/jumbo v4, ", imsi = "

    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 329
    const-string/jumbo v4, ", pattern = "

    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 329
    iget-object v4, v1, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v2, v1, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/SpnOverride;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 332
    iget-object v2, v1, Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;->pattern:Ljava/lang/String;

    return-object v2

    .line 326
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .end local v1    # "vsbi":Lcom/android/internal/telephony/uicc/SpnOverride$VirtualSpnByImsi;
    :cond_3
    return-object v5
.end method

.method public lookupOperatorName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "desireLongName"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 457
    move-object v3, p2

    .line 458
    .local v3, "operName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 459
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 460
    const/16 v6, -0xa

    if-ne p1, v6, :cond_0

    .line 461
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    .line 474
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    const/4 v2, 0x0

    .line 476
    .local v2, "mvnoOperName":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 477
    const-string/jumbo v6, "SpnOverride"

    const-string/jumbo v7, "lookupOperatorName getPhone null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-object v3

    .line 463
    .end local v2    # "mvnoOperName":Ljava/lang/String;
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    const/16 v6, -0xb

    if-ne p1, v6, :cond_1

    .line 464
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 467
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 470
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 482
    .restart local v2    # "mvnoOperName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "spn"

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/Phone;->getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 481
    invoke-virtual {p0, p2, v6}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpnByEfSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, "mvnoOperName":Ljava/lang/String;
    const-string/jumbo v6, "SpnOverride"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "the result of searching mvnoOperName by EF_SPN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    if-nez v2, :cond_4

    .line 486
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p2, v6}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpnByImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 487
    :cond_4
    const-string/jumbo v6, "SpnOverride"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "the result of searching mvnoOperName by IMSI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    if-nez v2, :cond_5

    .line 491
    const-string/jumbo v6, "pnn"

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/Phone;->getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 490
    invoke-virtual {p0, p2, v6}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpnByEfPnn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 492
    :cond_5
    const-string/jumbo v6, "SpnOverride"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "the result of searching mvnoOperName by EF_PNN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    if-nez v2, :cond_6

    .line 496
    const-string/jumbo v6, "gid"

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/Phone;->getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 495
    invoke-virtual {p0, p2, v6}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpnByEfGid1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 497
    :cond_6
    const-string/jumbo v6, "SpnOverride"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "the result of searching mvnoOperName by EF_GID1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    if-eqz v2, :cond_7

    .line 500
    move-object v3, v2

    .line 502
    :cond_7
    const/4 v1, 0x0

    .line 503
    .local v1, "getFromResource":Z
    const v6, 0x80500e3

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "ctName":Ljava/lang/String;
    invoke-static {p4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v5

    .line 506
    .local v5, "simCarrierName":Ljava/lang/String;
    const-string/jumbo v6, "SpnOverride"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ctName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", simCarrierName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 507
    const-string/jumbo v8, ", subId:"

    .line 506
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    if-eqz v0, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 509
    const-string/jumbo v6, "SpnOverride"

    const-string/jumbo v7, "Get from resource."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v1, 0x1

    .line 511
    const/4 v2, 0x0

    .line 514
    .end local v2    # "mvnoOperName":Ljava/lang/String;
    :cond_8
    const-string/jumbo v6, "20404"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "45403"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 515
    :cond_9
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    .line 516
    if-eqz v0, :cond_a

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 514
    if-eqz v6, :cond_a

    .line 517
    const-string/jumbo v6, "SpnOverride"

    const-string/jumbo v7, "Special handle for roaming case!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v1, 0x1

    .line 519
    const/4 v2, 0x0

    .line 522
    :cond_a
    if-nez v2, :cond_18

    if-eqz p3, :cond_18

    .line 524
    const-string/jumbo v6, "46000"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "46002"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "46007"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "46008"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 525
    :cond_b
    const v6, 0x805001d

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 573
    :cond_c
    :goto_1
    return-object v3

    .line 526
    :cond_d
    const-string/jumbo v6, "46001"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string/jumbo v6, "46009"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 527
    :cond_e
    const v6, 0x805001e

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 528
    :cond_f
    const-string/jumbo v6, "46003"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string/jumbo v6, "46011"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    if-eqz v1, :cond_11

    .line 529
    :cond_10
    const v6, 0x8050063

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 530
    :cond_11
    const-string/jumbo v6, "46601"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 531
    const v6, 0x805001f

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 532
    :cond_12
    const-string/jumbo v6, "46692"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 533
    const v6, 0x8050020

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 534
    :cond_13
    const-string/jumbo v6, "46697"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 535
    const v6, 0x8050021

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 536
    :cond_14
    const-string/jumbo v6, "99998"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 537
    const v6, 0x8050022

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 538
    :cond_15
    const-string/jumbo v6, "99999"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 539
    const v6, 0x8050023

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 542
    :cond_16
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 543
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 545
    :cond_17
    const-string/jumbo v6, "SpnOverride"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Can\'t find long operator name for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 549
    :cond_18
    if-nez v2, :cond_c

    if-nez p3, :cond_c

    .line 552
    const-string/jumbo v6, "46000"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string/jumbo v6, "46002"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string/jumbo v6, "46007"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string/jumbo v6, "46008"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 553
    :cond_19
    const v6, 0x8050024

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 554
    :cond_1a
    const-string/jumbo v6, "46001"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    const-string/jumbo v6, "46009"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 555
    :cond_1b
    const v6, 0x8050025

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 556
    :cond_1c
    const-string/jumbo v6, "46003"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    const-string/jumbo v6, "46011"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    if-eqz v1, :cond_1e

    .line 557
    :cond_1d
    const v6, 0x8050064

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 558
    :cond_1e
    const-string/jumbo v6, "46601"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 559
    const v6, 0x8050026

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 560
    :cond_1f
    const-string/jumbo v6, "46692"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 561
    const v6, 0x8050027

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 562
    :cond_20
    const-string/jumbo v6, "46697"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 563
    const v6, 0x8050028

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 564
    :cond_21
    const-string/jumbo v6, "99997"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 565
    const v6, 0x8050029

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 566
    :cond_22
    const-string/jumbo v6, "99999"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 567
    const v6, 0x805002a

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 569
    :cond_23
    const-string/jumbo v6, "SpnOverride"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Can\'t find short operator name for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public lookupOperatorNameForDisplayName(ILjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "subId"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "desireLongName"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 578
    const/4 v3, 0x0

    .line 579
    .local v3, "operName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 580
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 581
    const/16 v6, -0xa

    if-ne p1, v6, :cond_0

    .line 582
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    .line 595
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    const/4 v2, 0x0

    .line 597
    .local v2, "mvnoOperName":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 598
    const-string/jumbo v6, "SpnOverride"

    const-string/jumbo v7, "lookupOperatorName getPhone null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return-object v3

    .line 584
    .end local v2    # "mvnoOperName":Ljava/lang/String;
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    const/16 v6, -0xb

    if-ne p1, v6, :cond_1

    .line 585
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteUtils;->getSvltePhoneProxy(I)Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvltePhoneProxy;->getLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 588
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 591
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 603
    .restart local v2    # "mvnoOperName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "spn"

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/Phone;->getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 602
    invoke-virtual {p0, p2, v6}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpnByEfSpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "mvnoOperName":Ljava/lang/String;
    const-string/jumbo v6, "SpnOverride"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "the result of searching mvnoOperName by EF_SPN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    if-nez v2, :cond_4

    .line 607
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p2, v6}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpnByImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 608
    :cond_4
    const-string/jumbo v6, "SpnOverride"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "the result of searching mvnoOperName by IMSI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    if-nez v2, :cond_5

    .line 612
    const-string/jumbo v6, "pnn"

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/Phone;->getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 611
    invoke-virtual {p0, p2, v6}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpnByEfPnn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 613
    :cond_5
    const-string/jumbo v6, "SpnOverride"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "the result of searching mvnoOperName by EF_PNN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    if-nez v2, :cond_6

    .line 617
    const-string/jumbo v6, "gid"

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/Phone;->getMvnoPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 616
    invoke-virtual {p0, p2, v6}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpnByEfGid1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 618
    :cond_6
    const-string/jumbo v6, "SpnOverride"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "the result of searching mvnoOperName by EF_GID1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    if-eqz v2, :cond_7

    .line 621
    move-object v3, v2

    .line 623
    .end local v3    # "operName":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    .line 624
    .local v1, "getFromResource":Z
    const v6, 0x80500e3

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "ctName":Ljava/lang/String;
    invoke-static {p4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v5

    .line 627
    .local v5, "simCarrierName":Ljava/lang/String;
    const-string/jumbo v6, "SpnOverride"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ctName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", simCarrierName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 628
    const-string/jumbo v8, ", subId:"

    .line 627
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    if-eqz v0, :cond_8

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 630
    const-string/jumbo v6, "SpnOverride"

    const-string/jumbo v7, "Get from resource."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v1, 0x1

    .line 632
    const/4 v2, 0x0

    .line 635
    .end local v2    # "mvnoOperName":Ljava/lang/String;
    :cond_8
    const-string/jumbo v6, "20404"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "45403"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 636
    :cond_9
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    .line 637
    if-eqz v0, :cond_a

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 635
    if-eqz v6, :cond_a

    .line 638
    const-string/jumbo v6, "SpnOverride"

    const-string/jumbo v7, "Special handle for roaming case!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v1, 0x1

    .line 640
    const/4 v2, 0x0

    .line 643
    :cond_a
    if-nez v2, :cond_18

    if-eqz p3, :cond_18

    .line 645
    const-string/jumbo v6, "46000"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "46002"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "46007"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "46008"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 646
    :cond_b
    const v6, 0x805001d

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 694
    :cond_c
    :goto_1
    return-object v3

    .line 647
    :cond_d
    const-string/jumbo v6, "46001"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string/jumbo v6, "46009"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 648
    :cond_e
    const v6, 0x805001e

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "operName":Ljava/lang/String;
    goto :goto_1

    .line 649
    .end local v3    # "operName":Ljava/lang/String;
    :cond_f
    const-string/jumbo v6, "46003"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string/jumbo v6, "46011"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    if-eqz v1, :cond_11

    .line 650
    :cond_10
    const v6, 0x8050063

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "operName":Ljava/lang/String;
    goto :goto_1

    .line 651
    .end local v3    # "operName":Ljava/lang/String;
    :cond_11
    const-string/jumbo v6, "46601"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 652
    const v6, 0x805001f

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "operName":Ljava/lang/String;
    goto :goto_1

    .line 653
    .end local v3    # "operName":Ljava/lang/String;
    :cond_12
    const-string/jumbo v6, "46692"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 654
    const v6, 0x8050020

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "operName":Ljava/lang/String;
    goto :goto_1

    .line 655
    .end local v3    # "operName":Ljava/lang/String;
    :cond_13
    const-string/jumbo v6, "46697"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 656
    const v6, 0x8050021

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "operName":Ljava/lang/String;
    goto :goto_1

    .line 657
    .end local v3    # "operName":Ljava/lang/String;
    :cond_14
    const-string/jumbo v6, "99998"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 658
    const v6, 0x8050022

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "operName":Ljava/lang/String;
    goto/16 :goto_1

    .line 659
    .end local v3    # "operName":Ljava/lang/String;
    :cond_15
    const-string/jumbo v6, "99999"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 660
    const v6, 0x8050023

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "operName":Ljava/lang/String;
    goto/16 :goto_1

    .line 663
    .end local v3    # "operName":Ljava/lang/String;
    :cond_16
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 664
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "operName":Ljava/lang/String;
    goto/16 :goto_1

    .line 666
    .end local v3    # "operName":Ljava/lang/String;
    :cond_17
    const-string/jumbo v6, "SpnOverride"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Can\'t find long operator name for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 670
    :cond_18
    if-nez v2, :cond_c

    if-nez p3, :cond_c

    .line 673
    const-string/jumbo v6, "46000"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string/jumbo v6, "46002"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string/jumbo v6, "46007"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string/jumbo v6, "46008"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 674
    :cond_19
    const v6, 0x8050024

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "operName":Ljava/lang/String;
    goto/16 :goto_1

    .line 675
    .end local v3    # "operName":Ljava/lang/String;
    :cond_1a
    const-string/jumbo v6, "46001"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    const-string/jumbo v6, "46009"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 676
    :cond_1b
    const v6, 0x8050025

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "operName":Ljava/lang/String;
    goto/16 :goto_1

    .line 677
    .end local v3    # "operName":Ljava/lang/String;
    :cond_1c
    const-string/jumbo v6, "46003"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    const-string/jumbo v6, "46011"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    if-eqz v1, :cond_1e

    .line 678
    :cond_1d
    const v6, 0x8050064

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "operName":Ljava/lang/String;
    goto/16 :goto_1

    .line 679
    .end local v3    # "operName":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v6, "46601"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 680
    const v6, 0x8050026

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "operName":Ljava/lang/String;
    goto/16 :goto_1

    .line 681
    .end local v3    # "operName":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v6, "46692"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 682
    const v6, 0x8050027

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "operName":Ljava/lang/String;
    goto/16 :goto_1

    .line 683
    .end local v3    # "operName":Ljava/lang/String;
    :cond_20
    const-string/jumbo v6, "46697"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 684
    const v6, 0x8050028

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "operName":Ljava/lang/String;
    goto/16 :goto_1

    .line 685
    .end local v3    # "operName":Ljava/lang/String;
    :cond_21
    const-string/jumbo v6, "99997"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 686
    const v6, 0x8050029

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "operName":Ljava/lang/String;
    goto/16 :goto_1

    .line 687
    .end local v3    # "operName":Ljava/lang/String;
    :cond_22
    const-string/jumbo v6, "99999"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 688
    const v6, 0x805002a

    invoke-virtual {p4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "operName":Ljava/lang/String;
    goto/16 :goto_1

    .line 690
    .end local v3    # "operName":Ljava/lang/String;
    :cond_23
    const-string/jumbo v6, "SpnOverride"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Can\'t find short operator name for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
