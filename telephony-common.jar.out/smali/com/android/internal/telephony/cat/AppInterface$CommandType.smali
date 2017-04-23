.class public final enum Lcom/android/internal/telephony/cat/AppInterface$CommandType;
.super Ljava/lang/Enum;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/AppInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/AppInterface$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum ACTIVATE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum CALLCTRL_RSP_MSG:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum DECLARE_SERVICE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum DISPLAY_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum GET_FRAME_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum GET_READER_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum GET_SERVICE_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum MORE_TIME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum PERFORM_CARD_APDU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum POLLING_OFF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum POLL_INTERVAL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum POWER_OFF_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum POWER_ON_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum RETRIEVE_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum RUN_AT_COMMAND:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SERVICE_SEARCH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SET_FRAME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SUBMIT_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum TIMER_MANAGEMENT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 94
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "DISPLAY_TEXT"

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 95
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "GET_INKEY"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "GET_INPUT"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 97
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "LAUNCH_BROWSER"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 98
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "PLAY_TONE"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 99
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "REFRESH"

    invoke-direct {v0, v1, v8, v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "SELECT_ITEM"

    const/4 v2, 0x6

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "SEND_SS"

    const/4 v2, 0x7

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "SEND_USSD"

    const/16 v2, 0x8

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "SEND_SMS"

    const/16 v2, 0x9

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 104
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "SEND_DTMF"

    const/16 v2, 0xa

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 105
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "SET_UP_EVENT_LIST"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "SET_UP_IDLE_MODE_TEXT"

    const/16 v2, 0xc

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 107
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "SET_UP_MENU"

    const/16 v2, 0xd

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "SET_UP_CALL"

    const/16 v2, 0xe

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 109
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "PROVIDE_LOCAL_INFORMATION"

    const/16 v2, 0xf

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 111
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "MORE_TIME"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 114
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->MORE_TIME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 115
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "POLL_INTERVAL"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 118
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POLL_INTERVAL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 119
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "POLLING_OFF"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v7}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 122
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POLLING_OFF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 123
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "TIMER_MANAGEMENT"

    const/16 v2, 0x13

    .line 126
    const/16 v3, 0x27

    .line 123
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 126
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->TIMER_MANAGEMENT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 127
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "PERFORM_CARD_APDU"

    const/16 v2, 0x14

    .line 130
    const/16 v3, 0x30

    .line 127
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 130
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PERFORM_CARD_APDU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 131
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "POWER_ON_CARD"

    const/16 v2, 0x15

    .line 134
    const/16 v3, 0x31

    .line 131
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 134
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POWER_ON_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 135
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "POWER_OFF_CARD"

    const/16 v2, 0x16

    .line 138
    const/16 v3, 0x32

    .line 135
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 138
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POWER_OFF_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 139
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "GET_READER_STATUS"

    const/16 v2, 0x17

    .line 142
    const/16 v3, 0x33

    .line 139
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 142
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_READER_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 143
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "RUN_AT_COMMAND"

    const/16 v2, 0x18

    .line 146
    const/16 v3, 0x34

    .line 143
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 146
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RUN_AT_COMMAND:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 147
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "LANGUAGE_NOTIFICATION"

    const/16 v2, 0x19

    .line 150
    const/16 v3, 0x35

    .line 147
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 150
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 151
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "OPEN_CHANNEL"

    const/16 v2, 0x1a

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 152
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "CLOSE_CHANNEL"

    const/16 v2, 0x1b

    const/16 v3, 0x41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 153
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "RECEIVE_DATA"

    const/16 v2, 0x1c

    const/16 v3, 0x42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 154
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "SEND_DATA"

    const/16 v2, 0x1d

    const/16 v3, 0x43

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 155
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "GET_CHANNEL_STATUS"

    const/16 v2, 0x1e

    .line 158
    const/16 v3, 0x44

    .line 155
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 158
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 159
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "SERVICE_SEARCH"

    const/16 v2, 0x1f

    .line 162
    const/16 v3, 0x45

    .line 159
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 162
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SERVICE_SEARCH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 163
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "GET_SERVICE_INFORMATION"

    const/16 v2, 0x20

    .line 166
    const/16 v3, 0x46

    .line 163
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 166
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_SERVICE_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 167
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "DECLARE_SERVICE"

    const/16 v2, 0x21

    .line 170
    const/16 v3, 0x47

    .line 167
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 170
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DECLARE_SERVICE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 171
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "SET_FRAME"

    const/16 v2, 0x22

    .line 174
    const/16 v3, 0x50

    .line 171
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 174
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_FRAME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 175
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "GET_FRAME_STATUS"

    const/16 v2, 0x23

    .line 178
    const/16 v3, 0x51

    .line 175
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 178
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_FRAME_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 179
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "RETRIEVE_MULTIMEDIA_MESSAGE"

    const/16 v2, 0x24

    .line 182
    const/16 v3, 0x60

    .line 179
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 182
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RETRIEVE_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 183
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "SUBMIT_MULTIMEDIA_MESSAGE"

    const/16 v2, 0x25

    .line 186
    const/16 v3, 0x61

    .line 183
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 186
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SUBMIT_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 187
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "DISPLAY_MULTIMEDIA_MESSAGE"

    const/16 v2, 0x26

    .line 190
    const/16 v3, 0x62

    .line 187
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 190
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 191
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "ACTIVATE"

    const/16 v2, 0x27

    .line 194
    const/16 v3, 0x70

    .line 191
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 194
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ACTIVATE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 195
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string/jumbo v1, "CALLCTRL_RSP_MSG"

    const/16 v2, 0x28

    .line 198
    const/16 v3, 0xff

    .line 195
    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    .line 198
    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CALLCTRL_RSP_MSG:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 93
    const/16 v0, 0x29

    new-array v0, v0, [Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->MORE_TIME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POLL_INTERVAL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POLLING_OFF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->TIMER_MANAGEMENT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PERFORM_CARD_APDU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POWER_ON_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POWER_OFF_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_READER_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RUN_AT_COMMAND:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SERVICE_SEARCH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_SERVICE_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DECLARE_SERVICE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_FRAME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_FRAME_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RETRIEVE_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SUBMIT_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ACTIVATE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CALLCTRL_RSP_MSG:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 203
    iput p3, p0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->mValue:I

    .line 202
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 219
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 220
    .local v0, "e":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    iget v4, v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->mValue:I

    if-ne v4, p0, :cond_0

    .line 221
    return-object v0

    .line 219
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v0    # "e":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    const-class v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->mValue:I

    return v0
.end method
