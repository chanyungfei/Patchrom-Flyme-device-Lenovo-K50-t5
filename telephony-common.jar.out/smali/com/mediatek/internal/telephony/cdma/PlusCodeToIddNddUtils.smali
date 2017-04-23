.class public Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;
.super Ljava/lang/Object;
.source "PlusCodeToIddNddUtils.java"


# static fields
.field public static final INTERNATIONAL_PREFIX_SYMBOL:Ljava/lang/String; = "+"

.field static final LOG_TAG:Ljava/lang/String; = "PlusCodeToIddNddUtils"

.field private static final MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

.field private static sHpcd:Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;

.field private static sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->getInstance()Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;

    move-result-object v0

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sHpcd:Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    .line 177
    sget-object v0, Lcom/mediatek/internal/telephony/cdma/TelephonyPlusCode;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    .line 176
    sput-object v0, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canFormatPlusCodeForSms()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 270
    const/4 v0, 0x0

    .line 272
    .local v0, "canFormat":Z
    const-string/jumbo v2, "cdma.icc.operator.mcc"

    const-string/jumbo v3, ""

    .line 271
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "mcc":Ljava/lang/String;
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[canFormatPlusCodeForSms] Mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    sput-object v5, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    .line 275
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sHpcd:Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;

    if-eqz v2, :cond_0

    .line 276
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[canFormatPlusCodeForSms] Mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->getCcFromTableByMcc(Ljava/lang/String;)Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    .line 279
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[canFormatPlusCodeForSms] getCcFromTableByMcc mccIddNddSid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 281
    sget-object v4, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    .line 280
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object v2, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 282
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canFormatPlusToIddNdd()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 42
    const-string/jumbo v7, "PlusCodeToIddNddUtils"

    const-string/jumbo v8, "-------------canFormatPlusToIddNdd-------------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string/jumbo v7, "cdma.operator.mcc"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, "mccStr":Ljava/lang/String;
    const-string/jumbo v7, "cdma.operator.sid"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, "sidStr":Ljava/lang/String;
    const-string/jumbo v7, "cdma.operator.ltmoffset"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "ltmoffStr":Ljava/lang/String;
    const-string/jumbo v7, "PlusCodeToIddNddUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[getProp from network] get property mcc1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 47
    const-string/jumbo v9, ", sid1 = "

    .line 46
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 47
    const-string/jumbo v9, ", ltm_off1 = "

    .line 46
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "find":Z
    sput-object v10, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    .line 51
    sget-object v7, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sHpcd:Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;

    if-eqz v7, :cond_3

    .line 52
    const-string/jumbo v7, "2134"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v2, 0x0

    .line 53
    .local v2, "isValid":Z
    :goto_0
    const-string/jumbo v7, "PlusCodeToIddNddUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[canFormatPlusToIddNdd] Mcc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 54
    const-string/jumbo v9, ", !Mcc.startsWith(2134) = "

    .line 53
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 57
    const-string/jumbo v7, "000"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 64
    :cond_0
    invoke-static {v6}, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->getMccFromConflictTableBySid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 65
    .local v4, "mccArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_7

    .line 66
    :cond_1
    const-string/jumbo v7, "PlusCodeToIddNddUtils"

    const-string/jumbo v8, "[canFormatPlusToIddNdd] Do not find cc by SID from confilcts table, so from lookup table"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {v6}, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->getCcFromMINSTableBySid(Ljava/lang/String;)Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    move-result-object v7

    sput-object v7, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    .line 69
    const-string/jumbo v7, "PlusCodeToIddNddUtils"

    .line 70
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[canFormatPlusToIddNdd] getCcFromMINSTableBySid mccIddNddSid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 71
    sget-object v9, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    .line 70
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 69
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_2
    :goto_1
    sget-object v7, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    if-eqz v7, :cond_a

    const/4 v0, 0x1

    .line 90
    .end local v2    # "isValid":Z
    .end local v4    # "mccArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    const-string/jumbo v7, "PlusCodeToIddNddUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[canFormatPlusToIddNdd] find = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 91
    const-string/jumbo v9, ", mccIddNddSid = "

    .line 90
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 91
    sget-object v9, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    .line 90
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return v0

    .line 52
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "isValid":Z
    goto/16 :goto_0

    .line 56
    :cond_5
    if-eqz v2, :cond_0

    .line 58
    invoke-static {v5}, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->getCcFromTableByMcc(Ljava/lang/String;)Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    move-result-object v7

    sput-object v7, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    .line 59
    const-string/jumbo v7, "PlusCodeToIddNddUtils"

    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[canFormatPlusToIddNdd] getCcFromTableByMcc mccIddNddSid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 61
    sget-object v9, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    .line 60
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 59
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v7, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    if-eqz v7, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 72
    .restart local v4    # "mccArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_9

    .line 73
    sget-object v7, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sHpcd:Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;

    invoke-virtual {v7, v4, v3}, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->getCcFromMINSTableByLTM(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "findMcc":Ljava/lang/String;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_8

    .line 75
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->getCcFromTableByMcc(Ljava/lang/String;)Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    move-result-object v7

    sput-object v7, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    .line 77
    :cond_8
    const-string/jumbo v7, "PlusCodeToIddNddUtils"

    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[canFormatPlusToIddNdd] conflicts, getCcFromTableByMcc mccIddNddSid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 79
    sget-object v9, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    .line 78
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 77
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 80
    .end local v1    # "findMcc":Ljava/lang/String;
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 81
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    .restart local v1    # "findMcc":Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->getCcFromTableByMcc(Ljava/lang/String;)Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    move-result-object v7

    sput-object v7, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    .line 83
    const-string/jumbo v7, "PlusCodeToIddNddUtils"

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[canFormatPlusToIddNdd] do not conflicts, getCcFromTableByMcc mccIddNddSid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 85
    sget-object v9, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    .line 84
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 83
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 87
    .end local v1    # "findMcc":Ljava/lang/String;
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method public static checkMccBySidLtmOff(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "mccMnc"    # Ljava/lang/String;

    .prologue
    .line 375
    const-string/jumbo v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[checkMccBySidLtmOff] mccMnc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string/jumbo v5, "cdma.operator.sid"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "strSid":Ljava/lang/String;
    const-string/jumbo v5, "cdma.operator.ltmoffset"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "strLtmOff":Ljava/lang/String;
    const-string/jumbo v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[checkMccBySidLtmOff] Sid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Ltm_off = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static {v3, v0}, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->getMccFromConflictTableBySidLtmOff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "strMcc":Ljava/lang/String;
    const-string/jumbo v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[checkMccBySidLtmOff] MccFromConflictTable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    if-eqz v1, :cond_2

    .line 389
    move-object v4, v1

    .line 400
    .local v4, "tempMcc":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[checkMccBySidLtmOff] tempMcc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string/jumbo v5, "310"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "311"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "312"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 403
    :cond_0
    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->getMccMncFromSidMccMncListBySid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "strMccMnc":Ljava/lang/String;
    const-string/jumbo v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[checkMccBySidLtmOff] MccMnc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-eqz v2, :cond_1

    .line 406
    move-object v4, v2

    .line 410
    .end local v2    # "strMccMnc":Ljava/lang/String;
    :cond_1
    return-object v4

    .line 391
    .end local v4    # "tempMcc":Ljava/lang/String;
    :cond_2
    invoke-static {v3}, Lcom/mediatek/internal/telephony/cdma/PlusCodeHpcdTable;->getMccFromMINSTableBySid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    const-string/jumbo v5, "PlusCodeToIddNddUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[checkMccBySidLtmOff] MccFromMINSTable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    if-eqz v1, :cond_3

    .line 394
    move-object v4, v1

    .restart local v4    # "tempMcc":Ljava/lang/String;
    goto :goto_0

    .line 396
    .end local v4    # "tempMcc":Ljava/lang/String;
    :cond_3
    move-object v4, p0

    .restart local v4    # "tempMcc":Ljava/lang/String;
    goto :goto_0
.end method

.method private static formatPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 100
    .local v0, "formatNumber":Ljava/lang/String;
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    if-eqz v3, :cond_0

    .line 101
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    iget-object v2, v3, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mCc:Ljava/lang/String;

    .line 102
    .local v2, "sCC":Ljava/lang/String;
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "number auto format correctly, mccIddNddSid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 103
    sget-object v5, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->toString()Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    iget-object v4, v4, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mIdd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "formatNumber":Ljava/lang/String;
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CC dismatch, remove +(already erased before), add IDD formatNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v0    # "formatNumber":Ljava/lang/String;
    .end local v2    # "sCC":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 112
    .local v0, "formatNumber":Ljava/lang/String;
    .restart local v2    # "sCC":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    iget-object v1, v3, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mNdd:Ljava/lang/String;

    .line 113
    .local v1, "nddStr":Ljava/lang/String;
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mCc:Ljava/lang/String;

    const-string/jumbo v4, "86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    iget-object v3, v3, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mCc:Ljava/lang/String;

    const-string/jumbo v4, "853"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 115
    :cond_2
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    const-string/jumbo v4, "CC matched, cc is chinese"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string/jumbo v1, "00"

    .line 126
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "formatNumber":Ljava/lang/String;
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CC matched, remove +(already erased before) and CC, add NDD formatNumber = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    .local v0, "formatNumber":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 120
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[isMobileNumber] number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {v2, p0}, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->isMobileNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    const-string/jumbo v4, "CC matched, isMobile = true Ndd = "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string/jumbo v1, ""

    goto :goto_1
.end method

.method private static isMobileNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "sCC"    # Ljava/lang/String;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 180
    const-string/jumbo v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[isMobileNumber] number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", sCC = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 182
    :cond_0
    const-string/jumbo v6, "PlusCodeToIddNddUtils"

    const-string/jumbo v7, "[isMobileNumber] please check the param "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return v9

    .line 185
    :cond_1
    const/4 v3, 0x0

    .line 187
    .local v3, "isMobile":Z
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    if-nez v6, :cond_2

    .line 188
    const-string/jumbo v6, "PlusCodeToIddNddUtils"

    const-string/jumbo v7, "[isMobileNumber] MOBILE_NUMBER_SPEC_MAP == null "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return v3

    .line 192
    :cond_2
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 195
    .local v5, "size":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 201
    .local v2, "iCC":I
    const-string/jumbo v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[isMobileNumber] iCC = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 203
    const-string/jumbo v6, "PlusCodeToIddNddUtils"

    .line 204
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[isMobileNumber] value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 205
    sget-object v8, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 204
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 205
    const-string/jumbo v8, ", key =  "

    .line 204
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 206
    sget-object v8, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 204
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 203
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    if-ne v6, v2, :cond_4

    .line 208
    const-string/jumbo v6, "PlusCodeToIddNddUtils"

    const-string/jumbo v7, "[isMobileNumber]  value = icc"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v6, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->MOBILE_NUMBER_SPEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 209
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "prfix":Ljava/lang/String;
    const-string/jumbo v6, "PlusCodeToIddNddUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[isMobileNumber]  prfix = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 213
    const-string/jumbo v6, "PlusCodeToIddNddUtils"

    .line 214
    const-string/jumbo v7, "[isMobileNumber]  number.startsWith(prfix) = true"

    .line 213
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v3, 0x1

    .line 221
    .end local v4    # "prfix":Ljava/lang/String;
    :cond_3
    return v3

    .line 196
    .end local v1    # "i":I
    .end local v2    # "iCC":I
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "PlusCodeToIddNddUtils"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return v3

    .line 202
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "i":I
    .restart local v2    # "iCC":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public static removeIddNddAddPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[removeIddNddAddPlusCode] befor format number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 234
    :cond_0
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    const-string/jumbo v4, "[removeIddNddAddPlusCode] please check the param "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-object p0

    .line 238
    :cond_1
    move-object v1, p0

    .line 239
    .local v1, "formatNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .line 241
    .local v0, "bFind":Z
    const-string/jumbo v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 242
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->canFormatPlusToIddNdd()Z

    move-result v0

    .line 244
    .local v0, "bFind":Z
    if-nez v0, :cond_2

    .line 245
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    .line 246
    const-string/jumbo v4, "[removeIddNddAddPlusCode] find no operator that match the MCC "

    .line 245
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-object p0

    .line 250
    :cond_2
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    if-eqz v3, :cond_3

    .line 251
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    iget-object v2, v3, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mIdd:Ljava/lang/String;

    .line 252
    .local v2, "strIdd":Ljava/lang/String;
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[removeIddNddAddPlusCode] find match the cc, Idd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 252
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 255
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    .end local v0    # "bFind":Z
    .end local v2    # "strIdd":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[removeIddNddAddPlusCode] number after format = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-object v1
.end method

.method public static removeIddNddAddPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 335
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[removeIddNddAddPlusCodeForSms] befor format number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 338
    :cond_0
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    .line 339
    const-string/jumbo v4, "[removeIddNddAddPlusCodeForSms] please check the param "

    .line 338
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-object p0

    .line 343
    :cond_1
    move-object v1, p0

    .line 344
    .local v1, "formatNumber":Ljava/lang/String;
    const-string/jumbo v3, "+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 345
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->canFormatPlusCodeForSms()Z

    move-result v0

    .line 346
    .local v0, "camFormat":Z
    if-nez v0, :cond_2

    .line 347
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    .line 348
    const-string/jumbo v4, "[removeIddNddAddPlusCodeForSms] find no operator that match the MCC "

    .line 347
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-object v1

    .line 352
    :cond_2
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    if-eqz v3, :cond_3

    .line 353
    sget-object v3, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->sMccIddNddSid:Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;

    iget-object v2, v3, Lcom/mediatek/internal/telephony/cdma/MccIddNddSid;->mIdd:Ljava/lang/String;

    .line 354
    .local v2, "strIdd":Ljava/lang/String;
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    .line 355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[removeIddNddAddPlusCodeForSms] find match the cc, Idd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 354
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 357
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 358
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[removeIddNddAddPlusCodeForSms] sub num = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    .end local v0    # "camFormat":Z
    .end local v2    # "strIdd":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "PlusCodeToIddNddUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[removeIddNddAddPlusCodeForSms] number after format = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-object v1
.end method

.method public static replacePlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 295
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replacePlusCodeForSms number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 298
    :cond_0
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number can\'t format correctly, number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-object v5

    .line 297
    :cond_1
    const-string/jumbo v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->canFormatPlusCodeForSms()Z

    move-result v0

    .line 303
    .local v0, "camFormat":Z
    if-nez v0, :cond_2

    .line 304
    return-object v5

    .line 308
    :cond_2
    const-string/jumbo v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 309
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number before remove plus char , number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 312
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number after   remove plus char , number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_3
    const/4 v1, 0x0

    .line 320
    .local v1, "formatNumber":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 321
    invoke-static {p0}, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->formatPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .end local v1    # "formatNumber":Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method public static replacePlusCodeWithIddNdd(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 143
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replacePlusCodeWithIddNdd number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 146
    :cond_0
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number can\'t format correctly, number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object v5

    .line 145
    :cond_1
    const-string/jumbo v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->canFormatPlusToIddNdd()Z

    move-result v0

    .line 152
    .local v0, "bFind":Z
    if-nez v0, :cond_2

    .line 153
    return-object v5

    .line 157
    :cond_2
    const-string/jumbo v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number before remove plus char , number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 161
    const-string/jumbo v2, "PlusCodeToIddNddUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "number after   remove plus char , number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_3
    const/4 v1, 0x0

    .line 169
    .local v1, "formatNumber":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 170
    invoke-static {p0}, Lcom/mediatek/internal/telephony/cdma/PlusCodeToIddNddUtils;->formatPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .end local v1    # "formatNumber":Ljava/lang/String;
    :cond_4
    return-object v1
.end method
