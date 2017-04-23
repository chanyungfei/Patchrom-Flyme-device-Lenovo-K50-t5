.class public Lcom/android/internal/telephony/WspTypeDecoder;
.super Ljava/lang/Object;
.source "WspTypeDecoder.java"


# static fields
.field public static final CONTENT_MIME_TYPE_B_CONNECTIVITY:Ljava/lang/String; = "application/vnd.wap.connectivity-wbxml"

.field public static final CONTENT_MIME_TYPE_B_VND_SULP_INIT:Ljava/lang/String; = "application/vnd.omaloc-supl-init"

.field public static final CONTENT_TYPE_B_CONNECTIVITY:I = 0x35

.field public static final CONTENT_TYPE_B_MMS:Ljava/lang/String; = "application/vnd.wap.mms-message"

.field public static final CONTENT_TYPE_B_PUSH_CO:Ljava/lang/String; = "application/vnd.wap.coc"

.field public static final CONTENT_TYPE_B_PUSH_SYNCML_NOTI:Ljava/lang/String; = "application/vnd.syncml.notification"

.field public static final PARAMETER_ID_X_WAP_APPLICATION_ID:I = 0x2f

.field public static final PDU_TYPE_CONFIRMED_PUSH:I = 0x7

.field public static final PDU_TYPE_PUSH:I = 0x6

.field private static final Q_VALUE:I = 0x0

.field private static final WAP_PDU_LENGTH_QUOTE:I = 0x1f

.field private static final WAP_PDU_SHORT_LENGTH_MAX:I = 0x1e

.field private static final WELL_KNOWN_HEADERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContentParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDataLength:I

.field mHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mStringValue:Ljava/lang/String;

.field mUnsigned32bit:J

