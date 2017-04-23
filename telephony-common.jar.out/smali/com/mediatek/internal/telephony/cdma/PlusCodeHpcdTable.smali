.class public Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;
.super Ljava/lang/Object;
.source "PlusCodeHpcdTable.java"


# static fields
.field private static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "CDMA-PlusCodeHpcdTable"

.field private static final MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

.field private static final MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

.field static final PARAM_FOR_OFFSET:I = 0x2

.field static final sInstSync:Ljava/lang/Object;

.field private static sInstance:Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->sInstSync:Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/TelephonyPlusCode;->MCC_IDD_NDD_SID_MAP:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    .line 41
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/TelephonyPlusCode;->MCC_SID_LTM_OFF_MAP:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCcFromMINSTableBySid(Ljava/lang/String;)Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .locals 10
    .param p0, "sSid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 170
    const-string/jumbo v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " [getCcFromMINSTableBySid] sid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 172
    :cond_0
    const-string/jumbo v6, "CDMA-PlusCodeHpcdTable"

    const-string/jumbo v7, "[getCcFromMINSTableBySid] please check the param "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-object v9

    .line 171
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-gt v6, v7, :cond_0

    .line 178
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 183
    .local v4, "sid":I
    if-gez v4, :cond_2

    .line 184
    return-object v9

    .line 179
    .end local v4    # "sid":I
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "CDMA-PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-object v9

    .line 187
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "sid":I
    :cond_2
    const/4 v3, 0x0

    .line 188
    .local v3, "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    const/4 v1, 0x0

    .line 190
    .local v1, "findMccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    array-length v5, v6

    .line 191
    .local v5, "size":I
    const/4 v2, 0x0

    .end local v3    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_3

    .line 192
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    aget-object v3, v6, v2

    .line 193
    .local v3, "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    iget v6, v3, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMax:I

    if-gt v4, v6, :cond_4

    iget v6, v3, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMin:I

    if-lt v4, v6, :cond_4

    .line 194
    move-object v1, v3

    .line 200
    .end local v1    # "findMccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .end local v3    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    :cond_3
    const-string/jumbo v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " getCcFromMINSTableBySidAndLtm findMccIddNddSid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-object v1

    .line 191
    .restart local v1    # "findMccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .restart local v3    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getCcFromTableByMcc(Ljava/lang/String;)Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .locals 11
    .param p0, "sMcc"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 65
    const-string/jumbo v7, "CDMA-PlusCodeHpcdTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " getCcFromTableByMcc mcc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 67
    :cond_0
    const-string/jumbo v7, "CDMA-PlusCodeHpcdTable"

    const-string/jumbo v8, "[getCcFromTableByMcc] please check the param "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-object v10

    .line 73
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 78
    .local v3, "mcc":I
    sget-object v7, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    array-length v5, v7

    .line 80
    .local v5, "size":I
    const/4 v4, 0x0

    .line 95
    .local v4, "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    const-string/jumbo v7, "CDMA-PlusCodeHpcdTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " getCcFromTableByMcc size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v1, -0x1

    .line 97
    .local v1, "find":I
    const/4 v2, 0x0

    .end local v4    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 98
    sget-object v7, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    aget-object v4, v7, v2

    .line 99
    .local v4, "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->getMcc()I

    move-result v6

    .line 100
    .local v6, "tempMcc":I
    const-string/jumbo v7, "CDMA-PlusCodeHpcdTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " getCcFromTableByMcc tempMcc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-ne v6, v3, :cond_3

    .line 102
    move v1, v2

    .line 107
    .end local v4    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .end local v6    # "tempMcc":I
    :cond_2
    const-string/jumbo v7, "CDMA-PlusCodeHpcdTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " getCcFromTableByMcc find = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v7, -0x1

    if-le v1, v7, :cond_4

    if-ge v1, v5, :cond_4

    .line 109
    sget-object v7, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    aget-object v4, v7, v1

    .line 110
    .restart local v4    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    const-string/jumbo v7, "CDMA-PlusCodeHpcdTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Now find Mcc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mMcc:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", Mcc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 111
    iget-object v9, v4, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mCc:Ljava/lang/String;

    .line 110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 111
    const-string/jumbo v9, ", SidMin = "

    .line 110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 111
    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMin:I

    .line 110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 112
    const-string/jumbo v9, ", SidMax = "

    .line 110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 112
    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMax:I

    .line 110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 112
    const-string/jumbo v9, ", Idd = "

    .line 110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 113
    iget-object v9, v4, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mIdd:Ljava/lang/String;

    .line 110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 113
    const-string/jumbo v9, ", Ndd = "

    .line 110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 113
    iget-object v9, v4, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mNdd:Ljava/lang/String;

    .line 110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-object v4

    .line 74
    .end local v1    # "find":I
    .end local v2    # "i":I
    .end local v3    # "mcc":I
    .end local v4    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .end local v5    # "size":I
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v7, "CDMA-PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object v10

    .line 97
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "find":I
    .restart local v2    # "i":I
    .restart local v3    # "mcc":I
    .restart local v4    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .restart local v5    # "size":I
    .restart local v6    # "tempMcc":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 116
    .end local v4    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .end local v6    # "tempMcc":I
    :cond_4
    const-string/jumbo v7, "CDMA-PlusCodeHpcdTable"

    const-string/jumbo v8, "can\'t find one that match the Mcc"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-object v10
