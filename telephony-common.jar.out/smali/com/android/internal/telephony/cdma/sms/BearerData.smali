.class public final Lcom/android/internal/telephony/cdma/sms/BearerData;
.super Ljava/lang/Object;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    }
.end annotation


# static fields
.field public static final ALERT_DEFAULT:I = 0x0

.field public static final ALERT_HIGH_PRIO:I = 0x3

.field public static final ALERT_LOW_PRIO:I = 0x1

.field public static final ALERT_MEDIUM_PRIO:I = 0x2

.field public static final DISPLAY_MODE_DEFAULT:I = 0x1

.field public static final DISPLAY_MODE_IMMEDIATE:I = 0x0

.field public static final DISPLAY_MODE_USER:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PERMANENT:I = 0x3

.field public static final ERROR_TEMPORARY:I = 0x2

.field public static final ERROR_UNDEFINED:I = 0xff

.field public static final LANGUAGE_CHINESE:I = 0x6

.field public static final LANGUAGE_ENGLISH:I = 0x1

.field public static final LANGUAGE_FRENCH:I = 0x2

.field public static final LANGUAGE_HEBREW:I = 0x7

.field public static final LANGUAGE_JAPANESE:I = 0x4

.field public static final LANGUAGE_KOREAN:I = 0x5

.field public static final LANGUAGE_SPANISH:I = 0x3

.field public static final LANGUAGE_UNKNOWN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "BearerData"

.field public static final MESSAGE_TYPE_CANCELLATION:I = 0x3

.field public static final MESSAGE_TYPE_DELIVER:I = 0x1

.field public static final MESSAGE_TYPE_DELIVERY_ACK:I = 0x4

.field public static final MESSAGE_TYPE_DELIVER_REPORT:I = 0x7

.field public static final MESSAGE_TYPE_READ_ACK:I = 0x6

.field public static final MESSAGE_TYPE_SUBMIT:I = 0x2

.field public static final MESSAGE_TYPE_SUBMIT_REPORT:I = 0x8

.field public static final MESSAGE_TYPE_USER_ACK:I = 0x5

.field public static final PRIORITY_EMERGENCY:I = 0x3

.field public static final PRIORITY_INTERACTIVE:I = 0x1

.field public static final PRIORITY_NORMAL:I = 0x0

.field public static final PRIORITY_URGENT:I = 0x2

.field public static final PRIVACY_CONFIDENTIAL:I = 0x2

.field public static final PRIVACY_NOT_RESTRICTED:I = 0x0

.field public static final PRIVACY_RESTRICTED:I = 0x1

.field public static final PRIVACY_SECRET:I = 0x3

.field public static final RELATIVE_TIME_DAYS_LIMIT:I = 0xc4

.field public static final RELATIVE_TIME_HOURS_LIMIT:I = 0xa7

.field public static final RELATIVE_TIME_INDEFINITE:I = 0xf5

.field public static final RELATIVE_TIME_MINS_LIMIT:I = 0x8f

.field public static final RELATIVE_TIME_MOBILE_INACTIVE:I = 0xf7

.field public static final RELATIVE_TIME_NOW:I = 0xf6

.field public static final RELATIVE_TIME_RESERVED:I = 0xf8

.field public static final RELATIVE_TIME_WEEKS_LIMIT:I = 0xf4

.field public static final STATUS_ACCEPTED:I = 0x0

.field public static final STATUS_BLOCKED_DESTINATION:I = 0x7

.field public static final STATUS_CANCELLED:I = 0x3

.field public static final STATUS_CANCEL_FAILED:I = 0x6

.field public static final STATUS_DELIVERED:I = 0x2

.field public static final STATUS_DEPOSITED_TO_INTERNET:I = 0x1

.field public static final STATUS_DUPLICATE_MESSAGE:I = 0x9

.field public static final STATUS_INVALID_DESTINATION:I = 0xa

.field public static final STATUS_MESSAGE_EXPIRED:I = 0xd

.field public static final STATUS_NETWORK_CONGESTION:I = 0x4

.field public static final STATUS_NETWORK_ERROR:I = 0x5

.field public static final STATUS_TEXT_TOO_LONG:I = 0x8

.field public static final STATUS_UNDEFINED:I = 0xff

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1f

.field private static final SUBPARAM_ALERT_ON_MESSAGE_DELIVERY:B = 0xct

.field private static final SUBPARAM_CALLBACK_NUMBER:B = 0xet

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_ABSOLUTE:B = 0x6t

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_RELATIVE:B = 0x7t

.field private static final SUBPARAM_ID_LAST_DEFINED:B = 0x17t

.field private static final SUBPARAM_LANGUAGE_INDICATOR:B = 0xdt

.field private static final SUBPARAM_MESSAGE_CENTER_TIME_STAMP:B = 0x3t

.field private static final SUBPARAM_MESSAGE_DEPOSIT_INDEX:B = 0x11t

.field private static final SUBPARAM_MESSAGE_DISPLAY_MODE:B = 0xft

.field private static final SUBPARAM_MESSAGE_IDENTIFIER:B = 0x0t

.field private static final SUBPARAM_MESSAGE_STATUS:B = 0x14t

.field private static final SUBPARAM_NUMBER_OF_MESSAGES:B = 0xbt

.field private static final SUBPARAM_PRIORITY_INDICATOR:B = 0x8t

.field private static final SUBPARAM_PRIVACY_INDICATOR:B = 0x9t

.field private static final SUBPARAM_REPLY_OPTION:B = 0xat

.field private static final SUBPARAM_SERVICE_CATEGORY_PROGRAM_DATA:B = 0x12t

.field private static final SUBPARAM_SERVICE_CATEGORY_PROGRAM_RESULTS:B = 0x13t

.field private static final SUBPARAM_USER_DATA:B = 0x1t

.field private static final SUBPARAM_USER_RESPONSE_CODE:B = 0x2t

.field private static final SUBPARAM_VALIDITY_PERIOD_ABSOLUTE:B = 0x4t

.field private static final SUBPARAM_VALIDITY_PERIOD_RELATIVE:B = 0x5t

.field private static sSmsInterfaces:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;


# instance fields
.field public alert:I

.field public alertIndicatorSet:Z

.field public callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

.field public deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public deferredDeliveryTimeRelative:I

.field public deferredDeliveryTimeRelativeSet:Z

.field public deliveryAckReq:Z

.field public depositIndex:I

.field public displayMode:I

.field public displayModeSet:Z

.field public errorClass:I

.field public hasUserDataHeader:Z

.field public language:I

.field public languageIndicatorSet:Z

.field public messageId:I

.field public messageStatus:I

.field public messageStatusSet:Z

.field public messageType:I

.field public msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public numberOfMessages:I

.field public priority:I

.field public priorityIndicatorSet:Z

.field public privacy:I

.field public privacyIndicatorSet:Z

.field public readAckReq:Z

.field public reportReq:Z

.field public serviceCategoryProgramData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation
.end field

.field public serviceCategoryProgramResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramResults;",
            ">;"
        }
    .end annotation
.end field

.field public userAckReq:Z

.field public userData:Lcom/android/internal/telephony/cdma/sms/UserData;

.field public userResponseCode:I

.field public userResponseCodeSet:Z

.field public validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public validityPeriodRelative:I

.field public validityPeriodRelativeSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/ViaPolicyManager;->getSmsInterfaces()Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->sSmsInterfaces:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 123
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 134
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    .line 135
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 146
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    .line 147
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    .line 159
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    .line 160
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    .line 178
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 179
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    .line 211
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    .line 212
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    .line 213
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    .line 239
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    .line 50
    return-void
.end method

