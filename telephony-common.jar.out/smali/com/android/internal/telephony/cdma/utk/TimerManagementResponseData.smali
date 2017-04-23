.class Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;
.super Lcom/android/internal/telephony/cdma/utk/ResponseData;
.source "ResponseData.java"


# instance fields
.field timerId:I

.field timerValue:[B


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;-><init>()V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;->timerValue:[B

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " TimerManagementResponseData timer id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;->timerId:I

    .line 303
    return-void
.end method

.method constructor <init>(IJ)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "remain"    # J

    .prologue
    const-wide/16 v10, 0xe10

    const-wide/16 v8, 0x3c

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 276
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;-><init>()V

    .line 274
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;->timerValue:[B

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " TimerManagementResponseData timer id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " remain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;->timerId:I

    .line 281
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 282
    .local v0, "digit":[B
    div-long v2, p2, v10

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 283
    rem-long/2addr p2, v10

    .line 284
    div-long v2, p2, v8

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 285
    rem-long v2, p2, v8

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 287
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->digitTobcd([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;->timerValue:[B

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " digit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " convert to bcd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;->timerValue:[B

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method constructor <init>(I[B)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "bcdData"    # [B

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 292
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;-><init>()V

    .line 274
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;->timerValue:[B

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " TimerManagementResponseData timer id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    const-string/jumbo v1, " bcd="

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;->timerId:I

    .line 297
    if-eqz p2, :cond_0

    array-length v0, p2

    if-ne v0, v2, :cond_0

    .line 298
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;->timerValue:[B

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;->timerValue:[B

    invoke-static {p2, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 292
    :cond_0
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v2, 0x3

    .line 310
    if-nez p1, :cond_0

    .line 311
    return-void

    .line 315
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TIMER_IDENTIFIER:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 316
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 317
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;->timerId:I

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;->timerValue:[B

    if-eqz v0, :cond_1

    .line 321
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TIMER_VALUE:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 322
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/TimerManagementResponseData;->timerValue:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 309
    :cond_1
    return-void
.end method
