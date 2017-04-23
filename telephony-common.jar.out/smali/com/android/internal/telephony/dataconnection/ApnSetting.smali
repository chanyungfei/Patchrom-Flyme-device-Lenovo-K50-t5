.class public Lcom/android/internal/telephony/dataconnection/ApnSetting;
.super Ljava/lang/Object;
.source "ApnSetting.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IApnSetting;


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "DCT"

.field static final V2_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV2\\]\\s*"

.field static final V3_FORMAT_REGEX:Ljava/lang/String; = "^\\[ApnSettingV3\\]\\s*"


# instance fields
.field public final apn:Ljava/lang/String;

.field public final authType:I

.field public final bearer:I

.field public final bearerBitmask:I

.field public final carrier:Ljava/lang/String;

.field public final carrierEnabled:Z

.field public final id:I

.field public final maxConns:I

.field public final maxConnsTime:I

.field public final mmsPort:Ljava/lang/String;

.field public final mmsProxy:Ljava/lang/String;

.field public final mmsc:Ljava/lang/String;

.field public final modemCognitive:Z

.field public final mtu:I

.field public final mvnoMatchData:Ljava/lang/String;

.field public final mvnoType:Ljava/lang/String;

.field public final numeric:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final port:Ljava/lang/String;

.field public final profileId:I

.field public final protocol:Ljava/lang/String;

.field public final proxy:Ljava/lang/String;

.field public final roamingProtocol:Ljava/lang/String;

