.class public Lcom/android/internal/telephony/uicc/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .locals 18
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 186
    if-nez p2, :cond_0

    .line 187
    const-string/jumbo v15, ""

    return-object v15

    .line 192
    :cond_0
    const-string/jumbo v15, "ro.mtk_kor_customization"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 193
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccUtils;->isKSC5601([B)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 194
    const-string/jumbo v15, "IccUtils"

    const-string/jumbo v16, "KSC5601 Data!"

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v14, 0x0

    .line 197
    .local v14, "ucslen":I
    const-string/jumbo v11, ""

    .line 200
    .local v11, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v12, Ljava/lang/String;

    const-string/jumbo v15, "KSC5601"

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11    # "ret":Ljava/lang/String;
    .local v12, "ret":Ljava/lang/String;
    move-object v11, v12

    .line 205
    .end local v12    # "ret":Ljava/lang/String;
    .restart local v11    # "ret":Ljava/lang/String;
    :goto_0
    if-eqz v11, :cond_3

    .line 206
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    .line 207
    :goto_1
    if-lez v14, :cond_1

    add-int/lit8 v15, v14, -0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const v16, 0xf8f7

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 208
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 201
    :catch_0
    move-exception v7

    .line 202
    .local v7, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v15, "IccUtils"

    const-string/jumbo v16, "Implausible UnsupportedEncodingException"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 210
    .end local v7    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string/jumbo v15, "IccUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Decode EMAIL using KSC5601 : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v15, 0x0

    invoke-virtual {v11, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 216
    .end local v11    # "ret":Ljava/lang/String;
    .end local v14    # "ucslen":I
    :cond_2
    const-string/jumbo v15, "IccUtils"

    const-string/jumbo v16, "No KSC5601 Data!"

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_3
    const/4 v15, 0x1

    move/from16 v0, p2

    if-lt v0, v15, :cond_5

    .line 221
    aget-byte v15, p0, p1

    const/16 v16, -0x80

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 222
    add-int/lit8 v15, p2, -0x1

    div-int/lit8 v14, v15, 0x2

    .line 223
    .restart local v14    # "ucslen":I
    const/4 v11, 0x0

    .line 226
    .local v11, "ret":Ljava/lang/String;
    :try_start_1
    new-instance v12, Ljava/lang/String;

    add-int/lit8 v15, p1, 0x1

    mul-int/lit8 v16, v14, 0x2

    const-string/jumbo v17, "utf-16be"

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v12, v0, v15, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v11    # "ret":Ljava/lang/String;
    .restart local v12    # "ret":Ljava/lang/String;
    move-object v11, v12

    .line 232
    .end local v12    # "ret":Ljava/lang/String;
    :goto_2
    if-eqz v11, :cond_5

    .line 235
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    .line 236
    :goto_3
    if-lez v14, :cond_4

    add-int/lit8 v15, v14, -0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const v16, 0xffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 237
    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    .line 227
    .restart local v11    # "ret":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 228
    .restart local v7    # "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v15, "IccUtils"

    const-string/jumbo v16, "implausible UnsupportedEncodingException"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 239
    .end local v7    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v11    # "ret":Ljava/lang/String;
    :cond_4
    const/4 v15, 0x0

    invoke-virtual {v11, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 244
    .end local v14    # "ucslen":I
    :cond_5
    const/4 v8, 0x0

    .line 245
    .local v8, "isucs2":Z
    const/4 v3, 0x0

    .line 246
    .local v3, "base":C
    const/4 v9, 0x0

    .line 248
    .local v9, "len":I
    const/4 v15, 0x3

    move/from16 v0, p2

    if-lt v0, v15, :cond_9

    aget-byte v15, p0, p1

    const/16 v16, -0x7f

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 249
    add-int/lit8 v15, p1, 0x1

    aget-byte v15, p0, v15

    and-int/lit16 v9, v15, 0xff

    .line 250
    add-int/lit8 v15, p2, -0x3

    if-le v9, v15, :cond_6

    .line 251
    add-int/lit8 v9, p2, -0x3

    .line 253
    :cond_6
    add-int/lit8 v15, p1, 0x2

    aget-byte v15, p0, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x7

    int-to-char v3, v15

    .line 254
    .local v3, "base":C
    add-int/lit8 p1, p1, 0x3

    .line 255
    const/4 v8, 0x1

    .line 267
    .end local v3    # "base":C
    :cond_7
    :goto_4
    if-eqz v8, :cond_d

    .line 268
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v13, "ret":Ljava/lang/StringBuilder;
    :goto_5
    if-lez v9, :cond_c

    .line 273
    aget-byte v15, p0, p1

    if-gez v15, :cond_8

    .line 274
    aget-byte v15, p0, p1

    and-int/lit8 v15, v15, 0x7f

    add-int/2addr v15, v3

    int-to-char v15, v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    add-int/lit8 p1, p1, 0x1

    .line 276
    add-int/lit8 v9, v9, -0x1

    .line 281
    :cond_8
    const/4 v4, 0x0

    .line 282
    .local v4, "count":I
    :goto_6
    if-ge v4, v9, :cond_b

    add-int v15, p1, v4

    aget-byte v15, p0, v15

    if-ltz v15, :cond_b

    .line 283
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 256
    .end local v4    # "count":I
    .end local v13    # "ret":Ljava/lang/StringBuilder;
    .local v3, "base":C
    :cond_9
    const/4 v15, 0x4

    move/from16 v0, p2

    if-lt v0, v15, :cond_7

    aget-byte v15, p0, p1

    const/16 v16, -0x7e

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 257
    add-int/lit8 v15, p1, 0x1

    aget-byte v15, p0, v15

    and-int/lit16 v9, v15, 0xff

    .line 258
    add-int/lit8 v15, p2, -0x4

    if-le v9, v15, :cond_a

    .line 259
    add-int/lit8 v9, p2, -0x4

    .line 261
    :cond_a
    add-int/lit8 v15, p1, 0x2

    aget-byte v15, p0, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    .line 262
    add-int/lit8 v16, p1, 0x3

    aget-byte v16, p0, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 261
    or-int v15, v15, v16

    int-to-char v3, v15

    .line 263
    .local v3, "base":C
    add-int/lit8 p1, p1, 0x4

    .line 264
    const/4 v8, 0x1

    goto :goto_4

    .line 285
    .end local v3    # "base":C
    .restart local v4    # "count":I
    .restart local v13    # "ret":Ljava/lang/StringBuilder;
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    add-int p1, p1, v4

    .line 289
    sub-int/2addr v9, v4

    goto :goto_5

    .line 292
    .end local v4    # "count":I
    :cond_c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 295
    .end local v13    # "ret":Ljava/lang/StringBuilder;
    :cond_d
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 296
    .local v10, "resource":Landroid/content/res/Resources;
    const-string/jumbo v5, ""

    .line 299
    .local v5, "defaultCharset":Ljava/lang/String;
    const v15, 0x1040030

    :try_start_2
    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 303
    :goto_7
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v15}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 300
    :catch_2
    move-exception v6

    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_7
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v4, 0x9

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    .local v1, "ret":Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_0

    .line 59
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 60
    .local v2, "v":I
    if-le v2, v4, :cond_1

    .line 70
    .end local v2    # "v":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 61
    .restart local v2    # "v":I
    :cond_1
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 65
    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    .line 55
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_2
    if-gt v2, v4, :cond_0

    .line 67
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static bitToRGB(I)I
    .locals 1
    .param p0, "bit"    # I

    .prologue
    .line 490
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 491
    const/4 v0, -0x1

    return v0

    .line 493
    :cond_0
    const/high16 v0, -0x1000000

    return v0
.end method

.method public static byteToCharArray([B)[C
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 332
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [C

    .line 334
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 335
    mul-int/lit8 v2, v1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_0
    return-object v0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 387
    if-nez p0, :cond_0

    return-object v3

    .line 389
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 391
    .local v2, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 394
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 396
    .local v0, "b":I
    const-string/jumbo v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 400
    const-string/jumbo v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v0    # "b":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static cdmaBcdByteToInt(B)I
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 138
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 139
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 142
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 143
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 146
    :cond_1
    return v0
.end method

.method public static cdmaBcdToString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v5, 0x9

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 80
    .local v2, "ret":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 81
    .local v0, "count":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 83
    aget-byte v4, p0, v1

    and-int/lit8 v3, v4, 0xf

    .line 84
    .local v3, "v":I
    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    .line 85
    :cond_0
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_2

    .line 94
    .end local v3    # "v":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 89
    .restart local v3    # "v":I
    :cond_2
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v4, 0xf

    .line 90
    if-le v3, v5, :cond_3

    const/4 v3, 0x0

    .line 91
    :cond_3
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v0, v0, 0x1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getCLUT([BII)[I
    .locals 8
    .param p0, "rawData"    # [B
    .param p1, "offset"    # I
    .param p2, "number"    # I

    .prologue
    const/4 v6, 0x0

    .line 585
    if-nez p0, :cond_0

    .line 586
    return-object v6

    .line 589
    :cond_0
    new-array v3, p2, [I

    .line 590
    .local v3, "result":[I
    mul-int/lit8 v6, p2, 0x3

    add-int v2, p1, v6

    .line 591
    .local v2, "endIndex":I
    move v4, p1

    .line 592
    .local v4, "valueIndex":I
    const/4 v0, 0x0

    .line 595
    .local v0, "colorIndex":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 596
    .end local v0    # "colorIndex":I
    .local v1, "colorIndex":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .local v5, "valueIndex":I
    aget-byte v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    .line 593
    const/high16 v7, -0x1000000

    .line 595
    or-int/2addr v6, v7

    .line 597
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    .line 595
    or-int/2addr v6, v7

    .line 598
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    .line 595
    or-int/2addr v6, v7

    aput v6, v3, v0

    .line 599
    if-ge v5, v2, :cond_1

    move v0, v1

    .end local v1    # "colorIndex":I
    .restart local v0    # "colorIndex":I
    move v4, v5

    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    goto :goto_0

    .line 600
    .end local v0    # "colorIndex":I
    .end local v4    # "valueIndex":I
    .restart local v1    # "colorIndex":I
    .restart local v5    # "valueIndex":I
    :cond_1
    return-object v3
.end method

.method public static gsmBcdByteToInt(B)I
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 116
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 117
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 120
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 121
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 124
    :cond_1
    return v0
.end method

.method static hexCharToInt(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 342
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 343
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 344
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 346
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 363
    if-nez p0, :cond_0

    return-object v3

    .line 365
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 367
    .local v2, "sz":I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 369
    .local v1, "ret":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 370
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 371
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v5

    .line 370
    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 369
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 374
    :cond_1
    return-object v1
.end method

.method public static isKSC5601([B)Z
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const v4, 0xffff

    .line 315
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteToCharArray([B)[C

    move-result-object v0

    .line 317
    .local v0, "c":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 318
    aget-char v2, v0, v1

    and-int/2addr v2, v4

    const v3, 0xac00

    if-lt v2, v3, :cond_0

    aget-char v2, v0, v1

    and-int/2addr v2, v4

    const v3, 0xd7a3

    if-gt v2, v3, :cond_0

    .line 319
    const/4 v2, 0x1

    return v2

    .line 317
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .locals 11
    .param p0, "data"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "length"    # I
    .param p3, "colorArray"    # [I
    .param p4, "bits"    # I

    .prologue
    const/16 v10, 0x8

    .line 535
    rem-int v9, v10, p4

    if-eqz v9, :cond_0

    .line 536
    const-string/jumbo v9, "IccUtils"

    const-string/jumbo v10, "not event number of color"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v9

    return-object v9

    .line 541
    :cond_0
    const/4 v0, 0x1

    .line 542
    .local v0, "mask":I
    packed-switch p4, :pswitch_data_0

    .line 557
    :goto_0
    :pswitch_0
    new-array v2, p2, [I

    .line 558
    .local v2, "resultArray":[I
    const/4 v3, 0x0

    .line 559
    .local v3, "resultIndex":I
    div-int v5, v10, p4

    .local v5, "run":I
    move v8, p1

    .line 560
    .end local p1    # "valueIndex":I
    .local v8, "valueIndex":I
    :goto_1
    if-ge v3, p2, :cond_2

    .line 561
    add-int/lit8 p1, v8, 0x1

    .end local v8    # "valueIndex":I
    .restart local p1    # "valueIndex":I
    aget-byte v7, p0, v8

    .line 562
    .local v7, "tempByte":B
    const/4 v6, 0x0

    .local v6, "runIndex":I
    move v4, v3

    .end local v3    # "resultIndex":I
    .local v4, "resultIndex":I
    :goto_2
    if-ge v6, v5, :cond_1

    .line 563
    sub-int v9, v5, v6

    add-int/lit8 v1, v9, -0x1

    .line 564
    .local v1, "offset":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    mul-int v9, v1, p4

    shr-int v9, v7, v9

    and-int/2addr v9, v0

    aget v9, p3, v9

    aput v9, v2, v4

    .line 562
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3    # "resultIndex":I
    .restart local v4    # "resultIndex":I
    goto :goto_2

    .line 544
    .end local v1    # "offset":I
    .end local v2    # "resultArray":[I
    .end local v4    # "resultIndex":I
    .end local v5    # "run":I
    .end local v6    # "runIndex":I
    .end local v7    # "tempByte":B
    :pswitch_1
    const/4 v0, 0x1

    .line 545
    goto :goto_0

    .line 547
    :pswitch_2
    const/4 v0, 0x3

    .line 548
    goto :goto_0

    .line 550
    :pswitch_3
    const/16 v0, 0xf

    .line 551
    goto :goto_0

    .line 553
    :pswitch_4
    const/16 v0, 0xff

    .line 554
    goto :goto_0

    .restart local v2    # "resultArray":[I
    .restart local v4    # "resultIndex":I
    .restart local v5    # "run":I
    .restart local v6    # "runIndex":I
    .restart local v7    # "tempByte":B
    :cond_1
    move v3, v4

    .end local v4    # "resultIndex":I
    .restart local v3    # "resultIndex":I
    move v8, p1

    .end local p1    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    goto :goto_1

    .line 568
    .end local v6    # "runIndex":I
    .end local v7    # "tempByte":B
    :cond_2
    return-object v2

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "length"    # I
    .param p3, "colorArray"    # [I
    .param p4, "bits"    # I

    .prologue
    .line 573
    const/16 v1, 0x8

    rem-int/2addr v1, p4

    if-nez v1, :cond_0

    .line 574
    const-string/jumbo v1, "IccUtils"

    const-string/jumbo v2, "not odd number of color"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v1

    return-object v1

    .line 579
    :cond_0
    new-array v0, p2, [I

    .line 581
    .local v0, "resultArray":[I
    return-object v0
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 416
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    if-ge p2, v4, :cond_1

    .line 417
    :cond_0
    const-string/jumbo v4, ""

    return-object v4

    .line 420
    :cond_1
    aget-byte v4, p0, p1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_0

    .line 441
    const-string/jumbo v2, ""

    .line 449
    .local v2, "ret":Ljava/lang/String;
    :goto_0
    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_2

    .line 454
    :cond_2
    return-object v2

    .line 424
    .end local v2    # "ret":Ljava/lang/String;
    :pswitch_0
    aget-byte v4, p0, p1

    and-int/lit8 v3, v4, 0x7

    .line 425
    .local v3, "unusedBits":I
    add-int/lit8 v4, p2, -0x1

    mul-int/lit8 v4, v4, 0x8

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x7

    .line 426
    .local v0, "countSeptets":I
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 431
    .end local v0    # "countSeptets":I
    .end local v2    # "ret":Ljava/lang/String;
    .end local v3    # "unusedBits":I
    :pswitch_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .line 432
    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p2, -0x1

    const-string/jumbo v6, "utf-16"

    .line 431
    invoke-direct {v2, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 433
    .end local v2    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 434
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, ""

    .line 435
    .restart local v2    # "ret":Ljava/lang/String;
    const-string/jumbo v4, "IccUtils"

    const-string/jumbo v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseIccIdToString([BII)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v4, 0x9

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 615
    .local v1, "ret":Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_2

    .line 619
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 620
    .local v2, "v":I
    if-ltz v2, :cond_0

    if-gt v2, v4, :cond_0

    .line 621
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 626
    :goto_1
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 627
    if-ltz v2, :cond_1

    if-gt v2, v4, :cond_1

    .line 628
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 615
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 623
    :cond_0
    add-int/lit8 v3, v2, 0x61

    add-int/lit8 v3, v3, -0xa

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 630
    :cond_1
    add-int/lit8 v3, v2, 0x61

    add-int/lit8 v3, v3, -0xa

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 634
    .end local v2    # "v":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static parseLanguageIndicator([BII)Ljava/lang/String;
    .locals 3
    .param p0, "rawData"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 697
    if-nez p0, :cond_0

    .line 698
    return-object v2

    .line 701
    :cond_0
    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 702
    const-string/jumbo v0, "IccUtils"

    const-string/jumbo v1, "length is invalid"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return-object v2

    .line 706
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parsePlmnToString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v3, 0x9

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 719
    .local v0, "ret":Ljava/lang/StringBuilder;
    aget-byte v2, p0, p1

    and-int/lit8 v1, v2, 0xf

    .line 720
    .local v1, "v":I
    if-le v1, v3, :cond_1

    .line 744
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 721
    :cond_1
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 723
    aget-byte v2, p0, p1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v1, v2, 0xf

    .line 724
    if-gt v1, v3, :cond_0

    .line 725
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 727
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit8 v1, v2, 0xf

    .line 728
    if-gt v1, v3, :cond_0

    .line 729
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 731
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit8 v1, v2, 0xf

    .line 732
    if-gt v1, v3, :cond_0

    .line 733
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 735
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v1, v2, 0xf

    .line 736
    if-gt v1, v3, :cond_0

    .line 737
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 739
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v1, v2, 0xf

    .line 740
    if-gt v1, v3, :cond_0

    .line 741
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static parsePlmnToStringForEfOpl([BII)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v5, 0x64

    const/16 v4, 0xd

    const/16 v3, 0x9

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 644
    .local v0, "ret":Ljava/lang/StringBuilder;
    aget-byte v2, p0, p1

    and-int/lit8 v1, v2, 0xf

    .line 645
    .local v1, "v":I
    if-ltz v1, :cond_1

    if-gt v1, v3, :cond_1

    .line 646
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 652
    :goto_0
    aget-byte v2, p0, p1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v1, v2, 0xf

    .line 653
    if-ltz v1, :cond_2

    if-gt v1, v3, :cond_2

    .line 654
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 660
    :goto_1
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit8 v1, v2, 0xf

    .line 661
    if-ltz v1, :cond_3

    if-gt v1, v3, :cond_3

    .line 662
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 668
    :goto_2
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit8 v1, v2, 0xf

    .line 669
    if-ltz v1, :cond_4

    if-gt v1, v3, :cond_4

    .line 670
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 676
    :goto_3
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v1, v2, 0xf

    .line 677
    if-ltz v1, :cond_5

    if-gt v1, v3, :cond_5

    .line 678
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 684
    :goto_4
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v1, v2, 0xf

    .line 685
    if-ltz v1, :cond_6

    if-gt v1, v3, :cond_6

    .line 686
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 693
    :cond_0
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 647
    :cond_1
    if-ne v1, v4, :cond_0

    .line 648
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 655
    :cond_2
    if-ne v1, v4, :cond_0

    .line 656
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 663
    :cond_3
    if-ne v1, v4, :cond_0

    .line 664
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 671
    :cond_4
    if-ne v1, v4, :cond_0

    .line 672
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 679
    :cond_5
    if-ne v1, v4, :cond_0

    .line 680
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 687
    :cond_6
    if-ne v1, v4, :cond_0

    .line 688
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .prologue
    const/4 v11, 0x0

    .line 465
    const/4 v8, 0x1

    .local v8, "valueIndex":I
    aget-byte v11, p0, v11

    and-int/lit16 v10, v11, 0xff

    .line 466
    .local v10, "width":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "valueIndex":I
    .local v9, "valueIndex":I
    aget-byte v11, p0, v8

    and-int/lit16 v3, v11, 0xff

    .line 467
    .local v3, "height":I
    mul-int v4, v10, v3

    .line 469
    .local v4, "numOfPixels":I
    new-array v7, v4, [I

    .line 471
    .local v7, "pixels":[I
    const/4 v5, 0x0

    .line 472
    .local v5, "pixelIndex":I
    const/4 v0, 0x7

    .line 473
    .local v0, "bitIndex":I
    const/4 v2, 0x0

    .local v2, "currentByte":B
    move v6, v5

    .line 474
    .end local v2    # "currentByte":B
    .end local v5    # "pixelIndex":I
    .local v6, "pixelIndex":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 476
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_2

    .line 477
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    aget-byte v2, p0, v9

    .line 478
    .local v2, "currentByte":B
    const/4 v0, 0x7

    .line 480
    .end local v2    # "currentByte":B
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pixelIndex":I
    .restart local v5    # "pixelIndex":I
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "bitIndex":I
    .local v1, "bitIndex":I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bitToRGB(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1    # "bitIndex":I
    .restart local v0    # "bitIndex":I
    move v6, v5

    .end local v5    # "pixelIndex":I
    .restart local v6    # "pixelIndex":I
    move v9, v8

    .end local v8    # "valueIndex":I
    .restart local v9    # "valueIndex":I
    goto :goto_0

    .line 483
    :cond_0
    if-eq v6, v4, :cond_1

    .line 484
    const-string/jumbo v11, "IccUtils"

    const-string/jumbo v12, "parse end and size error"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_2
    move v8, v9

    .end local v9    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "transparency"    # Z

    .prologue
    const/4 v11, 0x0

    .line 508
    const/4 v6, 0x1

    .local v6, "valueIndex":I
    aget-byte v9, p0, v11

    and-int/lit16 v8, v9, 0xff

    .line 509
    .local v8, "width":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "valueIndex":I
    .local v7, "valueIndex":I
    aget-byte v9, p0, v6

    and-int/lit16 v4, v9, 0xff

    .line 510
    .local v4, "height":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    aget-byte v9, p0, v7

    and-int/lit16 v0, v9, 0xff

    .line 511
    .local v0, "bits":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    aget-byte v9, p0, v6

    and-int/lit16 v3, v9, 0xff

    .line 512
    .local v3, "colorNumber":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    aget-byte v9, p0, v7

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    .line 513
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    aget-byte v10, p0, v6

    and-int/lit16 v10, v10, 0xff

    .line 512
    or-int v1, v9, v10

    .line 515
    .local v1, "clutOffset":I
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->getCLUT([BII)[I

    move-result-object v2

    .line 516
    .local v2, "colorIndexArray":[I
    if-eqz p2, :cond_0

    .line 517
    add-int/lit8 v9, v3, -0x1

    aput v11, v2, v9

    .line 520
    :cond_0
    const/4 v5, 0x0

    .line 521
    .local v5, "resultArray":[I
    const/16 v9, 0x8

    rem-int/2addr v9, v0

    if-nez v9, :cond_1

    .line 523
    mul-int v9, v8, v4

    .line 522
    invoke-static {p0, v7, v9, v2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v5

    .line 530
    .local v5, "resultArray":[I
    :goto_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 529
    invoke-static {v5, v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    .line 526
    .local v5, "resultArray":[I
    :cond_1
    mul-int v9, v8, v4

    .line 525
    invoke-static {p0, v7, v9, v2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v5

    .local v5, "resultArray":[I
    goto :goto_0
.end method
