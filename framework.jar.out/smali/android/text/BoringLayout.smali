.class public Landroid/text/BoringLayout;
.super Landroid/text/Layout;
.source "BoringLayout.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BoringLayout$Metrics;
    }
.end annotation


# static fields
.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field static final TAG:Ljava/lang/String; = "BoringLayout"

.field private static final sTemp:Landroid/text/TextPaint;


# instance fields
.field mBottom:I

.field private mBottomPadding:I

.field mDesc:I

.field private mDirect:Ljava/lang/String;

.field private mEllipsizedCount:I

.field private mEllipsizedStart:I

.field private mEllipsizedWidth:I

.field private mMax:F

.field private mPaint:Landroid/graphics/Paint;

.field private mTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 437
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 436
    sput-object v0, Landroid/text/BoringLayout;->sTemp:Landroid/text/TextPaint;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includepad"    # Z

    .prologue
    .line 131
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 133
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 138
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 137
    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includepad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    .prologue
    .line 152
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 156
    if-eqz p9, :cond_0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p9

    if-ne v0, v1, :cond_1

    .line 157
    :cond_0
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 158
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 159
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 160
    const/4 v10, 0x1

    .line 172
    .local v10, "trust":Z
    :goto_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 146
    return-void

    .line 162
    .end local v10    # "trust":Z
    :cond_1
    move/from16 v0, p10

    int-to-float v3, v0

    .line 163
    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p9

    move-object v6, p0

    .line 162
    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 168
    move/from16 v0, p10

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 169
    const/4 v10, 0x0

    .restart local v10    # "trust":Z
    goto :goto_0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 232
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "metrics"    # Landroid/text/BoringLayout$Metrics;

    .prologue
    .line 251
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, v0, p2}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)Landroid/text/BoringLayout$Metrics;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 23
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "metrics"    # Landroid/text/BoringLayout$Metrics;

    .prologue
    .line 262
    const/16 v5, 0x1f4

    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v22

    .line 263
    .local v22, "temp":[C
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 264
    .local v8, "length":I
    const/4 v14, 0x1

    .line 267
    .local v14, "boring":Z
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v8, :cond_2

    .line 268
    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x1f4

    move/from16 v18, v0

    .line 270
    .local v18, "j":I
    move/from16 v0, v18

    if-le v0, v8, :cond_0

    .line 271
    move/from16 v18, v8

    .line 273
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 275
    sub-int v19, v18, v17

    .line 277
    .local v19, "n":I
    const/4 v13, 0x0

    .local v13, "a":I
    :goto_1
    move/from16 v0, v19

    if-ge v13, v0, :cond_c

    .line 278
    aget-char v15, v22, v13

    .line 280
    .local v15, "c":C
    const/16 v5, 0xa

    if-eq v15, v5, :cond_1

    const/16 v5, 0x9

    if-ne v15, v5, :cond_5

    .line 289
    :cond_1
    const/4 v14, 0x0

    .line 300
    .end local v13    # "a":I
    .end local v15    # "c":C
    .end local v18    # "j":I
    .end local v19    # "n":I
    :cond_2
    :goto_2
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->recycle([C)V

    .line 302
    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_3

    move-object/from16 v20, p0

    .line 303
    check-cast v20, Landroid/text/Spanned;

    .line 304
    .local v20, "sp":Landroid/text/Spanned;
    const-class v5, Landroid/text/style/ParagraphStyle;

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v6, v8, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    .line 305
    .local v21, "styles":[Ljava/lang/Object;
    move-object/from16 v0, v21

    array-length v5, v0

    if-lez v5, :cond_3

    .line 306
    const/4 v14, 0x0

    .line 310
    .end local v20    # "sp":Landroid/text/Spanned;
    .end local v21    # "styles":[Ljava/lang/Object;
    :cond_3
    if-eqz v14, :cond_e

    .line 311
    move-object/from16 v16, p3

    .line 312
    .local v16, "fm":Landroid/text/BoringLayout$Metrics;
    if-nez v16, :cond_4

    .line 313
    new-instance v16, Landroid/text/BoringLayout$Metrics;

    .end local v16    # "fm":Landroid/text/BoringLayout$Metrics;
    invoke-direct/range {v16 .. v16}, Landroid/text/BoringLayout$Metrics;-><init>()V

    .line 316
    .restart local v16    # "fm":Landroid/text/BoringLayout$Metrics;
    :cond_4
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v4

    .line 318
    .local v4, "line":Landroid/text/TextLine;
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 317
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 318
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    .line 317
    invoke-virtual/range {v4 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 319
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    move-object/from16 v0, v16

    iput v5, v0, Landroid/text/BoringLayout$Metrics;->width:I

    .line 320
    invoke-static {v4}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 322
    return-object v16

    .line 281
    .end local v4    # "line":Landroid/text/TextLine;
    .end local v16    # "fm":Landroid/text/BoringLayout$Metrics;
    .restart local v13    # "a":I
    .restart local v15    # "c":C
    .restart local v18    # "j":I
    .restart local v19    # "n":I
    :cond_5
    const/16 v5, 0x590

    if-lt v15, v5, :cond_6

    const/16 v5, 0x8ff

    if-le v15, v5, :cond_1

    .line 282
    :cond_6
    const/16 v5, 0x200f

    if-eq v15, v5, :cond_1

    .line 283
    const/16 v5, 0x202a

    if-lt v15, v5, :cond_7

    const/16 v5, 0x202e

    if-le v15, v5, :cond_1

    .line 284
    :cond_7
    const/16 v5, 0x2066

    if-lt v15, v5, :cond_8

    const/16 v5, 0x2069

    if-le v15, v5, :cond_1

    .line 285
    :cond_8
    const v5, 0xd800

    if-lt v15, v5, :cond_9

    const v5, 0xdfff

    if-le v15, v5, :cond_1

    .line 286
    :cond_9
    const v5, 0xfb1d

    if-lt v15, v5, :cond_a

    const v5, 0xfdff

    if-le v15, v5, :cond_1

    .line 287
    :cond_a
    const v5, 0xfe70

    if-lt v15, v5, :cond_b

    const v5, 0xfefe

    if-le v15, v5, :cond_1

    .line 277
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 294
    .end local v15    # "c":C
    :cond_c
    if-eqz p2, :cond_d

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v19

    invoke-interface {v0, v1, v5, v2}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 295
    const/4 v14, 0x0

    .line 296
    goto/16 :goto_2

    .line 267
    :cond_d
    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x1f4

    move/from16 v17, v0

    goto/16 :goto_0

    .line 324
    .end local v13    # "a":I
    .end local v18    # "j":I
    .end local v19    # "n":I
    :cond_e
    const/4 v5, 0x0

    return-object v5
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 9
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "outerwidth"    # I
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "spacingmult"    # F
    .param p5, "spacingadd"    # F
    .param p6, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p7, "includepad"    # Z

    .prologue
    .line 51
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V

    return-object v0
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 11
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "outerwidth"    # I
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "spacingmult"    # F
    .param p5, "spacingadd"    # F
    .param p6, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p7, "includepad"    # Z
    .param p8, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p9, "ellipsizedWidth"    # I

    .prologue
    .line 62
    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightpaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffset"    # I

    .prologue
    .line 408
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 409
    sget-boolean v0, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 410
    const-string/jumbo v0, "BoringLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[draw] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Landroid/text/BoringLayout;->mBottom:I

    iget v3, p0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 407
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method public ellipsized(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 422
    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 423
    sub-int v0, p2, p1

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 421
    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 391
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 396
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 348
    iget v0, p0, Landroid/text/BoringLayout;->mDesc:I

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 376
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineMax(I)F
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 371
    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    return v0
.end method

.method public getLineStart(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x0

    .line 353
    if-nez p1, :cond_0

    .line 354
    return v0

    .line 356
    :cond_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public getLineTop(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x0

    .line 340
    if-nez p1, :cond_0

    .line 341
    return v0

    .line 343
    :cond_0
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    return v0
.end method

.method init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includepad"    # Z
    .param p9, "trustWidth"    # Z

    .prologue
    .line 184
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p4

    if-ne v0, v3, :cond_1

    .line 185
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    .line 190
    :goto_0
    iput-object p2, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    .line 192
    if-eqz p8, :cond_2

    .line 193
    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/text/BoringLayout$Metrics;->top:I

    sub-int v11, v3, v4

    .line 198
    .local v11, "spacing":I
    :goto_1
    iput v11, p0, Landroid/text/BoringLayout;->mBottom:I

    .line 200
    if-eqz p8, :cond_3

    .line 201
    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->top:I

    add-int/2addr v3, v11

    iput v3, p0, Landroid/text/BoringLayout;->mDesc:I

    .line 206
    :goto_2
    if-eqz p9, :cond_4

    .line 207
    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v3, v3

    iput v3, p0, Landroid/text/BoringLayout;->mMax:F

    .line 221
    :goto_3
    if-eqz p8, :cond_0

    .line 222
    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->top:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/text/BoringLayout;->mTopPadding:I

    .line 223
    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    .line 181
    :cond_0
    return-void

    .line 187
    .end local v11    # "spacing":I
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    goto :goto_0

    .line 195
    :cond_2
    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int v11, v3, v4

    .restart local v11    # "spacing":I
    goto :goto_1

    .line 203
    :cond_3
    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    add-int/2addr v3, v11

    iput v3, p0, Landroid/text/BoringLayout;->mDesc:I

    goto :goto_2

    .line 214
    :cond_4
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v2

    .line 215
    .local v2, "line":Landroid/text/TextLine;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 216
    sget-object v8, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 215
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 216
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p2

    move-object v4, p1

    .line 215
    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 217
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    int-to-float v3, v3

    iput v3, p0, Landroid/text/BoringLayout;->mMax:F

    .line 218
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto :goto_3
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includepad"    # Z

    .prologue
    .line 77
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 80
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 85
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 84
    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 86
    return-object p0
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includepad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    .prologue
    .line 103
    if-eqz p9, :cond_0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p9

    if-ne v0, v1, :cond_1

    .line 104
    :cond_0
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 107
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 108
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 109
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 110
    const/4 v10, 0x1

    .line 121
    .local v10, "trust":Z
    :goto_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    .line 123
    return-object p0

    .line 112
    .end local v10    # "trust":Z
    :cond_1
    move/from16 v0, p10

    int-to-float v3, v0

    .line 113
    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p9

    move-object v6, p0

    .line 112
    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 117
    move/from16 v0, p10

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 118
    const/4 v10, 0x0

    .restart local v10    # "trust":Z
    goto :goto_0
.end method
