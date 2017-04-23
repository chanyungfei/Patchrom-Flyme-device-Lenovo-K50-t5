.class public Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;
.super Ljava/lang/Object;
.source "FormatUtils.java"


# static fields
.field public static final BIT16_BIT_SIZE:I = 0x10

.field public static final BIT16_SIZE:I = 0x2

.field public static final BIT24_BIT_SIZE:I = 0x18

.field public static final BIT24_SIZE:I = 0x3

.field public static final BIT2_BIT_SIZE:I = 0x2

.field public static final BIT2_SIZE:I = 0x1

.field public static final BIT32_BIT_SIZE:I = 0x20

.field public static final BIT32_SIZE:I = 0x4

.field public static final BIT4_BIT_SIZE:I = 0x4

.field public static final BIT4_SIZE:I = 0x1

.field public static final BIT8_BIT_SIZE:I = 0x8

.field public static final BIT8_SIZE:I = 0x1

.field public static final BOOLEAN_BIT_SIZE:I = 0x1

.field public static final BOOLEAN_SIZE:I = 0x1

.field private static final DBG:Z = true

.field public static final FIRST_RESERVED_VALUE:I = 0x7ffffe

.field public static final FLOAT32_BIT_SIZE:I = 0x20

.field public static final FLOAT32_SIZE:I = 0x4

.field public static final FLOAT64_BIT_SIZE:I = 0x40

.field public static final FLOAT64_SIZE:I = 0x8

.field public static final FLOAT_BIT_SIZE:I = 0x20

.field public static final FLOAT_EXPONENT_MAX:I = 0x7f

.field public static final FLOAT_EXPONENT_MIN:I = -0x80

.field public static final FLOAT_MANTISSA_MAX:I = 0x7ffffd

.field public static final FLOAT_NAN:I = 0x7fffff

.field public static final FLOAT_NEGATIVE_INFINITY:I = 0x800002

.field public static final FLOAT_NRES:I = 0x800000

.field public static final FLOAT_POSITIVE_INFINITY:I = 0x7ffffe

.field public static final FLOAT_PRECISION:I = 0x989680

.field public static final FLOAT_RESERVED_VALUE:I = 0x800001

.field public static final FLOAT_SIZE:I = 0x4

.field public static final INFINITY:F = 512.0f

.field public static final NAN:F = 1.0f

.field public static final NIBBLE_BIT_SIZE:I = 0x4

.field public static final NIBBLE_SIZE:I = 0x1