.method public static calcTextEncodingDetails(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 7
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force7BitEncoding"    # Z
    .param p2, "encodingType"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 2049
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v1

    .line 2050
    .local v1, "septets":I
    if-ne p2, v6, :cond_0

    .line 2051
    const-string/jumbo v3, "BearerData"

    const-string/jumbo v4, "16bit in cdma"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    const/4 v1, -0x1

    .line 2054
    :cond_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    const/16 v3, 0xa0

    if-gt v1, v3, :cond_2

    .line 2055
    new-instance v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 2056
    .local v2, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iput v5, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2057
    iput v1, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 2058
    rsub-int v3, v1, 0xa0

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2059
    iput v5, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 2085
    :cond_1
    :goto_0
    return-object v2

    .line 2066
    .end local v2    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    const-string/jumbo v3, "BearerData"

    const-string/jumbo v4, "gsm can understand the control character, but cdma ignore it(<0x20)"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    sget-object v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->sSmsInterfaces:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    invoke-interface {v3, p0, p1}, Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;->calcTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    .line 2068
    .restart local v2    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v3, v5, :cond_1

    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v3, v5, :cond_1

    .line 2071
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 2072
    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    mul-int/lit8 v0, v3, 0x2

    .line 2073
    .local v0, "octets":I
    const/16 v3, 0x8c

    if-le v0, v3, :cond_3

    .line 2074
    add-int/lit16 v3, v0, 0x85

    div-int/lit16 v3, v3, 0x86

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2076
    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v3, v3, 0x86

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2082
    :goto_1
    iput v6, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_0

    .line 2079
    :cond_3
    iput v5, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2080
    rsub-int v3, v0, 0x8c

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_1
.end method

.method public static calcTextEncodingDetails(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force7BitEncoding"    # Z
    .param p2, "isEntireMsg"    # Z

    .prologue
    const/4 v3, 0x1

    .line 493
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v0

    .line 494
    .local v0, "septets":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa0

    if-gt v0, v2, :cond_1

    .line 495
    new-instance v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 496
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iput v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 497
    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 498
    rsub-int v2, v0, 0xa0

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 499
    iput v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 510
    :cond_0
    return-object v1

    .line 501
    .end local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .line 503
    .restart local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v2, v3, :cond_0

    if-eqz p2, :cond_0

    .line 507
    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    return-object v2
.end method

.method public static countAsciiSeptets(Ljava/lang/CharSequence;Z)I
    .locals 5
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force"    # Z

    .prologue
    const/4 v4, -0x1

    .line 472
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 473
    .local v1, "msgLen":I
    if-eqz p1, :cond_0

    return v1

    .line 474
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 475
    sget-object v2, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 476
    return v4

    .line 474
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_2
    return v1
.end method

.method public static decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 1
    .param p0, "smsData"    # [B

    .prologue
    .line 1894
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 12
    .param p0, "smsData"    # [B
    .param p1, "serviceCategory"    # I

    .prologue
    const/16 v10, 0x17

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 1917
    if-nez p0, :cond_0

    .line 1918
    const-string/jumbo v8, "BearerData"

    const-string/jumbo v9, "bearerData == null, cant go on to decode"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    return-object v11

    .line 1923
    :cond_0
    :try_start_0
    new-instance v5, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v5, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1924
    .local v5, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 1925
    .local v0, "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v4, 0x0

    .line 1926
    .local v4, "foundSubparamMask":I
    :cond_1
    :goto_0
    invoke-virtual {v5}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v8

    if-lez v8, :cond_3

    .line 1927
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 1928
    .local v6, "subparamId":I
    shl-int v7, v9, v6

    .line 1935
    .local v7, "subparamIdBit":I
    and-int v8, v4, v7

    if-eqz v8, :cond_2

    .line 1936
    if-ltz v6, :cond_2

    .line 1937
    if-gt v6, v10, :cond_2

    .line 1938
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "illegal duplicate subparameter ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1939
    const-string/jumbo v10, ")"

    .line 1938
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2029
    .end local v0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v4    # "foundSubparamMask":I
    .end local v5    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v6    # "subparamId":I
    .end local v7    # "subparamIdBit":I
    :catch_0
    move-exception v3

    .line 2030
    .local v3, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string/jumbo v8, "BearerData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BearerData decode failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    .end local v3    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :goto_1
    return-object v11

    .line 1942
    .restart local v0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v4    # "foundSubparamMask":I
    .restart local v5    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v6    # "subparamId":I
    .restart local v7    # "subparamIdBit":I
    :cond_2
    packed-switch v6, :pswitch_data_0

    .line 2001
    :pswitch_0
    :try_start_1
    invoke-static {v0, v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeReserved(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;I)Z

    move-result v1

    .line 2003
    .local v1, "decodeSuccess":Z
    :goto_2
    if-eqz v1, :cond_1

    .line 2004
    if-ltz v6, :cond_1

    .line 2005
    if-gt v6, v10, :cond_1

    .line 2006
    or-int/2addr v4, v7

    goto :goto_0

    .line 1944
    .end local v1    # "decodeSuccess":Z
    :pswitch_1
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 1947
    .end local v1    # "decodeSuccess":Z
    :pswitch_2
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 1950
    .end local v1    # "decodeSuccess":Z
    :pswitch_3
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 1953
    .end local v1    # "decodeSuccess":Z
    :pswitch_4
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 1956
    .end local v1    # "decodeSuccess":Z
    :pswitch_5
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 1959
    .end local v1    # "decodeSuccess":Z
    :pswitch_6
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 1962
    .end local v1    # "decodeSuccess":Z
    :pswitch_7
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 1965
    .end local v1    # "decodeSuccess":Z
    :pswitch_8
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 1968
    .end local v1    # "decodeSuccess":Z
    :pswitch_9
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 1971
    .end local v1    # "decodeSuccess":Z
    :pswitch_a
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 1974
    .end local v1    # "decodeSuccess":Z
    :pswitch_b
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 1977
    .end local v1    # "decodeSuccess":Z
    :pswitch_c
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 1980
    .end local v1    # "decodeSuccess":Z
    :pswitch_d
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 1983
    .end local v1    # "decodeSuccess":Z
    :pswitch_e
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 1986
    .end local v1    # "decodeSuccess":Z
    :pswitch_f
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 1989
    .end local v1    # "decodeSuccess":Z
    :pswitch_10
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 1992
    .end local v1    # "decodeSuccess":Z
    :pswitch_11
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 1995
    .end local v1    # "decodeSuccess":Z
    :pswitch_12
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 1998
    .end local v1    # "decodeSuccess":Z
    :pswitch_13
    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .restart local v1    # "decodeSuccess":Z
    goto :goto_2

    .line 2009
    .end local v1    # "decodeSuccess":Z
    .end local v6    # "subparamId":I
    .end local v7    # "subparamIdBit":I
    :cond_3
    and-int/lit8 v8, v4, 0x1

    if-nez v8, :cond_4

    .line 2010
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string/jumbo v9, "missing MESSAGE_IDENTIFIER subparam"

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2031
    .end local v0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v4    # "foundSubparamMask":I
    .end local v5    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :catch_1
    move-exception v2

    .line 2032
    .local v2, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string/jumbo v8, "BearerData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BearerData decode failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2012
    .end local v2    # "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    .restart local v0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v4    # "foundSubparamMask":I
    .restart local v5    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :cond_4
    :try_start_2
    iget-object v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v8, :cond_5

    .line 2013
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->isCmasAlertCategory(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2014
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;I)V

    .line 2028
    :cond_5
    :goto_3
    return-object v0

    .line 2015
    :cond_6
    iget-object v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v8, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v8, v9, :cond_8

    .line 2016
    xor-int/lit8 v8, v4, 0x1

    xor-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_7

    .line 2020
    const-string/jumbo v8, "BearerData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IS-91 must occur without extra subparams ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2021
    const-string/jumbo v10, ")"

    .line 2020
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    :cond_7
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto :goto_3

    .line 2025
    :cond_8
    iget-object v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v9, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 1942
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_d
        :pswitch_4
        :pswitch_5
        :pswitch_11
        :pswitch_e
        :pswitch_6
        :pswitch_f
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private static decode7bitAscii([BII)Ljava/lang/String;
    .locals 11
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x20

    const/16 v9, 0xd

    const/16 v8, 0xa

    .line 1081
    mul-int/lit8 p1, p1, 0x8

    .line 1082
    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1083
    .local v4, "strBuf":Ljava/lang/StringBuffer;
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v3, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1084
    .local v3, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    mul-int/lit8 v6, p1, 0x8

    mul-int/lit8 v7, p2, 0x7

    add-int v5, v6, v7

    .line 1085
    .local v5, "wantedBits":I
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v6

    if-ge v6, v5, :cond_0

    .line 1086
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "insufficient data (wanted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1087
    const-string/jumbo v8, " bits, but only have "

    .line 1086
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1087
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v8

    .line 1086
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1087
    const-string/jumbo v8, ")"

    .line 1086
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    .end local v3    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v4    # "strBuf":Ljava/lang/StringBuffer;
    .end local v5    # "wantedBits":I
    :catch_0
    move-exception v1

    .line 1106
    .local v1, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "7bit ASCII decode failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1089
    .end local v1    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    .restart local v3    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v4    # "strBuf":Ljava/lang/StringBuffer;
    .restart local v5    # "wantedBits":I
    :cond_0
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1090
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_4

    .line 1091
    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    .line 1092
    .local v0, "charCode":I
    if-lt v0, v10, :cond_1

    .line 1093
    sget v6, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP_MAX_INDEX:I

    if-gt v0, v6, :cond_1

    .line 1094
    sget-object v6, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    add-int/lit8 v7, v0, -0x20

    aget-char v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1090
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1095
    :cond_1
    if-ne v0, v8, :cond_2

    .line 1096
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1097
    :cond_2
    if-ne v0, v9, :cond_3

    .line 1098
    const/16 v6, 0xd

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1101
    :cond_3
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1104
    .end local v0    # "charCode":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    return-object v6
.end method

.method private static decode7bitGsm([BII)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1114
    mul-int/lit8 v6, p1, 0x8

    .line 1115
    .local v6, "offsetBits":I
    add-int/lit8 v0, v6, 0x6

    div-int/lit8 v7, v0, 0x7

    .line 1116
    .local v7, "offsetSeptets":I
    sub-int/2addr p2, v7

    .line 1117
    mul-int/lit8 v0, v7, 0x7

    sub-int v3, v0, v6

    .local v3, "paddingBits":I
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    .line 1118
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v8

    .line 1120
    .local v8, "result":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 1121
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string/jumbo v1, "7bit GSM decoding failed"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1123
    :cond_0
    return-object v8
.end method

.method private static decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 11
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x8

    .line 1413
    const/16 v0, 0x8

    .line 1414
    .local v0, "EXPECTED_PARAM_SIZE":I
    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    mul-int/lit8 v6, v8, 0x8

    .line 1415
    .local v6, "paramBits":I
    if-ge v6, v9, :cond_0

    .line 1416
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1417
    const/4 v8, 0x0

    return v8

    .line 1419
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1420
    .local v1, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-virtual {p1, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1421
    const/4 v4, 0x4

    .line 1422
    .local v4, "fieldBits":B
    const/4 v2, 0x1

    .line 1423
    .local v2, "consumedBits":B
    iget v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v8, v10, :cond_1

    .line 1424
    const/4 v8, 0x3

    invoke-virtual {p1, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 1425
    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 1426
    const/16 v4, 0x8

    .line 1427
    int-to-byte v2, v9

    .line 1429
    .end local v2    # "consumedBits":B
    :cond_1
    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    iput v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1430
    add-int/lit8 v8, v2, 0x8

    int-to-byte v2, v8

    .line 1431
    .local v2, "consumedBits":B
    sub-int v7, v6, v2

    .line 1432
    .local v7, "remainingBits":I
    iget v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int v3, v8, v4

    .line 1433
    .local v3, "dataBits":I
    sub-int v5, v7, v3

    .line 1434
    .local v5, "paddingBits":I
    if-ge v7, v3, :cond_2

    .line 1435
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CALLBACK_NUMBER subparam encoding size error (remainingBits + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1436
    const-string/jumbo v10, ", dataBits + "

    .line 1435
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1437
    const-string/jumbo v10, ", paddingBits + "

    .line 1435
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1437
    const-string/jumbo v10, ")"

    .line 1435
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1439
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v8

    iput-object v8, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1440
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1441
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 1442
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1443
    return v10
.end method

.method private static decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .param p3, "width"    # I
    .param p4, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1058
    if-ltz p2, :cond_0

    mul-int v3, p2, p3

    add-int/2addr v3, p1

    array-length v4, p0

    if-le v3, v4, :cond_2

    .line 1060
    :cond_0
    rem-int v2, p1, p3

    .line 1061
    .local v2, "padding":I
    array-length v3, p0

    sub-int/2addr v3, p1

    sub-int/2addr v3, v2

    div-int v1, v3, p3

    .line 1062
    .local v1, "maxNumFields":I
    if-gez v1, :cond_1

    .line 1063
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " decode failed: offset out of range"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1065
    :cond_1
    const-string/jumbo v3, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " decode error: offset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " numFields = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1066
    const-string/jumbo v5, " data.length = "

    .line 1065
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1066
    array-length v5, p0

    .line 1065
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1066
    const-string/jumbo v5, " maxNumFields = "

    .line 1065
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    move p2, v1

    .line 1071
    .end local v1    # "maxNumFields":I
    .end local v2    # "padding":I
    :cond_2
    :try_start_0
    new-instance v3, Ljava/lang/String;

    mul-int v4, p2, p3

    invoke-direct {v3, p0, p1, v4, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " decode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static decodeCmasUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;I)V
    .locals 15
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "serviceCategory"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1813
    new-instance v8, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1814
    .local v8, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v8}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v0

    const/16 v13, 0x8

    if-ge v0, v13, :cond_0

    .line 1815
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string/jumbo v13, "emergency CB with no CMAE_protocol_version"

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1817
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    .line 1818
    .local v10, "protocolVersion":I
    if-eqz v10, :cond_1

    .line 1819
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unsupported CMAE_protocol_version "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1822
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryToCmasMessageClass(I)I

    move-result v1

    .line 1823
    .local v1, "messageClass":I
    const/4 v2, -0x1

    .line 1824
    .local v2, "category":I
    const/4 v3, -0x1

    .line 1825
    .local v3, "responseType":I
    const/4 v4, -0x1

    .line 1826
    .local v4, "severity":I
    const/4 v5, -0x1

    .line 1827
    .local v5, "urgency":I
    const/4 v6, -0x1

    .line 1829
    .local v6, "certainty":I
    :goto_0
    invoke-virtual {v8}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v0

    const/16 v13, 0x10

    if-lt v0, v13, :cond_2

    .line 1830
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 1831
    .local v12, "recordType":I
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    .line 1832
    .local v11, "recordLen":I
    packed-switch v12, :pswitch_data_0

    .line 1876
    const-string/jumbo v0, "BearerData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "skipping unsupported CMAS record type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    mul-int/lit8 v0, v11, 0x8

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto :goto_0

    .line 1834
    :pswitch_0
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1835
    .local v7, "alertUserData":Lcom/android/internal/telephony/cdma/sms/UserData;
    const/4 v0, 0x5

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    iput v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1836
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1837
    const/4 v0, 0x0

    iput v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1840
    iget v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    packed-switch v0, :pswitch_data_1

    .line 1857
    :pswitch_1
    const/4 v9, 0x0

    .line 1860
    .local v9, "numFields":I
    :goto_1
    iput v9, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1861
    mul-int/lit8 v0, v11, 0x8

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1862
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    .line 1863
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    goto :goto_0

    .line 1843
    .end local v9    # "numFields":I
    :pswitch_2
    add-int/lit8 v9, v11, -0x1

    .line 1844
    .restart local v9    # "numFields":I
    goto :goto_1

    .line 1849
    .end local v9    # "numFields":I
    :pswitch_3
    mul-int/lit8 v0, v11, 0x8

    add-int/lit8 v0, v0, -0x5

    div-int/lit8 v9, v0, 0x7

    .restart local v9    # "numFields":I
    goto :goto_1

    .line 1853
    .end local v9    # "numFields":I
    :pswitch_4
    add-int/lit8 v0, v11, -0x1

    div-int/lit8 v9, v0, 0x2

    .restart local v9    # "numFields":I
    goto :goto_1

    .line 1867
    .end local v7    # "alertUserData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local v9    # "numFields":I
    :pswitch_5
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    .line 1868
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    .line 1869
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    .line 1870
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 1871
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 1872
    mul-int/lit8 v0, v11, 0x8

    add-int/lit8 v0, v0, -0x1c

    invoke-virtual {v8, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto/16 :goto_0

    .line 1882
    .end local v11    # "recordLen":I
    .end local v12    # "recordType":I
    :cond_2
    new-instance v0, Landroid/telephony/SmsCbCmasInfo;

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 1812
    return-void

    .line 1832
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1840
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 1507
    const/16 v0, 0x30

    .line 1508
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1509
    .local v1, "decodeSuccess":Z
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1510
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 1511
    add-int/lit8 v2, v2, -0x30

    .line 1512
    const/4 v1, 0x1

    .line 1514
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    .line 1513
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1516
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1517
    :cond_1
    const-string/jumbo v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DEFERRED_DELIVERY_TIME_ABSOLUTE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1518
    if-eqz v1, :cond_3

    const-string/jumbo v3, "succeeded"

    .line 1517
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1519
    const-string/jumbo v5, " (extra bits = "

    .line 1517
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1519
    const-string/jumbo v5, ")"

    .line 1517
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1522
    return v1

    .line 1518
    :cond_3
    const-string/jumbo v3, "failed"

    goto :goto_0
.end method

.method private static decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1547
    const/16 v0, 0x8

    .line 1548
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1549
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1550
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 1551
    add-int/lit8 v2, v2, -0x8

    .line 1552
    const/4 v1, 0x1

    .line 1553
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    .line 1555
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1556
    :cond_1
    const-string/jumbo v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DEFERRED_DELIVERY_TIME_RELATIVE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1557
    if-eqz v1, :cond_3

    const-string/jumbo v3, "succeeded"

    .line 1556
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1558
    const-string/jumbo v5, " (extra bits = "

    .line 1556
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1558
    const-string/jumbo v5, ")"

    .line 1556
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1561
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    .line 1562
    return v1

    .line 1557
    :cond_3
    const-string/jumbo v3, "failed"

    goto :goto_0
.end method

.method private static decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1362
    const/16 v0, 0x10

    .line 1363
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1364
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1365
    .local v2, "paramBits":I
    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 1366
    add-int/lit8 v2, v2, -0x10

    .line 1367
    const/4 v1, 0x1

    .line 1368
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    .line 1370
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1371
    :cond_1
    const-string/jumbo v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MESSAGE_DEPOSIT_INDEX decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1372
    if-eqz v1, :cond_3

    const-string/jumbo v3, "succeeded"

    .line 1371
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1373
    const-string/jumbo v5, " (extra bits = "

    .line 1371
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1373
    const-string/jumbo v5, ")"

    .line 1371
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1376
    return v1

    .line 1372
    :cond_3
    const-string/jumbo v3, "failed"

    goto :goto_0
.end method

.method private static decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1608
    const/16 v0, 0x8

    .line 1609
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1610
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1611
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 1612
    add-int/lit8 v2, v2, -0x8

    .line 1613
    const/4 v1, 0x1

    .line 1614
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    .line 1615
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1617
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1618
    :cond_1
    const-string/jumbo v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DISPLAY_MODE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1619
    if-eqz v1, :cond_3

    const-string/jumbo v3, "succeeded"

    .line 1618
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1620
    const-string/jumbo v5, " (extra bits = "

    .line 1618
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1620
    const-string/jumbo v5, ")"

    .line 1618
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1623
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    .line 1624
    return v1

    .line 1619
    :cond_3
    const-string/jumbo v3, "failed"

    goto :goto_0
.end method

.method private static decodeDtmfSmsAddress([BI)Ljava/lang/String;
    .locals 6
    .param p0, "rawData"    # [B
    .param p1, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 1384
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1385
    .local v1, "strBuf":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_4

    .line 1386
    div-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v4, v4, 0x4

    ushr-int/2addr v3, v4

    and-int/lit8 v2, v3, 0xf

    .line 1387
    .local v2, "val":I
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/16 v3, 0x9

    if-gt v2, v3, :cond_0

    invoke-static {v2, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1385
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1388
    :cond_0
    if-ne v2, v5, :cond_1

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1389
    :cond_1
    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    const/16 v3, 0x2a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1390
    :cond_2
    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1391
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid SMS address DTMF code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1393
    .end local v2    # "val":I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 3
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    packed-switch v0, :pswitch_data_0

    .line 1313
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported IS-91 message type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1314
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1313
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1314
    const-string/jumbo v2, ")"

    .line 1313
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1303
    :pswitch_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 1299
    :goto_0
    return-void

    .line 1306
    :pswitch_1
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto :goto_0

    .line 1310
    :pswitch_2
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto :goto_0

    .line 1301
    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1284
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v2, v4}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1285
    .local v2, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    div-int/lit8 v1, v4, 0x4

    .line 1286
    .local v1, "dataLen":I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1287
    .local v3, "numFields":I
    const/16 v4, 0xe

    if-gt v1, v4, :cond_0

    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    .line 1288
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string/jumbo v5, "IS-91 voicemail status decoding failed"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1287
    :cond_1
    if-lt v1, v3, :cond_0

    .line 1290
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1291
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1292
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1293
    int-to-byte v4, v3

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1294
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 1295
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1283
    return-void
.end method

.method private static decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1261
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1262
    .local v2, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v5

    div-int/lit8 v0, v5, 0x6

    .line 1263
    .local v0, "dataLen":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1265
    .local v3, "numFields":I
    const/16 v5, 0xe

    if-gt v3, v5, :cond_0

    if-ge v0, v3, :cond_1

    .line 1266
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string/jumbo v6, "IS-91 short message decoding failed"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1268
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1269
    .local v4, "strbuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 1270
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1269
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1272
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1259
    return-void
.end method

.method private static decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 11
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x3

    .line 1218
    new-instance v4, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v4, v8}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1219
    .local v4, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v8

    div-int/lit8 v1, v8, 0x6

    .line 1220
    .local v1, "dataLen":I
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v5, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1221
    .local v5, "numFields":I
    const/16 v8, 0xe

    if-gt v1, v8, :cond_0

    if-ge v1, v9, :cond_1

    .line 1222
    :cond_0
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string/jumbo v9, "IS-91 voicemail status decoding failed"

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1221
    :cond_1
    if-lt v1, v5, :cond_0

    .line 1225
    :try_start_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1226
    .local v7, "strbuf":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v8

    if-lt v8, v10, :cond_2

    .line 1227
    sget-object v8, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    const/4 v9, 0x6

    invoke-virtual {v4, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1242
    .end local v7    # "strbuf":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    .line 1243
    .local v3, "ex":Ljava/lang/NumberFormatException;
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IS-91 voicemail status decoding failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1229
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .restart local v7    # "strbuf":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1230
    .local v0, "data":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 1231
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1232
    .local v6, "prioCode":C
    const/16 v8, 0x20

    if-ne v6, v8, :cond_3

    .line 1233
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1240
    :goto_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1241
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    add-int/lit8 v9, v5, -0x3

    const/4 v10, 0x3

    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1216
    return-void

    .line 1234
    :cond_3
    const/16 v8, 0x21

    if-ne v6, v8, :cond_4

    .line 1235
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1244
    .end local v0    # "data":Ljava/lang/String;
    .end local v6    # "prioCode":C
    .end local v7    # "strbuf":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v2

    .line 1245
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IS-91 voicemail status decoding failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1237
    .end local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v6    # "prioCode":C
    .restart local v7    # "strbuf":Ljava/lang/StringBuffer;
    :cond_4
    :try_start_2
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IS-91 voicemail status decoding failed: illegal priority setting ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1238
    const-string/jumbo v10, ")"

    .line 1237
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method private static decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1588
    const/16 v0, 0x8

    .line 1589
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1590
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1591
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 1592
    add-int/lit8 v2, v2, -0x8

    .line 1593
    const/4 v1, 0x1

    .line 1594
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    .line 1596
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1597
    :cond_1
    const-string/jumbo v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LANGUAGE_INDICATOR decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1598
    if-eqz v1, :cond_3

    const-string/jumbo v3, "succeeded"

    .line 1597
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1599
    const-string/jumbo v5, " (extra bits = "

    .line 1597
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1599
    const-string/jumbo v5, ")"

    .line 1597
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1602
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 1603
    return v1

    .line 1598
    :cond_3
    const-string/jumbo v3, "failed"

    goto :goto_0
.end method

.method private static decodeLatin([BII)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1129
    const-string/jumbo v0, "ISO-8859-1"

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v3, 0x1

    .line 977
    const/16 v0, 0x18

    .line 978
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 979
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    mul-int/lit8 v2, v5, 0x8

    .line 980
    .local v2, "paramBits":I
    const/16 v5, 0x18

    if-lt v2, v5, :cond_0

    .line 981
    add-int/lit8 v2, v2, -0x18

    .line 982
    const/4 v1, 0x1

    .line 983
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 984
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 985
    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    or-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 986
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    if-ne v5, v3, :cond_3

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 987
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 989
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 990
    :cond_1
    const-string/jumbo v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MESSAGE_IDENTIFIER decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 991
    if-eqz v1, :cond_4

    const-string/jumbo v3, "succeeded"

    .line 990
    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 992
    const-string/jumbo v5, " (extra bits = "

    .line 990
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 992
    const-string/jumbo v5, ")"

    .line 990
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 995
    return v1

    :cond_3
    move v3, v4

    .line 986
    goto :goto_0

    .line 991
    :cond_4
    const-string/jumbo v3, "failed"

    goto :goto_1
.end method

.method private static decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 1469
    const/16 v0, 0x30

    .line 1470
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1471
    .local v1, "decodeSuccess":Z
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1472
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 1473
    add-int/lit8 v2, v2, -0x30

    .line 1474
    const/4 v1, 0x1

    .line 1475
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1477
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1478
    :cond_1
    const-string/jumbo v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MESSAGE_CENTER_TIME_STAMP decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1479
    if-eqz v1, :cond_3

    const-string/jumbo v3, "succeeded"

    .line 1478
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1480
    const-string/jumbo v5, " (extra bits = "

    .line 1478
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1480
    const-string/jumbo v5, ")"

    .line 1478
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1483
    return v1

    .line 1479
    :cond_3
    const-string/jumbo v3, "failed"

    goto :goto_0
.end method

.method private static decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1343
    const/16 v0, 0x8

    .line 1344
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1345
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1346
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 1347
    add-int/lit8 v2, v2, -0x8

    .line 1348
    const/4 v1, 0x1

    .line 1349
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 1351
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1352
    :cond_1
    const-string/jumbo v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NUMBER_OF_MESSAGES decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1353
    if-eqz v1, :cond_3

    const-string/jumbo v3, "succeeded"

    .line 1352
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1354
    const-string/jumbo v5, " (extra bits = "

    .line 1352
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1354
    const-string/jumbo v5, ")"

    .line 1352
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1357
    return v1

    .line 1353
    :cond_3
    const-string/jumbo v3, "failed"

    goto :goto_0
.end method

.method private static decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1650
    const/16 v0, 0x8

    .line 1651
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1652
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1653
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 1654
    add-int/lit8 v2, v2, -0x8

    .line 1655
    const/4 v1, 0x1

    .line 1656
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    .line 1657
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1659
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1660
    :cond_1
    const-string/jumbo v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ALERT_ON_MESSAGE_DELIVERY decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1661
    if-eqz v1, :cond_3

    const-string/jumbo v3, "succeeded"

    .line 1660
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1662
    const-string/jumbo v5, " (extra bits = "

    .line 1660
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1662
    const-string/jumbo v5, ")"

    .line 1660
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1665
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    .line 1666
    return v1

    .line 1661
    :cond_3
    const-string/jumbo v3, "failed"

    goto :goto_0
.end method

.method private static decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1448
    const/16 v0, 0x8

    .line 1449
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1450
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1451
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 1452
    add-int/lit8 v2, v2, -0x8

    .line 1453
    const/4 v1, 0x1

    .line 1454
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    .line 1455
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    .line 1457
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1458
    :cond_1
    const-string/jumbo v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MESSAGE_STATUS decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1459
    if-eqz v1, :cond_3

    const-string/jumbo v3, "succeeded"

    .line 1458
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1460
    const-string/jumbo v5, " (extra bits = "

    .line 1458
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1460
    const-string/jumbo v5, ")"

    .line 1458
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1463
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    .line 1464
    return v1

    .line 1459
    :cond_3
    const-string/jumbo v3, "failed"

    goto :goto_0
.end method

.method private static decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1629
    const/16 v0, 0x8

    .line 1630
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1631
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1632
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 1633
    add-int/lit8 v2, v2, -0x8

    .line 1634
    const/4 v1, 0x1

    .line 1635
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1636
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1638
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1639
    :cond_1
    const-string/jumbo v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PRIORITY_INDICATOR decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1640
    if-eqz v1, :cond_3

    const-string/jumbo v3, "succeeded"

    .line 1639
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1641
    const-string/jumbo v5, " (extra bits = "

    .line 1639
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1641
    const-string/jumbo v5, ")"

    .line 1639
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1644
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1645
    return v1

    .line 1640
    :cond_3
    const-string/jumbo v3, "failed"

    goto :goto_0
.end method

.method private static decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1567
    const/16 v0, 0x8

    .line 1568
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1569
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1570
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 1571
    add-int/lit8 v2, v2, -0x8

    .line 1572
    const/4 v1, 0x1

    .line 1573
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 1574
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1576
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1577
    :cond_1
    const-string/jumbo v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PRIVACY_INDICATOR decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1578
    if-eqz v1, :cond_3

    const-string/jumbo v3, "succeeded"

    .line 1577
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1579
    const-string/jumbo v5, " (extra bits = "

    .line 1577
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1579
    const-string/jumbo v5, ")"

    .line 1577
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1582
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    .line 1583
    return v1

    .line 1578
    :cond_3
    const-string/jumbo v3, "failed"

    goto :goto_0
.end method

.method private static decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1320
    const/16 v0, 0x8

    .line 1321
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1322
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1323
    .local v2, "paramBits":I
    if-lt v2, v6, :cond_0

    .line 1324
    add-int/lit8 v2, v2, -0x8

    .line 1325
    const/4 v1, 0x1

    .line 1326
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1327
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1328
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1329
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_6

    :goto_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1330
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1332
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1333
    :cond_1
    const-string/jumbo v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "REPLY_OPTION decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1334
    if-eqz v1, :cond_7

    const-string/jumbo v3, "succeeded"

    .line 1333
    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1335
    const-string/jumbo v5, " (extra bits = "

    .line 1333
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1335
    const-string/jumbo v5, ")"

    .line 1333
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1338
    return v1

    :cond_3
    move v3, v5

    .line 1326
    goto :goto_0

    :cond_4
    move v3, v5

    .line 1327
    goto :goto_1

    :cond_5
    move v3, v5

    .line 1328
    goto :goto_2

    :cond_6
    move v4, v5

    .line 1329
    goto :goto_3

    .line 1334
    :cond_7
    const-string/jumbo v3, "failed"

    goto :goto_4
.end method

.method private static decodeReserved(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;I)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .param p2, "subparamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1002
    const/4 v0, 0x0

    .line 1003
    .local v0, "decodeSuccess":Z
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    .line 1004
    .local v2, "subparamLen":I
    mul-int/lit8 v1, v2, 0x8

    .line 1005
    .local v1, "paramBits":I
    invoke-virtual {p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 1006
    const/4 v0, 0x1

    .line 1007
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1009
    :cond_0
    const-string/jumbo v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RESERVED bearer data subparameter "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1010
    if-eqz v0, :cond_1

    const-string/jumbo v3, "succeeded"

    .line 1009
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1010
    const-string/jumbo v5, " (param bits = "

    .line 1009
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1010
    const-string/jumbo v5, ")"

    .line 1009
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    if-nez v0, :cond_2

    .line 1012
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RESERVED bearer data subparameter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1013
    const-string/jumbo v5, " had invalid SUBPARAM_LEN "

    .line 1012
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1010
    :cond_1
    const-string/jumbo v3, "failed"

    goto :goto_0

    .line 1016
    :cond_2
    return v0
.end method

.method private static decodeServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 20
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1692
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 1693
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SERVICE_CATEGORY_PROGRAM_DATA decode failed: only "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1694
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v19

    .line 1693
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1694
    const-string/jumbo v19, " bits available"

    .line 1693
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1697
    :cond_0
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v17

    mul-int/lit8 v13, v17, 0x8

    .line 1698
    .local v13, "paramBits":I
    const/16 v17, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    .line 1699
    .local v11, "msgEncoding":I
    add-int/lit8 v13, v13, -0x5

    .line 1701
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v17

    move/from16 v0, v17

    if-ge v0, v13, :cond_1

    .line 1702
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SERVICE_CATEGORY_PROGRAM_DATA decode failed: only "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1703
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v19

    .line 1702
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1703
    const-string/jumbo v19, " bits available ("

    .line 1702
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1703
    const-string/jumbo v19, " bits expected)"

    .line 1702
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1706
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1708
    .local v14, "programDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramData;>;"
    const/16 v9, 0x30

    .line 1709
    .local v9, "CATEGORY_FIELD_MIN_SIZE":I
    const/4 v10, 0x0

    .line 1710
    .local v10, "decodeSuccess":Z
    :goto_0
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v13, v0, :cond_3

    .line 1711
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    .line 1712
    .local v3, "operation":I
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v17

    shl-int/lit8 v17, v17, 0x8

    const/16 v18, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v18

    or-int v4, v17, v18

    .line 1713
    .local v4, "category":I
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 1714
    .local v5, "language":I
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 1715
    .local v6, "maxMessages":I
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 1716
    .local v7, "alertOption":I
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 1717
    .local v12, "numFields":I
    add-int/lit8 v13, v13, -0x30

    .line 1719
    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getBitsForNumFields(II)I

    move-result v15

    .line 1720
    .local v15, "textBits":I
    if-ge v13, v15, :cond_2

    .line 1721
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "category name is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " bits in length,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1722
    const-string/jumbo v19, " but there are only "

    .line 1721
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1722
    const-string/jumbo v19, " bits available"

    .line 1721
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1725
    :cond_2
    new-instance v16, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1726
    .local v16, "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, v16

    iput v11, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1727
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1728
    move-object/from16 v0, v16

    iput v12, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1729
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1730
    sub-int/2addr v13, v15

    .line 1732
    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    .line 1733
    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1734
    .local v8, "categoryName":Ljava/lang/String;
    new-instance v2, Landroid/telephony/cdma/CdmaSmsCbProgramData;

    invoke-direct/range {v2 .. v8}, Landroid/telephony/cdma/CdmaSmsCbProgramData;-><init>(IIIIILjava/lang/String;)V

    .line 1736
    .local v2, "programData":Landroid/telephony/cdma/CdmaSmsCbProgramData;
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1738
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1741
    .end local v2    # "programData":Landroid/telephony/cdma/CdmaSmsCbProgramData;
    .end local v3    # "operation":I
    .end local v4    # "category":I
    .end local v5    # "language":I
    .end local v6    # "maxMessages":I
    .end local v7    # "alertOption":I
    .end local v8    # "categoryName":Ljava/lang/String;
    .end local v12    # "numFields":I
    .end local v15    # "textBits":I
    .end local v16    # "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_3
    if-eqz v10, :cond_4

    if-lez v13, :cond_5

    .line 1742
    :cond_4
    const-string/jumbo v18, "BearerData"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SERVICE_CATEGORY_PROGRAM_DATA decode "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1743
    if-eqz v10, :cond_6

    const-string/jumbo v17, "succeeded"

    .line 1742
    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1744
    const-string/jumbo v19, " (extra bits = "

    .line 1742
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1744
    const/16 v19, 0x29

    .line 1742
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1748
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/ArrayList;

    .line 1749
    return v10

    .line 1743
    :cond_6
    const-string/jumbo v17, "failed"

    goto :goto_1
.end method

.method private static decodeShiftJis([BII)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1135
    const-string/jumbo v0, "Shift_JIS"

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 6
    .param p0, "addr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1397
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1401
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v3, v3

    const-string/jumbo v4, "US-ASCII"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :goto_0
    return-void

    .line 1402
    :catch_0
    move-exception v0

    .line 1403
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string/jumbo v2, "invalid SMS address ASCII code"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1406
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDtmfSmsAddress([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    goto :goto_0
.end method

.method private static decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 1022
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1023
    .local v2, "paramBits":I
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1024
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1025
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1026
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1027
    const/4 v0, 0x5

    .line 1028
    .local v0, "consumedBits":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v3, v5, :cond_0

    .line 1029
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 1030
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1031
    const/16 v0, 0xd

    .line 1033
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1034
    add-int/lit8 v0, v0, 0x8

    .line 1035
    sub-int v1, v2, v0

    .line 1036
    .local v1, "dataBits":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1037
    return v5
.end method

.method private static decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V
    .locals 9
    .param p0, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "hasUserDataHeader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1141
    const/4 v3, 0x0

    .line 1142
    .local v3, "offset":I
    if-eqz p1, :cond_0

    .line 1143
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    aget-byte v6, v6, v8

    and-int/lit16 v5, v6, 0xff

    .line 1144
    .local v5, "udhLen":I
    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v3, v6, 0x0

    .line 1145
    new-array v2, v5, [B

    .line 1146
    .local v2, "headerData":[B
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v7, 0x1

    invoke-static {v6, v7, v2, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1147
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1149
    .end local v2    # "headerData":[B
    .end local v5    # "udhLen":I
    :cond_0
    iget v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    packed-switch v6, :pswitch_data_0

    .line 1196
    :pswitch_0
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unsupported user data encoding ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1197
    iget v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1196
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1197
    const-string/jumbo v8, ")"

    .line 1196
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1154
    :pswitch_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 1155
    const v7, 0x112005c

    .line 1154
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1160
    .local v1, "decodingtypeUTF8":Z
    iget v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    new-array v4, v6, [B

    .line 1161
    .local v4, "payload":[B
    iget v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 1162
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1164
    .local v0, "copyLen":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {v6, v8, v4, v8, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1165
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1167
    if-nez v1, :cond_2

    .line 1170
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1139
    .end local v0    # "copyLen":I
    .end local v1    # "decodingtypeUTF8":Z
    .end local v4    # "payload":[B
    :goto_1
    return-void

    .line 1162
    .restart local v1    # "decodingtypeUTF8":Z
    .restart local v4    # "payload":[B
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v6

    .restart local v0    # "copyLen":I
    goto :goto_0

    .line 1172
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1179
    .end local v0    # "copyLen":I
    .end local v1    # "decodingtypeUTF8":Z
    .end local v4    # "payload":[B
    :pswitch_2
    sget-object v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->sSmsInterfaces:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1180
    iget v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1179
    invoke-interface {v6, v7, v3, v8}, Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;->decode7bitAscii([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1183
    :pswitch_3
    sget-object v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->sSmsInterfaces:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1184
    iget v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1183
    invoke-interface {v6, v7, v3, v8}, Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;->decodeUtf16([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1187
    :pswitch_4
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1190
    :pswitch_5
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1193
    :pswitch_6
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v6, v3, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeShiftJis([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1671
    const/16 v0, 0x8

    .line 1672
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1673
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1674
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 1675
    add-int/lit8 v2, v2, -0x8

    .line 1676
    const/4 v1, 0x1

    .line 1677
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCode:I

    .line 1679
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1680
    :cond_1
    const-string/jumbo v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "USER_RESPONSE_CODE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1681
    if-eqz v1, :cond_3

    const-string/jumbo v3, "succeeded"

    .line 1680
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1682
    const-string/jumbo v5, " (extra bits = "

    .line 1680
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1682
    const-string/jumbo v5, ")"

    .line 1680
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1685
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    .line 1686
    return v1

    .line 1681
    :cond_3
    const-string/jumbo v3, "failed"

    goto :goto_0
.end method

.method private static decodeUtf16([BII)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1050
    rem-int/lit8 v0, p1, 0x2

    .line 1051
    .local v0, "padding":I
    add-int v1, p1, v0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    .line 1052
    const-string/jumbo v1, "utf-16be"

    const/4 v2, 0x2

    invoke-static {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static decodeUtf8([BII)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1043
    const-string/jumbo v0, "UTF-8"

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 1488
    const/16 v0, 0x30

    .line 1489
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1490
    .local v1, "decodeSuccess":Z
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1491
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 1492
    add-int/lit8 v2, v2, -0x30

    .line 1493
    const/4 v1, 0x1

    .line 1494
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1496
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1497
    :cond_1
    const-string/jumbo v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VALIDITY_PERIOD_ABSOLUTE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1498
    if-eqz v1, :cond_3

    const-string/jumbo v3, "succeeded"

    .line 1497
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1499
    const-string/jumbo v5, " (extra bits = "

    .line 1497
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1499
    const-string/jumbo v5, ")"

    .line 1497
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1502
    return v1

    .line 1498
    :cond_3
    const-string/jumbo v3, "failed"

    goto :goto_0
.end method

.method private static decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 1527
    const/16 v0, 0x8

    .line 1528
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1529
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1530
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 1531
    add-int/lit8 v2, v2, -0x8

    .line 1532
    const/4 v1, 0x1

    .line 1533
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    .line 1535
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1536
    :cond_1
    const-string/jumbo v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VALIDITY_PERIOD_RELATIVE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1537
    if-eqz v1, :cond_3

    const-string/jumbo v3, "succeeded"

    .line 1536
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1538
    const-string/jumbo v5, " (extra bits = "

    .line 1536
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1538
    const-string/jumbo v5, ")"

    .line 1536
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1541
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    .line 1542
    return v1

    .line 1537
    :cond_3
    const-string/jumbo v3, "failed"

    goto :goto_0
.end method

.method public static encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 907
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v5, :cond_f

    .line 908
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v5, :cond_e

    .line 907
    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 910
    :try_start_0
    new-instance v2, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 v3, 0xc8

    invoke-direct {v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 911
    .local v2, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 912
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 913
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v3, :cond_0

    .line 914
    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 915
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 918
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v3, :cond_1

    .line 919
    const/4 v3, 0x3

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 920
    sget-object v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->sSmsInterfaces:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    invoke-interface {v3, p0, v2}, Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;->encodeTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 922
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v3, :cond_2

    .line 923
    const/16 v3, 0xe

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 924
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 926
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    if-eqz v3, :cond_4

    .line 927
    :cond_3
    const/16 v3, 0xa

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 928
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 930
    :cond_4
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-eqz v3, :cond_5

    .line 931
    const/16 v3, 0xb

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 932
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 934
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v3, :cond_6

    .line 935
    const/4 v3, 0x5

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 936
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 938
    :cond_6
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v3, :cond_7

    .line 939
    const/16 v3, 0x9

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 940
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 942
    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v3, :cond_8

    .line 943
    const/16 v3, 0xd

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 944
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 946
    :cond_8
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v3, :cond_9

    .line 947
    const/16 v3, 0xf

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 948
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 950
    :cond_9
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v3, :cond_a

    .line 951
    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 952
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 954
    :cond_a
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v3, :cond_b

    .line 955
    const/16 v3, 0xc

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 956
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 958
    :cond_b
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v3, :cond_c

    .line 959
    const/16 v3, 0x14

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 960
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 962
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    .line 963
    const/16 v3, 0x13

    const/16 v4, 0x8

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 964
    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeScpResults(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 966
    :cond_d
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .end local v2    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :cond_e
    move v3, v4

    .line 908
    goto/16 :goto_0

    :cond_f
    move v3, v4

    .line 907
    goto/16 :goto_0

    .line 969
    :catch_0
    move-exception v0

    .line 970
    .local v0, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string/jumbo v3, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BearerData encode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    .end local v0    # "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    :goto_1
    return-object v6

    .line 967
    :catch_1
    move-exception v1

    .line 968
    .local v1, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const-string/jumbo v3, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BearerData encode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V
    .locals 8
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 600
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    .line 601
    .local v0, "payload":[B
    array-length v4, p1

    add-int/lit8 v2, v4, 0x1

    .line 602
    .local v2, "udhBytes":I
    add-int/lit8 v4, v2, 0x1

    div-int/lit8 v3, v4, 0x2

    .line 603
    .local v3, "udhCodeUnits":I
    array-length v4, v0

    div-int/lit8 v1, v4, 0x2

    .line 604
    .local v1, "payloadCodeUnits":I
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 605
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 606
    add-int v4, v3, v1

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 607
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 608
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, p1

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    .line 609
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, p1

    invoke-static {p1, v6, v4, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 610
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, v0

    invoke-static {v0, v6, v4, v2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 598
    return-void
.end method

.method private static encode7bitAscii(Ljava/lang/String;Z)[B
    .locals 9
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 517
    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 518
    .local v4, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 519
    .local v3, "msgLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 520
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 521
    .local v0, "charCode":I
    if-ne v0, v8, :cond_1

    .line 522
    if-eqz p1, :cond_0

    .line 523
    const/16 v5, 0x20

    const/4 v6, 0x7

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 519
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 525
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cannot ASCII encode ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    .end local v0    # "charCode":I
    .end local v2    # "i":I
    .end local v3    # "msgLen":I
    .end local v4    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :catch_0
    move-exception v1

    .line 533
    .local v1, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "7bit ASCII encode failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 528
    .end local v1    # "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    .restart local v0    # "charCode":I
    .restart local v2    # "i":I
    .restart local v3    # "msgLen":I
    .restart local v4    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :cond_1
    const/4 v5, 0x7

    :try_start_1
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_1

    .line 531
    .end local v0    # "charCode":I
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5
.end method

.method private static encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 7
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 586
    array-length v3, p1

    add-int/lit8 v1, v3, 0x1

    .line 587
    .local v1, "udhBytes":I
    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x6

    div-int/lit8 v2, v3, 0x7

    .line 588
    .local v2, "udhSeptets":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v2, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v0

    .line 589
    .local v0, "gcr":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    const/16 v3, 0x9

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 590
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 591
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 592
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 593
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 594
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    invoke-static {p1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 584
    return-void
.end method

.method public static encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "septetOffset"    # I
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 572
    if-eqz p2, :cond_0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, p1, v3, v4, v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v1

    .line 573
    .local v1, "fullData":[B
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;-><init>()V

    .line 574
    .local v2, "result":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    .line 575
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 576
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    return-object v2

    .end local v1    # "fullData":[B
    .end local v2    # "result":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    :cond_0
    move v3, v4

    .line 572
    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "7bit GSM encode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 798
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 799
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 800
    const/16 v3, 0x9

    .line 801
    .local v3, "paramBits":I
    const/4 v1, 0x0

    .line 802
    .local v1, "dataBits":I
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v5, v6, :cond_2

    .line 803
    const/16 v3, 0x10

    .line 804
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v1, v5, 0x8

    .line 808
    :goto_0
    add-int/2addr v3, v1

    .line 809
    div-int/lit8 v8, v3, 0x8

    rem-int/lit8 v5, v3, 0x8

    if-lez v5, :cond_3

    move v5, v6

    :goto_1
    add-int v4, v8, v5

    .line 810
    .local v4, "paramBytes":I
    mul-int/lit8 v5, v4, 0x8

    sub-int v2, v5, v3

    .line 811
    .local v2, "paddingBits":I
    invoke-virtual {p1, v9, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 812
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p1, v6, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 813
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v5, v6, :cond_0

    .line 814
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    const/4 v6, 0x3

    invoke-virtual {p1, v6, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 815
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    const/4 v6, 0x4

    invoke-virtual {p1, v6, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 817
    :cond_0
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p1, v9, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 818
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-virtual {p1, v1, v5}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 819
    if-lez v2, :cond_1

    invoke-virtual {p1, v2, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 796
    :cond_1
    return-void

    .line 806
    .end local v2    # "paddingBits":I
    .end local v4    # "paramBytes":I
    :cond_2
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v1, v5, 0x4

    goto :goto_0

    :cond_3
    move v5, v7

    .line 809
    goto :goto_1
.end method

.method private static encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 3
    .param p0, "addr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 784
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 786
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    const-string/jumbo v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :goto_0
    return-void

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string/jumbo v2, "invalid SMS address, cannot convert to ASCII"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 791
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDtmfSmsAddress(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    goto :goto_0
.end method

.method private static encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 862
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 863
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 864
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 860
    return-void
.end method

.method private static encodeDtmfSmsAddress(Ljava/lang/String;)[B
    .locals 10
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 759
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 760
    .local v3, "digits":I
    mul-int/lit8 v1, v3, 0x4

    .line 761
    .local v1, "dataBits":I
    div-int/lit8 v2, v1, 0x8

    .line 762
    .local v2, "dataBytes":I
    rem-int/lit8 v8, v1, 0x8

    if-lez v8, :cond_0

    const/4 v7, 0x1

    :cond_0
    add-int/2addr v2, v7

    .line 763
    new-array v5, v2, [B

    .line 764
    .local v5, "rawData":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 765
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 766
    .local v0, "c":C
    const/4 v6, 0x0

    .line 767
    .local v6, "val":I
    const/16 v7, 0x31

    if-lt v0, v7, :cond_1

    const/16 v7, 0x39

    if-gt v0, v7, :cond_1

    add-int/lit8 v6, v0, -0x30

    .line 772
    :goto_1
    div-int/lit8 v7, v4, 0x2

    aget-byte v8, v5, v7

    rem-int/lit8 v9, v4, 0x2

    mul-int/lit8 v9, v9, 0x4

    rsub-int/lit8 v9, v9, 0x4

    shl-int v9, v6, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 764
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 768
    :cond_1
    const/16 v7, 0x30

    if-ne v0, v7, :cond_2

    const/16 v6, 0xa

    goto :goto_1

    .line 769
    :cond_2
    const/16 v7, 0x2a

    if-ne v0, v7, :cond_3

    const/16 v6, 0xb

    goto :goto_1

    .line 770
    :cond_3
    const/16 v7, 0x23

    if-ne v0, v7, :cond_4

    const/16 v6, 0xc

    goto :goto_1

    .line 771
    :cond_4
    const/4 v7, 0x0

    return-object v7

    .line 774
    .end local v0    # "c":C
    .end local v6    # "val":I
    :cond_5
    return-object v5
.end method

.method private static encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 5
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 616
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v1

    .line 617
    .local v1, "headerData":[B
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v2, :cond_2

    .line 618
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 619
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    .line 614
    :goto_0
    return-void

    .line 620
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 621
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0

    .line 623
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported EMS user data encoding ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 624
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 623
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 624
    const-string/jumbo v4, ")"

    .line 623
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 628
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0
.end method

.method private static encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 855
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 856
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 853
    return-void
.end method

.method private static encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/16 v3, 0x8

    .line 463
    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 464
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 465
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 466
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 467
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 468
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 461
    return-void

    .line 467
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 833
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 834
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 831
    return-void
.end method

.method private static encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 878
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 879
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 880
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 876
    return-void
.end method

.method private static encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 825
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 826
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 827
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 823
    return-void
.end method

.method private static encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 870
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 871
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 872
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 868
    return-void
.end method

.method private static encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 847
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 848
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 849
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 845
    return-void
.end method

.method private static encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 3
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 750
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 751
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 752
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 753
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 754
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 755
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 748
    return-void

    :cond_0
    move v0, v2

    .line 751
    goto :goto_0

    :cond_1
    move v0, v2

    .line 752
    goto :goto_1

    :cond_2
    move v0, v2

    .line 753
    goto :goto_2

    :cond_3
    move v0, v2

    .line 754
    goto :goto_3
.end method

.method private static encodeScpResults(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/16 v5, 0x8

    .line 886
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    .line 887
    .local v3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramResults;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 888
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "result$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/cdma/CdmaSmsCbProgramResults;

    .line 889
    .local v1, "result":Landroid/telephony/cdma/CdmaSmsCbProgramResults;
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getCategory()I

    move-result v0

    .line 890
    .local v0, "category":I
    shr-int/lit8 v4, v0, 0x8

    invoke-virtual {p1, v5, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 891
    invoke-virtual {p1, v5, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 892
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getLanguage()I

    move-result v4

    invoke-virtual {p1, v5, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 893
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getCategoryResult()I

    move-result v4

    invoke-virtual {p1, v6, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 894
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    goto :goto_0

    .line 884
    .end local v0    # "category":I
    .end local v1    # "result":Landroid/telephony/cdma/CdmaSmsCbProgramResults;
    :cond_0
    return-void
.end method

.method private static encodeShiftJis(Ljava/lang/String;)[B
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 637
    :try_start_0
    const-string/jumbo v1, "Shift_JIS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Shift-JIS encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 11
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x8c

    const/16 v9, 0xa

    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 711
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 712
    sget-object v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->sSmsInterfaces:Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-interface {v4, v7}, Lcom/mediatek/internal/telephony/cdma/ISmsInterfaces;->encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 715
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    if-le v4, v10, :cond_1

    .line 716
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "encoded user data too large ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 717
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, v6

    .line 716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 718
    const-string/jumbo v6, " > "

    .line 716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 718
    const-string/jumbo v6, " bytes)"

    .line 716
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move v4, v6

    .line 711
    goto :goto_0

    .line 728
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x8

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    sub-int v0, v4, v7

    .line 729
    .local v0, "dataBits":I
    add-int/lit8 v2, v0, 0xd

    .line 730
    .local v2, "paramBits":I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v5, :cond_2

    .line 731
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v4, v9, :cond_3

    .line 732
    :cond_2
    add-int/lit8 v2, v2, 0x8

    .line 734
    :cond_3
    div-int/lit8 v7, v2, 0x8

    rem-int/lit8 v4, v2, 0x8

    if-lez v4, :cond_7

    move v4, v5

    :goto_1
    add-int v3, v7, v4

    .line 735
    .local v3, "paramBytes":I
    mul-int/lit8 v4, v3, 0x8

    sub-int v1, v4, v2

    .line 736
    .local v1, "paddingBits":I
    invoke-virtual {p1, v8, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 737
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v7, 0x5

    invoke-virtual {p1, v7, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 738
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v5, :cond_4

    .line 739
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v4, v9, :cond_5

    .line 740
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {p1, v8, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 742
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-virtual {p1, v8, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 743
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-virtual {p1, v0, v4}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 744
    if-lez v1, :cond_6

    invoke-virtual {p1, v1, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 702
    :cond_6
    return-void

    .end local v1    # "paddingBits":I
    .end local v3    # "paramBytes":I
    :cond_7
    move v4, v6

    .line 734
    goto :goto_1
.end method

.method private static encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 8
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 646
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v2, :cond_0

    .line 647
    const-string/jumbo v2, "BearerData"

    const-string/jumbo v3, "user data with null payloadStr"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 651
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v2, :cond_1

    .line 652
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 653
    return-void

    .line 656
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v2, :cond_9

    .line 657
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-nez v2, :cond_3

    .line 658
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v2, :cond_2

    .line 659
    const-string/jumbo v2, "BearerData"

    const-string/jumbo v3, "user data with octet encoding but null payload"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    new-array v2, v4, [B

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 661
    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 644
    :goto_0
    return-void

    .line 663
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v2, v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 666
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 667
    const-string/jumbo v2, "BearerData"

    const-string/jumbo v3, "non-octet user data with null payloadStr"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 670
    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_5

    .line 671
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v1

    .line 672
    .local v1, "gcr":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    iget-object v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 673
    iget v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 674
    .end local v1    # "gcr":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    :cond_5
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v2, v6, :cond_6

    .line 675
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 676
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 677
    :cond_6
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v2, v7, :cond_7

    .line 678
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 679
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 680
    :cond_7
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_8

    .line 681
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeShiftJis(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 682
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v2, v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 684
    :cond_8
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported user data encoding ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 685
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 684
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 685
    const-string/jumbo v4, ")"

    .line 684
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 690
    :cond_9
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 691
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 697
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    goto/16 :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 694
    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_1
.end method

.method private static encodeUtf16(Ljava/lang/String;)[B
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 541
    :try_start_0
    const-string/jumbo v1, "utf-16be"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UTF-16 encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 840
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 841
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 838
    return-void
.end method

.method private static getBitsForNumFields(II)I
    .locals 3
    .param p0, "msgEncoding"    # I
    .param p1, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1784
    packed-switch p0, :pswitch_data_0

    .line 1801
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsupported message encoding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1790
    :pswitch_1
    mul-int/lit8 v0, p1, 0x8

    return v0

    .line 1795
    :pswitch_2
    mul-int/lit8 v0, p1, 0x7

    return v0

    .line 1798
    :pswitch_3
    mul-int/lit8 v0, p1, 0x10

    return v0

    .line 1784
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getLanguageCodeForValue(I)Ljava/lang/String;
    .locals 1
    .param p0, "languageValue"    # I

    .prologue
    .line 397
    packed-switch p0, :pswitch_data_0

    .line 420
    const/4 v0, 0x0

    return-object v0

    .line 399
    :pswitch_0
    const-string/jumbo v0, "en"

    return-object v0

    .line 402
    :pswitch_1
    const-string/jumbo v0, "fr"

    return-object v0

    .line 405
    :pswitch_2
    const-string/jumbo v0, "es"

    return-object v0

    .line 408
    :pswitch_3
    const-string/jumbo v0, "ja"

    return-object v0

    .line 411
    :pswitch_4
    const-string/jumbo v0, "ko"

    return-object v0

    .line 414
    :pswitch_5
    const-string/jumbo v0, "zh"

    return-object v0

    .line 417
    :pswitch_6
    const-string/jumbo v0, "he"

    return-object v0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static isCmasAlertCategory(I)Z
    .locals 2
    .param p0, "category"    # I

    .prologue
    const/4 v0, 0x0

    .line 1898
    const/16 v1, 0x1000

    if-lt p0, v1, :cond_0

    .line 1899
    const/16 v1, 0x10ff

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    .line 1898
    :cond_0
    return v0
.end method

.method private static serviceCategoryToCmasMessageClass(I)I
    .locals 1
    .param p0, "serviceCategory"    # I

    .prologue
    .line 1753
    packed-switch p0, :pswitch_data_0

    .line 1770
    const/4 v0, -0x1

    return v0

    .line 1755
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1758
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1761
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 1764
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 1767
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 1753
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguageCodeForValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "BearerData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string/jumbo v1, "{ messageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    const-string/jumbo v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 430
    const-string/jumbo v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    const-string/jumbo v1, ", privacy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 432
    const-string/jumbo v1, ", alert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 433
    const-string/jumbo v1, ", displayMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 434
    const-string/jumbo v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 435
    const-string/jumbo v1, ", errorClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 436
    const-string/jumbo v1, ", msgStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 437
    const-string/jumbo v1, ", msgCenterTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 438
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 437
    :goto_7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 439
    const-string/jumbo v1, ", validityPeriodAbsolute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 440
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 439
    :goto_8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 441
    const-string/jumbo v1, ", validityPeriodRelative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 442
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 441
    :goto_9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 443
    const-string/jumbo v1, ", deferredDeliveryTimeAbsolute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 444
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 443
    :goto_a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 445
    const-string/jumbo v1, ", deferredDeliveryTimeRelative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 446
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 445
    :goto_b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 447
    const-string/jumbo v1, ", userAckReq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 448
    const-string/jumbo v1, ", deliveryAckReq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 449
    const-string/jumbo v1, ", readAckReq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 450
    const-string/jumbo v1, ", reportReq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 451
    const-string/jumbo v1, ", numberOfMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 452
    const-string/jumbo v1, ", callbackNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 453
    const-string/jumbo v1, ", depositIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 454
    const-string/jumbo v1, ", hasUserDataHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 455
    const-string/jumbo v1, ", userData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 430
    :cond_0
    const-string/jumbo v1, "unset"

    goto/16 :goto_0

    .line 431
    :cond_1
    const-string/jumbo v1, "unset"

    goto/16 :goto_1

    .line 432
    :cond_2
    const-string/jumbo v1, "unset"

    goto/16 :goto_2

    .line 433
    :cond_3
    const-string/jumbo v1, "unset"

    goto/16 :goto_3

    .line 434
    :cond_4
    const-string/jumbo v1, "unset"

    goto/16 :goto_4

    .line 435
    :cond_5
    const-string/jumbo v1, "unset"

    goto/16 :goto_5

    .line 436
    :cond_6
    const-string/jumbo v1, "unset"

    goto/16 :goto_6

    .line 438
    :cond_7
    const-string/jumbo v1, "unset"

    goto/16 :goto_7

    .line 440
    :cond_8
    const-string/jumbo v1, "unset"

    goto/16 :goto_8

    .line 442
    :cond_9
    const-string/jumbo v1, "unset"

    goto/16 :goto_9

    .line 444
    :cond_a
    const-string/jumbo v1, "unset"

    goto/16 :goto_a

    .line 446
    :cond_b
    const-string/jumbo v1, "unset"

    goto/16 :goto_b
.end method
