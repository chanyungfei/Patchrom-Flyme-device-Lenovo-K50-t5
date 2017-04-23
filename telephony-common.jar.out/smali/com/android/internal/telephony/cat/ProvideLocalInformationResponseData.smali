.class Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private day:I

.field private hour:I

.field private language:[B

.field private mIsDate:Z

.field private mIsLanguage:Z

.field private minute:I

.field private month:I

.field private second:I

.field private timezone:I

.field private year:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "timezone"    # I

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 308
    iput p1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->year:I

    .line 309
    iput p2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->month:I

    .line 310
    iput p3, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->day:I

    .line 311
    iput p4, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->hour:I

    .line 312
    iput p5, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->minute:I

    .line 313
    iput p6, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->second:I

    .line 314
    iput p7, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->timezone:I

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsDate:Z

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsLanguage:Z

    .line 306
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "language"    # [B

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 321
    iput-object p1, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->language:[B

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsDate:Z

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsLanguage:Z

    .line 319
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 328
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsDate:Z

    if-eqz v2, :cond_1

    .line 330
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DATE_TIME_AND_TIMEZONE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v1, v2, 0x80

    .line 332
    .local v1, "tag":I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 333
    const/4 v2, 0x7

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 334
    iget v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->year:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 335
    iget v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->month:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 336
    iget v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->day:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 337
    iget v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->hour:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 338
    iget v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->minute:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 339
    iget v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->second:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 340
    iget v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->timezone:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 327
    .end local v1    # "tag":I
    :cond_0
    return-void

    .line 342
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->mIsLanguage:Z

    if-eqz v2, :cond_0

    .line 344
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v1, v2, 0x80

    .line 346
    .restart local v1    # "tag":I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 347
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 348
    iget-object v3, p0, Lcom/android/internal/telephony/cat/ProvideLocalInformationResponseData;->language:[B

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v0, v3, v2

    .line 349
    .local v0, "b":B
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
