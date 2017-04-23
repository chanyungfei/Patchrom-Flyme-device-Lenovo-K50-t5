.class Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;
.super Lcom/android/internal/telephony/cdma/utk/ResponseData;
.source "ResponseData.java"


# instance fields
.field private day:I

.field private hour:I

.field private languageCode:Ljava/lang/String;

.field private mBaseID:I

.field private mBaseLAT:I

.field private mBaseLong:I

.field private mDate:Ljava/util/Date;

.field private mIMSI:I

.field private mInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

.field private mLocalInfoType:I

.field private mMCC:I

.field private mNID:I

.field private mSID:I

.field private minute:I

.field private month:I

.field private second:I

.field private tempzone:I

.field private year:I

.field private zone:I


# direct methods
.method public constructor <init>(ILcom/android/internal/telephony/cdma/utk/LocalInfo;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "info"    # Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/ResponseData;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    .line 45
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->languageCode:Ljava/lang/String;

    .line 49
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mLocalInfoType:I

    .line 50
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    .line 47
    return-void
.end method


# virtual methods
.method public UtkConvTimeToTPTStamp(I)I
    .locals 2
    .param p1, "TimeDate"    # I

    .prologue
    .line 128
    rem-int/lit8 v0, p1, 0xa

    shl-int/lit8 v0, v0, 0x4

    div-int/lit8 v1, p1, 0xa

    add-int/2addr v0, v1

    return v0
.end method

.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 7
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v4, 0x0

    .line 55
    if-nez p1, :cond_0

    .line 56
    return-void

    .line 59
    :cond_0
    iget v5, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mLocalInfoType:I

    packed-switch v5, :pswitch_data_0

    .line 54
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 62
    :pswitch_1
    const-string/jumbo v4, "LocalInformationResponseData local info "

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->localInfoFormat(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    .line 68
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LocalInformationResponseData format DateTime Year:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 69
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getYear()I

    move-result v5

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 69
    const-string/jumbo v5, "Month:"

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 69
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getMonth()I

    move-result v5

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 69
    const-string/jumbo v5, "Day:"

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 69
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getDate()I

    move-result v5

    .line 68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Hour:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Minutes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 71
    const-string/jumbo v5, "Seconds:"

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 71
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getSeconds()I

    move-result v5

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v4

    add-int/lit16 v4, v4, 0x76c

    rem-int/lit8 v4, v4, 0x64

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->UtkConvTimeToTPTStamp(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->year:I

    .line 75
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->UtkConvTimeToTPTStamp(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->month:I

    .line 76
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->UtkConvTimeToTPTStamp(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->day:I

    .line 77
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getHours()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->UtkConvTimeToTPTStamp(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->hour:I

    .line 78
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getMinutes()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->UtkConvTimeToTPTStamp(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->minute:I

    .line 79
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getSeconds()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->UtkConvTimeToTPTStamp(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->second:I

    .line 81
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 82
    .local v2, "defaultZone":Ljava/util/TimeZone;
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    div-int/lit16 v4, v4, 0xe10

    div-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->tempzone:I

    .line 83
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->tempzone:I

    if-gez v4, :cond_2

    .line 84
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->tempzone:I

    neg-int v4, v4

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->UtkConvTimeToTPTStamp(I)I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    .line 83
    :goto_1
    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->zone:I

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "TimeZone:rawzone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 89
    const-string/jumbo v5, "tempzone"

    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 89
    iget v5, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->tempzone:I

    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 89
    const-string/jumbo v5, "zone"

    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 89
    iget v5, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->zone:I

    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    const/16 v3, 0x26

    .line 92
    .local v3, "tag":I
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 93
    const/4 v4, 0x7

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 94
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->year:I

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 95
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->month:I

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 96
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->day:I

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 97
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->hour:I

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 98
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->minute:I

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 99
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->second:I

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 100
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->zone:I

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_0

    .line 85
    .end local v3    # "tag":I
    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->tempzone:I

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->UtkConvTimeToTPTStamp(I)I

    move-result v4

    goto :goto_1

    .line 105
    .end local v2    # "defaultZone":Ljava/util/TimeZone;
    :pswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "LocalInformationResponseData format Language: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->languageCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    const/16 v3, 0x2d

    .line 107
    .restart local v3    # "tag":I
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 108
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 109
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->languageCode:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 110
    .local v1, "data":[B
    array-length v5, v1

    :goto_2
    if-ge v4, v5, :cond_1

    aget-byte v0, v1, v4

    .line 112
    .local v0, "b":B
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 118
    .end local v0    # "b":B
    .end local v1    # "data":[B
    .end local v3    # "tag":I
    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LocalInformationResponseData technology = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    iget v5, v5, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->Technology:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/LocalInformationResponseData;->mInfo:Lcom/android/internal/telephony/cdma/utk/LocalInfo;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/cdma/utk/LocalInfo;->technologyFormat(Ljava/io/ByteArrayOutputStream;)V

    goto/16 :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