.field mWspData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    sput-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    sput-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    sput-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    .line 64
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "*/*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/x-hdml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/x-ttml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/x-vCalendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/x-vCard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/vnd.wap.wml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/vnd.wap.wmlscript"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/vnd.wap.wta-event"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "multipart/*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "multipart/mixed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "multipart/form-data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "multipart/byterantes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "multipart/alternative"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/java-vm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/x-hdmlc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.wmlc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.wmlscriptc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.wta-eventc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.uaprof"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.wtls-ca-certificate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.wtls-user-certificate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/x-x509-ca-cert"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/x-x509-user-cert"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "image/*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "image/gif"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "image/tiff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.multipart.*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.multipart.form-data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.multipart.byteranges"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/x-x968-cross-cert"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/x-x968-ca-cert"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/x-x968-user-cert"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/vnd.wap.si"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.sic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/vnd.wap.sl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.slc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/vnd.wap.co"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.coc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.multipart.related"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.sia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/vnd.wap.connectivity-xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/pkcs7-mime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.hashed-certificate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.signed-certificate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.cert-response"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/xhtml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/wml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/css"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.mms-message"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.rollover-certificate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.locc+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.loc+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.syncml.dm+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.syncml.notification"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wv.csp.cir"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.oma.dd+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.oma.drm.message"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.oma.drm.content"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wv.csp+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wv.csp+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.syncml.ds.notification"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "video/*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.oma.dd2+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/mikey"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.oma.dcd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.oma.dcdc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.uplanet.cacheop-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x202

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.uplanet.signal"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x203

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.uplanet.alert-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x204

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.uplanet.list-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x205

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.uplanet.listcmd-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x206

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.uplanet.channel-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x207

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.uplanet.provisioning-status-uri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x208

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap.multipart/vnd.uplanet.header-set"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x209

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.uplanet.bearer-choice-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x20a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.phonecom.mmc-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x20b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.nokia.syncset+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x20c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "image/x-up-wpng"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x300

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/iota.mmc-wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x301

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/iota.mmc-xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x302

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.syncml+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x303

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.syncml+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x304

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/vnd.wap.emn+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x305

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x306

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.omads-email+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x307

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.omads-file+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x308

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.omads-folder+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x309

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "text/directory;profile=vCard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x30a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wap.emn+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x30b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.nokia.ipdc-purchase-response"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x30c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.motorola.screen3+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x30d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.motorola.screen3+gzip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x30e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.cmcc.setting+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x30f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.cmcc.bombing+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x310

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.docomo.pf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x311

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.docomo.ub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x312

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.omaloc-supl-init"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x313

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.oma.group-usage-list+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x314

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/oma-directory+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x315

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.docomo.pf2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x316

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.oma.drm.roap-trigger+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x317

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.sbm.mid2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x318

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.wmf.bootstrap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x319

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnc.cmcc.dcd+xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x31a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.sbm.cid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    const/16 v1, 0x31b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.oma.bcast.provisioningtrigger"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Q"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Charset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Level"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Differences"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Padding"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Max-Age"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Secure"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SEC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MAC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Creation-date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Modification-date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Read-date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Filename"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Start"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Start-info"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Comment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Domain"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Path"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Accept"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Accept-Charset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Accept-Encoding"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Accept-Language"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Accept-Ranges"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Age"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Allow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Authorization"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Cache-Control"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Connection"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Content-Base"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Content-Encoding"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Content-Language"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Content-Length"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Content-Location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Content-MD5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Content-Range"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Etag"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Expires"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "From"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Host"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "If-Modified-Since"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "If-Match"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "If-None-Match"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "If-Range"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "If-Unmodified-Since"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Last-Modified"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Max-Forwards"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Pragma"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Proxy-Authenticate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Proxy-Authorization"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Public"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Range"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Referer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Retry-After"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Server"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Transfer-Encoding"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Upgrade"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "User-Agent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Vary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Via"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Warning"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "WWW-Authenticate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Content-Disposition"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-Wap-Application-Id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-Wap-Content-URI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-Wap-Initiator-URI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Accept-Application"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Bearer-Indication"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Push-Flag"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Profile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Profile-Diff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Profile-Warning"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Expect"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "TE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Trailer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x3b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Accept-Charset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Accept-Encoding"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Cache-Control"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Content-Range"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-Wap-Tod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Content-ID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Set-Cookie"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Cookie"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Encoding-Version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Profile-Warning"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Content-Disposition"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-WAP-Security"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Cache-Control"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Expect"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-Wap-Loc-Invocation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "X-Wap-Loc-Delivery"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 955
    sput-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    .line 958
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-application:*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-application:push.sia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-application:wml.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-application:wta.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-application:mms.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-application:push.syncml"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-application:loc.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-application:syncml.dm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-application:drm.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-application:emn.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-application:wv.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-application:ulp.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-application:dlota.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-application:java-ams"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-application:bcast.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-application:dpe.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-application:cpm:ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-microsoft:localcontent.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-microsoft:IMclient.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-docomo:imode.mail.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-docomo:imode.mr.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-docomo:imode.mf.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-motorola:location.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8006

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-motorola:now.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8007

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-motorola:otaprov.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-motorola:browser.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8009

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-motorola:splash.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x800b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-nai:mvsw.command"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x8010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-openwave:iota.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-docomo:imode.mail2.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-nec:otaprov.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-nokia:call.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-coremobility:sqa.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:doja.jam.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-nokia:sip.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9011

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-vodafone:otaprov.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9012

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-hutchison:ad.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9013

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-nokia:voip.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9014

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:voice.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9015

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:browser.ctl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9016

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:dan.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9017

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-nokia:vs.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9018

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-nokia:voip.ext1.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9019

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-vodafone:casting.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x901a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:imode.data.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x901b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-snapin:otaprov.ctl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x901c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-nokia:vrs.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x901d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-nokia:vrpg.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x901e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-motorola:screen3.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x901f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:device.ctl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9020

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-nokia:msc.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9021

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-3gpp2:lcs.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9022

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-vodafone:dcd.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9023

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-3gpp:mbms.service.announcement.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9024

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-vodafone:dltmtbl.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9025

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-vodafone:dvcctl.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9026

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-cmcc:mail.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9027

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-nokia:vmb.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9028

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-nokia:ldapss.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9029

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-hutchison:al.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x902a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-nokia:uma.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x902b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-nokia:news.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x902c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:pf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x902d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:ub>"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x902e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-nokia:nat.traversal.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x902f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-intromobile:intropad.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9030

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:uin.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9031

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-nokia:iptv.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9032

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-hutchison:il.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9033

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-nokia:voip.general.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9034

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-microsoft:drm.meter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9035

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-microsoft:drm.license"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9036

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:ic.ctl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9037

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-slingmedia:SPM.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9038

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-cibenix:odp.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9039

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-motorola:voip.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x903a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-motorola:ims"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x903b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:imode.remote.ctl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x903c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:device.ctl.um"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x903d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-microsoft:playready.drm.initiator"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x903e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-microsoft:playready.drm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x903f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-sbm:ms.mexa.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "urn:oma:drms:org-LGE:L650V"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9041

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:um"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9042

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:uin.um"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9043

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "urn:oma:drms:org-LGE:KU450"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9044

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-microsoft:cfgmgr.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9045

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-3gpp:mbms.download.delivery.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9046

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:star.ctl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9047

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "urn:oma:drms:org-LGE:KU380"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9048

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:pf2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9049

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-motorola:blogcentral.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x904a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:imode.agent.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x904b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-wap-application:push.sia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x904c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-nokia:destination.network.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x904d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-sbm:mid2.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x904e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-carrieriq:avm.ctl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x904f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-sbm:ms.xml.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9050

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "urn:dvb:ipdc:notification:2008"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9051

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:imode.mvch.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9052

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-motorola:webui.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9053

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-sbm:cid.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9054

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-nokia:vcc.v1.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9055

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:open.ctl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9056

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:sp.mail.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9057

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-essoy-application:push.erace"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9058

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:open.fu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9059

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-samsung:osp.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x905a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:imode.mchara.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x905b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1079
    const-string/jumbo v2, "X-Wap-Application-Id:x-oma-application: scidm.ua"

    .line 1078
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x905c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:xmd.mail.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x905d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-application:pal.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x905e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:imode.relation.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x905f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:xmd.storage.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    sget-object v0, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    const v1, 0x9060

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "x-oma-docomo:xmd.lcsapp.ua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "pdu"    # [B

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    .line 311
    return-void
.end method

.method private decodeNoValue(I)Z
    .locals 3
    .param p1, "startIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 642
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v0, v0, p1

    if-nez v0, :cond_0

    .line 643
    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 644
    return v2

    .line 646
    :cond_0
    return v1
.end method

.method private expandWellKnownMimeType()V
    .locals 4

    .prologue
    .line 656
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 657
    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    long-to-int v0, v2

    .line 658
    .local v0, "binaryContentType":I
    sget-object v1, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_MIME_TYPES:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 655
    .end local v0    # "binaryContentType":I
    :goto_0
    return-void

    .line 660
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    goto :goto_0
.end method

.method private readContentParameters(III)Z
    .locals 12
    .param p1, "startIndex"    # I
    .param p2, "leftToRead"    # I
    .param p3, "accumulator"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 575
    if-lez p2, :cond_8

    .line 576
    iget-object v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v6, p1

    .line 577
    .local v1, "nextByte":B
    const/4 v4, 0x0

    .line 578
    .local v4, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 579
    .local v2, "param":Ljava/lang/String;
    and-int/lit16 v6, v1, 0x80

    if-nez v6, :cond_2

    const/16 v6, 0x1f

    if-le v1, v6, :cond_2

    .line 580
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTokenText(I)Z

    .line 581
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 582
    .local v2, "param":Ljava/lang/String;
    iget v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/lit8 v3, v6, 0x0

    .line 608
    .local v3, "totalRead":I
    :cond_0
    add-int v6, p1, v3

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeNoValue(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 609
    iget v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v3, v6

    .line 610
    const/4 v4, 0x0

    .line 624
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mContentParameters:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    add-int v6, p1, v3

    sub-int v7, p2, v3

    .line 626
    add-int v8, p3, v3

    .line 625
    invoke-direct {p0, v6, v7, v8}, Lcom/android/internal/telephony/WspTypeDecoder;->readContentParameters(III)Z

    move-result v6

    return v6

    .line 584
    .end local v3    # "totalRead":I
    .local v2, "param":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 585
    iget v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/lit8 v3, v6, 0x0

    .line 586
    .restart local v3    # "totalRead":I
    iget-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    long-to-int v5, v6

    .line 587
    .local v5, "wellKnownParameterValue":I
    sget-object v6, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_PARAMETERS:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "param":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 588
    .local v2, "param":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 589
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unassigned/0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 592
    :cond_3
    if-nez v5, :cond_0

    .line 593
    add-int v6, p1, v3

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 594
    iget v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v3, v6

    .line 595
    iget-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 596
    .local v4, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mContentParameters:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    add-int v6, p1, v3

    sub-int v7, p2, v3

    .line 598
    add-int v8, p3, v3

    .line 597
    invoke-direct {p0, v6, v7, v8}, Lcom/android/internal/telephony/WspTypeDecoder;->readContentParameters(III)Z

    move-result v6

    return v6

    .line 600
    .local v4, "value":Ljava/lang/String;
    :cond_4
    return v10

    .line 604
    .end local v3    # "totalRead":I
    .end local v5    # "wellKnownParameterValue":I
    .local v2, "param":Ljava/lang/String;
    :cond_5
    return v10

    .line 611
    .local v2, "param":Ljava/lang/String;
    .restart local v3    # "totalRead":I
    :cond_6
    add-int v6, p1, v3

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 612
    iget v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v3, v6

    .line 613
    iget-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    long-to-int v0, v6

    .line 614
    .local v0, "intValue":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "value":Ljava/lang/String;
    goto :goto_0

    .line 616
    .end local v0    # "intValue":I
    .local v4, "value":Ljava/lang/String;
    :cond_7
    add-int v6, p1, v3

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTokenText(I)Z

    .line 617
    iget v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v3, v6

    .line 618
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 619
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 621
    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 629
    .end local v1    # "nextByte":B
    .end local v2    # "param":Ljava/lang/String;
    .end local v3    # "totalRead":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_8
    iput p3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 630
    return v11
.end method


# virtual methods
.method public decodeConstrainedEncoding(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 502
    const/4 v0, 0x1

    return v0

    .line 504
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    move-result v0

    return v0
.end method

.method public decodeContentLength(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    .prologue
    .line 674
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v0

    return v0
.end method

.method public decodeContentLocation(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    .prologue
    .line 687
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public decodeContentType(I)Z
    .locals 13
    .param p1, "startIndex"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 522
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mContentParameters:Ljava/util/HashMap;

    .line 525
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeValueLength(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 526
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeConstrainedEncoding(I)Z

    move-result v1

    .line 527
    .local v1, "found":Z
    if-eqz v1, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->expandWellKnownMimeType()V

    .line 530
    :cond_0
    return v1

    .line 532
    .end local v1    # "found":Z
    :cond_1
    iget-wide v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    long-to-int v2, v8

    .line 533
    .local v2, "headersLength":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v3

    .line 534
    .local v3, "mediaPrefixLength":I
    add-int v8, p1, v3

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 535
    iget v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 536
    iget v5, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 537
    .local v5, "readLength":I
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 538
    invoke-direct {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->expandWellKnownMimeType()V

    .line 539
    iget-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 540
    .local v6, "wellKnownValue":J
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 541
    .local v4, "mimeType":Ljava/lang/String;
    iget v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v8, p1

    .line 542
    iget v9, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    sub-int/2addr v9, v3

    sub-int v9, v2, v9

    const/4 v10, 0x0

    .line 541
    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->readContentParameters(III)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 543
    iget v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 544
    iput-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 545
    iput-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 546
    return v12

    .line 548
    :cond_2
    return v11

    .line 550
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "readLength":I
    .end local v6    # "wellKnownValue":J
    :cond_3
    add-int v8, p1, v3

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeExtensionMedia(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 551
    iget v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 552
    iget v5, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 553
    .restart local v5    # "readLength":I
    invoke-direct {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->expandWellKnownMimeType()V

    .line 554
    iget-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 555
    .restart local v6    # "wellKnownValue":J
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 556
    .restart local v4    # "mimeType":Ljava/lang/String;
    iget v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v8, p1

    .line 557
    iget v9, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    sub-int/2addr v9, v3

    sub-int v9, v2, v9

    const/4 v10, 0x0

    .line 556
    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->readContentParameters(III)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 558
    iget v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 559
    iput-wide v6, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 560
    iput-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    return v12

    .line 564
    .end local v2    # "headersLength":I
    .end local v3    # "mediaPrefixLength":I
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "readLength":I
    .end local v6    # "wellKnownValue":J
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return v11

    .line 568
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v2    # "headersLength":I
    .restart local v3    # "mediaPrefixLength":I
    :cond_4
    return v11
.end method

.method public decodeExtensionMedia(I)Z
    .locals 6
    .param p1, "startIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 474
    move v0, p1

    .line 475
    .local v0, "index":I
    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 476
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 477
    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    array-length v1, v3

    .line 478
    .local v1, "length":I
    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    .line 480
    .local v2, "rtrn":Z
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_1

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    .end local v2    # "rtrn":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "rtrn":Z
    goto :goto_0

    .line 484
    :cond_1
    sub-int v3, v0, p1

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 485
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    iget v5, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v3, v4, p1, v5}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 487
    return v2
.end method

.method public decodeHeaderFieldName(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    .prologue
    .line 901
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 903
    const/4 v0, 0x1

    return v0

    .line 905
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public decodeHeaderFieldValues(I)Z
    .locals 4
    .param p1, "startIndex"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 921
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v0, v1, p1

    .line 922
    .local v0, "first":B
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 923
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v1

    .line 922
    if-eqz v1, :cond_0

    .line 924
    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 925
    iget v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 926
    return v2

    .line 929
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 930
    iput-object v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 931
    return v2

    .line 933
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v1

    return v1
.end method

.method public decodeHeaders(II)V
    .locals 6
    .param p1, "startIndex"    # I
    .param p2, "headerLength"    # I

    .prologue
    .line 854
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mHeaders:Ljava/util/HashMap;

    .line 855
    const/4 v0, 0x0

    .line 856
    .local v0, "headerName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 859
    .local v1, "headerValue":Ljava/lang/String;
    move v2, p1

    .line 860
    .end local v0    # "headerName":Ljava/lang/String;
    .end local v1    # "headerValue":Ljava/lang/String;
    .local v2, "index":I
    :cond_0
    :goto_0
    add-int v4, p1, p2

    if-ge v2, v4, :cond_3

    .line 861
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeHeaderFieldName(I)Z

    .line 862
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int/2addr v2, v4

    .line 863
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->expandWellKnownHeadersName()V

    .line 864
    iget-wide v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    long-to-int v3, v4

    .line 865
    .local v3, "intValues":I
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 866
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 873
    .local v0, "headerName":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeHeaderFieldValues(I)Z

    .line 874
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int/2addr v2, v4

    .line 875
    iget-wide v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    long-to-int v3, v4

    .line 876
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 877
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 884
    .local v1, "headerValue":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 867
    .end local v0    # "headerName":Ljava/lang/String;
    .end local v1    # "headerValue":Ljava/lang/String;
    :cond_1
    if-ltz v3, :cond_0

    .line 868
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "headerName":Ljava/lang/String;
    goto :goto_1

    .line 878
    :cond_2
    if-ltz v3, :cond_0

    .line 879
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "headerValue":Ljava/lang/String;
    goto :goto_2

    .line 853
    .end local v0    # "headerName":Ljava/lang/String;
    .end local v1    # "headerValue":Ljava/lang/String;
    .end local v3    # "intValues":I
    :cond_3
    return-void
.end method

.method public decodeIntegerValue(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeShortInteger(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const/4 v0, 0x1

    return v0

    .line 412
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeLongInteger(I)Z

    move-result v0

    return v0
.end method

.method public decodeLongInteger(I)Z
    .locals 7
    .param p1, "startIndex"    # I

    .prologue
    const/4 v6, 0x1

    .line 386
    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v2, v2, p1

    and-int/lit16 v1, v2, 0xff

    .line 388
    .local v1, "lengthMultiOctet":I
    const/16 v2, 0x1e

    if-le v1, v2, :cond_0

    .line 389
    const/4 v2, 0x0

    return v2

    .line 391
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 392
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_1

    .line 393
    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    add-int v5, p1, v0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_1
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 396
    return v6
.end method

.method public decodeShortInteger(I)Z
    .locals 3
    .param p1, "startIndex"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 369
    return v1

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v0, v0, p1

    and-int/lit8 v0, v0, 0x7f

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 372
    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 373
    return v2
.end method

.method public decodeTextString(I)Z
    .locals 5
    .param p1, "startIndex"    # I

    .prologue
    .line 325
    move v0, p1

    .line 326
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 330
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, p1

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_1

    .line 331
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/lit8 v4, v4, -0x2

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 335
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 333
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v2, p1, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    goto :goto_1
.end method

.method public decodeTokenText(I)Z
    .locals 4
    .param p1, "startIndex"    # I

    .prologue
    .line 348
    move v0, p1

    .line 349
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 353
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    iget v3, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v2, p1, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 355
    const/4 v1, 0x1

    return v1
.end method

.method public decodeUintvarInteger(I)Z
    .locals 8
    .param p1, "startIndex"    # I

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x0

    .line 425
    move v0, p1

    .line 427
    .local v0, "index":I
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 428
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 429
    sub-int v1, v0, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 430
    return v6

    .line 432
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    shl-long/2addr v2, v7

    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-long v4, v1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_1
    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    shl-long/2addr v2, v7

    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v1, v1, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-long v4, v1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 436
    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 437
    const/4 v1, 0x1

    return v1
.end method

.method public decodeValueLength(I)Z
    .locals 3
    .param p1, "startIndex"    # I

    .prologue
    const/16 v1, 0x1f

    const/4 v2, 0x1

    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v1, :cond_0

    .line 451
    const/4 v0, 0x0

    return v0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v0, v0, p1

    if-ge v0, v1, :cond_1

    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 455
    iput v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    .line 460
    :goto_0
    return v2

    .line 457
    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    .line 458
    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    goto :goto_0
.end method

.method public decodeXWapApplicationId(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    .prologue
    .line 701
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 703
    const/4 v0, 0x1

    return v0

    .line 705
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public decodeXWapContentURI(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    .prologue
    .line 782
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public decodeXWapInitiatorURI(I)Z
    .locals 1
    .param p1, "startIndex"    # I

    .prologue
    .line 795
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v0

    return v0
.end method

.method public expandWellKnownHeadersName()V
    .locals 4

    .prologue
    .line 937
    iget-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 938
    iget-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    long-to-int v0, v2

    .line 939
    .local v0, "binaryHeadersName":I
    sget-object v1, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_HEADERS:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 936
    .end local v0    # "binaryHeadersName":I
    :goto_0
    return-void

    .line 941
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    goto :goto_0
.end method

.method public expandWellKnownXWapApplicationIdName()V
    .locals 6

    .prologue
    .line 1092
    const-string/jumbo v0, "X-Wap-Application-Id"

    .line 1093
    .local v0, "X_WAP_APPLICATION_ID":Ljava/lang/String;
    const/4 v1, -0x1

    .line 1095
    .local v1, "binaryCode":I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1099
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 1100
    sget-object v4, Lcom/android/internal/telephony/WspTypeDecoder;->WELL_KNOWN_X_WAP_APPLICATION_ID:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1101
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1102
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mHeaders:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return-void

    .line 1096
    :catch_0
    move-exception v2

    .line 1097
    .local v2, "e":Ljava/lang/Exception;
    return-void
.end method

.method public getContentParameters()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mContentParameters:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDecodedDataLength()I
    .locals 1

    .prologue
    .line 802
    iget v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mDataLength:I

    return v0
.end method

.method public getHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->expandWellKnownXWapApplicationIdName()V

    .line 947
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public getValue32()J
    .locals 2

    .prologue
    .line 809
    iget-wide v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    return-wide v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public seekXWapApplicationId(II)Z
    .locals 8
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    const/16 v7, 0x1f

    const/4 v6, 0x0

    .line 718
    move v2, p1

    .line 721
    .local v2, "index":I
    move v2, p1

    :goto_0
    if-gt v2, p2, :cond_9

    .line 726
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeIntegerValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v1, v4

    .line 729
    .local v1, "fieldValue":I
    const/16 v4, 0x2f

    if-ne v1, v4, :cond_1

    .line 730
    add-int/lit8 v4, v2, 0x1

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mUnsigned32bit:J

    .line 731
    const/4 v4, 0x1

    return v4

    .line 734
    .end local v1    # "fieldValue":I
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v4

    if-nez v4, :cond_1

    return v6

    .line 736
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int/2addr v2, v4

    .line 737
    if-le v2, p2, :cond_2

    return v6

    .line 750
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v3, v4, v2

    .line 751
    .local v3, "val":B
    if-ltz v3, :cond_3

    const/16 v4, 0x1e

    if-gt v3, v4, :cond_3

    .line 752
    iget-object v4, p0, Lcom/android/internal/telephony/WspTypeDecoder;->mWspData:[B

    aget-byte v4, v4, v2

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    goto :goto_0

    .line 753
    :cond_3
    if-ne v3, v7, :cond_6

    .line 754
    add-int/lit8 v4, v2, 0x1

    if-lt v4, p2, :cond_4

    return v6

    .line 755
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 756
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v4

    if-nez v4, :cond_5

    return v6

    .line 757
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 758
    :cond_6
    if-ge v7, v3, :cond_8

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_8

    .line 759
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v4

    if-nez v4, :cond_7

    return v6

    .line 760
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 762
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 765
    .end local v3    # "val":B
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    return v6

    .line 769
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_9
    return v6
.end method
