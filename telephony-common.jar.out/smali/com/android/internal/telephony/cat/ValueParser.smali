.class abstract Lcom/android/internal/telephony/cat/ValueParser;
.super Ljava/lang/Object;
.source "ValueParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkItemString([BII)I
    .locals 5
    .param p0, "raw"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 166
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x80

    if-eq v2, v3, :cond_0

    .line 168
    const-string/jumbo v2, "ValueParser"

    const-string/jumbo v3, "don\'t do check for non-ucs2 raw data"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return p2

    .line 172
    :cond_0
    move v1, p2

    .line 173
    .local v1, "len":I
    const-string/jumbo v2, "ValueParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "given length is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-le v0, p1, :cond_2

    .line 175
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_1

    .line 176
    const-string/jumbo v2, "ValueParser"

    const-string/jumbo v3, "find invalid raw data 0x00"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    add-int/lit8 v1, v1, -0x2

    .line 174
    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 181
    :cond_2
    const-string/jumbo v2, "ValueParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "useful length is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return v1
.end method

.method static removeInvalidCharInItemTextString([BII)I
    .locals 7
    .param p0, "rawValue"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "textLen"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 138
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 139
    .local v1, "isucs2":Ljava/lang/Boolean;
    move v2, p2

    .line 140
    .local v2, "len":I
    const-string/jumbo v3, "ValueParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Try to remove invalid raw data 0xf0, valueIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", textLen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    if-lt p2, v6, :cond_2

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    const/16 v4, -0x80

    if-ne v3, v4, :cond_2

    .line 146
    :cond_0
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 148
    :cond_1
    const-string/jumbo v3, "ValueParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Is the text string format UCS2? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    if-lez p2, :cond_4

    .line 152
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_4

    .line 153
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    const/16 v4, -0x10

    if-ne v3, v4, :cond_4

    .line 154
    const-string/jumbo v3, "ValueParser"

    const-string/jumbo v4, "find invalid raw data 0xf0"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    add-int/lit8 v2, v2, -0x1

    .line 152
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 142
    .end local v0    # "i":I
    :cond_2
    const/4 v3, 0x3

    if-lt p2, v3, :cond_3

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    const/16 v4, -0x7f

    if-eq v3, v4, :cond_0

    .line 143
    :cond_3
    const/4 v3, 0x4

    if-lt p2, v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    const/16 v4, -0x7e

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 161
    :cond_4
    const-string/jumbo v3, "ValueParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "new textLen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return v2
.end method

.method static retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 330
    if-eqz p0, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 332
    .local v4, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 333
    .local v6, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 334
    .local v2, "length":I
    if-eqz v2, :cond_0

    .line 336
    :try_start_0
    invoke-static {v4, v6, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 342
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const-string/jumbo v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Alpha Id length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v7, ""

    return-object v7

    .line 351
    .end local v2    # "length":I
    .end local v4    # "rawValue":[B
    .end local v6    # "valueIndex":I
    :cond_1
    const/4 v3, 0x0

    .line 352
    .local v3, "noAlphaUsrCnf":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 355
    .local v5, "resource":Landroid/content/res/Resources;
    const v8, 0x112007b

    .line 354
    :try_start_1
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 359
    .end local v3    # "noAlphaUsrCnf":Z
    :goto_0
    if-eqz v3, :cond_2

    :goto_1
    return-object v7

    .line 356
    .restart local v3    # "noAlphaUsrCnf":Z
    :catch_1
    move-exception v0

    .line 357
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v3, 0x0

    goto :goto_0

    .line 359
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "noAlphaUsrCnf":Z
    :cond_2
    const-string/jumbo v7, "Default Message"

    goto :goto_1
.end method

.method static retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 43
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 44
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 46
    .local v3, "valueIndex":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->isComprehensionRequired()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    .line 47
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    .line 48
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 49
    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-object v0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveDeviceIdentities(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/DeviceIdentities;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/android/internal/telephony/cat/DeviceIdentities;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/DeviceIdentities;-><init>()V

    .line 68
    .local v0, "devIds":Lcom/android/internal/telephony/cat/DeviceIdentities;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 69
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 71
    .local v3, "valueIndex":I
    :try_start_0
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->sourceId:I

    .line 72
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->destinationId:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-object v0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 89
    .local v2, "timeInterval":I
    sget-object v3, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    .line 91
    .local v3, "timeUnit":Lcom/android/internal/telephony/cat/Duration$TimeUnit;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 92
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 95
    .local v4, "valueIndex":I
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    move-result-object v5

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    aget-object v3, v5, v6

    .line 96
    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v5, 0xff

    .line 100
    new-instance v5, Lcom/android/internal/telephony/cat/Duration;

    invoke-direct {v5, v2, v3}, Lcom/android/internal/telephony/cat/Duration;-><init>(ILcom/android/internal/telephony/cat/Duration$TimeUnit;)V

    return-object v5

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5
.end method

.method static retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 215
    new-instance v1, Lcom/android/internal/telephony/cat/IconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/IconId;-><init>()V

    .line 217
    .local v1, "id":Lcom/android/internal/telephony/cat/IconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 218
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 220
    .local v3, "valueIndex":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "valueIndex":I
    .local v4, "valueIndex":I
    :try_start_0
    aget-byte v6, v2, v3

    and-int/lit16 v6, v6, 0xff

    if-nez v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    iput-boolean v5, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    .line 221
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    iput v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    return-object v1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5
.end method

.method static retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;
    .locals 11
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v2, 0x0

    .line 113
    .local v2, "item":Lcom/android/internal/telephony/cat/Item;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 114
    .local v5, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v8

    .line 115
    .local v8, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v4

    .line 117
    .local v4, "length":I
    if-eqz v4, :cond_0

    .line 118
    add-int/lit8 v7, v4, -0x1

    .line 121
    .local v7, "textLen":I
    :try_start_0
    aget-byte v9, v5, v8

    and-int/lit16 v1, v9, 0xff

    .line 123
    .local v1, "id":I
    invoke-static {v5, v8, v7}, Lcom/android/internal/telephony/cat/ValueParser;->removeInvalidCharInItemTextString([BII)I

    move-result v7

    .line 125
    add-int/lit8 v9, v8, 0x1

    .line 124
    invoke-static {v5, v9, v7}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "text":Ljava/lang/String;
    new-instance v3, Lcom/android/internal/telephony/cat/Item;

    invoke-direct {v3, v1, v6}, Lcom/android/internal/telephony/cat/Item;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "item":Lcom/android/internal/telephony/cat/Item;
    .local v3, "item":Lcom/android/internal/telephony/cat/Item;
    move-object v2, v3

    .line 133
    .end local v1    # "id":I
    .end local v3    # "item":Lcom/android/internal/telephony/cat/Item;
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "textLen":I
    :cond_0
    :goto_0
    return-object v2

    .line 127
    .restart local v2    # "item":Lcom/android/internal/telephony/cat/Item;
    .restart local v7    # "textLen":I
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v9, "ValueParser"

    const-string/jumbo v10, "retrieveItem fail"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 195
    .local v1, "id":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 196
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 199
    .local v3, "valueIndex":I
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v4, 0xff

    .line 204
    return v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;
    .locals 11
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 239
    const-string/jumbo v9, "ValueParser"

    const-string/jumbo v10, "retrieveItemsIconId:"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v1, Lcom/android/internal/telephony/cat/ItemsIconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/ItemsIconId;-><init>()V

    .line 242
    .local v1, "id":Lcom/android/internal/telephony/cat/ItemsIconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 243
    .local v5, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 244
    .local v6, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .line 245
    .local v4, "numOfItems":I
    new-array v9, v4, [I

    iput-object v9, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    .line 249
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "valueIndex":I
    .local v7, "valueIndex":I
    :try_start_0
    aget-byte v9, v5, v6

    and-int/lit16 v9, v9, 0xff

    if-nez v9, :cond_0

    const/4 v8, 0x1

    :cond_0
    iput-boolean v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    .line 251
    const/4 v2, 0x0

    .local v2, "index":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 252
    iget-object v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    :try_start_1
    aget-byte v9, v5, v7

    aput v9, v8, v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    move v7, v6

    .end local v6    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    goto :goto_0

    .line 254
    .end local v3    # "index":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    move v6, v7

    .line 255
    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    :goto_1
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 257
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v6    # "valueIndex":I
    .restart local v3    # "index":I
    .restart local v7    # "valueIndex":I
    :cond_1
    return-object v1

    .line 254
    .end local v3    # "index":I
    .end local v7    # "valueIndex":I
    .restart local v2    # "index":I
    .restart local v6    # "valueIndex":I
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_1
.end method

.method static retrieveNextActionIndicator(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 413
    .local v5, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 414
    .local v6, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 416
    .local v3, "length":I
    new-array v4, v3, [B

    .line 418
    .local v4, "nai":[B
    const/4 v1, 0x0

    .local v1, "index":I
    move v2, v1

    .end local v1    # "index":I
    .local v2, "index":I
    move v7, v6

    .end local v6    # "valueIndex":I
    .local v7, "valueIndex":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 419
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    :try_start_0
    aget-byte v8, v5, v7

    aput-byte v8, v4, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    move v7, v6

    .end local v6    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    goto :goto_0

    .line 421
    .end local v2    # "index":I
    .end local v7    # "valueIndex":I
    .restart local v1    # "index":I
    .restart local v6    # "valueIndex":I
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 425
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v1    # "index":I
    .end local v6    # "valueIndex":I
    .restart local v2    # "index":I
    .restart local v7    # "valueIndex":I
    :cond_0
    return-object v4
.end method

.method static retrieveTarget(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 431
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 432
    .local v3, "valueIndex":I
    const/4 v2, 0x0

    .line 435
    .local v2, "target":I
    :try_start_0
    aget-byte v4, v1, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v4, 0xff

    .line 440
    return v2

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveTextAttribute(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/util/List;
    .locals 24
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/TextAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v18, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cat/TextAttribute;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v19

    .line 273
    .local v19, "rawValue":[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v21

    .line 274
    .local v21, "valueIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v17

    .line 276
    .local v17, "length":I
    if-eqz v17, :cond_6

    .line 278
    div-int/lit8 v16, v17, 0x4

    .line 281
    .local v16, "itemCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 282
    :try_start_0
    aget-byte v22, v19, v21

    move/from16 v0, v22

    and-int/lit16 v2, v0, 0xff

    .line 283
    .local v2, "start":I
    add-int/lit8 v22, v21, 0x1

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v3, v0, 0xff

    .line 284
    .local v3, "textLength":I
    add-int/lit8 v22, v21, 0x2

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v14, v0, 0xff

    .line 285
    .local v14, "format":I
    add-int/lit8 v22, v21, 0x3

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v12, v0, 0xff

    .line 287
    .local v12, "colorValue":I
    and-int/lit8 v11, v14, 0x3

    .line 288
    .local v11, "alignValue":I
    invoke-static {v11}, Lcom/android/internal/telephony/cat/TextAlignment;->fromInt(I)Lcom/android/internal/telephony/cat/TextAlignment;

    move-result-object v4

    .line 290
    .local v4, "align":Lcom/android/internal/telephony/cat/TextAlignment;
    shr-int/lit8 v22, v14, 0x2

    and-int/lit8 v20, v22, 0x3

    .line 291
    .local v20, "sizeValue":I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cat/FontSize;->fromInt(I)Lcom/android/internal/telephony/cat/FontSize;

    move-result-object v5

    .line 292
    .local v5, "size":Lcom/android/internal/telephony/cat/FontSize;
    if-nez v5, :cond_0

    .line 294
    sget-object v5, Lcom/android/internal/telephony/cat/FontSize;->NORMAL:Lcom/android/internal/telephony/cat/FontSize;

    .line 297
    :cond_0
    and-int/lit8 v22, v14, 0x10

    if-eqz v22, :cond_1

    const/4 v6, 0x1

    .line 298
    .local v6, "bold":Z
    :goto_1
    and-int/lit8 v22, v14, 0x20

    if-eqz v22, :cond_2

    const/4 v7, 0x1

    .line 299
    .local v7, "italic":Z
    :goto_2
    and-int/lit8 v22, v14, 0x40

    if-eqz v22, :cond_3

    const/4 v8, 0x1

    .line 300
    .local v8, "underlined":Z
    :goto_3
    and-int/lit16 v0, v14, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_4

    const/4 v9, 0x1

    .line 302
    .local v9, "strikeThrough":Z
    :goto_4
    invoke-static {v12}, Lcom/android/internal/telephony/cat/TextColor;->fromInt(I)Lcom/android/internal/telephony/cat/TextColor;

    move-result-object v10

    .line 304
    .local v10, "color":Lcom/android/internal/telephony/cat/TextColor;
    new-instance v1, Lcom/android/internal/telephony/cat/TextAttribute;

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/cat/TextAttribute;-><init>(IILcom/android/internal/telephony/cat/TextAlignment;Lcom/android/internal/telephony/cat/FontSize;ZZZZLcom/android/internal/telephony/cat/TextColor;)V

    .line 307
    .local v1, "attr":Lcom/android/internal/telephony/cat/TextAttribute;
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v21, v21, 0x4

    goto :goto_0

    .line 297
    .end local v1    # "attr":Lcom/android/internal/telephony/cat/TextAttribute;
    .end local v6    # "bold":Z
    .end local v7    # "italic":Z
    .end local v8    # "underlined":Z
    .end local v9    # "strikeThrough":Z
    .end local v10    # "color":Lcom/android/internal/telephony/cat/TextColor;
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "bold":Z
    goto :goto_1

    .line 298
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "italic":Z
    goto :goto_2

    .line 299
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "underlined":Z
    goto :goto_3

    .line 300
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "strikeThrough":Z
    goto :goto_4

    .line 310
    .end local v2    # "start":I
    .end local v3    # "textLength":I
    .end local v4    # "align":Lcom/android/internal/telephony/cat/TextAlignment;
    .end local v5    # "size":Lcom/android/internal/telephony/cat/FontSize;
    .end local v6    # "bold":Z
    .end local v7    # "italic":Z
    .end local v8    # "underlined":Z
    .end local v9    # "strikeThrough":Z
    .end local v11    # "alignValue":I
    .end local v12    # "colorValue":I
    .end local v14    # "format":I
    .end local v20    # "sizeValue":I
    :cond_5
    return-object v18

    .line 312
    :catch_0
    move-exception v13

    .line 313
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v22, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v23, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v22 .. v23}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v22

    .line 316
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v15    # "i":I
    .end local v16    # "itemCount":I
    :cond_6
    const/16 v22, 0x0

    return-object v22
.end method

.method static retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 9
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 373
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 374
    .local v6, "valueIndex":I
    const/4 v0, 0x0

    .line 375
    .local v0, "codingScheme":B
    const/4 v4, 0x0

    .line 376
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v5

    .line 379
    .local v5, "textLen":I
    if-nez v5, :cond_0

    .line 380
    return-object v4

    .line 383
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 387
    :try_start_0
    aget-byte v7, v3, v6

    and-int/lit8 v7, v7, 0xc

    int-to-byte v0, v7

    .line 389
    .local v0, "codingScheme":B
    if-nez v0, :cond_1

    .line 391
    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v8, v5, 0x8

    div-int/lit8 v8, v8, 0x7

    .line 390
    invoke-static {v3, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, "text":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 392
    .local v4, "text":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_2

    .line 394
    add-int/lit8 v7, v6, 0x1

    .line 393
    invoke-static {v3, v7, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v4

    .local v4, "text":Ljava/lang/String;
    goto :goto_0

    .line 395
    .local v4, "text":Ljava/lang/String;
    :cond_2
    const/16 v7, 0x8

    if-ne v0, v7, :cond_3

    .line 396
    new-instance v4, Ljava/lang/String;

    .end local v4    # "text":Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    const-string/jumbo v8, "UTF-16"

    invoke-direct {v4, v3, v7, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .local v4, "text":Ljava/lang/String;
    goto :goto_0

    .line 398
    .local v4, "text":Ljava/lang/String;
    :cond_3
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 402
    .end local v0    # "codingScheme":B
    .end local v4    # "text":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 403
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 404
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 406
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7
.end method
