.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# static fields
.field public static final CELL_BROADCAST_RAN_TYPE_CDMA:I = 0x1

.field public static final CELL_BROADCAST_RAN_TYPE_GSM:I = 0x0

.field private static final DEFAULT_SUBSCRIPTION_ID:I = -0x3ea

.field private static DIALOG_TYPE_KEY:Ljava/lang/String; = null

.field public static final EXTRA_MMS_DATA:Ljava/lang/String; = "android.telephony.extra.MMS_DATA"

.field public static final EXTRA_MMS_HTTP_STATUS:Ljava/lang/String; = "android.telephony.extra.MMS_HTTP_STATUS"

.field public static final EXTRA_PARAMS_ENCODING_TYPE:Ljava/lang/String; = "encoding_type"

.field public static final EXTRA_PARAMS_VALIDITY_PERIOD:Ljava/lang/String; = "validity_period"

.field public static final MESSAGE_STATUS_READ:Ljava/lang/String; = "read"

.field public static final MESSAGE_STATUS_SEEN:Ljava/lang/String; = "seen"

.field public static final MMS_CONFIG_ALIAS_ENABLED:Ljava/lang/String; = "aliasEnabled"

.field public static final MMS_CONFIG_ALIAS_MAX_CHARS:Ljava/lang/String; = "aliasMaxChars"

.field public static final MMS_CONFIG_ALIAS_MIN_CHARS:Ljava/lang/String; = "aliasMinChars"

.field public static final MMS_CONFIG_ALLOW_ATTACH_AUDIO:Ljava/lang/String; = "allowAttachAudio"

.field public static final MMS_CONFIG_APPEND_TRANSACTION_ID:Ljava/lang/String; = "enabledTransID"

.field public static final MMS_CONFIG_EMAIL_GATEWAY_NUMBER:Ljava/lang/String; = "emailGatewayNumber"

.field public static final MMS_CONFIG_GROUP_MMS_ENABLED:Ljava/lang/String; = "enableGroupMms"

.field public static final MMS_CONFIG_HTTP_PARAMS:Ljava/lang/String; = "httpParams"

.field public static final MMS_CONFIG_HTTP_SOCKET_TIMEOUT:Ljava/lang/String; = "httpSocketTimeout"

.field public static final MMS_CONFIG_MAX_IMAGE_HEIGHT:Ljava/lang/String; = "maxImageHeight"

.field public static final MMS_CONFIG_MAX_IMAGE_WIDTH:Ljava/lang/String; = "maxImageWidth"

.field public static final MMS_CONFIG_MAX_MESSAGE_SIZE:Ljava/lang/String; = "maxMessageSize"

.field public static final MMS_CONFIG_MESSAGE_TEXT_MAX_SIZE:Ljava/lang/String; = "maxMessageTextSize"

.field public static final MMS_CONFIG_MMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableMMSDeliveryReports"

.field public static final MMS_CONFIG_MMS_ENABLED:Ljava/lang/String; = "enabledMMS"

.field public static final MMS_CONFIG_MMS_READ_REPORT_ENABLED:Ljava/lang/String; = "enableMMSReadReports"

.field public static final MMS_CONFIG_MULTIPART_SMS_ENABLED:Ljava/lang/String; = "enableMultipartSMS"

.field public static final MMS_CONFIG_NAI_SUFFIX:Ljava/lang/String; = "naiSuffix"

.field public static final MMS_CONFIG_NOTIFY_WAP_MMSC_ENABLED:Ljava/lang/String; = "enabledNotifyWapMMSC"

.field public static final MMS_CONFIG_RECIPIENT_LIMIT:Ljava/lang/String; = "recipientLimit"

.field public static final MMS_CONFIG_SEND_MULTIPART_SMS_AS_SEPARATE_MESSAGES:Ljava/lang/String; = "sendMultipartSmsAsSeparateMessages"

.field public static final MMS_CONFIG_SHOW_CELL_BROADCAST_APP_LINKS:Ljava/lang/String; = "config_cellBroadcastAppLinks"

.field public static final MMS_CONFIG_SMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableSMSDeliveryReports"

.field public static final MMS_CONFIG_SMS_TO_MMS_TEXT_LENGTH_THRESHOLD:Ljava/lang/String; = "smsToMmsTextLengthThreshold"

.field public static final MMS_CONFIG_SMS_TO_MMS_TEXT_THRESHOLD:Ljava/lang/String; = "smsToMmsTextThreshold"

.field public static final MMS_CONFIG_SUBJECT_MAX_LENGTH:Ljava/lang/String; = "maxSubjectLength"

.field public static final MMS_CONFIG_SUPPORT_HTTP_CHARSET_HEADER:Ljava/lang/String; = "supportHttpCharsetHeader"

.field public static final MMS_CONFIG_SUPPORT_MMS_CONTENT_DISPOSITION:Ljava/lang/String; = "supportMmsContentDisposition"

.field public static final MMS_CONFIG_UA_PROF_TAG_NAME:Ljava/lang/String; = "uaProfTagName"

.field public static final MMS_CONFIG_UA_PROF_URL:Ljava/lang/String; = "uaProfUrl"

.field public static final MMS_CONFIG_USER_AGENT:Ljava/lang/String; = "userAgent"

.field public static final MMS_ERROR_CONFIGURATION_ERROR:I = 0x7

.field public static final MMS_ERROR_HTTP_FAILURE:I = 0x4

.field public static final MMS_ERROR_INVALID_APN:I = 0x2

.field public static final MMS_ERROR_IO_ERROR:I = 0x5

.field public static final MMS_ERROR_NO_DATA_NETWORK:I = 0x8

.field public static final MMS_ERROR_RETRY:I = 0x6

.field public static final MMS_ERROR_UNABLE_CONNECT_MMS:I = 0x3

.field public static final MMS_ERROR_UNSPECIFIED:I = 0x1

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_INVALID_ADDRESS:I = 0x8

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final RESULT_ERROR_SIM_MEM_FULL:I = 0x7

.field public static final RESULT_ERROR_SUCCESS:I = 0x0

.field private static final SMS_PICK:I = 0x2

.field public static final SMS_TYPE_INCOMING:I = 0x0

.field public static final SMS_TYPE_OUTGOING:I = 0x1

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SmsManager"

.field public static final VALIDITY_PERIOD_MAX_DURATION:I = 0xff

.field public static final VALIDITY_PERIOD_NO_DURATION:I = -0x1

.field public static final VALIDITY_PERIOD_ONE_DAY:I = 0xa7

.field public static final VALIDITY_PERIOD_ONE_HOUR:I = 0xb

.field public static final VALIDITY_PERIOD_SIX_HOURS:I = 0x47

.field public static final VALIDITY_PERIOD_TWELVE_HOURS:I = 0x8f

.field private static final sInstance:Landroid/telephony/SmsManager;

.field private static final sLockObject:Ljava/lang/Object;

