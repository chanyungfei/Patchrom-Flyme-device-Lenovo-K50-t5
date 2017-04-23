.class public Landroid/text/SpannableStringBuilder;
.super Ljava/lang/Object;
.source "SpannableStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;
.implements Landroid/text/Editable;
.implements Ljava/lang/Appendable;
.implements Landroid/text/GraphicsOperations;


# static fields
.field private static final END_MASK:I = 0xf

.field private static final MARK:I = 0x1

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PARAGRAPH:I = 0x3

.field private static final POINT:I = 0x2

.field private static final SPAN_ADDED:I = 0x800

.field private static final SPAN_END_AT_END:I = 0x8000

.field private static final SPAN_END_AT_START:I = 0x4000

.field private static final SPAN_START_AT_END:I = 0x2000

.field private static final SPAN_START_AT_START:I = 0x1000

.field private static final SPAN_START_END_MASK:I = 0xf000

.field private static final START_MASK:I = 0xf0

.field private static final START_SHIFT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SpannableStringBuilder"


# instance fields
.field private mFilters:[Landroid/text/InputFilter;

.field private mGapLength:I

.field private mGapStart:I

.field private mIndexOfSpan:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLowWaterMark:I

.field private mSpanCount:I

.field private mSpanEnds:[I

.field private mSpanFlags:[I

.field private mSpanMax:[I

.field private mSpanStarts:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:[C

.field private mTextWatcherDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1544
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 54
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1545
    sget-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 62
    sub-int v9, p3, p2

    .line 64
    .local v9, "srclen":I
    if-gez v9, :cond_0

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 66
    :cond_0
    invoke-static {v9}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 67
    iput v9, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 68
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    sub-int/2addr v0, v9

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 70
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 72
    iput v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 73
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 74
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 75
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 76
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 77
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    .line 79
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_7

    move-object v7, p1

    .line 80
    check-cast v7, Landroid/text/Spanned;

    .line 81
    .local v7, "sp":Landroid/text/Spanned;
    const-class v0, Ljava/lang/Object;

    invoke-interface {v7, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 83
    .local v8, "spans":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v8

    if-ge v6, v0, :cond_6

    .line 84
    aget-object v0, v8, v6

    instance-of v0, v0, Landroid/text/NoCopySpan;

    if-eqz v0, :cond_1

    .line 83
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 88
    :cond_1
    aget-object v0, v8, v6

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    sub-int v3, v0, p2

    .line 89
    .local v3, "st":I
    aget-object v0, v8, v6

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    sub-int v4, v0, p2

    .line 90
    .local v4, "en":I
    aget-object v0, v8, v6

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 92
    .local v5, "fl":I
    if-gez v3, :cond_2

    .line 93
    const/4 v3, 0x0

    .line 94
    :cond_2
    sub-int v0, p3, p2

    if-le v3, v0, :cond_3

    .line 95
    sub-int v3, p3, p2

    .line 97
    :cond_3
    if-gez v4, :cond_4

    .line 98
    const/4 v4, 0x0

    .line 99
    :cond_4
    sub-int v0, p3, p2

    if-le v4, v0, :cond_5

    .line 100
    sub-int v4, p3, p2

    .line 102
    :cond_5
    aget-object v2, v8, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    goto :goto_1

    .line 104
    .end local v3    # "st":I
    .end local v4    # "en":I
    .end local v5    # "fl":I
    :cond_6
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 61
    .end local v6    # "i":I
    .end local v7    # "sp":Landroid/text/Spanned;
    .end local v8    # "spans":[Ljava/lang/Object;
    :cond_7
    return-void
.end method

.method private calcMax(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 1479
    const/4 v0, 0x0

    .line 1480
    .local v0, "max":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 1482
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    move-result v0

    .line 1484
    :cond_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p1, v1, :cond_1

    .line 1485
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1486
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 1487
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1490
    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aput v0, v1, p1

    .line 1491
    return v0
.end method

.method private change(IILjava/lang/CharSequence;II)V
    .locals 39
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "cs"    # Ljava/lang/CharSequence;
    .param p4, "csStart"    # I
    .param p5, "csEnd"    # I

    .prologue
    .line 331
    sub-int v34, p2, p1

    .line 332
    .local v34, "replacedLength":I
    sub-int v35, p5, p4

    .line 333
    .local v35, "replacementLength":I
    sub-int v12, v35, v34

    .line 335
    .local v12, "nbNewChars":I
    const/16 v27, 0x0

    .line 336
    .local v27, "changed":Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v31, v4, -0x1

    .local v31, "i":I
    :goto_0
    if-ltz v31, :cond_c

    .line 337
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v7, v4, v31

    .line 338
    .local v7, "spanStart":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v7, v4, :cond_0

    .line 339
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v7, v4

    .line 341
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v8, v4, v31

    .line 342
    .local v8, "spanEnd":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v8, v4, :cond_1

    .line 343
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v8, v4

    .line 345
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v31

    and-int/lit8 v4, v4, 0x33

    const/16 v5, 0x33

    if-ne v4, v5, :cond_5

    .line 346
    move/from16 v33, v7

    .line 347
    .local v33, "ost":I
    move/from16 v32, v8

    .line 348
    .local v32, "oen":I
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v28

    .line 350
    .local v28, "clen":I
    move/from16 v0, p1

    if-le v7, v0, :cond_2

    move/from16 v0, p2

    if-gt v7, v0, :cond_2

    .line 351
    move/from16 v7, p2

    :goto_1
    move/from16 v0, v28

    if-ge v7, v0, :cond_2

    .line 352
    move/from16 v0, p2

    if-le v7, v0, :cond_8

    add-int/lit8 v4, v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_8

    .line 356
    :cond_2
    move/from16 v0, p1

    if-le v8, v0, :cond_3

    move/from16 v0, p2

    if-gt v8, v0, :cond_3

    .line 357
    move/from16 v8, p2

    :goto_2
    move/from16 v0, v28

    if-ge v8, v0, :cond_3

    .line 358
    move/from16 v0, p2

    if-le v8, v0, :cond_9

    add-int/lit8 v4, v8, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_9

    .line 362
    :cond_3
    move/from16 v0, v33

    if-ne v7, v0, :cond_4

    move/from16 v0, v32

    if-eq v8, v0, :cond_5

    .line 363
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v6, v4, v31

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v9, v4, v31

    const/4 v5, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 364
    const/16 v27, 0x1

    .line 368
    .end local v28    # "clen":I
    .end local v32    # "oen":I
    .end local v33    # "ost":I
    :cond_5
    const/16 v30, 0x0

    .line 369
    .local v30, "flags":I
    move/from16 v0, p1

    if-ne v7, v0, :cond_a

    const/16 v30, 0x1000

    .line 371
    :cond_6
    :goto_3
    move/from16 v0, p1

    if-ne v8, v0, :cond_b

    move/from16 v0, v30

    or-int/lit16 v0, v0, 0x4000

    move/from16 v30, v0

    .line 373
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v5, v4, v31

    or-int v5, v5, v30

    aput v5, v4, v31

    .line 336
    add-int/lit8 v31, v31, -0x1

    goto/16 :goto_0

    .line 351
    .end local v30    # "flags":I
    .restart local v28    # "clen":I
    .restart local v32    # "oen":I
    .restart local v33    # "ost":I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 357
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 370
    .end local v28    # "clen":I
    .end local v32    # "oen":I
    .end local v33    # "ost":I
    .restart local v30    # "flags":I
    :cond_a
    add-int v4, p2, v12

    if-ne v7, v4, :cond_6

    const/16 v30, 0x2000

    goto :goto_3

    .line 372
    :cond_b
    add-int v4, p2, v12

    if-ne v8, v4, :cond_7

    const v4, 0x8000

    or-int v30, v30, v4

    goto :goto_4

    .line 375
    .end local v7    # "spanStart":I
    .end local v8    # "spanEnd":I
    .end local v30    # "flags":I
    :cond_c
    if-eqz v27, :cond_d

    .line 376
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 379
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    .line 381
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-lt v12, v4, :cond_e

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v4, v4

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 385
    :cond_e
    if-nez v35, :cond_12

    const/4 v15, 0x1

    .line 388
    .local v15, "textIsRemoved":Z
    :goto_5
    if-lez v34, :cond_10

    .line 389
    :cond_f
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-lez v4, :cond_10

    .line 390
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v15, v4}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v4

    .line 389
    if-nez v4, :cond_f

    .line 396
    :cond_10
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iput v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 397
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v12

    move-object/from16 v0, p0

    iput v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 399
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_11

    .line 400
    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "mGapLength < 1"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 402
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v4, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 404
    if-lez v34, :cond_15

    .line 406
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v5, v5

    if-ne v4, v5, :cond_13

    const/4 v14, 0x1

    .line 408
    .local v14, "atEnd":Z
    :goto_6
    const/16 v31, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, v31

    if-ge v0, v4, :cond_14

    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v31

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v13, v4, 0x4

    .line 410
    .local v13, "startFlag":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v10, v5, v31

    move-object/from16 v9, p0

    move/from16 v11, p1

    invoke-direct/range {v9 .. v15}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v5

    aput v5, v4, v31

    .line 413
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v31

    and-int/lit8 v20, v4, 0xf

    .line 414
    .local v20, "endFlag":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v17, v5, v31

    move-object/from16 v16, p0

    move/from16 v18, p1

    move/from16 v19, v12

    move/from16 v21, v14

    move/from16 v22, v15

    invoke-direct/range {v16 .. v22}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v5

    aput v5, v4, v31

    .line 408
    add-int/lit8 v31, v31, 0x1

    goto :goto_7

    .line 385
    .end local v13    # "startFlag":I
    .end local v14    # "atEnd":Z
    .end local v15    # "textIsRemoved":Z
    .end local v20    # "endFlag":I
    :cond_12
    const/4 v15, 0x0

    .restart local v15    # "textIsRemoved":Z
    goto/16 :goto_5

    .line 406
    :cond_13
    const/4 v14, 0x0

    .restart local v14    # "atEnd":Z
    goto :goto_6

    .line 418
    :cond_14
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 421
    .end local v14    # "atEnd":Z
    :cond_15
    move-object/from16 v0, p3

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_1a

    move-object/from16 v36, p3

    .line 422
    check-cast v36, Landroid/text/Spanned;

    .line 423
    .local v36, "sp":Landroid/text/Spanned;
    const-class v4, Ljava/lang/Object;

    move-object/from16 v0, v36

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v37

    .line 425
    .local v37, "spans":[Ljava/lang/Object;
    const/16 v31, 0x0

    :goto_8
    move-object/from16 v0, v37

    array-length v4, v0

    move/from16 v0, v31

    if-ge v0, v4, :cond_19

    .line 426
    aget-object v4, v37, v31

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v38

    .line 427
    .local v38, "st":I
    aget-object v4, v37, v31

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v29

    .line 429
    .local v29, "en":I
    move/from16 v0, v38

    move/from16 v1, p4

    if-ge v0, v1, :cond_16

    move/from16 v38, p4

    .line 430
    :cond_16
    move/from16 v0, v29

    move/from16 v1, p5

    if-le v0, v1, :cond_17

    move/from16 v29, p5

    .line 433
    :cond_17
    aget-object v4, v37, v31

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_18

    .line 434
    aget-object v23, v37, v31

    sub-int v4, v38, p4

    add-int v24, v4, p1

    sub-int v4, v29, p4

    add-int v25, v4, p1

    .line 435
    aget-object v4, v37, v31

    move-object/from16 v0, v36

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    or-int/lit16 v0, v4, 0x800

    move/from16 v26, v0

    .line 434
    const/16 v22, 0x0

    move-object/from16 v21, p0

    invoke-direct/range {v21 .. v26}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 425
    :cond_18
    add-int/lit8 v31, v31, 0x1

    goto :goto_8

    .line 438
    .end local v29    # "en":I
    .end local v38    # "st":I
    :cond_19
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 329
    .end local v36    # "sp":Landroid/text/Spanned;
    .end local v37    # "spans":[Ljava/lang/Object;
    :cond_1a
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 4
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1100
    if-ge p3, p2, :cond_0

    .line 1101
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1102
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    .line 1101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1102
    const-string/jumbo v3, " has end before start"

    .line 1101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1105
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1107
    .local v0, "len":I
    if-gt p2, v0, :cond_1

    if-le p3, v0, :cond_2

    .line 1108
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1109
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    .line 1108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1109
    const-string/jumbo v3, " ends beyond length "

    .line 1108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1112
    :cond_2
    if-ltz p2, :cond_3

    if-gez p3, :cond_4

    .line 1113
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1114
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    .line 1113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1114
    const-string/jumbo v3, " starts before 0"

    .line 1113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1099
    :cond_4
    return-void
.end method

.method private countSpans(IILjava/lang/Class;I)I
    .locals 6
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "i"    # I

    .prologue
    .line 846
    const/4 v0, 0x0

    .line 847
    .local v0, "count":I
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_1

    .line 849
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    .line 850
    .local v1, "left":I
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v3, v5, v1

    .line 851
    .local v3, "spanMax":I
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v5, :cond_0

    .line 852
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v5

    .line 854
    :cond_0
    if-lt v3, p1, :cond_1

    .line 855
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v0

    .line 858
    .end local v1    # "left":I
    .end local v3    # "spanMax":I
    :cond_1
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v5, :cond_6

    .line 859
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v5, p4

    .line 860
    .local v4, "spanStart":I
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v5, :cond_2

    .line 861
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v5

    .line 863
    :cond_2
    if-gt v4, p2, :cond_6

    .line 864
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v5, p4

    .line 865
    .local v2, "spanEnd":I
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v5, :cond_3

    .line 866
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v5

    .line 868
    :cond_3
    if-lt v2, p1, :cond_5

    .line 869
    if-eq v4, v2, :cond_4

    if-ne p1, p2, :cond_7

    .line 871
    :cond_4
    :goto_0
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v5, v5, p4

    invoke-virtual {p3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    .line 868
    if-eqz v5, :cond_5

    .line 872
    add-int/lit8 v0, v0, 0x1

    .line 874
    :cond_5
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_6

    .line 875
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v5

    invoke-direct {p0, p1, p2, p3, v5}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v5

    add-int/2addr v0, v5

    .line 879
    .end local v2    # "spanEnd":I
    .end local v4    # "spanStart":I
    :cond_6
    return v0

    .line 870
    .restart local v2    # "spanEnd":I
    .restart local v4    # "spanStart":I
    :cond_7
    if-eq v4, p2, :cond_5

    if-eq v2, p1, :cond_5

    goto :goto_0
.end method

.method private getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;I)I
    .locals 20
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .param p4, "i"    # I
    .param p6, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;I[TT;I)I"
        }
    .end annotation

    .prologue
    .line 885
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p5, "ret":[Ljava/lang/Object;, "[TT;"
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_1

    .line 887
    invoke-static/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v6

    .line 888
    .local v6, "left":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v18, v2, v6

    .line 889
    .local v18, "spanMax":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, v18

    if-le v0, v2, :cond_0

    .line 890
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v18, v18, v2

    .line 892
    :cond_0
    move/from16 v0, v18

    move/from16 v1, p1

    if-lt v0, v1, :cond_1

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    .line 893
    invoke-direct/range {v2 .. v8}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;I)I

    move-result p6

    .line 896
    .end local v6    # "left":I
    .end local v18    # "spanMax":I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, p4

    if-lt v0, v2, :cond_2

    return p6

    .line 897
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v19, v2, p4

    .line 898
    .local v19, "spanStart":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, v19

    if-le v0, v2, :cond_3

    .line 899
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v19, v19, v2

    .line 901
    :cond_3
    move/from16 v0, v19

    move/from16 v1, p2

    if-gt v0, v1, :cond_8

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v17, v2, p4

    .line 903
    .local v17, "spanEnd":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, v17

    if-le v0, v2, :cond_4

    .line 904
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v17, v17, v2

    .line 906
    :cond_4
    move/from16 v0, v17

    move/from16 v1, p1

    if-lt v0, v1, :cond_7

    .line 907
    move/from16 v0, v19

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_9

    .line 909
    :cond_5
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, p4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    .line 906
    if-eqz v2, :cond_7

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v2, v2, p4

    const/high16 v3, 0xff0000

    and-int v16, v2, v3

    .line 911
    .local v16, "prio":I
    if-eqz v16, :cond_b

    .line 914
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    move/from16 v0, p6

    if-ge v14, v0, :cond_6

    .line 915
    aget-object v2, p5, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    const/high16 v3, 0xff0000

    and-int v15, v2, v3

    .line 917
    .local v15, "p":I
    move/from16 v0, v16

    if-le v0, v15, :cond_a

    .line 922
    .end local v15    # "p":I
    :cond_6
    add-int/lit8 v2, v14, 0x1

    sub-int v3, p6, v14

    move-object/from16 v0, p5

    move-object/from16 v1, p5

    invoke-static {v0, v14, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, p4

    aput-object v2, p5, v14

    .line 929
    .end local v14    # "j":I
    :goto_2
    add-int/lit8 p6, p6, 0x1

    .line 931
    .end local v16    # "prio":I
    :cond_7
    move-object/from16 v0, p5

    array-length v2, v0

    move/from16 v0, p6

    if-ge v0, v2, :cond_8

    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_8

    .line 932
    invoke-static/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v11

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    move/from16 v13, p6

    invoke-direct/range {v7 .. v13}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;I)I

    move-result p6

    .line 935
    .end local v17    # "spanEnd":I
    :cond_8
    return p6

    .line 908
    .restart local v17    # "spanEnd":I
    :cond_9
    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_7

    move/from16 v0, v17

    move/from16 v1, p1

    if-eq v0, v1, :cond_7

    goto :goto_0

    .line 914
    .restart local v14    # "j":I
    .restart local v15    # "p":I
    .restart local v16    # "prio":I
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 927
    .end local v14    # "j":I
    .end local v15    # "p":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, p4

    aput-object v2, p5, p6

    goto :goto_2
.end method

.method private static hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    .line 584
    instance-of v6, p0, Landroid/text/Spanned;

    if-eqz v6, :cond_1

    move-object v4, p0

    .line 585
    check-cast v4, Landroid/text/Spanned;

    .line 586
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v6, Ljava/lang/Object;

    invoke-interface {v4, p1, p1, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 587
    .local v5, "spans":[Ljava/lang/Object;
    array-length v2, v5

    .line 588
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 589
    aget-object v3, v5, v1

    .line 590
    .local v3, "span":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 591
    .local v0, "flags":I
    const/16 v6, 0x21

    if-eq v0, v6, :cond_0

    const/4 v6, 0x1

    return v6

    .line 588
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "span":Ljava/lang/Object;
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    :cond_1
    const/4 v6, 0x0

    return v6
.end method

.method private invalidateIndex(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1541
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    .line 1540
    return-void
.end method

.method private static leftChild(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 1463
    add-int/lit8 v0, p0, 0x1

    not-int v1, p0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    sub-int v0, p0, v0

    return v0
.end method

.method private moveGapTo(I)V
    .locals 12
    .param p1, "where"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 168
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne p1, v6, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ne p1, v6, :cond_5

    const/4 v0, 0x1

    .line 173
    .local v0, "atEnd":Z
    :goto_0
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge p1, v6, :cond_6

    .line 174
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, v6, p1

    .line 175
    .local v4, "overlap":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v8, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    invoke-static {v6, p1, v7, v8, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 182
    :goto_1
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz v6, :cond_c

    .line 183
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, v6, :cond_b

    .line 184
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v6, v3

    .line 185
    .local v5, "start":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v6, v3

    .line 187
    .local v1, "end":I
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_1

    .line 188
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v6

    .line 189
    :cond_1
    if-le v5, p1, :cond_7

    .line 190
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    .line 198
    :cond_2
    :goto_3
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v6, :cond_3

    .line 199
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v6

    .line 200
    :cond_3
    if-le v1, p1, :cond_9

    .line 201
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    .line 209
    :cond_4
    :goto_4
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v5, v6, v3

    .line 210
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v1, v6, v3

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 171
    .end local v0    # "atEnd":Z
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v4    # "overlap":I
    .end local v5    # "start":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "atEnd":Z
    goto :goto_0

    .line 177
    :cond_6
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, p1, v6

    .line 178
    .restart local v4    # "overlap":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v7, p1

    sub-int/2addr v7, v4

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v6, v7, v8, v9, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_1

    .line 191
    .restart local v1    # "end":I
    .restart local v3    # "i":I
    .restart local v5    # "start":I
    :cond_7
    if-ne v5, p1, :cond_2

    .line 192
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v2, v6, 0x4

    .line 194
    .local v2, "flag":I
    if-eq v2, v10, :cond_8

    if-eqz v0, :cond_2

    if-ne v2, v11, :cond_2

    .line 195
    :cond_8
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    goto :goto_3

    .line 202
    .end local v2    # "flag":I
    :cond_9
    if-ne v1, p1, :cond_4

    .line 203
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit8 v2, v6, 0xf

    .line 205
    .restart local v2    # "flag":I
    if-eq v2, v10, :cond_a

    if-eqz v0, :cond_4

    if-ne v2, v11, :cond_4

    .line 206
    :cond_a
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    goto :goto_4

    .line 212
    .end local v1    # "end":I
    .end local v2    # "flag":I
    .end local v5    # "start":I
    :cond_b
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 215
    .end local v3    # "i":I
    :cond_c
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 167
    return-void
.end method

.method private nextSpanTransitionRec(IILjava/lang/Class;I)I
    .locals 4
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "i"    # I

    .prologue
    .line 952
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    .line 954
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    .line 955
    .local v1, "left":I
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 956
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    .line 959
    .end local v1    # "left":I
    :cond_0
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v3, :cond_3

    .line 960
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v3, p4

    invoke-direct {p0, v3}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v2

    .line 961
    .local v2, "st":I
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, p4

    invoke-direct {p0, v3}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v0

    .line 962
    .local v0, "en":I
    if-le v2, p1, :cond_1

    if-ge v2, p2, :cond_1

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 963
    move p2, v2

    .line 964
    :cond_1
    if-le v0, p1, :cond_2

    if-ge v0, p2, :cond_2

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 965
    move p2, v0

    .line 966
    :cond_2
    if-ge v2, p2, :cond_3

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    .line 967
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v3

    invoke-direct {p0, p1, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    .line 971
    .end local v0    # "en":I
    .end local v2    # "st":I
    :cond_3
    return p2
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeSpan(I)V
    .locals 7
    .param p1, "i"    # I

    .prologue
    .line 476
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v4, p1

    .line 478
    .local v2, "object":Ljava/lang/Object;
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v4, p1

    .line 479
    .local v3, "start":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v4, p1

    .line 481
    .local v1, "end":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_0

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 482
    :cond_0
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v4, :cond_1

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v4

    .line 484
    :cond_1
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v5, p1, 0x1

    sub-int v0, v4, v5

    .line 485
    .local v0, "count":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 487
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 488
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 490
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 492
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 493
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 496
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 498
    invoke-direct {p0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 475
    return-void
.end method

.method private removeSpansForChange(IIZI)Z
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "textIsRemoved"    # Z
    .param p4, "i"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 305
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v1, v1, p4

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 308
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v1

    .line 307
    if-eqz v1, :cond_0

    .line 309
    return v4

    .line 312
    :cond_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v1, :cond_5

    .line 313
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v1, p4

    and-int/lit8 v1, v1, 0x21

    .line 314
    const/16 v2, 0x21

    .line 313
    if-ne v1, v2, :cond_3

    .line 315
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p4

    if-lt v1, p1, :cond_3

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p4

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 316
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, p4

    if-lt v1, p1, :cond_3

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, p4

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 318
    if-nez p3, :cond_1

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p4

    if-le v1, p1, :cond_2

    .line 319
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, p4

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-direct {p0, p4}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    .line 321
    return v4

    .line 318
    :cond_2
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, p4

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt v1, v2, :cond_1

    .line 323
    :cond_3
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p4

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    if-gt v1, p2, :cond_4

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_4

    .line 324
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v0

    .line 323
    :cond_4
    return v0

    .line 326
    :cond_5
    return v0
.end method

.method private resizeFor(I)V
    .locals 9
    .param p1, "size"    # I

    .prologue
    const/4 v8, 0x0

    .line 141
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v5, v6

    .line 142
    .local v5, "oldLength":I
    add-int/lit8 v6, p1, 0x1

    if-gt v6, v5, :cond_0

    .line 143
    return-void

    .line 146
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v4

    .line 147
    .local v4, "newText":[C
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 148
    array-length v3, v4

    .line 149
    .local v3, "newLength":I
    sub-int v1, v3, v5

    .line 150
    .local v1, "delta":I
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v6, v7

    sub-int v0, v5, v6

    .line 151
    .local v0, "after":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v7, v5, v0

    sub-int v8, v3, v0

    invoke-static {v6, v7, v4, v8, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 152
    iput-object v4, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 154
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v6, v1

    iput v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 155
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    .line 156
    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v7, "mGapLength < 1"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    :cond_1
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz v6, :cond_5

    .line 159
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v2, v6, :cond_4

    .line 160
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v6, v6, v2

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v7, :cond_2

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v7, v6, v2

    add-int/2addr v7, v1

    aput v7, v6, v2

    .line 161
    :cond_2
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v6, v2

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v7, :cond_3

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v7, v6, v2

    add-int/2addr v7, v1

    aput v7, v6, v2

    .line 159
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_4
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 140
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method private resolveGap(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 793
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p1, v0, :cond_0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr p1, v0

    .end local p1    # "i":I
    :cond_0
    return p1
.end method

.method private restoreInvariants()V
    .locals 10

    .prologue
    .line 1496
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v7, :cond_0

    return-void

    .line 1501
    :cond_0
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, v7, :cond_4

    .line 1502
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v7, v7, v3

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v9, v3, -0x1

    aget v8, v8, v9

    if-ge v7, v8, :cond_3

    .line 1503
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v5, v7, v3

    .line 1504
    .local v5, "span":Ljava/lang/Object;
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v6, v7, v3

    .line 1505
    .local v6, "start":I
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v0, v7, v3

    .line 1506
    .local v0, "end":I
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v2, v7, v3

    .line 1507
    .local v2, "flags":I
    move v4, v3

    .line 1509
    .local v4, "j":I
    :cond_1
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v9, v4, -0x1

    aget-object v8, v8, v9

    aput-object v8, v7, v4

    .line 1510
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v9, v4, -0x1

    aget v8, v8, v9

    aput v8, v7, v4

    .line 1511
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v9, v4, -0x1

    aget v8, v8, v9

    aput v8, v7, v4

    .line 1512
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v9, v4, -0x1

    aget v8, v8, v9

    aput v8, v7, v4

    .line 1513
    add-int/lit8 v4, v4, -0x1

    .line 1514
    if-lez v4, :cond_2

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v8, v4, -0x1

    aget v7, v7, v8

    if-lt v6, v7, :cond_1

    .line 1515
    :cond_2
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aput-object v5, v7, v4

    .line 1516
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v6, v7, v4

    .line 1517
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v0, v7, v4

    .line 1518
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput v2, v7, v4

    .line 1519
    invoke-direct {p0, v4}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 1501
    .end local v0    # "end":I
    .end local v2    # "flags":I
    .end local v4    # "j":I
    .end local v5    # "span":Ljava/lang/Object;
    .end local v6    # "start":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1524
    :cond_4
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 1527
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v7, :cond_5

    .line 1528
    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v7, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    .line 1530
    :cond_5
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    :goto_1
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, v7, :cond_8

    .line 1531
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1532
    .local v1, "existing":Ljava/lang/Integer;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v3, :cond_7

    .line 1533
    :cond_6
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v8, v8, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1536
    .end local v1    # "existing":Ljava/lang/Integer;
    :cond_8
    const v7, 0x7fffffff

    iput v7, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    .line 1495
    return-void
.end method

.method private static rightChild(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 1467
    add-int/lit8 v0, p0, 0x1

    not-int v1, p0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method private sendAfterTextChanged([Landroid/text/TextWatcher;)V
    .locals 3
    .param p1, "watchers"    # [Landroid/text/TextWatcher;

    .prologue
    .line 1057
    array-length v1, p1

    .line 1059
    .local v1, "n":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1060
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1061
    aget-object v2, p1, v0

    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 1060
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1063
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1056
    return-void
.end method

.method private sendBeforeTextChanged([Landroid/text/TextWatcher;III)V
    .locals 3
    .param p1, "watchers"    # [Landroid/text/TextWatcher;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 1034
    array-length v1, p1

    .line 1036
    .local v1, "n":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1037
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1038
    aget-object v2, p1, v0

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 1037
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1040
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1033
    return-void
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 4
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1067
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .line 1068
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    .line 1070
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1071
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 1070
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1066
    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "oldStart"    # I
    .param p3, "oldEnd"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 1087
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1088
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    .line 1087
    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/SpanWatcher;

    .line 1089
    .local v9, "spanWatchers":[Landroid/text/SpanWatcher;
    array-length v8, v9

    .line 1090
    .local v8, "n":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 1091
    aget-object v0, v9, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 1090
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1084
    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 4
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1076
    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    .line 1077
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    .line 1079
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1080
    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 1079
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1075
    :cond_0
    return-void
.end method

.method private sendTextChanged([Landroid/text/TextWatcher;III)V
    .locals 5
    .param p1, "watchers"    # [Landroid/text/TextWatcher;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 1044
    array-length v1, p1

    .line 1046
    .local v1, "n":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1047
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1048
    sget-boolean v2, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    .line 1049
    const-string/jumbo v2, "SpannableStringBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[sendTextChanged] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    :cond_0
    aget-object v2, p1, v0

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 1047
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1053
    :cond_1
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1043
    return-void
.end method

.method private sendToSpanWatchers(III)V
    .locals 12
    .param p1, "replaceStart"    # I
    .param p2, "replaceEnd"    # I
    .param p3, "nbNewChars"    # I

    .prologue
    const v11, 0x8000

    .line 598
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v6, v0, :cond_c

    .line 599
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v9, v0, v6

    .line 602
    .local v9, "spanFlags":I
    and-int/lit16 v0, v9, 0x800

    if-eqz v0, :cond_0

    .line 598
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 603
    :cond_0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v0, v6

    .line 604
    .local v4, "spanStart":I
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v0, v6

    .line 605
    .local v5, "spanEnd":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v0, :cond_1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v0

    .line 606
    :cond_1
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v0, :cond_2

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v0

    .line 608
    :cond_2
    add-int v7, p2, p3

    .line 609
    .local v7, "newReplaceEnd":I
    const/4 v8, 0x0

    .line 611
    .local v8, "spanChanged":Z
    move v2, v4

    .line 612
    .local v2, "previousSpanStart":I
    if-le v4, v7, :cond_6

    .line 613
    if-eqz p3, :cond_3

    .line 614
    sub-int/2addr v2, p3

    .line 615
    const/4 v8, 0x1

    .line 630
    :cond_3
    :goto_2
    move v3, v5

    .line 631
    .local v3, "previousSpanEnd":I
    if-le v5, v7, :cond_9

    .line 632
    if-eqz p3, :cond_4

    .line 633
    sub-int/2addr v3, p3

    .line 634
    const/4 v8, 0x1

    .line 647
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    .line 648
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 650
    :cond_5
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v0, v6

    const v10, -0xf001

    and-int/2addr v1, v10

    aput v1, v0, v6

    goto :goto_1

    .line 617
    .end local v3    # "previousSpanEnd":I
    :cond_6
    if-lt v4, p1, :cond_3

    .line 619
    if-ne v4, p1, :cond_7

    .line 620
    and-int/lit16 v0, v9, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_3

    .line 621
    :cond_7
    if-ne v4, v7, :cond_8

    .line 622
    and-int/lit16 v0, v9, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_3

    .line 626
    :cond_8
    const/4 v8, 0x1

    goto :goto_2

    .line 636
    .restart local v3    # "previousSpanEnd":I
    :cond_9
    if-lt v5, p1, :cond_4

    .line 638
    if-ne v5, p1, :cond_a

    .line 639
    and-int/lit16 v0, v9, 0x4000

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_4

    .line 640
    :cond_a
    if-ne v5, v7, :cond_b

    .line 641
    and-int v0, v9, v11

    if-eq v0, v11, :cond_4

    .line 643
    :cond_b
    const/4 v8, 0x1

    goto :goto_3

    .line 654
    .end local v2    # "previousSpanStart":I
    .end local v3    # "previousSpanEnd":I
    .end local v4    # "spanStart":I
    .end local v5    # "spanEnd":I
    .end local v7    # "newReplaceEnd":I
    .end local v8    # "spanChanged":Z
    .end local v9    # "spanFlags":I
    :cond_c
    const/4 v6, 0x0

    :goto_4
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v6, v0, :cond_10

    .line 655
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v9, v0, v6

    .line 656
    .restart local v9    # "spanFlags":I
    and-int/lit16 v0, v9, 0x800

    if-eqz v0, :cond_f

    .line 657
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v0, v6

    and-int/lit16 v1, v1, -0x801

    aput v1, v0, v6

    .line 658
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v0, v6

    .line 659
    .restart local v4    # "spanStart":I
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v0, v6

    .line 660
    .restart local v5    # "spanEnd":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v0, :cond_d

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v0

    .line 661
    :cond_d
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v0, :cond_e

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v0

    .line 662
    :cond_e
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v0, v0, v6

    invoke-direct {p0, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 654
    .end local v4    # "spanStart":I
    .end local v5    # "spanEnd":I
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 597
    .end local v9    # "spanFlags":I
    :cond_10
    return-void
.end method

.method private setSpan(ZLjava/lang/Object;III)V
    .locals 17
    .param p1, "send"    # Z
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "flags"    # I

    .prologue
    .line 680
    const-string/jumbo v3, "setSpan"

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 682
    move/from16 v0, p5

    and-int/lit16 v3, v0, 0xf0

    shr-int/lit8 v12, v3, 0x4

    .line 683
    .local v12, "flagsStart":I
    const/4 v3, 0x3

    if-ne v12, v3, :cond_0

    .line 684
    if-eqz p3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move/from16 v0, p3

    if-eq v0, v3, :cond_0

    .line 685
    add-int/lit8 v3, p3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    .line 687
    .local v9, "c":C
    const/16 v3, 0xa

    if-eq v9, v3, :cond_0

    .line 688
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "PARAGRAPH span must start at paragraph boundary"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 692
    .end local v9    # "c":C
    :cond_0
    and-int/lit8 v11, p5, 0xf

    .line 693
    .local v11, "flagsEnd":I
    const/4 v3, 0x3

    if-ne v11, v3, :cond_1

    .line 694
    if-eqz p4, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move/from16 v0, p4

    if-eq v0, v3, :cond_1

    .line 695
    add-int/lit8 v3, p4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    .line 697
    .restart local v9    # "c":C
    const/16 v3, 0xa

    if-eq v9, v3, :cond_1

    .line 698
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "PARAGRAPH span must end at paragraph boundary"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 703
    .end local v9    # "c":C
    :cond_1
    const/4 v3, 0x2

    if-ne v12, v3, :cond_3

    const/4 v3, 0x1

    if-ne v11, v3, :cond_3

    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_3

    .line 704
    if-eqz p1, :cond_2

    .line 705
    const-string/jumbo v3, "SpannableStringBuilder"

    const-string/jumbo v4, "SPAN_EXCLUSIVE_EXCLUSIVE spans cannot have a zero length"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_2
    return-void

    .line 713
    :cond_3
    move/from16 v7, p3

    .line 714
    .local v7, "nstart":I
    move/from16 v8, p4

    .line 716
    .local v8, "nend":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p3

    if-le v0, v3, :cond_9

    .line 717
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p3, p3, v3

    .line 723
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p4

    if-le v0, v3, :cond_b

    .line 724
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p4, p4, v3

    .line 730
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 731
    .local v10, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 733
    .local v16, "spans":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v3, :cond_d

    .line 734
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 735
    .local v14, "index":Ljava/lang/Integer;
    if-eqz v14, :cond_d

    .line 736
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 737
    .local v13, "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v3, v13

    .line 738
    .local v5, "ostart":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v3, v13

    .line 740
    .local v6, "oend":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v3, :cond_6

    .line 741
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v3

    .line 742
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v3, :cond_7

    .line 743
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v6, v3

    .line 745
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput p3, v3, v13

    .line 746
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput p4, v3, v13

    .line 747
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput p5, v3, v13

    .line 749
    if-eqz p1, :cond_8

    .line 750
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    .line 751
    invoke-direct/range {v3 .. v8}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 754
    :cond_8
    return-void

    .line 718
    .end local v5    # "ostart":I
    .end local v6    # "oend":I
    .end local v10    # "count":I
    .end local v13    # "i":I
    .end local v14    # "index":Ljava/lang/Integer;
    .end local v16    # "spans":[Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p3

    if-ne v0, v3, :cond_4

    .line 719
    const/4 v3, 0x2

    if-eq v12, v3, :cond_a

    const/4 v3, 0x3

    if-ne v12, v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_4

    .line 720
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p3, p3, v3

    goto/16 :goto_0

    .line 725
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p4

    if-ne v0, v3, :cond_5

    .line 726
    const/4 v3, 0x2

    if-eq v11, v3, :cond_c

    const/4 v3, 0x3

    if-ne v11, v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move/from16 v0, p4

    if-ne v0, v3, :cond_5

    .line 727
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p4, p4, v3

    goto/16 :goto_1

    .line 758
    .restart local v10    # "count":I
    .restart local v16    # "spans":[Ljava/lang/Object;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 759
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, p3

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, p4

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 761
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v0, p5

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 762
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 763
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 767
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v15, v3, 0x1

    .line 768
    .local v15, "sizeOfMax":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    array-length v3, v3

    if-ge v3, v15, :cond_e

    .line 769
    new-array v3, v15, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    .line 772
    :cond_e
    if-eqz p1, :cond_f

    .line 773
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 774
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v8}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 679
    :cond_f
    return-void
.end method

.method private treeRoot()I
    .locals 1

    .prologue
    .line 1458
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private updatedIntervalBound(IIIIZZ)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "start"    # I
    .param p3, "nbNewChars"    # I
    .param p4, "flag"    # I
    .param p5, "atEnd"    # Z
    .param p6, "textIsRemoved"    # Z

    .prologue
    .line 444
    if-lt p1, p2, :cond_5

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_5

    .line 445
    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    .line 450
    if-nez p6, :cond_0

    if-le p1, p2, :cond_5

    .line 451
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    return v0

    .line 454
    :cond_1
    const/4 v0, 0x3

    if-ne p4, v0, :cond_2

    .line 455
    if-eqz p5, :cond_5

    .line 456
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    return v0

    .line 462
    :cond_2
    if-nez p6, :cond_3

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v0, p3

    if-ge p1, v0, :cond_4

    .line 463
    :cond_3
    return p2

    .line 466
    :cond_4
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    return v0

    .line 471
    :cond_5
    return p1
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 109
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    .line 110
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .end local p0    # "source":Ljava/lang/CharSequence;
    return-object p0

    .line 112
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic append(C)Landroid/text/Editable;
    .locals 1
    .param p1, "text"    # C

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 293
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p1, "text"    # C

    .prologue
    .line 300
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 274
    .local v1, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .local v1, "length":I
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 295
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 287
    .local v0, "start":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 288
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 289
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "text"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .locals 4
    .param p1, "where"    # I

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 121
    .local v0, "len":I
    if-gez p1, :cond_0

    .line 122
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_0
    if-lt p1, v0, :cond_1

    .line 124
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >= length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_1
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v1, :cond_2

    .line 128
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, p1

    aget-char v1, v1, v2

    return v1

    .line 130
    :cond_2
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    aget-char v1, v1, p1

    return v1
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 246
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string/jumbo v3, ""

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 245
    return-void
.end method

.method public clearSpans()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 251
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 252
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v4, v0

    .line 253
    .local v3, "what":Ljava/lang/Object;
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v4, v0

    .line 254
    .local v2, "ostart":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v4, v0

    .line 256
    .local v1, "oend":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_0

    .line 257
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    .line 258
    :cond_0
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v4, :cond_1

    .line 259
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v4

    .line 261
    :cond_1
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 262
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aput-object v5, v4, v0

    .line 264
    invoke-direct {p0, v3, v2, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 251
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 266
    .end local v1    # "oend":I
    .end local v2    # "ostart":I
    .end local v3    # "what":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v4, :cond_3

    .line 267
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v4}, Ljava/util/IdentityHashMap;->clear()V

    .line 250
    :cond_3
    return-void
.end method

.method public bridge synthetic delete(II)Landroid/text/Editable;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 229
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public delete(II)Landroid/text/SpannableStringBuilder;
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v4, 0x0

    .line 230
    sget-boolean v0, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 231
    const-string/jumbo v0, "SpannableStringBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[delete] start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    const-string/jumbo v3, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    .line 234
    .local v6, "ret":Landroid/text/SpannableStringBuilder;
    sget-boolean v0, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v0, :cond_1

    .line 235
    const-string/jumbo v0, "SpannableStringBuilder"

    const-string/jumbo v1, "[delete] end "

    invoke-static {v0, v1}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_1
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_2

    .line 239
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 241
    :cond_2
    return-object v6
.end method

.method public drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x0

    .line 1204
    const-string/jumbo v0, "drawText"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1206
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p3, v0, :cond_0

    .line 1207
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p3, p2

    move-object v0, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1203
    :goto_0
    return-void

    .line 1208
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p2, v0, :cond_1

    .line 1209
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p2, v0

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1211
    :cond_1
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1213
    .local v1, "buf":[C
    invoke-virtual {p0, p2, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1214
    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1215
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public drawTextRun(Landroid/graphics/Canvas;IIIIFFZLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 1226
    const-string/jumbo v0, "drawTextRun"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1228
    sub-int v5, p5, p4

    .line 1229
    .local v5, "contextLen":I
    sub-int v3, p3, p2

    .line 1230
    .local v3, "len":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p5, v0, :cond_0

    .line 1231
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v0, p1

    move v2, p2

    move v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1225
    :goto_0
    return-void

    .line 1232
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p4, v0, :cond_1

    .line 1233
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p2, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v4, p4, v0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1236
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1237
    .local v1, "buf":[C
    const/4 v0, 0x0

    invoke-virtual {p0, p4, p5, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1238
    sub-int v2, p2, p4

    const/4 v4, 0x0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1239
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 1386
    instance-of v5, p1, Landroid/text/Spanned;

    if-eqz v5, :cond_7

    .line 1387
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1386
    if-eqz v5, :cond_7

    move-object v1, p1

    .line 1388
    check-cast v1, Landroid/text/Spanned;

    .line 1390
    .local v1, "other":Landroid/text/Spanned;
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 1391
    .local v3, "otherSpans":[Ljava/lang/Object;
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    array-length v6, v3

    if-ne v5, v6, :cond_7

    .line 1392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v5, :cond_6

    .line 1393
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v4, v5, v0

    .line 1394
    .local v4, "thisSpan":Ljava/lang/Object;
    aget-object v2, v3, v0

    .line 1395
    .local v2, "otherSpan":Ljava/lang/Object;
    if-ne v4, p0, :cond_3

    .line 1396
    if-ne v1, v2, :cond_0

    .line 1397
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 1400
    :cond_0
    return v7

    .line 1398
    :cond_1
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1399
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1392
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1402
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1403
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_5

    .line 1406
    :cond_4
    :goto_1
    return v7

    .line 1404
    :cond_5
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 1405
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_2

    goto :goto_1

    .line 1409
    .end local v2    # "otherSpan":Ljava/lang/Object;
    .end local v4    # "thisSpan":Ljava/lang/Object;
    :cond_6
    const/4 v5, 0x1

    return v5

    .line 1412
    .end local v0    # "i":I
    .end local v1    # "other":Landroid/text/Spanned;
    .end local v3    # "otherSpans":[Ljava/lang/Object;
    :cond_7
    return v7
.end method

.method public getChars(II[CI)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .prologue
    .line 987
    const-string/jumbo v0, "getChars"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 989
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 990
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 986
    :goto_0
    return-void

    .line 991
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    .line 992
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_0

    .line 994
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 995
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v2

    .line 996
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v2, p1

    add-int/2addr v2, p4

    .line 997
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v3, p2, v3

    .line 995
    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 3
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    const/4 v1, -0x1

    .line 811
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v2, :cond_0

    return v1

    .line 812
    :cond_0
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 813
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 3
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 821
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v2, :cond_0

    return v1

    .line 822
    :cond_0
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 823
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    goto :goto_0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 3
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    const/4 v1, -0x1

    .line 801
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v2, :cond_0

    return v1

    .line 802
    :cond_0
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 803
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 8
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 833
    if-eqz p3, :cond_0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 834
    :cond_1
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v7

    .line 835
    .local v7, "count":I
    if-nez v7, :cond_2

    .line 836
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 840
    :cond_2
    invoke-static {p3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 841
    .local v5, "ret":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;I)I

    .line 842
    return-object v5
.end method

.method public getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "contextStart"    # I
    .param p4, "contextEnd"    # I
    .param p5, "isRtl"    # Z
    .param p6, "advances"    # [F
    .param p7, "advancesPos"    # I
    .param p8, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 1300
    sub-int v5, p4, p3

    .line 1301
    .local v5, "contextLen":I
    sub-int v3, p2, p1

    .line 1303
    .local v3, "len":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 1304
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p8

    move v2, p1

    move v4, p3

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v9

    .line 1317
    .local v9, "ret":F
    :goto_0
    return v9

    .line 1306
    .end local v9    # "ret":F
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    .line 1307
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, v0

    .line 1308
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v4, p3, v0

    move-object/from16 v0, p8

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 1307
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v9

    .restart local v9    # "ret":F
    goto :goto_0

    .line 1310
    .end local v9    # "ret":F
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1311
    .local v1, "buf":[C
    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1312
    sub-int v2, p1, p3

    .line 1313
    const/4 v4, 0x0

    move-object/from16 v0, p8

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 1312
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v9

    .line 1314
    .restart local v9    # "ret":F
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .locals 8
    .param p1, "contextStart"    # I
    .param p2, "contextEnd"    # I
    .param p3, "dir"    # I
    .param p4, "offset"    # I
    .param p5, "cursorOpt"    # I
    .param p6, "p"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1351
    sub-int v3, p2, p1

    .line 1352
    .local v3, "contextLen":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 1353
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v0, p6

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v7

    .line 1366
    .local v7, "ret":I
    :goto_0
    return v7

    .line 1355
    .end local v7    # "ret":I
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    .line 1356
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, v0

    .line 1357
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v5, p4, v0

    move-object v0, p6

    move v4, p3

    move v6, p5

    .line 1356
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    .line 1357
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 1356
    sub-int v7, v0, v2

    .restart local v7    # "ret":I
    goto :goto_0

    .line 1359
    .end local v7    # "ret":I
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1360
    .local v1, "buf":[C
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1362
    sub-int v5, p4, p1

    move-object v0, p6

    move v4, p3

    move v6, p5

    .line 1361
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    add-int v7, v0, p1

    .line 1363
    .restart local v7    # "ret":I
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public getTextWatcherDepth()I
    .locals 1

    .prologue
    .line 1030
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    return v0
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "widths"    # [F
    .param p4, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 1272
    const-string/jumbo v2, "getTextWidths"

    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1276
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_0

    .line 1277
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p4, v2, p1, v3, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1288
    .local v1, "ret":I
    :goto_0
    return v1

    .line 1278
    .end local v1    # "ret":I
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v2, :cond_1

    .line 1279
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p4, v2, v3, v4, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .restart local v1    # "ret":I
    goto :goto_0

    .line 1281
    .end local v1    # "ret":I
    :cond_1
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1283
    .local v0, "buf":[C
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1284
    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v3, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1285
    .restart local v1    # "ret":I
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 1418
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1419
    .local v0, "hash":I
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int v0, v3, v4

    .line 1420
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v3, :cond_1

    .line 1421
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 1422
    .local v2, "span":Ljava/lang/Object;
    if-eq v2, p0, :cond_0

    .line 1423
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    .line 1425
    :cond_0
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 1426
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 1427
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .line 1420
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1429
    .end local v2    # "span":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;

    .prologue
    .line 224
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 219
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;

    .prologue
    .line 225
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 220
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v3, 0x0

    .line 1248
    const-string/jumbo v2, "measureText"

    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1252
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_0

    .line 1253
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p3, v2, p1, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1264
    .local v1, "ret":F
    :goto_0
    return v1

    .line 1254
    .end local v1    # "ret":F
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v2, :cond_1

    .line 1255
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p3, v2, v3, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .restart local v1    # "ret":F
    goto :goto_0

    .line 1257
    .end local v1    # "ret":F
    :cond_1
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1259
    .local v0, "buf":[C
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1260
    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v3, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1261
    .restart local v1    # "ret":F
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 1
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    .prologue
    .line 944
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_0

    return p2

    .line 945
    :cond_0
    if-nez p3, :cond_1

    .line 946
    const-class p3, Ljava/lang/Object;

    .line 948
    :cond_1
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 782
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v1, :cond_0

    return-void

    .line 783
    :cond_0
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 784
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 785
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    .line 781
    :cond_1
    return-void
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;

    .prologue
    .line 502
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;
    .param p4, "tbstart"    # I
    .param p5, "tbend"    # I

    .prologue
    .line 507
    invoke-virtual/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;

    .prologue
    .line 503
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 24
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;
    .param p4, "tbstart"    # I
    .param p5, "tbend"    # I

    .prologue
    .line 509
    const-string/jumbo v5, "replace"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 510
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_0

    .line 511
    const-string/jumbo v5, "SpannableStringBuilder"

    const-string/jumbo v6, "[replace] start"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    array-length v0, v5

    move/from16 v17, v0

    .line 514
    .local v17, "filtercount":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 515
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    aget-object v5, v5, v18

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-interface/range {v5 .. v11}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v22

    .line 517
    .local v22, "repl":Ljava/lang/CharSequence;
    if-eqz v22, :cond_1

    .line 518
    move-object/from16 p3, v22

    .line 519
    const/16 p4, 0x0

    .line 520
    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result p5

    .line 514
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 524
    .end local v22    # "repl":Ljava/lang/CharSequence;
    :cond_2
    sub-int v21, p2, p1

    .line 525
    .local v21, "origLen":I
    sub-int v19, p5, p4

    .line 527
    .local v19, "newLen":I
    if-nez v21, :cond_3

    if-nez v19, :cond_3

    invoke-static/range {p3 .. p4}, Landroid/text/SpannableStringBuilder;->hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 533
    :cond_3
    add-int v5, p1, v21

    const-class v6, Landroid/text/TextWatcher;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Landroid/text/TextWatcher;

    .line 534
    .local v23, "textWatchers":[Landroid/text/TextWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    move/from16 v3, v21

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendBeforeTextChanged([Landroid/text/TextWatcher;III)V

    .line 539
    if-eqz v21, :cond_a

    if-eqz v19, :cond_a

    const/4 v15, 0x1

    .line 540
    .local v15, "adjustSelection":Z
    :goto_1
    const/4 v8, 0x0

    .line 541
    .local v8, "selectionStart":I
    const/4 v12, 0x0

    .line 542
    .local v12, "selectionEnd":I
    if-eqz v15, :cond_4

    .line 543
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v8

    .line 544
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v12

    .line 547
    :cond_4
    invoke-direct/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)V

    .line 549
    if-eqz v15, :cond_7

    .line 550
    const/16 v16, 0x0

    .line 551
    .local v16, "changed":Z
    move/from16 v0, p1

    if-le v8, v0, :cond_5

    move/from16 v0, p2

    if-ge v8, v0, :cond_5

    .line 552
    sub-int v5, v8, p1

    mul-int v5, v5, v19

    div-int v20, v5, v21

    .line 553
    .local v20, "offset":I
    add-int v8, p1, v20

    .line 555
    const/16 v16, 0x1

    .line 556
    sget-object v7, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/4 v6, 0x0

    .line 557
    const/16 v10, 0x22

    move-object/from16 v5, p0

    move v9, v8

    .line 556
    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 559
    .end local v20    # "offset":I
    :cond_5
    move/from16 v0, p1

    if-le v12, v0, :cond_6

    move/from16 v0, p2

    if-ge v12, v0, :cond_6

    .line 560
    sub-int v5, v12, p1

    mul-int v5, v5, v19

    div-int v20, v5, v21

    .line 561
    .restart local v20    # "offset":I
    add-int v12, p1, v20

    .line 563
    const/16 v16, 0x1

    .line 564
    sget-object v11, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/4 v10, 0x0

    .line 565
    const/16 v14, 0x22

    move-object/from16 v9, p0

    move v13, v12

    .line 564
    invoke-direct/range {v9 .. v14}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 567
    .end local v20    # "offset":I
    :cond_6
    if-eqz v16, :cond_7

    .line 568
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 572
    .end local v16    # "changed":Z
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p1

    move/from16 v3, v21

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendTextChanged([Landroid/text/TextWatcher;III)V

    .line 573
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendAfterTextChanged([Landroid/text/TextWatcher;)V

    .line 576
    sub-int v5, v19, v21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->sendToSpanWatchers(III)V

    .line 577
    sget-boolean v5, Landroid/text/TextUtils;->DEBUG_LOG:Z

    if-eqz v5, :cond_8

    .line 578
    const-string/jumbo v5, "SpannableStringBuilder"

    const-string/jumbo v6, "[replace] end"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_8
    return-object p0

    .line 530
    .end local v8    # "selectionStart":I
    .end local v12    # "selectionEnd":I
    .end local v15    # "adjustSelection":Z
    .end local v23    # "textWatchers":[Landroid/text/TextWatcher;
    :cond_9
    return-object p0

    .line 539
    .restart local v23    # "textWatchers":[Landroid/text/TextWatcher;
    :cond_a
    const/4 v15, 0x0

    .restart local v15    # "adjustSelection":Z
    goto/16 :goto_1
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .prologue
    .line 1371
    if-nez p1, :cond_0

    .line 1372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1375
    :cond_0
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 1370
    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 6
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 673
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    .line 672
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 979
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1019
    sub-int v1, p2, p1

    new-array v0, v1, [C

    .line 1020
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1021
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1006
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 1007
    .local v1, "len":I
    new-array v0, v1, [C

    .line 1009
    .local v0, "buf":[C
    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1010
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