.field static final RESERVED_FLOAT_VALUES:[F

.field public static final SFLOAT_BIT_SIZE:I = 0x10

.field public static final SFLOAT_EXPONENT_MAX:I = 0x7

.field public static final SFLOAT_EXPONENT_MIN:I = -0x8

.field public static final SFLOAT_MANTISSA_MAX:I = 0x7fd

.field public static final SFLOAT_NAN:I = 0x7ff

.field public static final SFLOAT_NEGATIVE_INFINITY:I = 0x802

.field public static final SFLOAT_NRES:I = 0x800

.field public static final SFLOAT_POSITIVE_INFINITY:I = 0x7fe

.field public static final SFLOAT_PRECISION:I = 0x989680

.field public static final SFLOAT_RESERVED_VALUE:I = 0x801

.field public static final SFLOAT_SIZE:I = 0x2

.field public static final SINT128_SIZE:I = 0x10

.field public static final SINT12_BIT_SIZE:I = 0xc

.field public static final SINT12_SIZE:I = 0x2

.field public static final SINT16_BIT_SIZE:I = 0x10

.field public static final SINT16_SIZE:I = 0x2

.field public static final SINT24_BIT_SIZE:I = 0x18

.field public static final SINT24_SIZE:I = 0x3

.field public static final SINT32_BIT_SIZE:I = 0x20

.field public static final SINT32_SIZE:I = 0x4

.field public static final SINT48_BIT_SIZE:I = 0x30

.field public static final SINT48_SIZE:I = 0x6

.field public static final SINT64_SIZE:I = 0x8

.field public static final SINT8_BIT_SIZE:I = 0x8

.field public static final SINT8_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FormatUtils"

.field public static final UINT128_SIZE:I = 0x10

.field public static final UINT12_BIT_SIZE:I = 0xc

.field public static final UINT12_SIZE:I = 0x2

.field public static final UINT16_BIT_SIZE:I = 0x10

.field public static final UINT16_SIZE:I = 0x2

.field public static final UINT24_BIT_SIZE:I = 0x18

.field public static final UINT24_SIZE:I = 0x3

.field public static final UINT32_BIT_SIZE:I = 0x20

.field public static final UINT32_SIZE:I = 0x4

.field public static final UINT40_BIT_SIZE:I = 0x28

.field public static final UINT40_SIZE:I = 0x5

.field public static final UINT48_BIT_SIZE:I = 0x30

.field public static final UINT48_SIZE:I = 0x6

.field public static final UINT64_SIZE:I = 0x8

.field public static final UINT8_BIT_SIZE:I = 0x8

.field public static final UINT8_SIZE:I = 0x1

.field public static final UTF16_STRING:Ljava/lang/String; = "UTF-16"

.field public static final UTF8_STRING:Ljava/lang/String; = "UTF-8"

.field private static final VDBG:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->RESERVED_FLOAT_VALUES:[F

    .line 48
    return-void

    .line 131
    nop

    :array_0
    .array-data 4
        0x44000000    # 512.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x3c000000    # -512.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bit8RangeCheck(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 616
    invoke-static {p0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8RangeCheck(I)Z

    move-result v0

    return v0
.end method

.method static bit8ToInt([B)I
    .locals 1
    .param p0, "value"    # [B

    .prologue
    .line 180
    invoke-static {p0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uint8ToInt([B)I

    move-result v0

    return v0
.end method

.method static floatRangeCheck(F)Z
    .locals 2
    .param p0, "value"    # F

    .prologue
    const/4 v0, 0x0

    .line 714
    const v1, -0x34fffffe    # -8388610.0f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    const v1, 0x4afffffc    # 8388606.0f

    cmpg-float v1, p0, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static floatToFloat([B)F
    .locals 10
    .param p0, "value"    # [B

    .prologue
    const v5, 0x7ffffe

    .line 559
    const/4 v3, 0x0

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 560
    const/4 v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    .line 559
    add-int/2addr v3, v4

    .line 561
    const/4 v4, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    .line 559
    add-int v1, v3, v4

    .line 562
    .local v1, "mantissa":I
    const/4 v3, 0x3

    aget-byte v0, p0, v3

    .line 564
    .local v0, "expoent":I
    if-lt v1, v5, :cond_0

    .line 565
    const v3, 0x800002

    if-gt v1, v3, :cond_0

    .line 566
    sget-object v3, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->RESERVED_FLOAT_VALUES:[F

    sub-int v4, v1, v5

    aget v2, v3, v4

    .line 574
    .local v2, "result":F
    :goto_0
    return v2

    .line 568
    .end local v2    # "result":F
    :cond_0
    const/high16 v3, 0x800000

    if-lt v1, v3, :cond_1

    .line 569
    const/high16 v3, 0x1000000

    sub-int/2addr v3, v1

    neg-int v1, v3

    .line 571
    :cond_1
    int-to-double v4, v1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    int-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v2, v4

    .restart local v2    # "result":F
    goto :goto_0
.end method

.method static floatToFloat(F)[B
    .locals 22
    .param p0, "value"    # F

    .prologue
    .line 578
    const/4 v15, 0x4

    new-array v9, v15, [B

    .line 579
    .local v9, "result":[B
    const/4 v15, 0x0

    cmpl-float v15, p0, v15

    if-lez v15, :cond_0

    const/4 v14, 0x1

    .line 580
    .local v14, "signed":Z
    :goto_0
    invoke-static/range {p0 .. p0}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v6, v15

    .line 581
    .local v6, "mantissa":D
    const/4 v2, 0x0

    .line 584
    .local v2, "exponent":I
    const-wide v18, 0x416312d000000000L    # 1.0E7

    mul-double v18, v18, v6

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v16, v0

    .line 585
    .local v16, "smantissa":D
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    const-wide/32 v20, 0x989680

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-double v12, v0

    .line 586
    .local v12, "rmantissa":D
    sub-double v18, v16, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    .line 587
    .local v10, "mdiff":D
    :goto_1
    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    cmpl-double v15, v10, v18

    if-lez v15, :cond_1

    const/16 v15, -0x80

    if-le v2, v15, :cond_1

    .line 588
    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    mul-double v18, v18, v6

    const-wide v20, 0x415fffff40000000L    # 8388605.0

    cmpg-double v15, v18, v20

    if-gtz v15, :cond_1

    .line 589
    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    mul-double v6, v6, v18

    .line 590
    add-int/lit8 v2, v2, -0x1

    .line 591
    const-wide v18, 0x416312d000000000L    # 1.0E7

    mul-double v18, v18, v6

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v16, v0

    .line 592
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    const-wide/32 v20, 0x989680

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-double v12, v0

    .line 593
    sub-double v18, v16, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    goto :goto_1

    .line 579
    .end local v2    # "exponent":I
    .end local v6    # "mantissa":D
    .end local v10    # "mdiff":D
    .end local v12    # "rmantissa":D
    .end local v14    # "signed":Z
    .end local v16    # "smantissa":D
    :cond_0
    const/4 v14, 0x0

    .restart local v14    # "signed":Z
    goto :goto_0

    .line 597
    .restart local v2    # "exponent":I
    .restart local v6    # "mantissa":D
    .restart local v10    # "mdiff":D
    .restart local v12    # "rmantissa":D
    .restart local v16    # "smantissa":D
    :cond_1
    if-eqz v14, :cond_2

    const/4 v15, 0x1

    :goto_2
    int-to-double v0, v15

    move-wide/from16 v18, v0

    mul-double v18, v18, v6

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v5, v0

    .line 599
    .local v5, "intMantissa":I
    const/4 v15, 0x4

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 601
    .local v8, "mantissaByte":[B
    const/4 v15, 0x4

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 603
    .local v3, "exponentByte":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    const/4 v15, 0x3

    if-ge v4, v15, :cond_3

    .line 604
    array-length v15, v8

    sub-int/2addr v15, v4

    add-int/lit8 v15, v15, -0x1

    aget-byte v15, v8, v15

    aput-byte v15, v9, v4

    .line 603
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 597
    .end local v3    # "exponentByte":[B
    .end local v4    # "i":I
    .end local v5    # "intMantissa":I
    .end local v8    # "mantissaByte":[B
    :cond_2
    const/4 v15, -0x1

    goto :goto_2

    .line 607
    .restart local v3    # "exponentByte":[B
    .restart local v4    # "i":I
    .restart local v5    # "intMantissa":I
    .restart local v8    # "mantissaByte":[B
    :cond_3
    const/4 v15, 0x3

    aget-byte v15, v3, v15

    const/16 v18, 0x3

    aput-byte v15, v9, v18

    .line 609
    return-object v9
.end method

.method static floatToSfloat(F)[B
    .locals 18
    .param p0, "value"    # F

    .prologue
    .line 524
    const/4 v14, 0x2

    new-array v8, v14, [B

    .line 525
    .local v8, "result":[B
    const/4 v14, 0x0

    cmpl-float v14, p0, v14

    if-lez v14, :cond_0

    const/4 v9, 0x1

    .line 526
    .local v9, "signed":Z
    :goto_0
    invoke-static/range {p0 .. p0}, Ljava/lang/Math;->abs(F)F

    move-result v14

    float-to-double v4, v14

    .line 527
    .local v4, "mantissa":D
    const/4 v0, 0x0

    .line 530
    .local v0, "exponent":I
    const-wide v14, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-double v12, v14

    .line 531
    .local v12, "smantissa":D
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    const-wide/32 v16, 0x989680

    mul-long v14, v14, v16

    long-to-double v10, v14

    .line 532
    .local v10, "rmantissa":D
    sub-double v14, v12, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 533
    .local v6, "mdiff":D
    :goto_1
    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    cmpl-double v14, v6, v14

    if-lez v14, :cond_1

    const/4 v14, -0x8

    if-le v0, v14, :cond_1

    .line 534
    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double/2addr v14, v4

    const-wide v16, 0x409ff40000000000L    # 2045.0

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_1

    .line 535
    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v14

    .line 536
    add-int/lit8 v0, v0, -0x1

    .line 537
    const-wide v14, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-double v12, v14

    .line 538
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    const-wide/32 v16, 0x989680

    mul-long v14, v14, v16

    long-to-double v10, v14

    .line 539
    sub-double v14, v12, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    goto :goto_1

    .line 525
    .end local v0    # "exponent":I
    .end local v4    # "mantissa":D
    .end local v6    # "mdiff":D
    .end local v9    # "signed":Z
    .end local v10    # "rmantissa":D
    .end local v12    # "smantissa":D
    :cond_0
    const/4 v9, 0x0

    .restart local v9    # "signed":Z
    goto :goto_0

    .line 543
    .restart local v0    # "exponent":I
    .restart local v4    # "mantissa":D
    .restart local v6    # "mdiff":D
    .restart local v10    # "rmantissa":D
    .restart local v12    # "smantissa":D
    :cond_1
    if-eqz v9, :cond_2

    const/4 v14, 0x1

    :goto_2
    int-to-double v14, v14

    mul-double/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v2, v14

    .line 545
    .local v2, "intMantissa":I
    const/4 v14, 0x4

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 547
    .local v3, "mantissaByte":[B
    const/4 v14, 0x4

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 549
    .local v1, "exponentByte":[B
    const/4 v14, 0x3

    aget-byte v14, v3, v14

    const/4 v15, 0x0

    aput-byte v14, v8, v15

    .line 552
    const/4 v14, 0x2

    aget-byte v14, v3, v14

    const/4 v15, 0x3

    aget-byte v15, v1, v15

    and-int/lit8 v15, v15, 0xf

    shl-int/lit8 v15, v15, 0x4

    or-int/2addr v14, v15

    int-to-byte v14, v14

    const/4 v15, 0x1

    aput-byte v14, v8, v15

    .line 554
    return-object v8

    .line 543
    .end local v1    # "exponentByte":[B
    .end local v2    # "intMantissa":I
    .end local v3    # "mantissaByte":[B
    :cond_2
    const/4 v14, -0x1

    goto :goto_2
.end method

.method static intToBit8(I)[B
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 187
    invoke-static {p0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint8(I)[B

    move-result-object v0

    return-object v0
.end method

.method private static intToSignedBits(II)I
    .locals 3
    .param p0, "i"    # I
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x1

    .line 732
    if-gez p0, :cond_0

    .line 733
    add-int/lit8 v0, p1, -0x1

    shl-int v0, v2, v0

    add-int/lit8 v1, p1, -0x1

    shl-int v1, v2, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p0

    add-int p0, v0, v1

    .line 735
    :cond_0
    return p0
.end method

.method private static intToSint(II)[B
    .locals 5
    .param p0, "value"    # I
    .param p1, "sintSize"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 443
    add-int/lit8 v1, p1, 0x7

    div-int/lit8 v1, v1, 0x8

    new-array v0, v1, [B

    .line 445
    .local v0, "rt":[B
    sparse-switch p1, :sswitch_data_0

    .line 474
    const-string/jumbo v1, "FormatUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Impossible case!! intToSint("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_0
    return-object v0

    .line 447
    :sswitch_0
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSignedBits(II)I

    move-result p0

    .line 448
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_0

    .line 451
    :sswitch_1
    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSignedBits(II)I

    move-result p0

    .line 452
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 453
    shr-int/lit8 v1, p0, 0x8

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    goto :goto_0

    .line 456
    :sswitch_2
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSignedBits(II)I

    move-result p0

    .line 457
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 458
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    goto :goto_0

    .line 461
    :sswitch_3
    const/16 v1, 0x18

    invoke-static {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSignedBits(II)I

    move-result p0

    .line 462
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 463
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 464
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    goto :goto_0

    .line 467
    :sswitch_4
    const/16 v1, 0x20

    invoke-static {p0, v1}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSignedBits(II)I

    move-result p0

    .line 468
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 469
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 470
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 471
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    goto :goto_0

    .line 445
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xc -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method static intToSint12(I)[B
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 385
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSint(II)[B

    move-result-object v0

    return-object v0
.end method

.method static intToSint16(I)[B
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 393
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSint(II)[B

    move-result-object v0

    return-object v0
.end method

.method static intToSint24(I)[B
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 401
    const/16 v0, 0x18

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSint(II)[B

    move-result-object v0

    return-object v0
.end method

.method static intToSint32(I)[B
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 409
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSint(II)[B

    move-result-object v0

    return-object v0
.end method

.method static intToSint8(I)[B
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 377
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToSint(II)[B

    move-result-object v0

    return-object v0
.end method

.method private static intToUint(II)[B
    .locals 4
    .param p0, "value"    # I
    .param p1, "uintSize"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 251
    add-int/lit8 v1, p1, 0x7

    div-int/lit8 v1, v1, 0x8

    new-array v0, v1, [B

    .line 253
    .local v0, "rt":[B
    sparse-switch p1, :sswitch_data_0

    .line 271
    const-string/jumbo v1, "FormatUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Impossible case!! intToUint("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_0
    return-object v0

    .line 255
    :sswitch_0
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_0

    .line 258
    :sswitch_1
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 259
    shr-int/lit8 v1, p0, 0x8

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    goto :goto_0

    .line 262
    :sswitch_2
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 263
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    goto :goto_0

    .line 266
    :sswitch_3
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 267
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 268
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    goto :goto_0

    .line 253
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xc -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method static intToUint12(I)[B
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 208
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint(II)[B

    move-result-object v0

    return-object v0
.end method

.method static intToUint16(I)[B
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 216
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint(II)[B

    move-result-object v0

    return-object v0
.end method

.method static intToUint24(I)[B
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 224
    const/16 v0, 0x18

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint(II)[B

    move-result-object v0

    return-object v0
.end method

.method static intToUint8(I)[B
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 200
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->intToUint(II)[B

    move-result-object v0

    return-object v0
.end method

.method private static longToUint(JI)[B
    .locals 10
    .param p0, "value"    # J
    .param p2, "uintSize"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0xff

    .line 334
    add-int/lit8 v1, p2, 0x7

    div-int/lit8 v1, v1, 0x8

    new-array v0, v1, [B

    .line 336
    .local v0, "rt":[B
    sparse-switch p2, :sswitch_data_0

    .line 359
    const-string/jumbo v1, "FormatUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Impossible case!! intToUint("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_0
    return-object v0

    .line 338
    :sswitch_0
    and-long v2, p0, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 339
    const/16 v1, 0x8

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 340
    const/16 v1, 0x10

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    .line 341
    const/16 v1, 0x18

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v9

    goto :goto_0

    .line 344
    :sswitch_1
    and-long v2, p0, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 345
    const/16 v1, 0x8

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 346
    const/16 v1, 0x10

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    .line 347
    const/16 v1, 0x18

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v9

    .line 348
    const/16 v1, 0x20

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    goto :goto_0

    .line 351
    :sswitch_2
    and-long v2, p0, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 352
    const/16 v1, 0x8

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 353
    const/16 v1, 0x10

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    .line 354
    const/16 v1, 0x18

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v9

    .line 355
    const/16 v1, 0x20

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 356
    const/16 v1, 0x28

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    goto/16 :goto_0

    .line 336
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x28 -> :sswitch_1
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method static longToUint32(J)[B
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 289
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->longToUint(JI)[B

    move-result-object v0

    return-object v0
.end method

.method static longToUint40(J)[B
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 297
    const/16 v0, 0x28

    invoke-static {p0, p1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->longToUint(JI)[B

    move-result-object v0

    return-object v0
.end method

.method static longToUint48(J)[B
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 305
    const/16 v0, 0x30

    invoke-static {p0, p1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->longToUint(JI)[B

    move-result-object v0

    return-object v0
.end method

.method static sfloatRangeCheck(F)Z
    .locals 2
    .param p0, "value"    # F

    .prologue
    const/4 v0, 0x0

    .line 707
    const v1, -0x3affe000    # -2050.0f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    const v1, 0x44ffc000    # 2046.0f

    cmpg-float v1, p0, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static sfloatToFloat([B)F
    .locals 10
    .param p0, "value"    # [B

    .prologue
    const/4 v5, 0x1

    .line 515
    const/4 v3, 0x0

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 516
    aget-byte v4, p0, v5

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x8

    .line 515
    add-int v1, v3, v4

    .line 517
    .local v1, "mantissa":I
    aget-byte v3, p0, v5

    invoke-static {v3}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->unsignedByteToInt(B)I

    move-result v3

    shr-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->unsignedToSigned(II)I

    move-result v0

    .line 519
    .local v0, "exponent":I
    int-to-double v4, v1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    int-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v2, v4

    .line 520
    .local v2, "result":F
    return v2
.end method

.method static sint12RangeCheck(I)Z
    .locals 2
    .param p0, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 679
    const/16 v1, -0x800

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7ff

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static sint12ToInt([B)I
    .locals 1
    .param p0, "value"    # [B

    .prologue
    .line 381
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sintToInt([BI)I

    move-result v0

    return v0
.end method

.method static sint16RangeCheck(I)Z
    .locals 2
    .param p0, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 686
    const/16 v1, -0x8000

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7fff

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static sint16ToInt([B)I
    .locals 1
    .param p0, "value"    # [B

    .prologue
    .line 389
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sintToInt([BI)I

    move-result v0

    return v0
.end method

.method static sint24RangeCheck(I)Z
    .locals 2
    .param p0, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 693
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    if-lt p0, v1, :cond_0

    const v1, 0x7fffff

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static sint24ToInt([B)I
    .locals 1
    .param p0, "value"    # [B

    .prologue
    .line 397
    const/16 v0, 0x18

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sintToInt([BI)I

    move-result v0

    return v0
.end method

.method static sint32RangeCheck(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 700
    const/4 v0, 0x1

    return v0
.end method

.method static sint32ToInt([B)I
    .locals 1
    .param p0, "value"    # [B

    .prologue
    .line 405
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sintToInt([BI)I

    move-result v0

    return v0
.end method

.method static sint8RangeCheck(I)Z
    .locals 2
    .param p0, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 672
    const/16 v1, -0x80

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7f

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static sint8ToInt([B)I
    .locals 1
    .param p0, "value"    # [B

    .prologue
    .line 373
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->sintToInt([BI)I

    move-result v0

    return v0
.end method

.method private static sintToInt([BI)I
    .locals 4
    .param p0, "value"    # [B
    .param p1, "sintSize"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "rt":I
    sparse-switch p1, :sswitch_data_0

    .line 435
    const-string/jumbo v1, "FormatUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Impossible case!! sintToInt(), sintSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :goto_0
    return v0

    .line 416
    :sswitch_0
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->unsignedToSigned(II)I

    move-result v0

    goto :goto_0

    .line 419
    :sswitch_1
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 420
    const/16 v2, 0xc

    .line 419
    invoke-static {v1, v2}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->unsignedToSigned(II)I

    move-result v0

    goto :goto_0

    .line 423
    :sswitch_2
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 424
    const/16 v2, 0x10

    .line 423
    invoke-static {v1, v2}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->unsignedToSigned(II)I

    move-result v0

    goto :goto_0

    .line 427
    :sswitch_3
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 428
    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 427
    add-int/2addr v1, v2

    .line 428
    const/16 v2, 0x18

    .line 427
    invoke-static {v1, v2}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->unsignedToSigned(II)I

    move-result v0

    goto :goto_0

    .line 431
    :sswitch_4
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 432
    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 431
    add-int/2addr v1, v2

    .line 432
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 431
    add-int/2addr v1, v2

    .line 432
    const/16 v2, 0x20

    .line 431
    invoke-static {v1, v2}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->unsignedToSigned(II)I

    move-result v0

    goto :goto_0

    .line 414
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xc -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method static stringToUtf16s(Ljava/lang/String;)[B
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 505
    if-nez p0, :cond_0

    .line 506
    const-string/jumbo v0, ""

    .line 507
    .local v0, "sr":Ljava/lang/String;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1

    .line 509
    .end local v0    # "sr":Ljava/lang/String;
    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method static stringToUtf8s(Ljava/lang/String;)[B
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 492
    if-nez p0, :cond_0

    .line 493
    const-string/jumbo v0, ""

    .line 494
    .local v0, "sr":Ljava/lang/String;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1

    .line 496
    .end local v0    # "sr":Ljava/lang/String;
    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "value"    # [B

    .prologue
    .line 752
    if-nez p0, :cond_0

    .line 753
    const-string/jumbo v2, "[ null ]"

    return-object v2

    .line 757
    :cond_0
    const-string/jumbo v1, "[ "

    .line 758
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%02X "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 761
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], Length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 763
    return-object v1
.end method

.method static uint12RangeCheck(I)Z
    .locals 2
    .param p0, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 630
    if-ltz p0, :cond_0

    const/16 v1, 0xfff

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static uint12ToInt([B)I
    .locals 1
    .param p0, "value"    # [B

    .prologue
    .line 204
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uintToInt([BI)I

    move-result v0

    return v0
.end method

.method static uint16RangeCheck(I)Z
    .locals 2
    .param p0, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 637
    if-ltz p0, :cond_0

    const v1, 0xffff

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static uint16ToInt([B)I
    .locals 1
    .param p0, "value"    # [B

    .prologue
    .line 212
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uintToInt([BI)I

    move-result v0

    return v0
.end method

.method static uint24RangeCheck(I)Z
    .locals 2
    .param p0, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 644
    if-ltz p0, :cond_0

    const v1, 0xffffff

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static uint24ToInt([B)I
    .locals 1
    .param p0, "value"    # [B

    .prologue
    .line 220
    const/16 v0, 0x18

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uintToInt([BI)I

    move-result v0

    return v0
.end method

.method static uint32RangeCheck(J)Z
    .locals 4
    .param p0, "value"    # J

    .prologue
    const/4 v0, 0x0

    .line 651
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    const-wide v2, 0xffffffffL

    cmp-long v1, p0, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static uint32ToLong([B)J
    .locals 2
    .param p0, "value"    # [B

    .prologue
    .line 285
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uintToLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static uint40RangeCheck(J)Z
    .locals 4
    .param p0, "value"    # J

    .prologue
    const/4 v0, 0x0

    .line 658
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    const-wide v2, 0xffffffffffL

    cmp-long v1, p0, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static uint40ToLong([B)J
    .locals 2
    .param p0, "value"    # [B

    .prologue
    .line 293
    const/16 v0, 0x28

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uintToLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static uint48RangeCheck(J)Z
    .locals 4
    .param p0, "value"    # J

    .prologue
    const/4 v0, 0x0

    .line 665
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    const-wide v2, 0xffffffffffffL

    cmp-long v1, p0, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static uint48ToLong([B)J
    .locals 2
    .param p0, "value"    # [B

    .prologue
    .line 301
    const/16 v0, 0x30

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uintToLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static uint8RangeCheck(I)Z
    .locals 2
    .param p0, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 623
    if-ltz p0, :cond_0

    const/16 v1, 0xff

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static uint8ToInt([B)I
    .locals 1
    .param p0, "value"    # [B

    .prologue
    .line 196
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/FormatUtils;->uintToInt([BI)I

    move-result v0

    return v0
.end method

.method private static uintToInt([BI)I
    .locals 4
    .param p0, "value"    # [B
    .param p1, "uintSize"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "rt":I
    sparse-switch p1, :sswitch_data_0

    .line 243
    const-string/jumbo v1, "FormatUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Impossible case!! uintToInt(), uintSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return v0

    .line 231
    :sswitch_0
    aget-byte v1, p0, v1

    and-int/lit16 v0, v1, 0xff

    .line 232
    goto :goto_0

    .line 234
    :sswitch_1
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x8

    add-int v0, v1, v2

    .line 235
    goto :goto_0

    .line 237
    :sswitch_2
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int v0, v1, v2

    .line 238
    goto :goto_0

    .line 240
    :sswitch_3
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int v0, v1, v2

    .line 241
    goto :goto_0

    .line 229
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xc -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method private static uintToLong([BI)J
    .locals 11
    .param p0, "value"    # [B
    .param p1, "uintSize"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-wide/16 v8, 0xff

    .line 309
    const-wide/16 v0, 0x0

    .line 310
    .local v0, "rt":J
    sparse-switch p1, :sswitch_data_0

    .line 326
    const-string/jumbo v2, "FormatUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Impossible case!! uintToLong(), uintSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_0
    return-wide v0

    .line 312
    :sswitch_0
    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 313
    aget-byte v4, p0, v7

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    .line 312
    add-long/2addr v2, v4

    .line 313
    aget-byte v4, p0, v10

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    .line 312
    add-long v0, v2, v4

    .line 314
    goto :goto_0

    .line 316
    :sswitch_1
    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 317
    aget-byte v4, p0, v7

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    .line 316
    add-long/2addr v2, v4

    .line 317
    aget-byte v4, p0, v10

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    .line 316
    add-long/2addr v2, v4

    .line 318
    const/4 v4, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    .line 316
    add-long v0, v2, v4

    .line 319
    goto :goto_0

    .line 321
    :sswitch_2
    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 322
    aget-byte v4, p0, v7

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    .line 321
    add-long/2addr v2, v4

    .line 322
    aget-byte v4, p0, v10

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    .line 321
    add-long/2addr v2, v4

    .line 323
    const/4 v4, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    .line 321
    add-long/2addr v2, v4

    .line 323
    const/4 v4, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    .line 321
    add-long v0, v2, v4

    .line 324
    goto :goto_0

    .line 310
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x28 -> :sswitch_1
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method private static unsignedByteToInt(B)I
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 742
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method private static unsignedToSigned(II)I
    .locals 3
    .param p0, "unsigned"    # I
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x1

    .line 722
    add-int/lit8 v0, p1, -0x1

    shl-int v0, v2, v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 723
    add-int/lit8 v0, p1, -0x1

    shl-int v0, v2, v0

    add-int/lit8 v1, p1, -0x1

    shl-int v1, v2, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p0

    sub-int/2addr v0, v1

    mul-int/lit8 p0, v0, -0x1

    .line 725
    :cond_0
    return p0
.end method

.method static utf16sToString([B)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # [B

    .prologue
    .line 501
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method static utf8sToString([B)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # [B

    .prologue
    .line 488
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static uuid16ToUuid128(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-0000-1000-8000-00805F9B34FB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uuid32ToUuid128(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-0000-1000-8000-00805F9B34FB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
