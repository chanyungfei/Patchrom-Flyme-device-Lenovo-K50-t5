.class public final enum Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
.super Ljava/lang/Enum;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/utk/AppInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum CLOSE_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum DISPLAY_TEXT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum GET_INKEY:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum GET_INPUT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum LAUNCH_BROWSER:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum LOCAL_INFO:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum MORE_TIME:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum OPEN_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum PLAY_TONE:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum POLL_INTERVAL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum RECEIVE_DATA:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum REFRESH:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum SELECT_ITEM:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum SEND_DATA:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum SEND_DTMF:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum SEND_SMS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum SEND_SS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum SEND_USSD:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum SET_UP_CALL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum SET_UP_MENU:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

.field public static final enum TIMER_MANAGEMENT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 55
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "DISPLAY_TEXT"

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "GET_INKEY"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "GET_INPUT"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "LAUNCH_BROWSER"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "PLAY_TONE"

    const/4 v2, 0x4

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 60
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "REFRESH"

    invoke-direct {v0, v1, v7, v4}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "SELECT_ITEM"

    const/4 v2, 0x6

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 62
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "SEND_SS"

    const/4 v2, 0x7

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "SEND_USSD"

    const/16 v2, 0x8

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 64
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "SEND_SMS"

    const/16 v2, 0x9

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 65
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "SEND_DTMF"

    const/16 v2, 0xa

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 66
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "SET_UP_EVENT_LIST"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v7}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "SET_UP_IDLE_MODE_TEXT"

    const/16 v2, 0xc

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 68
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "SET_UP_MENU"

    const/16 v2, 0xd

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "SET_UP_CALL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v8}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 70
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "MORE_TIME"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->MORE_TIME:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 71
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "LOCAL_INFO"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->LOCAL_INFO:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 73
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "POLL_INTERVAL"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 74
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->POLL_INTERVAL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 75
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "TIMER_MANAGEMENT"

    const/16 v2, 0x12

    const/16 v3, 0x27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->TIMER_MANAGEMENT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "OPEN_CHANNEL"

    const/16 v2, 0x13

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "CLOSE_CHANNEL"

    const/16 v2, 0x14

    const/16 v3, 0x41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "RECEIVE_DATA"

    const/16 v2, 0x15

    const/16 v3, 0x42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 79
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "SEND_DATA"

    const/16 v2, 0x16

    const/16 v3, 0x43

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const-string/jumbo v1, "GET_CHANNEL_STATUS"

    const/16 v2, 0x17

    const/16 v3, 0x44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    .line 54
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->MORE_TIME:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->LOCAL_INFO:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->POLL_INTERVAL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->TIMER_MANAGEMENT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->mValue:I

    .line 85
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 102
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->values()[Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 103
    .local v0, "e":Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    iget v4, v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->mValue:I

    if-ne v4, p0, :cond_0

    .line 104
    return-object v0

    .line 102
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "e":Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->mValue:I

    return v0
.end method
