.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field static final TAG:Ljava/lang/String; = "MeasuredText"

.field private static final localLOGV:Z

.field private static final sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field private mBuilder:Landroid/text/StaticLayout$Builder;

.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    sput-object v0, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 50
    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .locals 5

    .prologue
    .line 59
    sget-object v3, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 60
    :try_start_0
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v0, v2

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 61
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 62
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v2, v0

    .line 63
    .local v1, "mt":Landroid/text/MeasuredText;
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    const/4 v4, 0x0

    aput-object v4, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 64
    return-object v1

    .end local v1    # "mt":Landroid/text/MeasuredText;
    :cond_1
    monitor-exit v3

    .line 68
    new-instance v1, Landroid/text/MeasuredText;

    invoke-direct {v1}, Landroid/text/MeasuredText;-><init>()V

    .line 72
    .restart local v1    # "mt":Landroid/text/MeasuredText;
    return-object v1

    .line 59
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .locals 4
    .param p0, "mt"    # Landroid/text/MeasuredText;

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0}, Landroid/text/MeasuredText;->finish()V

    .line 77
    sget-object v2, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 79
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 80
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aput-object p0, v1, v0

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 86
    return-object v3

    .line 78
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 25
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "len"    # I
    .param p3, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 170
    sget-boolean v3, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    .line 171
    const-string/jumbo v3, "MeasuredText"

    const-string/jumbo v4, "[addStyleRun_NoSpan] start"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    if-eqz p3, :cond_1

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/MeasuredText;->mPos:I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/text/TextPaint;->getFontMetricsInt([CLandroid/graphics/Paint$FontMetricsInt;II)I

    .line 178
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/MeasuredText;->mPos:I

    .line 179
    .local v5, "p":I
    add-int v3, v5, p2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/text/MeasuredText;->mPos:I

    .line 183
    const/4 v10, 0x0

    .line 184
    .local v10, "widths":[F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/text/TextPaint;

    if-eq v3, v4, :cond_3

    .line 185
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/MeasuredText;->mWidths:[F

    .line 187
    .end local v10    # "widths":[F
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v3, :cond_7

    .line 188
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/MeasuredText;->mDir:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v9, 0x1

    .line 189
    .local v9, "isRtl":Z
    :goto_0
    const/16 v24, 0x0

    .line 190
    .local v24, "width":F
    if-eqz v10, :cond_6

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v3, p1

    move/from16 v6, p2

    move v7, v5

    move/from16 v8, p2

    move v11, v5

    invoke-virtual/range {v3 .. v11}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v24

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v3, :cond_4

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    add-int v4, v5, p2

    invoke-virtual {v3, v5, v4, v10}, Landroid/text/StaticLayout$Builder;->addMeasuredRun(II[F)V

    .line 198
    :cond_4
    :goto_1
    return v24

    .line 188
    .end local v9    # "isRtl":Z
    .end local v24    # "width":F
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "isRtl":Z
    goto :goto_0

    .line 196
    .restart local v24    # "width":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    add-int v4, v5, p2

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5, v4, v9}, Landroid/text/StaticLayout$Builder;->addStyleRun(Landroid/text/TextPaint;IIZ)F

    move-result v24

    goto :goto_1

    .line 201
    .end local v9    # "isRtl":Z
    .end local v24    # "width":F
    :cond_7
    const/16 v23, 0x0

    .line 202
    .local v23, "totalAdvance":F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v22, v3, v5

    .line 203
    .local v22, "level":I
    move v13, v5

    .local v13, "q":I
    add-int/lit8 v21, v5, 0x1

    .local v21, "i":I
    add-int v20, v5, p2

    .line 204
    .local v20, "e":I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v3, v3, v21

    move/from16 v0, v22

    if-eq v3, v0, :cond_e

    .line 205
    :cond_8
    and-int/lit8 v3, v22, 0x1

    if-eqz v3, :cond_b

    const/4 v9, 0x1

    .line 206
    .restart local v9    # "isRtl":Z
    :goto_3
    if-eqz v10, :cond_c

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/text/MeasuredText;->mChars:[C

    sub-int v14, v21, v13

    sub-int v16, v21, v13

    move-object/from16 v11, p1

    move v15, v13

    move/from16 v17, v9

    move-object/from16 v18, v10

    move/from16 v19, v13

    invoke-virtual/range {v11 .. v19}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v3

    .line 207
    add-float v23, v23, v3

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v3, :cond_9

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    move/from16 v0, v21

    invoke-virtual {v3, v13, v0, v10}, Landroid/text/StaticLayout$Builder;->addMeasuredRun(II[F)V

    .line 215
    :cond_9
    :goto_4
    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 222
    sget-boolean v3, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v3, :cond_a

    .line 223
    const-string/jumbo v3, "MeasuredText"

    const-string/jumbo v4, "[addStyleRun_NoSapn] end"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_a
    return v23

    .line 205
    .end local v9    # "isRtl":Z
    :cond_b
    const/4 v9, 0x0

    .restart local v9    # "isRtl":Z
    goto :goto_3

    .line 213
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v3, v0, v13, v1, v9}, Landroid/text/StaticLayout$Builder;->addStyleRun(Landroid/text/TextPaint;IIZ)F

    move-result v3

    add-float v23, v23, v3

    goto :goto_4

    .line 218
    :cond_d
    move/from16 v13, v21

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v22, v3, v21

    .line 203
    .end local v9    # "isRtl":Z
    :cond_e
    add-int/lit8 v21, v21, 0x1

    goto :goto_2
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 11
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "spans"    # [Landroid/text/style/MetricAffectingSpan;
    .param p3, "len"    # I
    .param p4, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-object v1, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 232
    .local v1, "workPaint":Landroid/text/TextPaint;
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 234
    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 235
    sget-boolean v2, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    .line 236
    const-string/jumbo v2, "MeasuredText"

    const-string/jumbo v3, "[addStyleRun_Span] start"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    const/4 v0, 0x0

    .line 239
    .local v0, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v7, 0x0

    .end local v0    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v7, "i":I
    :goto_0
    array-length v2, p2

    if-ge v7, v2, :cond_2

    .line 240
    aget-object v8, p2, v7

    .line 241
    .local v8, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v2, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_1

    move-object v0, v8

    .line 242
    check-cast v0, Landroid/text/style/ReplacementSpan;

    .line 239
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {v8, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 249
    .end local v8    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_2
    if-nez v0, :cond_5

    .line 250
    invoke-virtual {p0, v1, p3, p4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 266
    .local v10, "wid":F
    :goto_2
    if-eqz p4, :cond_3

    .line 267
    iget v2, v1, Landroid/text/TextPaint;->baselineShift:I

    if-gez v2, :cond_8

    .line 268
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 269
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 275
    :cond_3
    :goto_3
    sget-boolean v2, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v2, :cond_4

    .line 276
    const-string/jumbo v2, "MeasuredText"

    const-string/jumbo v3, "[addStyleRun_Span] end"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_4
    return v10

    .line 253
    .end local v10    # "wid":F
    :cond_5
    iget-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v3, v4

    .line 254
    iget v4, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v5, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    move-object v5, p4

    .line 253
    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v10, v2

    .line 255
    .restart local v10    # "wid":F
    iget-object v2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-nez v2, :cond_6

    .line 256
    iget-object v9, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 257
    .local v9, "w":[F
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    aput v10, v9, v2

    .line 258
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/lit8 v7, v2, 0x1

    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v6, v2, p3

    .local v6, "e":I
    :goto_4
    if-ge v7, v6, :cond_7

    .line 259
    const/4 v2, 0x0

    aput v2, v9, v7

    .line 258
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 261
    .end local v6    # "e":I
    .end local v9    # "w":[F
    :cond_6
    iget-object v2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    iget v3, p0, Landroid/text/MeasuredText;->mPos:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, p3

    invoke-virtual {v2, v3, v4, v10}, Landroid/text/StaticLayout$Builder;->addReplacementRun(IIF)V

    .line 263
    :cond_7
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v2, p3

    iput v2, p0, Landroid/text/MeasuredText;->mPos:I

    goto :goto_2

    .line 271
    :cond_8
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 272
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_3
.end method

.method breakText(IZF)I
    .locals 5
    .param p1, "limit"    # I
    .param p2, "forwards"    # Z
    .param p3, "width"    # F

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 283
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 284
    .local v1, "w":[F
    if-eqz p2, :cond_3

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 287
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 288
    cmpg-float v2, p3, v3

    if-gez v2, :cond_1

    .line 291
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, -0x1

    aget-char v2, v2, v3

    if-ne v2, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 289
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_2
    return v0

    .line 294
    .end local v0    # "i":I
    :cond_3
    add-int/lit8 v0, p1, -0x1

    .line 295
    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_4

    .line 296
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 297
    cmpg-float v2, p3, v3

    if-gez v2, :cond_5

    .line 300
    :cond_4
    :goto_3
    add-int/lit8 v2, p1, -0x1

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v2, v2, v3

    if-ne v2, v4, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 298
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 301
    :cond_6
    sub-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    iput-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 91
    iput-object v2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    .line 92
    iget v0, p0, Landroid/text/MeasuredText;->mLen:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 93
    iput-object v2, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 94
    iput-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 95
    iput-object v2, p0, Landroid/text/MeasuredText;->mLevels:[B

    .line 89
    :cond_0
    return-void
.end method

.method measure(II)F
    .locals 4
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .prologue
    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, "width":F
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 308
    .local v1, "w":[F
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 309
    aget v3, v1, v0

    add-float/2addr v2, v3

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    return v2
.end method

.method setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V
    .locals 13
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p5, "builder"    # Landroid/text/StaticLayout$Builder;

    .prologue
    .line 108
    move-object/from16 v0, p5

    iput-object v0, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    .line 109
    iput-object p1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 110
    iput p2, p0, Landroid/text/MeasuredText;->mTextStart:I

    .line 112
    sub-int v6, p3, p2

    .line 113
    .local v6, "len":I
    iput v6, p0, Landroid/text/MeasuredText;->mLen:I

    .line 114
    const/4 v10, 0x0

    iput v10, p0, Landroid/text/MeasuredText;->mPos:I

    .line 116
    iget-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    array-length v10, v10

    if-ge v10, v6, :cond_1

    .line 117
    :cond_0
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    move-result-object v10

    iput-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 119
    :cond_1
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    array-length v10, v10

    if-ge v10, v6, :cond_3

    .line 120
    :cond_2
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v10

    iput-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 122
    :cond_3
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-static {p1, p2, v0, v10, v11}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 124
    instance-of v10, p1, Landroid/text/Spanned;

    if-eqz v10, :cond_7

    move-object v7, p1

    .line 125
    check-cast v7, Landroid/text/Spanned;

    .line 127
    .local v7, "spanned":Landroid/text/Spanned;
    const-class v10, Landroid/text/style/ReplacementSpan;

    .line 126
    move/from16 v0, p3

    invoke-interface {v7, p2, v0, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/ReplacementSpan;

    .line 129
    .local v8, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v8

    if-ge v3, v10, :cond_7

    .line 130
    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    sub-int v9, v10, p2

    .line 131
    .local v9, "startInPara":I
    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    sub-int v2, v10, p2

    .line 133
    .local v2, "endInPara":I
    if-gez v9, :cond_4

    const/4 v9, 0x0

    .line 134
    :cond_4
    if-le v2, v6, :cond_5

    move v2, v6

    .line 135
    :cond_5
    move v5, v9

    .local v5, "j":I
    :goto_1
    if-ge v5, v2, :cond_6

    .line 136
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const v11, 0xfffc

    aput-char v11, v10, v5

    .line 135
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 129
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    .end local v2    # "endInPara":I
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v7    # "spanned":Landroid/text/Spanned;
    .end local v8    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v9    # "startInPara":I
    :cond_7
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v10, :cond_8

    .line 142
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_9

    .line 144
    :cond_8
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    invoke-static {v10, v11, v6}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v10

    .line 141
    if-eqz v10, :cond_a

    .line 145
    const/4 v10, 0x1

    iput v10, p0, Landroid/text/MeasuredText;->mDir:I

    .line 146
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/text/MeasuredText;->mEasy:Z

    .line 107
    :goto_2
    return-void

    .line 143
    :cond_9
    sget-object v10, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v10, :cond_8

    .line 148
    :cond_a
    iget-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    if-eqz v10, :cond_b

    iget-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    array-length v10, v10

    if-ge v10, v6, :cond_c

    .line 149
    :cond_b
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    move-result-object v10

    iput-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    .line 152
    :cond_c
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_d

    .line 153
    const/4 v1, 0x1

    .line 164
    .local v1, "bidiRequest":I
    :goto_3
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    iget-object v11, p0, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v12, 0x0

    invoke-static {v1, v10, v11, v6, v12}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v10

    iput v10, p0, Landroid/text/MeasuredText;->mDir:I

    .line 165
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/text/MeasuredText;->mEasy:Z

    goto :goto_2

    .line 154
    .end local v1    # "bidiRequest":I
    :cond_d
    sget-object v10, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_e

    .line 155
    const/4 v1, -0x1

    .restart local v1    # "bidiRequest":I
    goto :goto_3

    .line 156
    .end local v1    # "bidiRequest":I
    :cond_e
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_f

    .line 157
    const/4 v1, 0x2

    .restart local v1    # "bidiRequest":I
    goto :goto_3

    .line 158
    .end local v1    # "bidiRequest":I
    :cond_f
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_10

    .line 159
    const/4 v1, -0x2

    .restart local v1    # "bidiRequest":I
    goto :goto_3

    .line 161
    .end local v1    # "bidiRequest":I
    :cond_10
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v10, v11, v6}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v4

    .line 162
    .local v4, "isRtl":Z
    if-eqz v4, :cond_11

    const/4 v1, -0x1

    .restart local v1    # "bidiRequest":I
    goto :goto_3

    .end local v1    # "bidiRequest":I
    :cond_11
    const/4 v1, 0x1

    .restart local v1    # "bidiRequest":I
    goto :goto_3
.end method

.method setPos(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 100
    iget v0, p0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/text/MeasuredText;->mPos:I

    .line 99
    return-void
.end method