.end method

.method public static getInstance()Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;
    .locals 2

    .prologue
    .line 47
    sget-object v1, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->sInstSync:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->sInstance:Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-direct {v0}, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;-><init>()V

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->sInstance:Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 52
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->sInstance:Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMccFromConflictTableBySid(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "sSid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 128
    const-string/jumbo v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " [getMccFromConflictTableBySid] sid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 130
    :cond_0
    const-string/jumbo v6, "CDMA-PlusCodeHpcdTable"

    const-string/jumbo v7, "[getMccFromConflictTableBySid] please check the param "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-object v9

    .line 129
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-gt v6, v7, :cond_0

    .line 136
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 142
    .local v5, "sid":I
    if-gez v5, :cond_2

    .line 143
    return-object v9

    .line 137
    .end local v5    # "sid":I
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "CDMA-PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-object v9

    .line 146
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "sid":I
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v2, "mccArrays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 148
    .local v3, "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    array-length v4, v6

    .line 149
    .local v4, "mccSidMapSize":I
    const-string/jumbo v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " [getMccFromConflictTableBySid] mccSidMapSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v1, 0x0

    .end local v3    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_4

    .line 151
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    aget-object v3, v6, v1

    .line 152
    .local v3, "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    if-eqz v3, :cond_3

    iget v6, v3, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mSid:I

    if-ne v6, v5, :cond_3

    .line 153
    iget v6, v3, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mMcc:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    const-string/jumbo v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mccSidLtmOff  Mcc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mMcc:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 155
    const-string/jumbo v8, ", Sid = "

    .line 154
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 155
    iget v8, v3, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mSid:I

    .line 154
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 155
    const-string/jumbo v8, ", LtmOffMin = "

    .line 154
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 156
    iget v8, v3, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMin:I

    .line 154
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 156
    const-string/jumbo v8, ", LtmOffMax = "

    .line 154
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 157
    iget v8, v3, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMax:I

    .line 154
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v3    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    :cond_4
    return-object v2
.end method

.method public static getMccFromConflictTableBySidLtmOff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "sSid"    # Ljava/lang/String;
    .param p1, "sLtmOff"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 281
    const-string/jumbo v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " [getMccFromConflictTableBySidLtmOff] sSid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 282
    const-string/jumbo v11, ", sLtm_off = "

    .line 281
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 285
    :cond_0
    const-string/jumbo v9, "CDMA-PlusCodeHpcdTable"

    const-string/jumbo v10, "[getMccFromConflictTableBySidLtmOff] please check the param "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-object v12

    .line 283
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-gt v9, v10, :cond_0

    .line 284
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 291
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 296
    .local v8, "sid":I
    if-gez v8, :cond_2

    .line 297
    return-object v12

    .line 292
    .end local v8    # "sid":I
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "CDMA-PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-object v12

    .line 302
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "sid":I
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 308
    .local v2, "ltmoff":I
    const-string/jumbo v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " [getMccFromConflictTableBySidLtmOff] sid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    sget-object v9, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    array-length v5, v9

    .line 311
    .local v5, "mccSidMapSize":I
    const-string/jumbo v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " [getMccFromConflictTableBySidLtmOff] mccSidMapSize = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v4, 0x0

    .line 314
    .local v4, "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    const/4 v1, 0x0

    .end local v4    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_4

    .line 315
    sget-object v9, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    aget-object v4, v9, v1

    .line 317
    .local v4, "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMax:I

    mul-int/lit8 v3, v9, 0x2

    .line 318
    .local v3, "max":I
    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMin:I

    mul-int/lit8 v7, v9, 0x2

    .line 320
    .local v7, "min":I
    const-string/jumbo v9, "CDMA-PlusCodeHpcdTable"

    .line 321
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[getMccFromConflictTableBySidLtmOff] mccSidLtmOff.Sid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 322
    iget v11, v4, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mSid:I

    .line 321
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 322
    const-string/jumbo v11, ", sid = "

    .line 321
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 323
    const-string/jumbo v11, ", ltm_off = "

    .line 321
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 323
    const-string/jumbo v11, ", max = "

    .line 321
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 324
    const-string/jumbo v11, ", min = "

    .line 321
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 320
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    if-eqz v4, :cond_3

    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mSid:I

    if-ne v9, v8, :cond_3

    .line 327
    if-gt v2, v3, :cond_3

    if-lt v2, v7, :cond_3

    .line 328
    iget v9, v4, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mMcc:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 329
    .local v6, "mccStr":Ljava/lang/String;
    const-string/jumbo v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[getMccFromConflictTableBySidLtmOff] Mcc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-object v6

    .line 303
    .end local v1    # "i":I
    .end local v2    # "ltmoff":I
    .end local v3    # "max":I
    .end local v4    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    .end local v5    # "mccSidMapSize":I
    .end local v6    # "mccStr":Ljava/lang/String;
    .end local v7    # "min":I
    :catch_1
    move-exception v0

    .line 304
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "CDMA-PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-object v12

    .line 314
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "i":I
    .restart local v2    # "ltmoff":I
    .restart local v3    # "max":I
    .restart local v4    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    .restart local v5    # "mccSidMapSize":I
    .restart local v7    # "min":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 334
    .end local v3    # "max":I
    .end local v4    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    .end local v7    # "min":I
    :cond_4
    return-object v12
.end method

.method public static getMccFromMINSTableBySid(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "sSid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 343
    const-string/jumbo v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " [getMccFromMINSTableBySid] sid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 345
    :cond_0
    const-string/jumbo v6, "CDMA-PlusCodeHpcdTable"

    const-string/jumbo v7, "[getMccFromMINSTableBySid] please check the param "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-object v9

    .line 344
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-gt v6, v7, :cond_0

    .line 351
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 356
    .local v4, "sid":I
    if-gez v4, :cond_2

    .line 357
    return-object v9

    .line 352
    .end local v4    # "sid":I
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "CDMA-PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-object v9

    .line 360
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "sid":I
    :cond_2
    const/4 v2, 0x0

    .line 362
    .local v2, "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    array-length v5, v6

    .line 363
    .local v5, "size":I
    const-string/jumbo v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " [getMccFromMINSTableBySid] size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v1, 0x0

    .end local v2    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_4

    .line 366
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccIddNddSidMap:[Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    aget-object v2, v6, v1

    .line 368
    .local v2, "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    const-string/jumbo v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " [getMccFromMINSTableBySid] sid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 369
    const-string/jumbo v8, ", mccIddNddSid.SidMin = "

    .line 368
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 369
    iget v8, v2, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMin:I

    .line 368
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 370
    const-string/jumbo v8, ", mccIddNddSid.SidMax = "

    .line 368
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 370
    iget v8, v2, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMax:I

    .line 368
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget v6, v2, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMin:I

    if-lt v4, v6, :cond_3

    iget v6, v2, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mSidMax:I

    if-gt v4, v6, :cond_3

    .line 373
    iget v6, v2, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mMcc:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "mccStr":Ljava/lang/String;
    const-string/jumbo v6, "CDMA-PlusCodeHpcdTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[queryMccFromConflictTableBySid] Mcc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-object v3

    .line 365
    .end local v3    # "mccStr":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v2    # "mccIddNddSid":Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;
    :cond_4
    return-object v9
.end method

.method public static getMccMncFromSidMccMncListBySid(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "sSid"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 389
    const-string/jumbo v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " [getMccMncFromSidMccMncListBySid] sid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 391
    :cond_0
    const-string/jumbo v9, "CDMA-PlusCodeHpcdTable"

    const-string/jumbo v10, "[getMccMncFromSidMccMncListBySid] please check the param "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-object v12

    .line 390
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-gt v9, v10, :cond_0

    .line 397
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 402
    .local v8, "sid":I
    if-gez v8, :cond_2

    .line 403
    return-object v12

    .line 398
    .end local v8    # "sid":I
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v9, "CDMA-PlusCodeHpcdTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-object v12

    .line 406
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "sid":I
    :cond_2
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/TelephonyPlusCode;->getSidMccMncList()Ljava/util/List;

    move-result-object v3

    .line 407
    .local v3, "mSidMccMncList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/internal/telephony/cdma/SidMccMnc;>;"
    const/4 v2, 0x0

    .line 408
    .local v2, "mSidMccMnc":Lcom/mediatek/internal/telephony/cdma/SidMccMnc;
    const/4 v1, 0x0

    .line 409
    .local v1, "left":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .line 411
    .local v7, "right":I
    const/4 v4, 0x0

    .line 413
    .end local v2    # "mSidMccMnc":Lcom/mediatek/internal/telephony/cdma/SidMccMnc;
    .local v4, "mccMnc":I
    :goto_0
    if-gt v1, v7, :cond_5

    .line 414
    add-int v9, v1, v7

    div-int/lit8 v6, v9, 0x2

    .line 415
    .local v6, "mid":I
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;

    .line 416
    .local v2, "mSidMccMnc":Lcom/mediatek/internal/telephony/cdma/SidMccMnc;
    iget v9, v2, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->mSid:I

    if-ge v8, v9, :cond_3

    .line 417
    add-int/lit8 v7, v6, -0x1

    goto :goto_0

    .line 418
    :cond_3
    iget v9, v2, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->mSid:I

    if-le v8, v9, :cond_4

    .line 419
    add-int/lit8 v1, v6, 0x1

    goto :goto_0

    .line 421
    :cond_4
    iget v4, v2, Lcom/mediatek/internal/telephony/cdma/SidMccMnc;->mMccMnc:I

    .line 426
    .end local v2    # "mSidMccMnc":Lcom/mediatek/internal/telephony/cdma/SidMccMnc;
    .end local v6    # "mid":I
    :cond_5
    if-eqz v4, :cond_6

    .line 427
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 428
    .local v5, "mccMncStr":Ljava/lang/String;
    const-string/jumbo v9, "CDMA-PlusCodeHpcdTable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[getMccMncFromSidMccMncListBySid] MccMncStr = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-object v5

    .line 431
    .end local v5    # "mccMncStr":Ljava/lang/String;
    :cond_6
    return-object v12
.end method


# virtual methods
.method public getCcFromMINSTableByLTM(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p2, "ltmOff"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "mccArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v12, "CDMA-PlusCodeHpcdTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " getCcFromMINSTableByLTM sLtm_off = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    .line 215
    :cond_0
    const-string/jumbo v12, "CDMA-PlusCodeHpcdTable"

    const-string/jumbo v13, "[getCcFromMINSTableByLTM] please check the param "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v12, 0x0

    return-object v12

    .line 214
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_0

    .line 219
    const/4 v2, 0x0

    .line 223
    .local v2, "findMcc":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 229
    .local v6, "ltmoff":I
    const-string/jumbo v12, "CDMA-PlusCodeHpcdTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[getCcFromMINSTableByLTM]  ltm_off =  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 232
    .local v3, "findOutMccSize":I
    const/4 v12, 0x1

    if-le v3, v12, :cond_4

    sget-object v12, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    if-eqz v12, :cond_4

    .line 233
    sget-object v12, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    array-length v10, v12

    .line 235
    .local v10, "mccSidMapSize":I
    const-string/jumbo v12, "CDMA-PlusCodeHpcdTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " Conflict FindOutMccSize = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v9, 0x0

    .line 239
    .local v9, "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    const/4 v8, -0x1

    .line 240
    .local v8, "mcc":I
    const/4 v4, 0x0

    .end local v2    # "findMcc":Ljava/lang/String;
    .end local v9    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 242
    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 248
    const-string/jumbo v12, "CDMA-PlusCodeHpcdTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, " Conflict mcc = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ",index = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v10, :cond_2

    .line 250
    sget-object v12, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->MccSidLtmOffMap:[Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;

    aget-object v9, v12, v5

    .line 251
    .local v9, "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    iget v12, v9, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mMcc:I

    if-ne v12, v8, :cond_3

    .line 253
    iget v12, v9, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMax:I

    mul-int/lit8 v7, v12, 0x2

    .line 254
    .local v7, "max":I
    iget v12, v9, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMin:I

    mul-int/lit8 v11, v12, 0x2

    .line 256
    .local v11, "min":I
    const-string/jumbo v12, "CDMA-PlusCodeHpcdTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mccSidLtmOff LtmOffMin = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 257
    iget v14, v9, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMin:I

    .line 256
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 257
    const-string/jumbo v14, ", LtmOffMax = "

    .line 256
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 258
    iget v14, v9, Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;->mLtmOffMax:I

    .line 256
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-gt v6, v7, :cond_3

    if-lt v6, v11, :cond_3

    .line 260
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 240
    .end local v7    # "max":I
    .end local v9    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    .end local v11    # "min":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 224
    .end local v3    # "findOutMccSize":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "ltmoff":I
    .end local v8    # "mcc":I
    .end local v10    # "mccSidMapSize":I
    .restart local v2    # "findMcc":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v12, "CDMA-PlusCodeHpcdTable"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v12, 0x0

    return-object v12

    .line 243
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "findMcc":Ljava/lang/String;
    .restart local v3    # "findOutMccSize":I
    .restart local v4    # "i":I
    .restart local v6    # "ltmoff":I
    .restart local v8    # "mcc":I
    .restart local v10    # "mccSidMapSize":I
    :catch_1
    move-exception v1

    .line 244
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v12, "CDMA-PlusCodeHpcdTable"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v12, 0x0

    return-object v12

    .line 249
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "j":I
    .restart local v9    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 267
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v8    # "mcc":I
    .end local v9    # "mccSidLtmOff":Lcom/mediatek/internal/telephony/cdma/MccSidLtmOff;
    .end local v10    # "mccSidMapSize":I
    .restart local v2    # "findMcc":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "findMcc":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 270
    :cond_5
    const-string/jumbo v12, "CDMA-PlusCodeHpcdTable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "find one that match the ltm_off mcc = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-object v2
.end method
