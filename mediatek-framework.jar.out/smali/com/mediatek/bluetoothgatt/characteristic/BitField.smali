.class public Lcom/mediatek/bluetoothgatt/characteristic/BitField;
.super Ljava/util/BitSet;
.source "BitField.java"


# static fields
.field private static final MAX_BIT_FIELD_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "BitField"


# instance fields
.field private mBitCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;-><init>(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bitCount"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljava/util/BitSet;-><init>(I)V

    .line 68
    const/16 v0, 0x20

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->mBitCount:I

    .line 65
    return-void
.end method


# virtual methods
.method public getByte(I)B
    .locals 8
    .param p1, "byteIdx"    # I

    .prologue
    const/4 v7, 0x0

    .line 146
    mul-int/lit8 v1, p1, 0x8

    .line 147
    .local v1, "fromIndex":I
    mul-int/lit8 v4, p1, 0x8

    add-int/lit8 v3, v4, 0x7

    .line 149
    .local v3, "toIndex":I
    if-ltz p1, :cond_0

    iget v4, p0, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->mBitCount:I

    if-lt v1, v4, :cond_1

    .line 150
    :cond_0
    const-string/jumbo v4, "BitField"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getByte("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return v7

    .line 154
    :cond_1
    iget v4, p0, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->mBitCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "b":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-gt v2, v3, :cond_3

    .line 158
    invoke-virtual {p0, v2}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    sub-int v4, v2, v1

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v0, v4

    .line 157
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_3
    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    return v4
.end method

.method public getByteArray()[B
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->length()I

    move-result v2

    new-array v1, v2, [B

    .line 174
    .local v1, "value":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 175
    invoke-virtual {p0, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->getByte(I)B

    move-result v2

    aput-byte v2, v1, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    return-object v1
.end method

.method public getValue(II)I
    .locals 6
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 115
    or-int v3, p1, p2

    if-ltz v3, :cond_0

    if-ge p2, p1, :cond_3

    .line 116
    :cond_0
    :goto_0
    const-string/jumbo v3, "BitField"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getValue("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ");  BitCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->mBitCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    iget v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->mBitCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 121
    sub-int v3, p2, p1

    add-int/lit8 v1, v3, 0x1

    .line 122
    .local v1, "size":I
    const/4 v2, 0x0

    .line 124
    .local v2, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 125
    const/16 v3, 0x20

    if-lt v0, v3, :cond_4

    .line 136
    :cond_2
    return v2

    .line 115
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "value":I
    :cond_3
    iget v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->mBitCount:I

    if-lt p1, v3, :cond_1

    goto :goto_0

    .line 129
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    .restart local v2    # "value":I
    :cond_4
    sub-int v3, p2, v0

    invoke-virtual {p0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->get(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 130
    shl-int/lit8 v3, v2, 0x1

    or-int/lit8 v2, v3, 0x1

    .line 124
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    :cond_5
    shl-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public length()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->mBitCount:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public setByte(BI)Z
    .locals 3
    .param p1, "value"    # B
    .param p2, "byteIdx"    # I

    .prologue
    .line 189
    mul-int/lit8 v0, p2, 0x8

    .line 190
    .local v0, "fromIndex":I
    mul-int/lit8 v2, p2, 0x8

    add-int/lit8 v1, v2, 0x7

    .line 192
    .local v1, "toIndex":I
    invoke-virtual {p0, v0, v1, p1}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->setValue(III)Z

    move-result v2

    return v2
.end method

.method public setByteArray([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 202
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1, v0}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->setByte(BI)Z

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method public setValue(III)Z
    .locals 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # I

    .prologue
    const/4 v6, 0x0

    .line 84
    or-int v3, p1, p2

    if-ltz v3, :cond_0

    if-ge p2, p1, :cond_1

    .line 85
    :cond_0
    const-string/jumbo v3, "BitField"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setValue("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 86
    const-string/jumbo v5, ");  BitCount="

    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 86
    iget v5, p0, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->mBitCount:I

    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v6

    .line 84
    :cond_1
    iget v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->mBitCount:I

    if-ge p1, v3, :cond_0

    .line 90
    iget v3, p0, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->mBitCount:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 92
    sub-int v3, p2, p1

    add-int/lit8 v1, v3, 0x1

    .line 93
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 94
    shr-int v3, p3, v0

    and-int/lit8 v2, v3, 0x1

    .line 96
    .local v2, "state":I
    if-nez v2, :cond_2

    .line 97
    add-int v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->clear(I)V

    .line 93
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_2
    add-int v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/mediatek/bluetoothgatt/characteristic/BitField;->set(I)V

    goto :goto_1

    .line 103
    .end local v2    # "state":I
    :cond_3
    const/4 v3, 0x1

    return v3
.end method