.field public final types:[Ljava/lang/String;

.field public final user:Ljava/lang/String;

.field public final waitTime:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "carrier"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "proxy"    # Ljava/lang/String;
    .param p6, "port"    # Ljava/lang/String;
    .param p7, "mmsc"    # Ljava/lang/String;
    .param p8, "mmsProxy"    # Ljava/lang/String;
    .param p9, "mmsPort"    # Ljava/lang/String;
    .param p10, "user"    # Ljava/lang/String;
    .param p11, "password"    # Ljava/lang/String;
    .param p12, "authType"    # I
    .param p13, "types"    # [Ljava/lang/String;
    .param p14, "protocol"    # Ljava/lang/String;
    .param p15, "roamingProtocol"    # Ljava/lang/String;
    .param p16, "carrierEnabled"    # Z
    .param p17, "bearer"    # I
    .param p18, "bearerBitmask"    # I
    .param p19, "profileId"    # I
    .param p20, "modemCognitive"    # Z
    .param p21, "maxConns"    # I
    .param p22, "waitTime"    # I
    .param p23, "maxConnsTime"    # I
    .param p24, "mtu"    # I
    .param p25, "mvnoType"    # Ljava/lang/String;
    .param p26, "mvnoMatchData"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    .line 116
    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    .end local p2    # "numeric":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    .line 117
    if-nez p3, :cond_1

    const-string/jumbo p3, ""

    .end local p3    # "carrier":Ljava/lang/String;
    :cond_1
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    .line 118
    if-nez p4, :cond_2

    const-string/jumbo p4, ""

    .end local p4    # "apn":Ljava/lang/String;
    :cond_2
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 119
    if-nez p5, :cond_3

    const-string/jumbo p5, ""

    .end local p5    # "proxy":Ljava/lang/String;
    :cond_3
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 120
    if-nez p6, :cond_4

    const-string/jumbo p6, ""

    .end local p6    # "port":Ljava/lang/String;
    :cond_4
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 121
    if-nez p7, :cond_5

    const-string/jumbo p7, ""

    .end local p7    # "mmsc":Ljava/lang/String;
    :cond_5
    iput-object p7, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 122
    if-nez p8, :cond_6

    const-string/jumbo p8, ""

    .end local p8    # "mmsProxy":Ljava/lang/String;
    :cond_6
    iput-object p8, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 123
    if-nez p9, :cond_7

    const-string/jumbo p9, ""

    .end local p9    # "mmsPort":Ljava/lang/String;
    :cond_7
    iput-object p9, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 124
    if-nez p10, :cond_8

    const-string/jumbo p10, ""

    .end local p10    # "user":Ljava/lang/String;
    :cond_8
    iput-object p10, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    .line 125
    if-nez p11, :cond_9

    const-string/jumbo p11, ""

    .end local p11    # "password":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    .line 126
    move/from16 v0, p12

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    .line 127
    move-object/from16 v0, p13

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .line 128
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object/from16 v0, p13

    array-length v2, v0

    if-ge v1, v2, :cond_b

    .line 129
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, p13, v1

    if-nez v2, :cond_a

    const-string/jumbo v2, ""

    :goto_1
    aput-object v2, v3, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_a
    aget-object v2, p13, v1

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 131
    :cond_b
    if-nez p14, :cond_c

    const-string/jumbo p14, ""

    .end local p14    # "protocol":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .line 132
    if-nez p15, :cond_d

    const-string/jumbo p15, ""

    .end local p15    # "roamingProtocol":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 133
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    .line 134
    move/from16 v0, p17

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    .line 135
    invoke-static/range {p17 .. p17}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v2

    or-int v2, v2, p18

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    .line 136
    move/from16 v0, p19

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    .line 137
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    .line 138
    move/from16 v0, p21

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    .line 139
    move/from16 v0, p22

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    .line 140
    move/from16 v0, p23

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    .line 141
    move/from16 v0, p24

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    .line 142
    if-nez p25, :cond_e

    const-string/jumbo p25, ""

    .end local p25    # "mvnoType":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    .line 143
    if-nez p26, :cond_f

    const-string/jumbo p26, ""

    .end local p26    # "mvnoMatchData":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public static arrayFromString(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v3, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 273
    return-object v3

    .line 275
    :cond_0
    const-string/jumbo v4, "\\s*;\\s*"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "apnStrings":[Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v2, v4

    .line 277
    .local v1, "apnString":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    .line 278
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v0, :cond_1

    .line 279
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 282
    .end local v0    # "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .end local v1    # "apnString":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 31
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 176
    if-nez p0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 180
    :cond_0
    const-string/jumbo v1, "^\\[ApnSettingV3\\]\\s*.*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    const/16 v30, 0x3

    .line 182
    .local v30, "version":I
    const-string/jumbo v1, "^\\[ApnSettingV3\\]\\s*"

    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 190
    :goto_0
    const-string/jumbo v1, "\\s*,\\s*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 191
    .local v28, "a":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v1, v0

    const/16 v2, 0xe

    if-ge v1, v2, :cond_3

    .line 192
    const/4 v1, 0x0

    return-object v1

    .line 183
    .end local v28    # "a":[Ljava/lang/String;
    .end local v30    # "version":I
    :cond_1
    const-string/jumbo v1, "^\\[ApnSettingV2\\]\\s*.*"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    const/16 v30, 0x2

    .line 185
    .restart local v30    # "version":I
    const-string/jumbo v1, "^\\[ApnSettingV2\\]\\s*"

    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 187
    .end local v30    # "version":I
    :cond_2
    const/16 v30, 0x1

    .restart local v30    # "version":I
    goto :goto_0

    .line 197
    .restart local v28    # "a":[Ljava/lang/String;
    :cond_3
    const/16 v1, 0xc

    :try_start_0
    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 206
    .local v13, "authType":I
    :goto_1
    const/16 v19, 0x0

    .line 207
    .local v19, "bearerBitmask":I
    const/16 v20, 0x0

    .line 208
    .local v20, "profileId":I
    const/16 v21, 0x0

    .line 209
    .local v21, "modemCognitive":Z
    const/16 v22, 0x0

    .line 210
    .local v22, "maxConns":I
    const/16 v23, 0x0

    .line 211
    .local v23, "waitTime":I
    const/16 v24, 0x0

    .line 212
    .local v24, "maxConnsTime":I
    const/16 v25, 0x0

    .line 213
    .local v25, "mtu":I
    const-string/jumbo v26, ""

    .line 214
    .local v26, "mvnoType":Ljava/lang/String;
    const-string/jumbo v27, ""

    .line 215
    .local v27, "mvnoMatchData":Ljava/lang/String;
    const/4 v1, 0x1

    move/from16 v0, v30

    if-ne v0, v1, :cond_5

    .line 216
    move-object/from16 v0, v28

    array-length v1, v0

    add-int/lit8 v1, v1, -0xd

    new-array v14, v1, [Ljava/lang/String;

    .line 217
    .local v14, "typeArray":[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v1, v0

    add-int/lit8 v1, v1, -0xd

    const/16 v2, 0xd

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-static {v0, v2, v14, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    const-string/jumbo v15, "IP"

    .line 219
    .local v15, "protocol":Ljava/lang/String;
    const-string/jumbo v16, "IP"

    .line 220
    .local v16, "roamingProtocol":Ljava/lang/String;
    const/16 v17, 0x1

    .line 256
    .end local v21    # "modemCognitive":Z
    :cond_4
    :goto_2
    new-instance v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    aget-object v3, v28, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    aget-object v3, v28, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    aget-object v4, v28, v2

    const/4 v2, 0x1

    aget-object v5, v28, v2

    const/4 v2, 0x2

    aget-object v6, v28, v2

    const/4 v2, 0x3

    aget-object v7, v28, v2

    const/4 v2, 0x7

    aget-object v8, v28, v2

    const/16 v2, 0x8

    aget-object v9, v28, v2

    .line 257
    const/16 v2, 0x9

    aget-object v10, v28, v2

    const/4 v2, 0x4

    aget-object v11, v28, v2

    const/4 v2, 0x5

    aget-object v12, v28, v2

    .line 256
    const/4 v2, -0x1

    .line 257
    const/16 v18, 0x0

    .line 256
    invoke-direct/range {v1 .. v27}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 198
    .end local v13    # "authType":I
    .end local v14    # "typeArray":[Ljava/lang/String;
    .end local v15    # "protocol":Ljava/lang/String;
    .end local v16    # "roamingProtocol":Ljava/lang/String;
    .end local v19    # "bearerBitmask":I
    .end local v20    # "profileId":I
    .end local v22    # "maxConns":I
    .end local v23    # "waitTime":I
    .end local v24    # "maxConnsTime":I
    .end local v25    # "mtu":I
    .end local v26    # "mvnoType":Ljava/lang/String;
    .end local v27    # "mvnoMatchData":Ljava/lang/String;
    :catch_0
    move-exception v29

    .line 199
    .local v29, "e":Ljava/lang/NumberFormatException;
    const/4 v13, 0x0

    .restart local v13    # "authType":I
    goto :goto_1

    .line 222
    .end local v29    # "e":Ljava/lang/NumberFormatException;
    .restart local v19    # "bearerBitmask":I
    .restart local v20    # "profileId":I
    .restart local v21    # "modemCognitive":Z
    .restart local v22    # "maxConns":I
    .restart local v23    # "waitTime":I
    .restart local v24    # "maxConnsTime":I
    .restart local v25    # "mtu":I
    .restart local v26    # "mvnoType":Ljava/lang/String;
    .restart local v27    # "mvnoMatchData":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v28

    array-length v1, v0

    const/16 v2, 0x12

    if-ge v1, v2, :cond_6

    .line 223
    const/4 v1, 0x0

    return-object v1

    .line 225
    :cond_6
    const/16 v1, 0xd

    aget-object v1, v28, v1

    const-string/jumbo v2, "\\s*\\|\\s*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 226
    .restart local v14    # "typeArray":[Ljava/lang/String;
    const/16 v1, 0xe

    aget-object v15, v28, v1

    .line 227
    .restart local v15    # "protocol":Ljava/lang/String;
    const/16 v1, 0xf

    aget-object v16, v28, v1

    .line 228
    .restart local v16    # "roamingProtocol":Ljava/lang/String;
    const/16 v1, 0x10

    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 230
    .local v17, "carrierEnabled":Z
    const/16 v1, 0x11

    aget-object v1, v28, v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->getBitmaskFromString(Ljava/lang/String;)I

    move-result v19

    .line 232
    move-object/from16 v0, v28

    array-length v1, v0

    const/16 v2, 0x16

    if-le v1, v2, :cond_7

    .line 233
    const/16 v1, 0x13

    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 235
    .local v21, "modemCognitive":Z
    const/16 v1, 0x12

    :try_start_1
    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 236
    const/16 v1, 0x14

    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 237
    const/16 v1, 0x15

    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 238
    const/16 v1, 0x16

    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v24

    .line 243
    .end local v21    # "modemCognitive":Z
    :cond_7
    :goto_3
    move-object/from16 v0, v28

    array-length v1, v0

    const/16 v2, 0x17

    if-le v1, v2, :cond_8

    .line 245
    const/16 v1, 0x17

    :try_start_2
    aget-object v1, v28, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v25

    .line 250
    :cond_8
    :goto_4
    move-object/from16 v0, v28

    array-length v1, v0

    const/16 v2, 0x19

    if-le v1, v2, :cond_4

    .line 251
    const/16 v1, 0x18

    aget-object v26, v28, v1

    .line 252
    const/16 v1, 0x19

    aget-object v27, v28, v1

    goto/16 :goto_2

    .line 239
    .restart local v21    # "modemCognitive":Z
    :catch_1
    move-exception v29

    .line 240
    .restart local v29    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "DCT"

    const-string/jumbo v2, "profileId...etc parse NumberFormatException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 246
    .end local v21    # "modemCognitive":Z
    .end local v29    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v29

    .line 247
    .restart local v29    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "DCT"

    const-string/jumbo v2, "mtu parse NumberFormatException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private static imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "imsiDB"    # Ljava/lang/String;
    .param p1, "imsiSIM"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 368
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 369
    .local v3, "len":I
    const/4 v2, 0x0

    .line 371
    .local v2, "idxCompare":I
    if-gtz v3, :cond_0

    return v5

    .line 372
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    return v5

    .line 374
    :cond_1
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 375
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 376
    .local v0, "c":C
    const/16 v4, 0x78

    if-eq v0, v4, :cond_2

    const/16 v4, 0x58

    if-ne v0, v4, :cond_3

    .line 374
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v0, v4, :cond_2

    .line 379
    return v5

    .line 382
    .end local v0    # "c":C
    :cond_4
    const/4 v4, 0x1

    return v4
.end method

.method public static mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p1, "mvnoType"    # Ljava/lang/String;
    .param p2, "mvnoMatchData"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 386
    const-string/jumbo v3, "spn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 388
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 387
    if-eqz v3, :cond_2

    .line 389
    return v4

    .line 391
    :cond_0
    const-string/jumbo v3, "imsi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "imsiSIM":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-static {p2, v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 394
    return v4

    .line 396
    .end local v1    # "imsiSIM":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "gid"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 397
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "gid1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 399
    .local v2, "mvno_match_data_length":I
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v2, :cond_2

    .line 400
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 399
    if-eqz v3, :cond_2

    .line 401
    return v4

    .line 404
    .end local v0    # "gid1":Ljava/lang/String;
    .end local v2    # "mvno_match_data_length":I
    :cond_2
    return v5
.end method

.method public static toStringIgnoreNameForList(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "apnSettings":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    const/4 v4, 0x0

    .line 441
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 442
    :cond_0
    return-object v4

    .line 444
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 446
    .local v1, "t":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toStringIgnoreName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 448
    .end local v1    # "t":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .locals 9
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 329
    iget-boolean v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    if-nez v1, :cond_0

    return v2

    .line 330
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_7

    aget-object v0, v3, v1

    .line 331
    .local v0, "t":Ljava/lang/String;
    const-string/jumbo v5, "DCT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "canHandleType(): entry in types="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", reqType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string/jumbo v5, "dun"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 333
    const-string/jumbo v5, "tethering"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 334
    const-string/jumbo v5, "dun"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 333
    if-eqz v5, :cond_6

    .line 335
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v8, :cond_2

    .line 336
    const-string/jumbo v1, "DCT"

    const-string/jumbo v2, "canHandleType(): use TETHERING for HIPRI type"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return v8

    .line 339
    :cond_2
    const-string/jumbo v1, "DCT"

    const-string/jumbo v3, "canHandleType(): not TETHERING only APN settings"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return v2

    .line 344
    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 345
    const-string/jumbo v5, "*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 346
    const-string/jumbo v5, "ims"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 347
    const-string/jumbo v5, "emergency"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 346
    if-eqz v5, :cond_5

    .line 350
    :cond_4
    const-string/jumbo v5, "default"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 351
    const-string/jumbo v5, "hipri"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 350
    if-eqz v5, :cond_6

    .line 352
    const-string/jumbo v1, "DCT"

    const-string/jumbo v2, "canHandleType(): use DEFAULT for HIPRI type"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return v8

    .line 349
    :cond_5
    return v8

    .line 330
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 358
    .end local v0    # "t":Ljava/lang/String;
    :cond_7
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 411
    instance-of v0, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasMvnoParams()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 325
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "[ApnSettingV3] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 289
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 290
    const-string/jumbo v3, ", "

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 290
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 291
    const-string/jumbo v3, ", "

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 291
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 292
    const-string/jumbo v3, ", "

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 292
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 293
    const-string/jumbo v3, ", "

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 293
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 294
    const-string/jumbo v3, ", "

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 294
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 295
    const-string/jumbo v3, ", "

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 295
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 296
    const-string/jumbo v3, ", "

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 296
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 297
    const-string/jumbo v3, ", "

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 297
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 298
    const-string/jumbo v3, ", "

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 298
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 298
    const-string/jumbo v3, ", "

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 300
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 302
    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_1
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 308
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearerBitmask:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->profileId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->modemCognitive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 312
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConns:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->waitTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maxConnsTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatchData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toStringIgnoreName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 419
    const-string/jumbo v3, ", "

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 419
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->numeric:Ljava/lang/String;

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 420
    const-string/jumbo v3, ", "

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 420
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 421
    const-string/jumbo v3, ", "

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 421
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 422
    const-string/jumbo v3, ", "

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 422
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsc:Ljava/lang/String;

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 423
    const-string/jumbo v3, ", "

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 423
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 424
    const-string/jumbo v3, ", "

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 424
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 425
    const-string/jumbo v3, ", "

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 425
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 426
    const-string/jumbo v3, ", "

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 426
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 426
    const-string/jumbo v3, ", "

    .line 418
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 428
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 430
    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_1
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrierEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 436
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->bearer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
