.class public Lcom/mediatek/archHelper/ElfUtil;
.super Ljava/lang/Object;
.source "ElfUtil.java"


# static fields
.field public static final DEBUG:Z = false

.field private static final EI_NIDENT:I = 0x10

.field public static final ELFCLASS32:I = 0x1

.field public static final ELFCLASS64:I = 0x2

.field public static final ELFDATA2LSB:I = 0x1

.field public static final ELFDATA2MSB:I = 0x2

.field public static final EM_386:I = 0x3

.field public static final EM_AARCH64:I = 0xb7

.field public static final EM_ARM:I = 0x28

.field public static final EM_MIPS:I = 0x8

.field public static final EM_QDSP6:I = 0xa4

.field public static final EM_X86_64:I = 0x3e


# instance fields
.field public final EI_CLASS:I

.field public final EI_DATA:I

.field private final TAG:Ljava/lang/String;

.field public final UNDEFINED:I

.field private mBuffer:[B

.field private mElfClass:I

.field private mEndian:I

.field private mIns:Ljava/io/InputStream;

.field private mMachine:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ElfUtil"

    .line 12
    iput-object v0, p0, Lcom/mediatek/archHelper/ElfUtil;->TAG:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/mediatek/archHelper/ElfUtil;->UNDEFINED:I

    const/4 v0, 0x4

    .line 24
    iput v0, p0, Lcom/mediatek/archHelper/ElfUtil;->EI_CLASS:I

    const/4 v0, 0x5

    .line 28
    iput v0, p0, Lcom/mediatek/archHelper/ElfUtil;->EI_DATA:I

    const/16 v0, 0x200

    .line 73
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/archHelper/ElfUtil;->mBuffer:[B

    .line 76
    iput v1, p0, Lcom/mediatek/archHelper/ElfUtil;->mElfClass:I

    .line 77
    iput v1, p0, Lcom/mediatek/archHelper/ElfUtil;->mEndian:I

    .line 78
    iput v1, p0, Lcom/mediatek/archHelper/ElfUtil;->mMachine:I

    .line 107
    iput-object p1, p0, Lcom/mediatek/archHelper/ElfUtil;->mIns:Ljava/io/InputStream;

    .line 108
    return-void
.end method

.method private readMachine()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 144
    iget-object v2, p0, Lcom/mediatek/archHelper/ElfUtil;->mIns:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/mediatek/archHelper/ElfUtil;->mBuffer:[B

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    .line 146
    iget-object v2, p0, Lcom/mediatek/archHelper/ElfUtil;->mIns:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/mediatek/archHelper/ElfUtil;->mBuffer:[B

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    .line 148
    iget v2, p0, Lcom/mediatek/archHelper/ElfUtil;->mEndian:I

    if-eq v2, v1, :cond_1

    move v1, v0

    .line 153
    :goto_0
    if-le v1, v4, :cond_2

    .line 158
    :goto_1
    int-to-long v0, v0

    return-wide v0

    .line 150
    :cond_0
    shl-int/lit8 v0, v0, 0x8

    iget-object v2, p0, Lcom/mediatek/archHelper/ElfUtil;->mBuffer:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v0

    .line 149
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v2

    :cond_1
    if-gez v1, :cond_0

    goto :goto_1

    .line 154
    :cond_2
    shl-int/lit8 v0, v0, 0x8

    iget-object v2, p0, Lcom/mediatek/archHelper/ElfUtil;->mBuffer:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v0

    .line 153
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getElfClass()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/mediatek/archHelper/ElfUtil;->mElfClass:I

    return v0
.end method

.method public getEndian()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/mediatek/archHelper/ElfUtil;->mEndian:I

    return v0
.end method

.method public getMachine()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/mediatek/archHelper/ElfUtil;->mMachine:I

    return v0
.end method

.method readElf()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/archHelper/ElfUtil;->mIns:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/mediatek/archHelper/ElfUtil;->mBuffer:[B

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 116
    iget-object v0, p0, Lcom/mediatek/archHelper/ElfUtil;->mBuffer:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    iput v0, p0, Lcom/mediatek/archHelper/ElfUtil;->mElfClass:I

    .line 117
    iget-object v0, p0, Lcom/mediatek/archHelper/ElfUtil;->mBuffer:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    iput v0, p0, Lcom/mediatek/archHelper/ElfUtil;->mEndian:I

    .line 118
    iget v0, p0, Lcom/mediatek/archHelper/ElfUtil;->mEndian:I

    if-eq v0, v4, :cond_0

    .line 123
    :cond_0
    iget v0, p0, Lcom/mediatek/archHelper/ElfUtil;->mElfClass:I

    if-eq v0, v4, :cond_2

    .line 130
    iget v0, p0, Lcom/mediatek/archHelper/ElfUtil;->mElfClass:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 139
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/archHelper/ElfUtil;->readMachine()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/mediatek/archHelper/ElfUtil;->mMachine:I

    .line 127
    iget v0, p0, Lcom/mediatek/archHelper/ElfUtil;->mMachine:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