.field private static final sSubInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/SmsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Landroid/telephony/SmsManager;

    const/16 v1, -0x3ea

    invoke-direct {v0, v1}, Landroid/telephony/SmsManager;-><init>(I)V

    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 99
    sput-object v0, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    .line 275
    const-string/jumbo v0, "dialog_type"

    sput-object v0, Landroid/telephony/SmsManager;->DIALOG_TYPE_KEY:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private constructor <init>(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 731
    iput p1, p0, Landroid/telephony/SmsManager;->mSubId:I

    .line 735
    const-string/jumbo v2, "ro.mtk_bsp_package"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 737
    :try_start_0
    const-class v2, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    iput-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 738
    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_1

    .line 739
    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "actualClassName":Ljava/lang/String;
    const-string/jumbo v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initial mOnlyOwnerSimSupport done, actual class name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .end local v0    # "actualClassName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "FAIL! intial mOnlyOwnerSimSupport"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 745
    :catch_0
    move-exception v1

    .line 746
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "FAIL! No IOnlyOwnerSimSupport"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private Convert2SmsBroadcastConfigInfo(Lcom/mediatek/internal/telephony/SmsCbConfigInfo;)Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 6
    .param p1, "info"    # Lcom/mediatek/internal/telephony/SmsCbConfigInfo;

    .prologue
    .line 2846
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 2847
    iget v1, p1, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mFromServiceId:I

    .line 2848
    iget v2, p1, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mToServiceId:I

    .line 2849
    iget v3, p1, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mFromCodeScheme:I

    .line 2850
    iget v4, p1, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mToCodeScheme:I

    .line 2851
    iget-boolean v5, p1, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;->mSelected:Z

    .line 2846
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    return-object v0
.end method

.method private Convert2SmsCbConfigInfo(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    .locals 6
    .param p1, "info"    # Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .prologue
    .line 2858
    new-instance v0, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;

    .line 2859
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromServiceId()I

    move-result v1

    .line 2860
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToServiceId()I

    move-result v2

    .line 2861
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getFromCodeScheme()I

    move-result v3

    .line 2862
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->getToCodeScheme()I

    move-result v4

    .line 2863
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->isSelected()Z

    move-result v5

    .line 2858
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/internal/telephony/SmsCbConfigInfo;-><init>(IIIIZ)V

    return-object v0
.end method

.method private static createFromEfRecordByMode(II[BI)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "subId"    # I
    .param p1, "index"    # I
    .param p2, "data"    # [B
    .param p3, "mode"    # I

    .prologue
    .line 2141
    const/4 v0, 0x0

    .line 2143
    .local v0, "sms":Landroid/telephony/SmsMessage;
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 2144
    const-string/jumbo v1, "3gpp2"

    invoke-static {p1, p2, v1}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 2149
    .local v0, "sms":Landroid/telephony/SmsMessage;
    :goto_0
    if-eqz v0, :cond_0

    .line 2150
    invoke-virtual {v0, p0}, Landroid/telephony/SmsMessage;->setSubId(I)V

    .line 2153
    :cond_0
    return-object v0

    .line 2146
    .local v0, "sms":Landroid/telephony/SmsMessage;
    :cond_1
    const-string/jumbo v1, "3gpp"

    invoke-static {p1, p2, v1}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .local v0, "sms":Landroid/telephony/SmsMessage;
    goto :goto_0
.end method

.method private createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1159
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1161
    .local v4, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    const-string/jumbo v7, "SmsManager"

    const-string/jumbo v8, "createMessageListFromRawRecords"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    if-eqz p1, :cond_3

    .line 1164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1165
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1166
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsRawData;

    .line 1168
    .local v2, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v2, :cond_0

    .line 1170
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    iget v8, p0, Landroid/telephony/SmsManager;->mSubId:I

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 1171
    .local v0, "activePhone":I
    const/4 v7, 0x2

    if-ne v7, v0, :cond_1

    .line 1172
    const-string/jumbo v5, "3gpp2"

    .line 1173
    .local v5, "phoneType":Ljava/lang/String;
    :goto_1
    const-string/jumbo v7, "SmsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "phoneType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 1178
    .local v6, "sms":Landroid/telephony/SmsMessage;
    if-eqz v6, :cond_0

    .line 1179
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    .end local v0    # "activePhone":I
    .end local v5    # "phoneType":Ljava/lang/String;
    .end local v6    # "sms":Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1172
    .restart local v0    # "activePhone":I
    :cond_1
    const-string/jumbo v5, "3gpp"

    .restart local v5    # "phoneType":Ljava/lang/String;
    goto :goto_1

    .line 1184
    .end local v0    # "activePhone":I
    .end local v2    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v5    # "phoneType":Ljava/lang/String;
    :cond_2
    const-string/jumbo v7, "SmsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "actual sms count is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    .end local v1    # "count":I
    .end local v3    # "i":I
    :goto_2
    return-object v4

    .line 1188
    :cond_3
    const-string/jumbo v7, "SmsManager"

    const-string/jumbo v8, "fail to parse SIM sms, records is null"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static createMessageListFromRawRecordsByMode(ILjava/util/List;I)Ljava/util/ArrayList;
    .locals 8
    .param p0, "subId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2103
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    const-string/jumbo v5, "SmsManager"

    const-string/jumbo v6, "createMessageListFromRawRecordsByMode"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    const/4 v3, 0x0

    .line 2106
    .local v3, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p1, :cond_2

    .line 2107
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2108
    .local v0, "count":I
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2110
    .local v3, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2111
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 2113
    .local v1, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 2115
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {p0, v5, v6, p2}, Landroid/telephony/SmsManager;->createFromEfRecordByMode(II[BI)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 2116
    .local v4, "singleSms":Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 2117
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2110
    .end local v4    # "singleSms":Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2121
    .end local v1    # "data":Lcom/android/internal/telephony/SmsRawData;
    :cond_1
    const-string/jumbo v5, "SmsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "actual sms count is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    :goto_1
    return-object v3

    .line 2123
    .local v3, "msg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    :cond_2
    const-string/jumbo v5, "SmsManager"

    const-string/jumbo v6, "fail to parse SIM sms, records is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 709
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method public static getDefaultSmsSubscriptionId()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1249
    const/4 v2, 0x0

    .line 1251
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    :try_start_0
    const-string/jumbo v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1252
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-interface {v2}, Lcom/android/internal/telephony/ISms;->getPreferredSmsSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1255
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    .line 1256
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 1253
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1254
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method private static getISmsService()Lcom/android/internal/telephony/ISms;
    .locals 1

    .prologue
    .line 818
    const-string/jumbo v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0
.end method

.method private static getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;
    .locals 3

    .prologue
    .line 810
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 811
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-nez v0, :cond_0

    .line 812
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Sms is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 814
    :cond_0
    return-object v0
.end method

.method public static getMmsConfig(Landroid/os/BaseBundle;)Landroid/os/Bundle;
    .locals 3
    .param p0, "config"    # Landroid/os/BaseBundle;

    .prologue
    .line 1896
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1897
    .local v0, "filtered":Landroid/os/Bundle;
    const-string/jumbo v1, "enabledTransID"

    .line 1898
    const-string/jumbo v2, "enabledTransID"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1897
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1899
    const-string/jumbo v1, "enabledMMS"

    const-string/jumbo v2, "enabledMMS"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1900
    const-string/jumbo v1, "enableGroupMms"

    .line 1901
    const-string/jumbo v2, "enableGroupMms"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1900
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1902
    const-string/jumbo v1, "enabledNotifyWapMMSC"

    .line 1903
    const-string/jumbo v2, "enabledNotifyWapMMSC"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1902
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1904
    const-string/jumbo v1, "aliasEnabled"

    const-string/jumbo v2, "aliasEnabled"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1905
    const-string/jumbo v1, "allowAttachAudio"

    .line 1906
    const-string/jumbo v2, "allowAttachAudio"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1905
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1907
    const-string/jumbo v1, "enableMultipartSMS"

    .line 1908
    const-string/jumbo v2, "enableMultipartSMS"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1907
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1909
    const-string/jumbo v1, "enableSMSDeliveryReports"

    .line 1910
    const-string/jumbo v2, "enableSMSDeliveryReports"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1909
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1911
    const-string/jumbo v1, "supportMmsContentDisposition"

    .line 1912
    const-string/jumbo v2, "supportMmsContentDisposition"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1911
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1913
    const-string/jumbo v1, "sendMultipartSmsAsSeparateMessages"

    .line 1914
    const-string/jumbo v2, "sendMultipartSmsAsSeparateMessages"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1913
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1915
    const-string/jumbo v1, "enableMMSReadReports"

    .line 1916
    const-string/jumbo v2, "enableMMSReadReports"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1915
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1917
    const-string/jumbo v1, "enableMMSDeliveryReports"

    .line 1918
    const-string/jumbo v2, "enableMMSDeliveryReports"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1917
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1919
    const-string/jumbo v1, "maxMessageSize"

    const-string/jumbo v2, "maxMessageSize"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1920
    const-string/jumbo v1, "maxImageWidth"

    const-string/jumbo v2, "maxImageWidth"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1921
    const-string/jumbo v1, "maxImageHeight"

    const-string/jumbo v2, "maxImageHeight"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1922
    const-string/jumbo v1, "recipientLimit"

    const-string/jumbo v2, "recipientLimit"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1923
    const-string/jumbo v1, "aliasMinChars"

    const-string/jumbo v2, "aliasMinChars"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1924
    const-string/jumbo v1, "aliasMaxChars"

    const-string/jumbo v2, "aliasMaxChars"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1925
    const-string/jumbo v1, "smsToMmsTextThreshold"

    .line 1926
    const-string/jumbo v2, "smsToMmsTextThreshold"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1925
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1927
    const-string/jumbo v1, "smsToMmsTextLengthThreshold"

    .line 1928
    const-string/jumbo v2, "smsToMmsTextLengthThreshold"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1927
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1929
    const-string/jumbo v1, "maxMessageTextSize"

    .line 1930
    const-string/jumbo v2, "maxMessageTextSize"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1929
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1931
    const-string/jumbo v1, "maxSubjectLength"

    .line 1932
    const-string/jumbo v2, "maxSubjectLength"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1931
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1933
    const-string/jumbo v1, "httpSocketTimeout"

    .line 1934
    const-string/jumbo v2, "httpSocketTimeout"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1933
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1935
    const-string/jumbo v1, "uaProfTagName"

    .line 1936
    const-string/jumbo v2, "uaProfTagName"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1935
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    const-string/jumbo v1, "userAgent"

    const-string/jumbo v2, "userAgent"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    const-string/jumbo v1, "uaProfUrl"

    const-string/jumbo v2, "uaProfUrl"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    const-string/jumbo v1, "httpParams"

    const-string/jumbo v2, "httpParams"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    const-string/jumbo v1, "emailGatewayNumber"

    .line 1941
    const-string/jumbo v2, "emailGatewayNumber"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1940
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    const-string/jumbo v1, "naiSuffix"

    const-string/jumbo v2, "naiSuffix"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    const-string/jumbo v1, "config_cellBroadcastAppLinks"

    .line 1944
    const-string/jumbo v2, "config_cellBroadcastAppLinks"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1943
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1945
    const-string/jumbo v1, "supportHttpCharsetHeader"

    .line 1946
    const-string/jumbo v2, "supportHttpCharsetHeader"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1945
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1947
    return-object v0
.end method

.method public static getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 721
    sget-object v2, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 722
    :try_start_0
    sget-object v1, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SmsManager;

    .line 723
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    if-nez v0, :cond_0

    .line 724
    new-instance v0, Landroid/telephony/SmsManager;

    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    invoke-direct {v0, p0}, Landroid/telephony/SmsManager;-><init>(I)V

    .line 725
    .restart local v0    # "smsManager":Landroid/telephony/SmsManager;
    sget-object v1, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 727
    return-object v0

    .line 721
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private is4GDataOnlyMode(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v7, 0x0

    .line 3075
    const-string/jumbo v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3076
    const-string/jumbo v4, "SmsManager"

    const-string/jumbo v5, "is4GDataOnlyMode return false in bsp project."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    return v7

    .line 3080
    :cond_0
    const/4 v2, 0x0

    .line 3083
    .local v2, "realContext":Landroid/content/Context;
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 3084
    .local v2, "realContext":Landroid/content/Context;
    if-nez v2, :cond_1

    .line 3085
    const-string/jumbo v4, "SmsManager"

    const-string/jumbo v5, "is4GDataOnlyMode realContext = null, we think it as not open 4G data only"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    return v7

    .line 3090
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 3091
    .local v3, "realSubId":I
    const-string/jumbo v4, "SmsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "is4GDataOnlyMode realSubId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    const/4 v1, 0x0

    .line 3095
    .local v1, "lteDataOnlyController":Lcom/mediatek/common/telephony/ILteDataOnlyController;
    :try_start_0
    const-class v4, Lcom/mediatek/common/telephony/ILteDataOnlyController;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "lteDataOnlyController":Lcom/mediatek/common/telephony/ILteDataOnlyController;
    check-cast v1, Lcom/mediatek/common/telephony/ILteDataOnlyController;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3101
    .local v1, "lteDataOnlyController":Lcom/mediatek/common/telephony/ILteDataOnlyController;
    if-nez v1, :cond_2

    .line 3102
    const-string/jumbo v4, "SmsManager"

    const-string/jumbo v5, "is4GDataOnlyMode lteDataOnlyController = null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    return v7

    .line 3097
    .end local v1    # "lteDataOnlyController":Lcom/mediatek/common/telephony/ILteDataOnlyController;
    :catch_0
    move-exception v0

    .line 3098
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "SmsManager"

    const-string/jumbo v5, "FAIL! No ILteDataOnlyController"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    return v7

    .line 3105
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "lteDataOnlyController":Lcom/mediatek/common/telephony/ILteDataOnlyController;
    :cond_2
    invoke-interface {v1, v3}, Lcom/mediatek/common/telephony/ILteDataOnlyController;->checkPermission(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3106
    const-string/jumbo v4, "SmsManager"

    const-string/jumbo v5, "is4GDataOnlyMode 4GDataOnly, skip CS operation!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    invoke-direct {p0, p1}, Landroid/telephony/SmsManager;->notifyAppSendResult(Ljava/util/ArrayList;)V

    .line 3108
    const/4 v4, 0x1

    return v4

    .line 3111
    :cond_3
    const-string/jumbo v4, "SmsManager"

    const-string/jumbo v5, "is4GDataOnlyMode default return false."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    return v7
.end method

.method private static isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 3
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1963
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1965
    .local v1, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1967
    .local v0, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1968
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1974
    invoke-static {p0, v0, v1}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    return v2
.end method

.method private static isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7
    .param p0, "destinationAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 1988
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1989
    :cond_0
    return v4

    .line 1992
    :cond_1
    invoke-static {p0}, Landroid/telephony/SmsManager;->isValidSmsDestinationAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1993
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1994
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 1995
    .local v2, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v2, :cond_2

    .line 1997
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1993
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1998
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    goto :goto_1

    .line 2002
    .end local v0    # "ex":Landroid/app/PendingIntent$CanceledException;
    .end local v2    # "sentIntent":Landroid/app/PendingIntent;
    :cond_3
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid destinationAddress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    return v6

    .line 2006
    .end local v1    # "i":I
    :cond_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2007
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid destinationAddress"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2009
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v4, :cond_7

    .line 2010
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid message body"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2013
    :cond_7
    return v4
.end method

.method private static isValidSmsDestinationAddress(Ljava/lang/String;)Z
    .locals 6
    .param p0, "da"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2024
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2025
    .local v0, "encodeAddress":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2026
    return v3

    .line 2028
    :cond_0
    const/4 v2, 0x0

    .line 2029
    .local v2, "spaceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 2030
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_2

    .line 2031
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 2029
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2035
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    if-ne v4, v5, :cond_4

    :goto_1
    return v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private notifyAppSendResult(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3133
    .local p1, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string/jumbo v5, "SmsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyAppSendResult sentIntents = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    if-nez p1, :cond_0

    .line 3135
    const-string/jumbo v5, "SmsManager"

    const-string/jumbo v6, "notifyAppSendResult can not notify APP"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    return-void

    .line 3139
    :cond_0
    const/4 v3, 0x0

    .line 3140
    .local v3, "si":Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3141
    .local v4, "size":I
    const/4 v2, 0x0

    .end local v3    # "si":Landroid/app/PendingIntent;
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 3142
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/PendingIntent;

    move-object v3, v0

    .line 3143
    .local v3, "si":Landroid/app/PendingIntent;
    if-nez v3, :cond_1

    .line 3144
    const-string/jumbo v5, "SmsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyAppSendResult can not notify APP for i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3146
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3149
    .end local v2    # "i":I
    .end local v3    # "si":Landroid/app/PendingIntent;
    .end local v4    # "size":I
    :catch_0
    move-exception v1

    .line 3150
    .local v1, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v5, "SmsManager"

    const-string/jumbo v6, "notifyAppSendResult, CanceledException happened when send sms fail with sentIntent"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    .end local v1    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_2
    return-void
.end method

.method private sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "persistMessageForCarrierApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 534
    :cond_0
    const-string/jumbo v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMultipartTextMessage, destinationAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-static {p1, p3, p4}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 537
    return-void

    .line 540
    :cond_1
    invoke-direct {p0, p4}, Landroid/telephony/SmsManager;->is4GDataOnlyMode(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 541
    return-void

    .line 545
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 547
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 548
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 549
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    .line 548
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 552
    :catch_0
    move-exception v9

    .line 555
    .local v9, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "sendMultipartTextMessage, RemoteException!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 559
    .end local v9    # "ex":Landroid/os/RemoteException;
    :cond_3
    const/4 v5, 0x0

    .line 560
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 561
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 562
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 564
    :cond_4
    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 565
    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 569
    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const-string/jumbo v4, ""

    .local v4, "text":Ljava/lang/String;
    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 570
    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 569
    .end local v4    # "text":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .restart local v4    # "text":Ljava/lang/String;
    goto :goto_1
.end method

.method private sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "persistMessageForCarrierApp"    # Z

    .prologue
    .line 329
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    :cond_0
    const-string/jumbo v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTextMessage, text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", destinationAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {p1, p3, p4}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    return-void

    .line 344
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    .local v10, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v10, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-direct {p0, v10}, Landroid/telephony/SmsManager;->is4GDataOnlyMode(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    return-void

    .line 352
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 353
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v9

    .line 360
    .local v9, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "sendTextMessage, RemoteException!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public activateCellBroadcastSms(Z)Z
    .locals 6
    .param p1, "activate"    # Z

    .prologue
    .line 3004
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "activateCellBroadcastSms activate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3005
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v5

    .line 3004
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    const/4 v2, 0x0

    .line 3009
    .local v2, "result":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3010
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 3011
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/ISms;->activateCellBroadcastSmsForSubscriber(IZ)Z

    move-result v2

    .line 3022
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 3014
    .restart local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .restart local v2    # "result":Z
    :cond_0
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "fail to get sms service"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3015
    const/4 v2, 0x0

    goto :goto_0

    .line 3017
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 3018
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "fail to activate CB"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addMultimediaMessageDraft(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 1674
    if-nez p1, :cond_0

    .line 1675
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Uri contentUri null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1678
    :cond_0
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1679
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_1

    .line 1680
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/IMms;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1683
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1686
    :cond_1
    return-object v3
.end method

.method public addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1653
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1654
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1655
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/telephony/IMms;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1657
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1660
    :cond_0
    return-object v3
.end method

.method public archiveStoredConversation(JZ)Z
    .locals 3
    .param p1, "conversationId"    # J
    .param p3, "archived"    # Z

    .prologue
    .line 1630
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1631
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1632
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->archiveStoredConversation(Ljava/lang/String;JZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1635
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1638
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public copyMessageToIcc([B[BI)Z
    .locals 9
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .prologue
    .line 837
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "copyMessageToIcc"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/4 v8, 0x0

    .line 841
    .local v8, "success":Z
    const/4 v7, 0x0

    .line 844
    .local v7, "smsStatus":Landroid/telephony/SimSmsInsertStatus;
    if-nez p2, :cond_0

    .line 845
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "pdu is NULL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 850
    :cond_0
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 857
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 858
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    .line 859
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 860
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p3

    move-object v4, p2

    move-object v5, p1

    .line 859
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 867
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v8    # "success":Z
    :cond_2
    :goto_0
    return v8

    .line 851
    .restart local v8    # "success":Z
    :cond_3
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "Not the current owner and reject this operation"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const/4 v1, 0x0

    return v1

    .line 863
    :catch_0
    move-exception v6

    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public copySmsToIcc([B[BI)I
    .locals 6
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 2702
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "copySmsToIcc"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    invoke-virtual {p0, p3, p2, p1}, Landroid/telephony/SmsManager;->insertRawMessageToIccCard(I[B[B)Landroid/telephony/SimSmsInsertStatus;

    move-result-object v1

    .line 2705
    .local v1, "smsStatus":Landroid/telephony/SimSmsInsertStatus;
    if-nez v1, :cond_0

    .line 2706
    return v4

    .line 2708
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SimSmsInsertStatus;->getIndex()[I

    move-result-object v0

    .line 2710
    .local v0, "index":[I
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 2711
    aget v2, v0, v5

    return v2

    .line 2714
    :cond_1
    return v4
.end method

.method public copyTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    .locals 11
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ)I"
        }
    .end annotation

    .prologue
    .line 2173
    .local p3, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "copyTextMessageToIccCard"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    const/4 v10, 0x1

    .line 2177
    .local v10, "result":I
    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2183
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2184
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 2185
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 2186
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-wide/from16 v8, p5

    .line 2185
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ISms;->copyTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 2193
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v10

    .line 2178
    :cond_2
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "Not the current owner and reject this operation"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    return v10

    .line 2189
    :catch_0
    move-exception v0

    .line 2190
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "RemoteException!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 8
    .param p1, "messageIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 883
    const-string/jumbo v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteMessageFromIcc, messageIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const/4 v7, 0x0

    .line 889
    .local v7, "success":Z
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 895
    :cond_0
    const/16 v1, 0xaf

    new-array v5, v1, [B

    .line 896
    .local v5, "pdu":[B
    const/4 v1, -0x1

    invoke-static {v5, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 899
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 900
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 901
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 902
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 903
    const/4 v4, 0x0

    move v3, p1

    .line 901
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 912
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v7    # "success":Z
    :cond_1
    :goto_0
    return v7

    .line 890
    .end local v5    # "pdu":[B
    .restart local v7    # "success":Z
    :cond_2
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "Not the current owner and reject this operation"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    return v4

    .line 905
    .restart local v5    # "pdu":[B
    :catch_0
    move-exception v6

    .line 908
    .local v6, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "deleteMessageFromIcc, RemoteException!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteStoredConversation(J)Z
    .locals 3
    .param p1, "conversationId"    # J

    .prologue
    .line 1578
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1579
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1581
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1580
    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/telephony/IMms;->deleteStoredConversation(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1583
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1586
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public deleteStoredMessage(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 1553
    if-nez p1, :cond_0

    .line 1554
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Empty message URI"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1557
    :cond_0
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1558
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_1

    .line 1559
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/IMms;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1561
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1564
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public disableCellBroadcast(II)Z
    .locals 4
    .param p1, "messageIdentifier"    # I
    .param p2, "ranType"    # I

    .prologue
    .line 1049
    const/4 v2, 0x0

    .line 1052
    .local v2, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1053
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1055
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 1054
    invoke-interface {v1, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastForSubscriber(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1061
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return v2

    .line 1057
    .restart local v2    # "success":Z
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public disableCellBroadcastRange(III)Z
    .locals 5
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I

    .prologue
    .line 1130
    const/4 v2, 0x0

    .line 1132
    .local v2, "success":Z
    if-ge p2, p1, :cond_0

    .line 1133
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "endMessageId < startMessageId"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1136
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1137
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 1138
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v1, v3, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRangeForSubscriber(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1145
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "success":Z
    :cond_1
    :goto_0
    return v2

    .line 1141
    .restart local v2    # "success":Z
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
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
    .line 467
    if-nez p1, :cond_0

    .line 468
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_0
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2420
    const-string/jumbo v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "divideMessage, encoding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 2422
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "divideMessage: size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    return-object v0
.end method

.method public downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationUrl"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "downloadedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1443
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1444
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty MMS location URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1446
    :cond_0
    if-nez p3, :cond_1

    .line 1447
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1450
    :cond_1
    :try_start_0
    const-string/jumbo v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1451
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v0, :cond_2

    .line 1452
    return-void

    .line 1455
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1454
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IMms;->downloadMessage(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1442
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-void

    .line 1457
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public enableCellBroadcast(II)Z
    .locals 4
    .param p1, "messageIdentifier"    # I
    .param p2, "ranType"    # I

    .prologue
    .line 1013
    const/4 v2, 0x0

    .line 1016
    .local v2, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1017
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1019
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 1018
    invoke-interface {v1, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastForSubscriber(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1025
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return v2

    .line 1021
    .restart local v2    # "success":Z
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public enableCellBroadcastRange(III)Z
    .locals 5
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I

    .prologue
    .line 1088
    const/4 v2, 0x0

    .line 1090
    .local v2, "success":Z
    if-ge p2, p1, :cond_0

    .line 1091
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "endMessageId < startMessageId"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1094
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1095
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 1096
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v1, v3, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRangeForSubscriber(IIII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1103
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "success":Z
    :cond_1
    :goto_0
    return v2

    .line 1099
    .restart local v2    # "success":Z
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 971
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "getAllMessagesFromIcc"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/4 v2, 0x0

    .line 976
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 977
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 979
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 980
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 978
    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 989
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3

    .line 982
    .restart local v2    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :catch_0
    move-exception v0

    .line 985
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "getAllMessagesFromIcc, RemoteException!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAllMessagesFromIccEfByMode(I)Ljava/util/ArrayList;
    .locals 12
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2049
    const-string/jumbo v9, "SmsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getAllMessagesFromIcc, mode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    const/4 v6, 0x0

    .line 2054
    .local v6, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 2055
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_0

    .line 2056
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v9

    .line 2057
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v10

    .line 2056
    invoke-interface {v3, v9, v10, p1}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfByModeForSubscriber(ILjava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2063
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v6    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :cond_0
    :goto_0
    const/4 v8, 0x0

    .line 2064
    .local v8, "sz":I
    if-eqz v6, :cond_1

    .line 2065
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 2067
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v8, :cond_5

    .line 2068
    const/4 v0, 0x0

    .line 2069
    .local v0, "data":[B
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SmsRawData;

    .line 2070
    .local v5, "record":Lcom/android/internal/telephony/SmsRawData;
    if-nez v5, :cond_3

    .line 2067
    .end local v0    # "data":[B
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2059
    .end local v2    # "i":I
    .end local v5    # "record":Lcom/android/internal/telephony/SmsRawData;
    .end local v8    # "sz":I
    .restart local v6    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :catch_0
    move-exception v1

    .line 2060
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v9, "SmsManager"

    const-string/jumbo v10, "RemoteException!"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2073
    .end local v1    # "ex":Landroid/os/RemoteException;
    .end local v6    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    .restart local v0    # "data":[B
    .restart local v2    # "i":I
    .restart local v5    # "record":Lcom/android/internal/telephony/SmsRawData;
    .restart local v8    # "sz":I
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v0

    .line 2075
    .local v0, "data":[B
    add-int/lit8 v4, v2, 0x1

    .line 2076
    .local v4, "index":I
    const/4 v9, 0x0

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    .line 2077
    const-string/jumbo v9, "SmsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "index["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] is STATUS_ON_ICC_READ"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    const/4 v9, 0x1

    invoke-virtual {p0, v4, v9, v0}, Landroid/telephony/SmsManager;->updateMessageOnIcc(II[B)Z

    move-result v7

    .line 2080
    .local v7, "ret":Z
    if-eqz v7, :cond_4

    .line 2081
    const-string/jumbo v9, "SmsManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "update index["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] to STATUS_ON_ICC_READ"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2083
    :cond_4
    const-string/jumbo v9, "SmsManager"

    const-string/jumbo v10, "fail to update message status"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2088
    .end local v0    # "data":[B
    .end local v4    # "index":I
    .end local v5    # "record":Lcom/android/internal/telephony/SmsRawData;
    .end local v7    # "ret":Z
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v9

    invoke-static {v9, v6, p1}, Landroid/telephony/SmsManager;->createMessageListFromRawRecordsByMode(ILjava/util/List;I)Ljava/util/ArrayList;

    move-result-object v9

    return-object v9
.end method

.method public getAutoPersisting()Z
    .locals 3

    .prologue
    .line 1857
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1858
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1859
    invoke-interface {v1}, Lcom/android/internal/telephony/IMms;->getAutoPersisting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1861
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1864
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getCarrierConfigValues()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1874
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1875
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1876
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IMms;->getCarrierConfigValues(I)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1878
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1881
    :cond_0
    return-object v3
.end method

.method public getCellBroadcastSmsConfig()[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2875
    const-string/jumbo v5, "SmsManager"

    const-string/jumbo v6, "getCellBroadcastSmsConfig"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    const-string/jumbo v5, "SmsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    const/4 v0, 0x0

    .line 2880
    .local v0, "configs":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 2881
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_0

    .line 2882
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/ISms;->getCellBroadcastSmsConfigForSubscriber(I)[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2890
    .end local v0    # "configs":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    if-eqz v0, :cond_2

    .line 2891
    const-string/jumbo v5, "SmsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "config length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    const/4 v2, 0x0

    .line 2893
    .local v2, "i":I
    array-length v5, v0

    if-eqz v5, :cond_2

    .line 2894
    array-length v5, v0

    new-array v4, v5, [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .line 2895
    .local v4, "result":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    const/4 v2, 0x0

    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 2896
    aget-object v5, v0, v2

    invoke-direct {p0, v5}, Landroid/telephony/SmsManager;->Convert2SmsBroadcastConfigInfo(Lcom/mediatek/internal/telephony/SmsCbConfigInfo;)Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    move-result-object v5

    aput-object v5, v4, v2

    .line 2895
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2884
    .end local v2    # "i":I
    .end local v4    # "result":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .restart local v0    # "configs":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    .restart local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :try_start_1
    const-string/jumbo v5, "SmsManager"

    const-string/jumbo v6, "fail to get sms service"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2886
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    .line 2887
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v5, "SmsManager"

    const-string/jumbo v6, "RemoteException"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2897
    .end local v0    # "configs":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "i":I
    .restart local v4    # "result":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_1
    return-object v4

    .line 2905
    .end local v2    # "i":I
    .end local v4    # "result":[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    :cond_2
    return-object v8
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1231
    const-string/jumbo v1, "unknown"

    .line 1233
    .local v1, "format":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1234
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 1235
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ISms;->getImsSmsFormatForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1240
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v1

    .line 1237
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getSmsParameters()Landroid/telephony/SmsParameters;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2631
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "getSmsParameters"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2640
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2641
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_2

    .line 2642
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 2643
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2642
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->getSmsParametersForSubscriber(ILjava/lang/String;)Landroid/telephony/SmsParameters;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 2635
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "Not the current owner and reject this operation"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    return-object v4

    .line 2645
    .restart local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_2
    return-object v4

    .line 2647
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 2648
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "fail to get SmsParameters"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    return-object v4
.end method

.method public getSmsSimMemoryStatus()Lcom/mediatek/internal/telephony/IccSmsStorageStatus;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2827
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "getSmsSimMemoryStatus"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2831
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2832
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 2833
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2832
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->getSmsSimMemoryStatusForSubscriber(ILjava/lang/String;)Lcom/mediatek/internal/telephony/IccSmsStorageStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 2835
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 2836
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2839
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public getSubscriptionId()I
    .locals 9

    .prologue
    .line 768
    iget v7, p0, Landroid/telephony/SmsManager;->mSubId:I

    const/16 v8, -0x3ea

    if-ne v7, v8, :cond_2

    .line 769
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v6

    .line 770
    .local v6, "subId":I
    :goto_0
    const/4 v5, 0x0

    .line 771
    .local v5, "isSmsSimPickActivityNeeded":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 773
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 774
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_0

    .line 775
    invoke-interface {v3, v6}, Lcom/android/internal/telephony/ISms;->isSmsSimPickActivityNeeded(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 783
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v5    # "isSmsSimPickActivityNeeded":Z
    :cond_0
    :goto_1
    const/4 v5, 0x0

    .line 785
    .restart local v5    # "isSmsSimPickActivityNeeded":Z
    if-eqz v5, :cond_1

    .line 786
    const-string/jumbo v7, "SmsManager"

    const-string/jumbo v8, "getSubscriptionId isSmsSimPickActivityNeeded is true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 789
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "com.android.settings"

    .line 790
    const-string/jumbo v8, "com.android.settings.sim.SimDialogActivity"

    .line 789
    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    const/high16 v7, 0x10000000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 792
    sget-object v7, Landroid/telephony/SmsManager;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v8, 0x2

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 794
    :try_start_1
    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 802
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_2
    return v6

    .line 769
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "isSmsSimPickActivityNeeded":Z
    .end local v6    # "subId":I
    :cond_2
    iget v6, p0, Landroid/telephony/SmsManager;->mSubId:I

    .restart local v6    # "subId":I
    goto :goto_0

    .line 777
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v5    # "isSmsSimPickActivityNeeded":Z
    :catch_0
    move-exception v2

    .line 778
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v7, "SmsManager"

    const-string/jumbo v8, "Exception in getSubscriptionId"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 795
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 798
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v7, "SmsManager"

    const-string/jumbo v8, "Unable to launch Settings application."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public importMultimediaMessage(Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    .locals 9
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "timestampSecs"    # J
    .param p5, "seen"    # Z
    .param p6, "read"    # Z

    .prologue
    .line 1527
    if-nez p1, :cond_0

    .line 1528
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1531
    :cond_0
    :try_start_0
    const-string/jumbo v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1532
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 1533
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IMms;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1536
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v8

    .line 1539
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public importTextMessage(Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "timestampMillis"    # J
    .param p6, "seen"    # Z
    .param p7, "read"    # Z

    .prologue
    .line 1494
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1495
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1496
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IMms;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1499
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1502
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 440
    const-string/jumbo v2, "3gpp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "3gpp2"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 446
    :cond_0
    :try_start_0
    const-string/jumbo v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 447
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 449
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 448
    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return-void

    .line 442
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 443
    const-string/jumbo v3, "Invalid pdu format. format must be either 3gpp or 3gpp2"

    .line 442
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 451
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public insertRawMessageToIccCard(I[B[B)Landroid/telephony/SimSmsInsertStatus;
    .locals 8
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "smsc"    # [B

    .prologue
    const/4 v3, 0x0

    .line 2478
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "insertRawMessageToIccCard"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    const/4 v7, 0x0

    .line 2482
    .local v7, "ret":Landroid/telephony/SimSmsInsertStatus;
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2488
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2489
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 2490
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 2491
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 2490
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->insertRawMessageToIccCardForSubscriber(ILjava/lang/String;I[B[B)Landroid/telephony/SimSmsInsertStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2497
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v7    # "ret":Landroid/telephony/SimSmsInsertStatus;
    :cond_1
    :goto_0
    const-string/jumbo v2, "SmsManager"

    if-eqz v7, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insert Raw "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v7, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    return-object v7

    .line 2483
    .restart local v7    # "ret":Landroid/telephony/SimSmsInsertStatus;
    :cond_2
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    return-object v3

    .line 2493
    :catch_0
    move-exception v6

    .line 2494
    .local v6, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "RemoteException"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2497
    .end local v6    # "ex":Landroid/os/RemoteException;
    .end local v7    # "ret":Landroid/telephony/SimSmsInsertStatus;
    :cond_3
    const-string/jumbo v1, "insert Raw null"

    goto :goto_1
.end method

.method public insertTextMessageToIccCard(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Landroid/telephony/SimSmsInsertStatus;
    .locals 11
    .param p1, "scAddress"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p4, "status"    # I
    .param p5, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ)",
            "Landroid/telephony/SimSmsInsertStatus;"
        }
    .end annotation

    .prologue
    .line 2441
    .local p3, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "insertTextMessageToIccCard"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    const/4 v10, 0x0

    .line 2445
    .local v10, "ret":Landroid/telephony/SimSmsInsertStatus;
    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2451
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2452
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 2453
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 2454
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-wide/from16 v8, p5

    .line 2453
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ISms;->insertTextMessageToIccCardForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJ)Landroid/telephony/SimSmsInsertStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 2461
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v10    # "ret":Landroid/telephony/SimSmsInsertStatus;
    :cond_1
    :goto_0
    const-string/jumbo v3, "SmsManager"

    if-eqz v10, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insert Text "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v10, Landroid/telephony/SimSmsInsertStatus;->indexInIcc:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    return-object v10

    .line 2446
    .restart local v10    # "ret":Landroid/telephony/SimSmsInsertStatus;
    :cond_2
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "Not the current owner and reject this operation"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    const/4 v2, 0x0

    return-object v2

    .line 2457
    :catch_0
    move-exception v0

    .line 2458
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2461
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v10    # "ret":Landroid/telephony/SimSmsInsertStatus;
    :cond_3
    const-string/jumbo v2, "insert Text null"

    goto :goto_1
.end method

.method public isImsSmsSupported()Z
    .locals 4

    .prologue
    .line 1206
    const/4 v0, 0x0

    .line 1208
    .local v0, "boSupported":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1209
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 1210
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ISms;->isImsSmsSupportedForSubscriber(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1215
    .end local v0    # "boSupported":Z
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1212
    .restart local v0    # "boSupported":Z
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isSMSPromptEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1267
    const/4 v2, 0x0

    .line 1269
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    :try_start_0
    const-string/jumbo v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1270
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-interface {v2}, Lcom/android/internal/telephony/ISms;->isSMSPromptEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1273
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    .line 1274
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 1271
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1272
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public queryCellBroadcastSmsActivation()Z
    .locals 6

    .prologue
    .line 2973
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "queryCellBroadcastSmsActivation"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    const/4 v2, 0x0

    .line 2978
    .local v2, "result":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2979
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2981
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 2980
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ISms;->queryCellBroadcastSmsActivationForSubscriber(I)Z

    move-result v2

    .line 2990
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 2983
    .restart local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .restart local v2    # "result":Z
    :cond_0
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "fail to get sms service"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2984
    const/4 v2, 0x0

    goto :goto_0

    .line 2986
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 2987
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "RemoteException!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeCellBroadcastMsg(II)Z
    .locals 6
    .param p1, "channelId"    # I
    .param p2, "serialId"    # I

    .prologue
    .line 3036
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RemoveCellBroadcastMsg, subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    const/4 v2, 0x0

    .line 3040
    .local v2, "result":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3041
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 3042
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v1, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->removeCellBroadcastMsgForSubscriber(III)Z

    move-result v2

    .line 3052
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 3045
    .restart local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .restart local v2    # "result":Z
    :cond_0
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "fail to get sms service"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3046
    const/4 v2, 0x0

    goto :goto_0

    .line 3048
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 3049
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "RemoveCellBroadcastMsg, RemoteException!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;SS[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 13
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "originalPort"    # S
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2229
    const-string/jumbo v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDataMessage, destinationAddress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2231
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2234
    :cond_0
    const-string/jumbo v2, "send_data"

    move-object/from16 v0, p6

    invoke-static {p1, v2, v0}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2235
    return-void

    .line 2238
    :cond_1
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    array-length v2, v0

    if-nez v2, :cond_3

    .line 2239
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid message data"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2241
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2242
    .local v12, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2243
    invoke-direct {p0, v12}, Landroid/telephony/SmsManager;->is4GDataOnlyMode(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2244
    return-void

    .line 2248
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2249
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_5

    .line 2250
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 2251
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2252
    const v4, 0xffff

    and-int v6, p3, v4

    const v4, 0xffff

    and-int v7, p4, v4

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 2250
    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ISms;->sendDataWithOriginalPortForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2228
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_5
    :goto_0
    return-void

    .line 2255
    :catch_0
    move-exception v11

    .line 2256
    .local v11, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "RemoteException!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 624
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 625
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 628
    :cond_0
    if-eqz p4, :cond_1

    move-object/from16 v0, p4

    array-length v2, v0

    if-nez v2, :cond_2

    .line 629
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid message data"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 633
    :cond_2
    const-string/jumbo v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDataMessage, destinationAddress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const-string/jumbo v2, "send_data"

    move-object/from16 v0, p5

    invoke-static {p1, v2, v0}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 636
    return-void

    .line 639
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 640
    .local v11, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    invoke-direct {p0, v11}, Landroid/telephony/SmsManager;->is4GDataOnlyMode(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 642
    return-void

    .line 647
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 648
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 649
    const v4, 0xffff

    and-int v6, p3, v4

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 648
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ISms;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 651
    :catch_0
    move-exception v10

    .line 654
    .local v10, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "sendDataMessage, RemoteException!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDataMessageWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 668
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 669
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 672
    :cond_0
    if-eqz p4, :cond_1

    move-object/from16 v0, p4

    array-length v2, v0

    if-nez v2, :cond_2

    .line 673
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid message data"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 677
    :cond_2
    const-string/jumbo v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDataMessage, destinationAddress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string/jumbo v2, "send_data"

    move-object/from16 v0, p5

    invoke-static {p1, v2, v0}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 680
    return-void

    .line 683
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 684
    .local v11, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-direct {p0, v11}, Landroid/telephony/SmsManager;->is4GDataOnlyMode(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 686
    return-void

    .line 691
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 692
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 693
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 694
    const v4, 0xffff

    and-int v6, p3, v4

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 692
    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ISms;->sendDataForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 695
    :catch_0
    move-exception v10

    .local v10, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "locationUrl"    # Ljava/lang/String;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1412
    if-nez p2, :cond_0

    .line 1413
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1416
    :cond_0
    :try_start_0
    const-string/jumbo v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1417
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v0, :cond_1

    .line 1418
    return-void

    .line 1421
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IMms;->sendMessage(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1411
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-void

    .line 1423
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 518
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 517
    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 516
    return-void
.end method

.method public sendMultipartTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2360
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string/jumbo v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendMultipartTextMessageWithEncodingType, encoding="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2362
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2365
    :cond_0
    move-object/from16 v0, p5

    invoke-static {p1, p3, v0}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2366
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "invalid parameters for multipart message"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    return-void

    .line 2370
    :cond_1
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Landroid/telephony/SmsManager;->is4GDataOnlyMode(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2371
    return-void

    .line 2374
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 2376
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2377
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_3

    .line 2378
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 2379
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2381
    const/4 v10, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 2378
    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ISms;->sendMultipartTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2359
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 2383
    :catch_0
    move-exception v11

    .line 2384
    .local v11, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2387
    .end local v11    # "ex":Landroid/os/RemoteException;
    :cond_4
    const/4 v7, 0x0

    .line 2388
    .local v7, "sentIntent":Landroid/app/PendingIntent;
    const/4 v8, 0x0

    .line 2389
    .local v8, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 2390
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 2392
    :cond_5
    const-string/jumbo v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get sentIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    if-eqz p6, :cond_6

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 2394
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 2396
    :cond_6
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "send single message"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    if-eqz p3, :cond_7

    .line 2398
    const-string/jumbo v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parts.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    const-string/jumbo v5, ""

    .line 2401
    .local v5, "text":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pass encoding type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v6, p4

    .line 2402
    invoke-virtual/range {v2 .. v8}, Landroid/telephony/SmsManager;->sendTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 2400
    .end local v5    # "text":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .restart local v5    # "text":Ljava/lang/String;
    goto :goto_1
.end method

.method public sendMultipartTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2577
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "sendMultipartTextMessageWithExtraParams"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2579
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2582
    :cond_0
    move-object/from16 v0, p5

    invoke-static {p1, p3, v0}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2583
    return-void

    .line 2586
    :cond_1
    if-nez p4, :cond_2

    .line 2587
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "bundle is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    return-void

    .line 2591
    :cond_2
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Landroid/telephony/SmsManager;->is4GDataOnlyMode(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2592
    return-void

    .line 2595
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 2597
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2598
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_4

    .line 2599
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 2600
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2602
    const/4 v10, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 2599
    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ISms;->sendMultipartTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2576
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_4
    :goto_0
    return-void

    .line 2604
    :catch_0
    move-exception v11

    .line 2605
    .local v11, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2608
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_5
    const/4 v7, 0x0

    .line 2609
    .local v7, "sentIntent":Landroid/app/PendingIntent;
    const/4 v8, 0x0

    .line 2610
    .local v8, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 2611
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 2613
    :cond_6
    if-eqz p6, :cond_7

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 2614
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 2617
    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    const-string/jumbo v5, ""

    .local v5, "text":Ljava/lang/String;
    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v6, p4

    .line 2618
    invoke-virtual/range {v2 .. v8}, Landroid/telephony/SmsManager;->sendTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 2617
    .end local v5    # "text":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .restart local v5    # "text":Ljava/lang/String;
    goto :goto_1
.end method

.method public sendMultipartTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 588
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 587
    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 586
    return-void
.end method

.method public sendStoredMultimediaMessage(Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "configOverrides"    # Landroid/os/Bundle;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1807
    if-nez p1, :cond_0

    .line 1808
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1811
    :cond_0
    :try_start_0
    const-string/jumbo v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 1812
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 1814
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1813
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IMms;->sendStoredMessage(ILjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1806
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_1
    :goto_0
    return-void

    .line 1817
    :catch_0
    move-exception v6

    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendStoredMultipartTextMessage(Landroid/net/Uri;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1773
    .local p3, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p4, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-nez p1, :cond_0

    .line 1774
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1777
    :cond_0
    invoke-direct {p0, p3}, Landroid/telephony/SmsManager;->is4GDataOnlyMode(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1778
    return-void

    .line 1782
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1784
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1783
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendStoredMultipartText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1772
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 1786
    :catch_0
    move-exception v7

    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendStoredTextMessage(Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1718
    if-nez p1, :cond_0

    .line 1719
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1722
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1723
    .local v8, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v8, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1724
    invoke-direct {p0, v8}, Landroid/telephony/SmsManager;->is4GDataOnlyMode(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1725
    return-void

    .line 1729
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1731
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1730
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendStoredText(ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1717
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 1733
    :catch_0
    move-exception v7

    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 323
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 322
    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 321
    return-void
.end method

.method public sendTextMessageWithEncodingType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 14
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "encodingType"    # I
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2292
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendTextMessageWithEncodingType, text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", encoding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2294
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid destinationAddress"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2297
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {p1, v0, v1}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2298
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "the parameters are invalid"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    return-void

    .line 2302
    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2303
    .local v13, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2304
    invoke-direct {p0, v13}, Landroid/telephony/SmsManager;->is4GDataOnlyMode(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2305
    return-void

    .line 2309
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 2310
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_3

    .line 2311
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 2312
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2313
    const/4 v11, 0x1

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 2311
    invoke-interface/range {v2 .. v11}, Lcom/android/internal/telephony/ISms;->sendTextWithEncodingTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2291
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 2315
    :catch_0
    move-exception v12

    .line 2316
    .local v12, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextMessageWithExtraParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 14
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "extraParams"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2519
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendTextMessageWithExtraParams, text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2521
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid destinationAddress"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2524
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {p1, v0, v1}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2525
    return-void

    .line 2528
    :cond_1
    if-nez p4, :cond_2

    .line 2529
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "bundle is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    return-void

    .line 2533
    :cond_2
    new-instance v13, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2534
    .local v13, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2535
    invoke-direct {p0, v13}, Landroid/telephony/SmsManager;->is4GDataOnlyMode(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2536
    return-void

    .line 2540
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 2541
    .local v2, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_4

    .line 2542
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    .line 2543
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2544
    const/4 v11, 0x1

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 2542
    invoke-interface/range {v2 .. v11}, Lcom/android/internal/telephony/ISms;->sendTextWithExtraParamsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2518
    .end local v2    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_4
    :goto_0
    return-void

    .line 2546
    :catch_0
    move-exception v12

    .line 2547
    .local v12, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendTextMessageWithSelfPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_0
    const-string/jumbo v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTextMessage, text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", destinationAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {p1, p3, p4}, Landroid/telephony/SmsManager;->isValidParameters(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 402
    return-void

    .line 404
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 405
    .local v9, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v9, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-direct {p0, v9}, Landroid/telephony/SmsManager;->is4GDataOnlyMode(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    return-void

    .line 412
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 413
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 414
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 413
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriberWithSelfPermissions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v8

    .local v8, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 377
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 376
    invoke-direct/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 375
    return-void
.end method

.method public setAutoPersisting(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1836
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1837
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 1838
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/IMms;->setAutoPersisting(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1834
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_0
    :goto_0
    return-void

    .line 1840
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
    .locals 9
    .param p1, "channels"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
    .param p2, "languages"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .prologue
    .line 2921
    const-string/jumbo v6, "SmsManager"

    const-string/jumbo v7, "setCellBroadcastSmsConfig"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    const-string/jumbo v6, "SmsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "subId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    if-eqz p1, :cond_0

    .line 2924
    const-string/jumbo v6, "SmsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "channel size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    :goto_0
    if-eqz p2, :cond_1

    .line 2929
    const-string/jumbo v6, "SmsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "language size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    :goto_1
    const/4 v5, 0x0

    .line 2936
    .local v5, "result":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 2937
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_4

    .line 2938
    const/4 v2, 0x0

    .line 2939
    .local v2, "i":I
    const/4 v0, 0x0

    .local v0, "channelInfos":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    const/4 v4, 0x0

    .line 2940
    .local v4, "languageInfos":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    if-eqz p1, :cond_2

    array-length v6, p1

    if-eqz v6, :cond_2

    .line 2941
    array-length v6, p1

    new-array v0, v6, [Lcom/mediatek/internal/telephony/SmsCbConfigInfo;

    .line 2942
    .local v0, "channelInfos":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    const/4 v2, 0x0

    :goto_2
    array-length v6, p1

    if-ge v2, v6, :cond_2

    .line 2943
    aget-object v6, p1, v2

    invoke-direct {p0, v6}, Landroid/telephony/SmsManager;->Convert2SmsCbConfigInfo(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Lcom/mediatek/internal/telephony/SmsCbConfigInfo;

    move-result-object v6

    aput-object v6, v0, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2942
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2926
    .end local v0    # "channelInfos":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    .end local v2    # "i":I
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v4    # "languageInfos":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    .end local v5    # "result":Z
    :cond_0
    const-string/jumbo v6, "SmsManager"

    const-string/jumbo v7, "channel size=0"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2931
    :cond_1
    const-string/jumbo v6, "SmsManager"

    const-string/jumbo v7, "language size=0"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2945
    .restart local v2    # "i":I
    .restart local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    .restart local v4    # "languageInfos":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    .restart local v5    # "result":Z
    :cond_2
    if-eqz p2, :cond_3

    :try_start_1
    array-length v6, p2

    if-eqz v6, :cond_3

    .line 2946
    array-length v6, p2

    new-array v4, v6, [Lcom/mediatek/internal/telephony/SmsCbConfigInfo;

    .line 2947
    .local v4, "languageInfos":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    const/4 v2, 0x0

    :goto_3
    array-length v6, p2

    if-ge v2, v6, :cond_3

    .line 2948
    aget-object v6, p2, v2

    invoke-direct {p0, v6}, Landroid/telephony/SmsManager;->Convert2SmsCbConfigInfo(Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Lcom/mediatek/internal/telephony/SmsCbConfigInfo;

    move-result-object v6

    aput-object v6, v4, v2

    .line 2947
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2951
    .end local v4    # "languageInfos":[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v6

    invoke-interface {v3, v6, v0, v4}, Lcom/android/internal/telephony/ISms;->setCellBroadcastSmsConfigForSubscriber(I[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;[Lcom/mediatek/internal/telephony/SmsCbConfigInfo;)Z

    move-result v5

    .line 2961
    .end local v2    # "i":I
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v5    # "result":Z
    :goto_4
    return v5

    .line 2954
    .restart local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    .restart local v5    # "result":Z
    :cond_4
    const-string/jumbo v6, "SmsManager"

    const-string/jumbo v7, "fail to get sms service"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2955
    const/4 v5, 0x0

    goto :goto_4

    .line 2957
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    .line 2958
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v6, "SmsManager"

    const-string/jumbo v7, "setCellBroadcastSmsConfig, RemoteException!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setEtwsConfig(I)Z
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 2778
    const-string/jumbo v3, "SmsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEtwsConfig, mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    const/4 v2, 0x0

    .line 2782
    .local v2, "ret":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2783
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2784
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    invoke-interface {v1, v3, p1}, Lcom/android/internal/telephony/ISms;->setEtwsConfigForSubscriber(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2790
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v2    # "ret":Z
    :cond_0
    :goto_0
    return v2

    .line 2786
    .restart local v2    # "ret":Z
    :catch_0
    move-exception v0

    .line 2787
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "SmsManager"

    const-string/jumbo v4, "RemoteException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSmsMemoryStatus(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 2804
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "setSmsMemoryStatus"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2808
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2809
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/ISms;->setSmsMemoryStatusForSubscriber(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2803
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 2811
    :catch_0
    move-exception v0

    .line 2812
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSmsParameters(Landroid/telephony/SmsParameters;)Z
    .locals 5
    .param p1, "params"    # Landroid/telephony/SmsParameters;

    .prologue
    const/4 v4, 0x0

    .line 2666
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "setSmsParameters"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2675
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2676
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_2

    .line 2677
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 2678
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2677
    invoke-interface {v1, v2, v3, p1}, Lcom/android/internal/telephony/ISms;->setSmsParametersForSubscriber(ILjava/lang/String;Landroid/telephony/SmsParameters;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2670
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "Not the current owner and reject this operation"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    return v4

    .line 2680
    .restart local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_2
    return v4

    .line 2682
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v0

    .line 2683
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "SmsManager"

    const-string/jumbo v3, "RemoteException"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    return v4
.end method

.method public updateMessageOnIcc(II[B)Z
    .locals 8
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B

    .prologue
    .line 931
    const-string/jumbo v1, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMessageOnIcc, messageIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v7, 0x0

    .line 937
    .local v7, "success":Z
    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/SmsManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 944
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 945
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 946
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 947
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 946
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 957
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v7    # "success":Z
    :cond_1
    :goto_0
    return v7

    .line 938
    .restart local v7    # "success":Z
    :cond_2
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "Not the current owner and reject this operation"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const/4 v1, 0x0

    return v1

    .line 950
    :catch_0
    move-exception v6

    .line 953
    .local v6, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "SmsManager"

    const-string/jumbo v2, "updateMessageOnIcc, RemoteException!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateSmsOnSimReadStatus(IZ)Z
    .locals 12
    .param p1, "index"    # I
    .param p2, "read"    # Z

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2728
    const-string/jumbo v6, "SmsManager"

    const-string/jumbo v7, "updateSmsOnSimReadStatus"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    const/4 v4, 0x0

    .line 2732
    .local v4, "record":Lcom/android/internal/telephony/SmsRawData;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2733
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2734
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v6

    .line 2735
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2734
    invoke-interface {v1, v6, v7, p1}, Lcom/android/internal/telephony/ISms;->getMessageFromIccEfForSubscriber(ILjava/lang/String;I)Lcom/android/internal/telephony/SmsRawData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2741
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v4    # "record":Lcom/android/internal/telephony/SmsRawData;
    :cond_0
    :goto_0
    if-eqz v4, :cond_6

    .line 2742
    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v3

    .line 2743
    .local v3, "rawData":[B
    aget-byte v6, v3, v9

    and-int/lit16 v5, v6, 0xff

    .line 2744
    .local v5, "status":I
    const-string/jumbo v6, "SmsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sms status is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    if-eq v5, v11, :cond_1

    .line 2746
    if-eq v5, v10, :cond_1

    .line 2747
    const-string/jumbo v6, "SmsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "non-delivery sms "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    return v9

    .line 2737
    .end local v3    # "rawData":[B
    .end local v5    # "status":I
    .restart local v4    # "record":Lcom/android/internal/telephony/SmsRawData;
    :catch_0
    move-exception v0

    .line 2738
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v6, "SmsManager"

    const-string/jumbo v7, "RemoteException"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2750
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v4    # "record":Lcom/android/internal/telephony/SmsRawData;
    .restart local v3    # "rawData":[B
    .restart local v5    # "status":I
    :cond_1
    if-ne v5, v11, :cond_3

    if-nez p2, :cond_3

    .line 2752
    :cond_2
    const-string/jumbo v6, "SmsManager"

    const-string/jumbo v7, "no need to update status"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    return v10

    .line 2751
    :cond_3
    if-ne v5, v10, :cond_4

    if-nez p2, :cond_2

    .line 2755
    :cond_4
    const-string/jumbo v6, "SmsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update sms status as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    if-eqz p2, :cond_5

    const/4 v2, 0x1

    .line 2758
    .local v2, "newStatus":I
    :goto_1
    invoke-virtual {p0, p1, v2, v3}, Landroid/telephony/SmsManager;->updateMessageOnIcc(II[B)Z

    move-result v6

    return v6

    .line 2757
    .end local v2    # "newStatus":I
    :cond_5
    const/4 v2, 0x3

    .restart local v2    # "newStatus":I
    goto :goto_1

    .line 2763
    .end local v2    # "newStatus":I
    .end local v3    # "rawData":[B
    .end local v5    # "status":I
    :cond_6
    const-string/jumbo v6, "SmsManager"

    const-string/jumbo v7, "record is null"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    return v9
.end method

.method public updateStoredMessageStatus(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 4
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "statusValues"    # Landroid/content/ContentValues;

    .prologue
    .line 1600
    if-nez p1, :cond_0

    .line 1601
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Empty message URI"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1604
    :cond_0
    :try_start_0
    const-string/jumbo v2, "imms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 1605
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_1

    .line 1606
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/telephony/IMms;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1609
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    .line 1612
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
