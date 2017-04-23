.class Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;
.super Landroid/os/Handler;
.source "CommandParamsFactory.java"


# static fields
.field private static synthetic -com_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues:[I = null

.field static final LOAD_MULTI_ICONS:I = 0x2

.field static final LOAD_NO_ICON:I = 0x0

.field static final LOAD_SINGLE_ICON:I = 0x1

.field static final MSG_ID_LOAD_ICON_DONE:I = 0x1

.field static final REFRESH_NAA_FILE_CHANGE:I = 0x1

.field static final REFRESH_NAA_INIT:I = 0x3

.field static final REFRESH_NAA_INIT_AND_FILE_CHANGE:I = 0x2

.field static final REFRESH_NAA_INIT_AND_FULL_FILE_CHANGE:I = 0x0

.field static final REFRESH_UICC_RESET:I = 0x4

.field static final UIM_INPUT_MAX_UNICODE_LEN:I = 0x77

.field private static sInstance:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;


# instance fields
.field private mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

.field private mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

.field private mContext:Landroid/content/Context;

.field private mIconLoadState:I

.field private mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->-com_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->-com_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->values()[Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_17

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_16

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_15

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_14

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_13

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_12

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->LOCAL_INFO:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_11

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->MORE_TIME:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_10

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_f

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_e

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->POLL_INTERVAL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_d

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_c

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_b

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_a

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_9

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_8

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_7

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_6

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_5

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_4

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_3

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_2

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_1

    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->TIMER_MANAGEMENT:Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_0

    :goto_17
    sput-object v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->-com_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_17

    :catch_1
    move-exception v1

    goto :goto_16

    :catch_2
    move-exception v1

    goto :goto_15

    :catch_3
    move-exception v1

    goto :goto_14

    :catch_4
    move-exception v1

    goto :goto_13

    :catch_5
    move-exception v1

    goto :goto_12

    :catch_6
    move-exception v1

    goto :goto_11

    :catch_7
    move-exception v1

    goto :goto_10

    :catch_8
    move-exception v1

    goto :goto_f

    :catch_9
    move-exception v1

    goto :goto_e

    :catch_a
    move-exception v1

    goto :goto_d

    :catch_b
    move-exception v1

    goto/16 :goto_c

    :catch_c
    move-exception v1

    goto/16 :goto_b

    :catch_d
    move-exception v1

    goto/16 :goto_a

    :catch_e
    move-exception v1

    goto/16 :goto_9

    :catch_f
    move-exception v1

    goto/16 :goto_8

    :catch_10
    move-exception v1

    goto/16 :goto_7

    :catch_11
    move-exception v1

    goto/16 :goto_6

    :catch_12
    move-exception v1

    goto/16 :goto_5

    :catch_13
    move-exception v1

    goto/16 :goto_4

    :catch_14
    move-exception v1

    goto/16 :goto_3

    :catch_15
    move-exception v1

    goto/16 :goto_2

    :catch_16
    move-exception v1

    goto/16 :goto_1

    :catch_17
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    .line 43
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .param p1, "caller"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 92
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->getPhoneId()I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cdma/utk/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    .line 91
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)V
    .locals 2
    .param p1, "caller"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->getPhoneId()I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cdma/utk/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    .line 99
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mContext:Landroid/content/Context;

    .line 96
    return-void
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;
    .locals 3
    .param p0, "caller"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v2, 0x0

    const-class v1, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 72
    :cond_0
    if-eqz p1, :cond_1

    .line 73
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    monitor-exit v1

    .line 75
    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;
    .locals 4
    .param p0, "caller"    # Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const-class v1, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 83
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 84
    :try_start_1
    const-string/jumbo v0, "CommandParamsFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Create CommandParamsFactory instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->getPhoneId()I

    move-result v3

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    monitor-exit v1

    .line 88
    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private processCloseChannel(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 5
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 1282
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v3, "processCloseChannel"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1284
    const/4 v0, 0x0

    .line 1286
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 1288
    .local v2, "textMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v1, 0x0

    .line 1290
    .local v1, "deviceId":Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1291
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 1292
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 1295
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "textMsg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1297
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1298
    if-eqz v0, :cond_1

    .line 1299
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDeviceIdentities(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;

    move-result-object v1

    .line 1302
    .end local v1    # "deviceId":Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deviceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1310
    if-eqz v1, :cond_2

    .line 1311
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;

    iget v4, v1, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;->destinationId:I

    invoke-direct {v3, p1, v2, v4}, Lcom/android/internal/telephony/cdma/utk/CloseChannelParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;I)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1321
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 105
    .local v0, "cmdDet":Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    if-eqz p1, :cond_0

    .line 108
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    .line 107
    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 109
    .local v1, "ctlvCmdDet":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 111
    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    .end local v0    # "cmdDet":Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .end local v1    # "ctlvCmdDet":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :cond_0
    :goto_0
    return-object v0

    .line 112
    .restart local v0    # "cmdDet":Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .restart local v1    # "ctlvCmdDet":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Lcom/android/internal/telephony/cdma/utk/ResultException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processCommandDetails: Failed to procees command details e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processDisplayText(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 336
    const-string/jumbo v3, "process DisplayText"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 339
    .local v2, "textMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v1, 0x0

    .line 341
    .local v1, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 343
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 344
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 348
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 349
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v3

    .line 352
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_2

    .line 354
    iput-boolean v5, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    .line 357
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_3

    .line 359
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 360
    .local v1, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    iget-boolean v3, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 363
    .end local v1    # "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_4

    .line 365
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->duration:Lcom/android/internal/telephony/cdma/utk/Duration;

    .line 369
    :cond_4
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->isHighPriority:Z

    .line 370
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    move v3, v4

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->userClear:Z

    .line 372
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 374
    if-eqz v1, :cond_7

    .line 375
    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 376
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 378
    return v4

    :cond_5
    move v3, v5

    .line 369
    goto :goto_0

    :cond_6
    move v3, v5

    .line 370
    goto :goto_1

    .line 380
    :cond_7
    return v5
.end method

.method private processEventNotify(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 701
    const-string/jumbo v3, "process EventNotify"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 704
    .local v2, "textMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v1, 0x0

    .line 706
    .local v1, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 708
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_1

    .line 709
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 714
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 715
    if-eqz v0, :cond_0

    .line 716
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 717
    .local v1, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    iget-boolean v3, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 720
    .end local v1    # "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    :cond_0
    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    .line 721
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 723
    if-eqz v1, :cond_2

    .line 724
    iput v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 725
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v4, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 727
    return v6

    .line 711
    .local v1, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v3

    .line 729
    .end local v1    # "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    :cond_2
    return v4
.end method

.method private processGetChannelStatus(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 4
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 1434
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v2, "processGetChannelStatus"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1436
    const/4 v0, 0x0

    .line 1438
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    const/4 v1, 0x0

    .line 1440
    .local v1, "deviceId":Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    sget-object v2, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1441
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 1442
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDeviceIdentities(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;

    move-result-object v1

    .line 1445
    .end local v1    # "deviceId":Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deviceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1447
    if-eqz v1, :cond_1

    .line 1448
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusParams;

    iget v3, v1, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;->destinationId:I

    invoke-direct {v2, p1, v3}, Lcom/android/internal/telephony/cdma/utk/GetChannelStatusParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;I)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1451
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private processGetInkey(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 439
    const-string/jumbo v3, "process GetInkey"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/Input;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/Input;-><init>()V

    .line 442
    .local v2, "input":Lcom/android/internal/telephony/cdma/utk/Input;
    const/4 v1, 0x0

    .line 444
    .local v1, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 446
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_2

    .line 447
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->text:Ljava/lang/String;

    .line 452
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_0

    .line 454
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 458
    .end local v1    # "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_1

    .line 460
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->duration:Lcom/android/internal/telephony/cdma/utk/Duration;

    .line 463
    :cond_1
    iput v4, v2, Lcom/android/internal/telephony/cdma/utk/Input;->minLen:I

    .line 464
    iput v4, v2, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    .line 466
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->digitOnly:Z

    .line 467
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->ucs2:Z

    .line 468
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    move v3, v4

    :goto_2
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->yesNo:Z

    .line 469
    iget v3, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    move v3, v4

    :goto_3
    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/Input;->helpAvailable:Z

    .line 470
    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/utk/Input;->echo:Z

    .line 472
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/GetInputParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cdma/utk/GetInputParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/Input;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 474
    if-eqz v1, :cond_7

    .line 475
    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 476
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 478
    return v4

    .line 449
    .restart local v1    # "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v3

    .end local v1    # "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    :cond_3
    move v3, v5

    .line 466
    goto :goto_0

    :cond_4
    move v3, v5

    .line 467
    goto :goto_1

    :cond_5
    move v3, v5

    .line 468
    goto :goto_2

    :cond_6
    move v3, v5

    .line 469
    goto :goto_3

    .line 480
    :cond_7
    return v5
.end method

.method private processGetInput(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/16 v10, 0x77

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 496
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "process GetInput cmdDet.commandQualifier = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/Input;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/Input;-><init>()V

    .line 499
    .local v3, "input":Lcom/android/internal/telephony/cdma/utk/Input;
    const/4 v2, 0x0

    .line 501
    .local v2, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 503
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_4

    .line 504
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->text:Ljava/lang/String;

    .line 509
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_5

    .line 512
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 513
    .local v4, "rawValue":[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 514
    .local v5, "valueIndex":I
    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->minLen:I

    .line 515
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_0

    .line 525
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->defaultText:Ljava/lang/String;

    .line 528
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 529
    if-eqz v0, :cond_1

    .line 530
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v2

    .line 533
    .end local v2    # "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    :cond_1
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_6

    .line 534
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    .line 535
    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Input;->ucs2:Z

    .line 541
    :cond_2
    :goto_0
    iget-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->ucs2:Z

    if-eqz v6, :cond_3

    .line 542
    iget v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    div-int/lit8 v6, v6, 0x2

    if-le v6, v10, :cond_7

    .line 543
    iput v10, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    .line 548
    :cond_3
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "maxLen = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_8

    move v6, v7

    :goto_2
    iput-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->echo:Z

    .line 550
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_9

    move v6, v7

    :goto_3
    iput-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->packed:Z

    .line 551
    iget v6, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_a

    move v6, v7

    :goto_4
    iput-boolean v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->helpAvailable:Z

    .line 553
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/GetInputParams;

    invoke-direct {v6, p1, v3}, Lcom/android/internal/telephony/cdma/utk/GetInputParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/Input;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 555
    if-eqz v2, :cond_b

    .line 556
    iput v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 557
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v8, v2, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 559
    return v7

    .line 506
    .end local v4    # "rawValue":[B
    .end local v5    # "valueIndex":I
    .restart local v2    # "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v6

    .line 516
    :catch_0
    move-exception v1

    .line 517
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v6

    .line 520
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    new-instance v6, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v6

    .line 538
    .end local v2    # "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    .restart local v4    # "rawValue":[B
    .restart local v5    # "valueIndex":I
    :cond_6
    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Input;->digitOnly:Z

    goto :goto_0

    .line 545
    :cond_7
    iget v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v3, Lcom/android/internal/telephony/cdma/utk/Input;->maxLen:I

    goto :goto_1

    :cond_8
    move v6, v8

    .line 549
    goto :goto_2

    :cond_9
    move v6, v8

    .line 550
    goto :goto_3

    :cond_a
    move v6, v8

    .line 551
    goto :goto_4

    .line 561
    :cond_b
    return v8
.end method

.method private processLaunchBrowser(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 777
    const-string/jumbo v9, "process LaunchBrowser"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 780
    .local v0, "confirmMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v3, 0x0

    .line 781
    .local v3, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    const/4 v6, 0x0

    .line 783
    .local v6, "url":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 784
    .local v1, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 786
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 787
    .local v5, "rawValue":[B
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 788
    .local v7, "valueIndex":I
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v8

    .line 789
    .local v8, "valueLen":I
    if-lez v8, :cond_3

    .line 790
    invoke-static {v5, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 801
    .end local v5    # "rawValue":[B
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "valueIndex":I
    .end local v8    # "valueLen":I
    :cond_0
    :goto_0
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 802
    if-eqz v1, :cond_1

    .line 803
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 806
    :cond_1
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 807
    if-eqz v1, :cond_2

    .line 808
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v3

    .line 809
    .local v3, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    iget-boolean v9, v3, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v9, v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 814
    .end local v3    # "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    :cond_2
    iget v9, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    packed-switch v9, :pswitch_data_0

    .line 817
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

    .line 827
    .local v4, "mode":Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    :goto_1
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserParams;

    invoke-direct {v9, p1, v0, v6, v4}, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;)V

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 829
    if-eqz v3, :cond_4

    .line 830
    iput v12, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 831
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v10, v3, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 833
    return v12

    .line 793
    .end local v4    # "mode":Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    .local v3, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    .restart local v5    # "rawValue":[B
    .restart local v6    # "url":Ljava/lang/String;
    .restart local v7    # "valueIndex":I
    .restart local v8    # "valueLen":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 795
    .end local v5    # "rawValue":[B
    .end local v7    # "valueIndex":I
    .end local v8    # "valueLen":I
    :catch_0
    move-exception v2

    .line 796
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v9

    .line 820
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v3    # "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    .end local v6    # "url":Ljava/lang/String;
    :pswitch_0
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

    .restart local v4    # "mode":Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    goto :goto_1

    .line 823
    .end local v4    # "mode":Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    :pswitch_1
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;

    .restart local v4    # "mode":Lcom/android/internal/telephony/cdma/utk/LaunchBrowserMode;
    goto :goto_1

    .line 835
    :cond_4
    return v10

    .line 814
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processLocalInformation(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 1029
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v0, "process LocalInformation"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1031
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1033
    const/4 v0, 0x0

    return v0
.end method

.method private processMoreTime(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 1019
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v0, "process MoreTime"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1022
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1024
    const/4 v0, 0x0

    return v0
.end method

.method private processOpenChannel(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 9
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1141
    const-string/jumbo v4, "processOpenChannel"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1143
    const/4 v3, 0x0

    .line 1144
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v1, 0x0

    .line 1146
    .local v1, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 1148
    .local v0, "chParams":Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 1151
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1152
    .local v1, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 1153
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 1156
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "textMsg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1159
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1160
    if-eqz v1, :cond_1

    .line 1161
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->iconId:Lcom/android/internal/telephony/cdma/utk/IconId;

    .line 1162
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->iconId:Lcom/android/internal/telephony/cdma/utk/IconId;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v5, v4, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 1165
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "iconId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->iconId:Lcom/android/internal/telephony/cdma/utk/IconId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1168
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1169
    if-eqz v1, :cond_7

    .line 1170
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveBearerDesc(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    .line 1177
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bearerDesc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1180
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1181
    if-eqz v1, :cond_8

    .line 1182
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveBufSize(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bufferSize:I

    .line 1188
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "buffersize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bufferSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1190
    const/4 v2, 0x0

    .line 1191
    .local v2, "ctlvDestAddress":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1193
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TRANSPORT_LEVEL:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1194
    if-eqz v1, :cond_2

    .line 1195
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTransportLevel(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    .line 1198
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->OTHER_ADDRESS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v2

    .line 1199
    .local v2, "ctlvDestAddress":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v2, :cond_2

    .line 1200
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveOtherAddress(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->destAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    .line 1204
    .end local v2    # "ctlvDestAddress":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "transportLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "destAddress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->destAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1216
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->OTHER_ADDRESS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1217
    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_3

    .line 1218
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveOtherAddress(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    .line 1221
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "localAddress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->localAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1224
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->NETWORK_ACCESS_NAME:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1225
    if-eqz v1, :cond_4

    .line 1226
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveNAN(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->networkAccessName:Ljava/lang/String;

    .line 1229
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "networkAccessName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->networkAccessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1232
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1233
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1234
    if-eqz v1, :cond_5

    .line 1235
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->userName:Ljava/lang/String;

    .line 1238
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->userName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1241
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1242
    if-eqz v1, :cond_6

    .line 1243
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->userPwd:Ljava/lang/String;

    .line 1246
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userpassword:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->userPwd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1248
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerType:I

    if-eq v4, v8, :cond_9

    .line 1249
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/BearerDescription;->bearerType:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_9

    .line 1250
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4

    .line 1173
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    :cond_7
    const-string/jumbo v4, "use default bearer"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1174
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    invoke-direct {v4, v7, v8, v6}, Lcom/android/internal/telephony/cdma/utk/BearerDescription;-><init>(II[B)V

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bearerDesc:Lcom/android/internal/telephony/cdma/utk/BearerDescription;

    goto/16 :goto_0

    .line 1184
    :cond_8
    const-string/jumbo v4, "use default buffer size"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1185
    const/16 v4, 0x58e

    iput v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->bufferSize:I

    goto/16 :goto_1

    .line 1253
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    :cond_9
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    if-nez v4, :cond_a

    .line 1254
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4

    .line 1257
    :cond_a
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    .line 1258
    const/4 v5, 0x2

    .line 1257
    if-eq v4, v5, :cond_b

    .line 1259
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    if-eq v4, v7, :cond_b

    .line 1261
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v4, v4, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->protocolType:I

    if-eq v4, v8, :cond_b

    .line 1263
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v4

    .line 1266
    :cond_b
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1268
    iget-object v4, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->iconId:Lcom/android/internal/telephony/cdma/utk/IconId;

    if-eqz v4, :cond_c

    .line 1269
    iput v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 1270
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelParams;->iconId:Lcom/android/internal/telephony/cdma/utk/IconId;

    iget v5, v5, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1272
    return v7

    .line 1275
    :cond_c
    const/4 v4, 0x0

    return v4
.end method

.method private processPlayTone(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 851
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v0, "process PlayTone"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    const/4 v3, 0x0

    .line 854
    .local v3, "tone":Lcom/android/internal/telephony/cdma/utk/Tone;
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 855
    .local v2, "textMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v4, 0x0

    .line 856
    .local v4, "duration":Lcom/android/internal/telephony/cdma/utk/Duration;
    const/4 v8, 0x0

    .line 858
    .local v8, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v6

    .line 859
    .local v6, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v6, :cond_0

    .line 861
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 863
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v9

    .line 864
    .local v9, "rawValue":[B
    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v11

    .line 865
    .local v11, "valueIndex":I
    aget-byte v10, v9, v11

    .line 866
    .local v10, "toneVal":I
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/utk/Tone;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/Tone;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 874
    .end local v3    # "tone":Lcom/android/internal/telephony/cdma/utk/Tone;
    .end local v9    # "rawValue":[B
    .end local v10    # "toneVal":I
    .end local v11    # "valueIndex":I
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v6

    .line 875
    if-eqz v6, :cond_1

    .line 876
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 879
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v6

    .line 880
    if-eqz v6, :cond_2

    .line 881
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Duration;

    move-result-object v4

    .line 884
    .end local v4    # "duration":Lcom/android/internal/telephony/cdma/utk/Duration;
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v6

    .line 885
    if-eqz v6, :cond_3

    .line 886
    invoke-static {v6}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v8

    .line 887
    .local v8, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    iget-boolean v0, v8, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v0, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 890
    .end local v8    # "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    .line 892
    .local v5, "vibrate":Z
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    .line 893
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/PlayToneParams;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/PlayToneParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;Lcom/android/internal/telephony/cdma/utk/Tone;Lcom/android/internal/telephony/cdma/utk/Duration;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 895
    if-eqz v8, :cond_5

    .line 896
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 897
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v1, v8, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    .line 898
    const/4 v12, 0x1

    .line 897
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 899
    const/4 v0, 0x1

    return v0

    .line 867
    .end local v5    # "vibrate":Z
    .restart local v3    # "tone":Lcom/android/internal/telephony/cdma/utk/Tone;
    .restart local v4    # "duration":Lcom/android/internal/telephony/cdma/utk/Duration;
    .local v8, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    :catch_0
    move-exception v7

    .line 868
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/ResultException;

    .line 869
    sget-object v1, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .line 868
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v0

    .line 890
    .end local v3    # "tone":Lcom/android/internal/telephony/cdma/utk/Tone;
    .end local v4    # "duration":Lcom/android/internal/telephony/cdma/utk/Duration;
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v8    # "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "vibrate":Z
    goto :goto_0

    .line 901
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private processPollInterval(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 10
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 1040
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v8, "processPollInterval"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    const/4 v4, 0x0

    .line 1043
    .local v4, "timeUnit":I
    const/4 v3, 0x0

    .line 1045
    .local v3, "timeInterval":I
    const/4 v0, 0x0

    .line 1057
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1058
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_1

    .line 1059
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 1060
    .local v2, "rawValue":[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 1061
    .local v5, "valueIndex":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getLength()I

    move-result v7

    .line 1063
    .local v7, "valueLen":I
    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 1064
    new-instance v8, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v8

    .line 1068
    :cond_0
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "valueIndex":I
    .local v6, "valueIndex":I
    :try_start_0
    aget-byte v8, v2, v5

    and-int/lit16 v4, v8, 0xff

    .line 1069
    aget-byte v8, v2, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v3, v8, 0xff

    .line 1076
    .end local v2    # "rawValue":[B
    .end local v6    # "valueIndex":I
    .end local v7    # "valueLen":I
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "time units="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " time interval="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1078
    new-instance v8, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;

    invoke-direct {v8, p1, v4, v3}, Lcom/android/internal/telephony/cdma/utk/pollIntervalParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;II)V

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1080
    const/4 v8, 0x0

    return v8

    .line 1070
    .restart local v2    # "rawValue":[B
    .restart local v6    # "valueIndex":I
    .restart local v7    # "valueLen":I
    :catch_0
    move-exception v1

    .line 1071
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 1072
    new-instance v8, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v8
.end method

.method private processReceiveData(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 6
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 1328
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v4, "processReceiveData"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1330
    const/4 v0, 0x0

    .line 1332
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    const/4 v1, 0x0

    .line 1333
    .local v1, "dataLength":I
    const/4 v2, 0x0

    .line 1335
    .local v2, "deviceId":Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 1338
    .local v3, "textMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1339
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 1340
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDeviceIdentities(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;

    move-result-object v2

    .line 1343
    .end local v2    # "deviceId":Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1344
    if-eqz v0, :cond_1

    .line 1345
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 1348
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "textMsg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deviceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1357
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1358
    if-eqz v0, :cond_2

    .line 1359
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveReqDataLength(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)I

    move-result v1

    .line 1362
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dataLength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1364
    if-eqz v2, :cond_3

    .line 1365
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;

    iget v5, v2, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;->destinationId:I

    invoke-direct {v4, p1, v1, v3, v5}, Lcom/android/internal/telephony/cdma/utk/ReceiveDataParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;ILcom/android/internal/telephony/cdma/utk/TextMessage;I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1375
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method private processRefresh(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 2
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 574
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "process Refresh: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    iget v0, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    packed-switch v0, :pswitch_data_0

    .line 588
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 585
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    goto :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private processSelectItem(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 604
    const-string/jumbo v7, "process SelectItem"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/Menu;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/Menu;-><init>()V

    .line 607
    .local v3, "menu":Lcom/android/internal/telephony/cdma/utk/Menu;
    const/4 v6, 0x0

    .line 608
    .local v6, "titleIconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    const/4 v1, 0x0

    .line 609
    .local v1, "itemsIconId":Lcom/android/internal/telephony/cdma/utk/ItemsIconId;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 611
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 613
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 614
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->title:Ljava/lang/String;

    .line 618
    :cond_0
    :goto_0
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, v2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 619
    if-eqz v0, :cond_1

    .line 620
    iget-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveItem(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/Item;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 627
    :cond_1
    iget-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 628
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v7

    .line 631
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 632
    if-eqz v0, :cond_3

    .line 635
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iput v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->defaultItem:I

    .line 638
    :cond_3
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 639
    if-eqz v0, :cond_4

    .line 640
    iput v8, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 641
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v6

    .line 642
    .local v6, "titleIconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    iget-boolean v7, v6, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->titleIconSelfExplanatory:Z

    .line 645
    .end local v6    # "titleIconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    :cond_4
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 646
    if-eqz v0, :cond_5

    .line 647
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 648
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveItemsIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/ItemsIconId;

    move-result-object v1

    .line 649
    .local v1, "itemsIconId":Lcom/android/internal/telephony/cdma/utk/ItemsIconId;
    iget-boolean v7, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->selfExplanatory:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->itemsIconSelfExplanatory:Z

    .line 652
    .end local v1    # "itemsIconId":Lcom/android/internal/telephony/cdma/utk/ItemsIconId;
    :cond_5
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    const/4 v4, 0x1

    .line 653
    .local v4, "presentTypeSpecified":Z
    :goto_1
    if-eqz v4, :cond_6

    .line 654
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_8

    .line 655
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/cdma/utk/PresentationType;

    iput-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->presentationType:Lcom/android/internal/telephony/cdma/utk/PresentationType;

    .line 660
    :cond_6
    :goto_2
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_9

    move v7, v8

    :goto_3
    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->softKeyPreferred:Z

    .line 661
    iget v7, p1, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->commandQualifier:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_a

    move v7, v8

    :goto_4
    iput-boolean v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->helpAvailable:Z

    .line 663
    new-instance v10, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;

    if-eqz v6, :cond_b

    move v7, v8

    :goto_5
    invoke-direct {v10, p1, v3, v7}, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/Menu;Z)V

    iput-object v10, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 666
    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    packed-switch v7, :pswitch_data_0

    .line 686
    :goto_6
    return v8

    .line 652
    .end local v4    # "presentTypeSpecified":Z
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "presentTypeSpecified":Z
    goto :goto_1

    .line 657
    :cond_8
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cdma/utk/PresentationType;

    iput-object v7, v3, Lcom/android/internal/telephony/cdma/utk/Menu;->presentationType:Lcom/android/internal/telephony/cdma/utk/PresentationType;

    goto :goto_2

    :cond_9
    move v7, v9

    .line 660
    goto :goto_3

    :cond_a
    move v7, v9

    .line 661
    goto :goto_4

    :cond_b
    move v7, v9

    .line 663
    goto :goto_5

    .line 668
    :pswitch_0
    return v9

    .line 670
    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v9, v6, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    goto :goto_6

    .line 674
    :pswitch_2
    iget-object v5, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    .line 675
    .local v5, "recordNumbers":[I
    if-eqz v6, :cond_c

    .line 677
    iget-object v7, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    new-array v5, v7, [I

    .line 678
    iget v7, v6, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    aput v7, v5, v9

    .line 679
    iget-object v7, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    .line 680
    iget-object v10, v1, Lcom/android/internal/telephony/cdma/utk/ItemsIconId;->recordNumbers:[I

    array-length v10, v10

    .line 679
    invoke-static {v7, v9, v5, v8, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 682
    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcons([ILandroid/os/Message;)V

    goto :goto_6

    .line 666
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processSendData(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 6
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 1382
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v4, "processSendData"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1384
    const/4 v1, 0x0

    .line 1386
    .local v1, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    const/4 v0, 0x0

    .line 1387
    .local v0, "channelData":[B
    const/4 v2, 0x0

    .line 1389
    .local v2, "deviceId":Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 1392
    .local v3, "textMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1393
    .local v1, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 1394
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDeviceIdentities(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;

    move-result-object v2

    .line 1397
    .end local v2    # "deviceId":Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1398
    if-eqz v1, :cond_1

    .line 1399
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 1402
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "textMsg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deviceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1411
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    .line 1412
    if-eqz v1, :cond_2

    .line 1413
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDataToSend(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)[B

    move-result-object v0

    .line 1416
    .end local v0    # "channelData":[B
    :cond_2
    if-eqz v2, :cond_3

    .line 1417
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/SendDataParams;

    iget v5, v2, Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;->destinationId:I

    invoke-direct {v4, p1, v0, v3, v5}, Lcom/android/internal/telephony/cdma/utk/SendDataParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;[BLcom/android/internal/telephony/cdma/utk/TextMessage;I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1427
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method private processSendSms(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 8
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 980
    const-string/jumbo v4, "processSendSms"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 981
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 982
    .local v3, "textMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v1, 0x0

    .line 983
    .local v1, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    const/4 v2, 0x0

    .line 985
    .local v2, "smsPdu":[B
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 987
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_2

    .line 988
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 993
    :goto_0
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 994
    if-eqz v0, :cond_0

    .line 995
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 996
    .local v1, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    iget-boolean v4, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 999
    .end local v1    # "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->CDMA_SMS_TPDU:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1000
    if-eqz v0, :cond_1

    .line 1001
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveSmsPdu(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)[B

    move-result-object v2

    .line 1004
    .end local v2    # "smsPdu":[B
    :cond_1
    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->responseNeeded:Z

    .line 1005
    new-instance v4, Lcom/android/internal/telephony/cdma/utk/SendSmsParams;

    invoke-direct {v4, p1, v3, v2}, Lcom/android/internal/telephony/cdma/utk/SendSmsParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;[B)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1007
    if-eqz v1, :cond_3

    .line 1008
    iput v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 1009
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v5, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 1011
    return v7

    .line 990
    .local v1, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    .restart local v2    # "smsPdu":[B
    :cond_2
    const-string/jumbo v4, "processSendSms : textMsg.text is null"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1013
    .end local v1    # "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    .end local v2    # "smsPdu":[B
    :cond_3
    return v5
.end method

.method private processSetUpEventList(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 5
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 744
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v3, "process SetUpEventList"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    const/4 v2, 0x0

    .line 748
    .local v2, "eventList":[B
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 749
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 751
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveSetupEventList(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 756
    .end local v2    # "eventList":[B
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "eventList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cdma/utk/SetupEventListParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;[B)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 761
    :cond_0
    const/4 v3, 0x0

    return v3

    .line 752
    .restart local v2    # "eventList":[B
    :catch_0
    move-exception v1

    .local v1, "e":Lcom/android/internal/telephony/cdma/utk/ResultException;
    goto :goto_0
.end method

.method private processSetUpIdleModeText(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v6, 0x1

    .line 396
    const-string/jumbo v3, "process SetUpIdleModeText"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    new-instance v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 399
    .local v2, "textMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v1, 0x0

    .line 401
    .local v1, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 403
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 404
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 407
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 408
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_1

    .line 410
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v1

    .line 411
    .local v1, "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    iget-boolean v3, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 415
    .end local v1    # "iconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cdma/utk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 417
    if-eqz v1, :cond_2

    .line 418
    iput v6, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 419
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    iget v4, v1, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 421
    return v6

    .line 423
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private processSetupCall(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .line 916
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const-string/jumbo v9, "process SetupCall"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 918
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 919
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    .line 921
    .local v4, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    new-instance v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 923
    .local v3, "confirmMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    new-instance v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 924
    .local v1, "callMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/TextMessage;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/utk/TextMessage;-><init>()V

    .line 925
    .local v7, "setupMsg":Lcom/android/internal/telephony/cdma/utk/TextMessage;
    const/4 v2, 0x0

    .line 926
    .local v2, "confirmIconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    const/4 v0, 0x0

    .line 929
    .local v0, "callIconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v4

    .line 930
    .local v4, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v4, :cond_0

    .line 931
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v8

    .line 932
    .local v8, "temctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v8, :cond_5

    .line 933
    const-string/jumbo v9, "search confirm message not null"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 934
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 939
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "confirmMsg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", setupMsg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 942
    .end local v8    # "temctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :cond_0
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v4

    .line 943
    if-eqz v4, :cond_1

    .line 944
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v2

    .line 945
    .local v2, "confirmIconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    iget-boolean v9, v2, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v9, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 949
    .end local v2    # "confirmIconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    :cond_1
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v4

    .line 950
    if-eqz v4, :cond_2

    .line 951
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAdress(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 954
    :cond_2
    sget-object v9, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v4

    .line 955
    if-eqz v4, :cond_3

    .line 956
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/IconId;

    move-result-object v0

    .line 957
    .local v0, "callIconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    iget-boolean v9, v0, Lcom/android/internal/telephony/cdma/utk/IconId;->selfExplanatory:Z

    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/utk/TextMessage;->iconSelfExplanatory:Z

    .line 960
    .end local v0    # "callIconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    :cond_3
    new-instance v9, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;

    invoke-direct {v9, p1, v3, v1, v7}, Lcom/android/internal/telephony/cdma/utk/CallSetupParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;Lcom/android/internal/telephony/cdma/utk/TextMessage;Lcom/android/internal/telephony/cdma/utk/TextMessage;)V

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 962
    if-nez v2, :cond_4

    if-eqz v0, :cond_8

    .line 963
    :cond_4
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 964
    const/4 v9, 0x2

    new-array v6, v9, [I

    .line 965
    .local v6, "recordNumbers":[I
    if-eqz v2, :cond_6

    .line 966
    iget v9, v2, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    .line 965
    :goto_1
    const/4 v10, 0x0

    aput v9, v6, v10

    .line 967
    if-eqz v0, :cond_7

    iget v9, v0, Lcom/android/internal/telephony/cdma/utk/IconId;->recordNumber:I

    :goto_2
    const/4 v10, 0x1

    aput v9, v6, v10

    .line 970
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cdma/utk/IconLoader;

    .line 971
    const/4 v10, 0x1

    .line 970
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Lcom/android/internal/telephony/cdma/utk/IconLoader;->loadIcons([ILandroid/os/Message;)V

    .line 972
    const/4 v9, 0x1

    return v9

    .line 936
    .end local v6    # "recordNumbers":[I
    .local v0, "callIconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    .local v2, "confirmIconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    .restart local v8    # "temctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :cond_5
    const/4 v9, 0x0

    iput-object v9, v3, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    .line 937
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/cdma/utk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 966
    .end local v0    # "callIconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    .end local v2    # "confirmIconId":Lcom/android/internal/telephony/cdma/utk/IconId;
    .end local v8    # "temctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    .restart local v6    # "recordNumbers":[I
    :cond_6
    const/4 v9, -0x1

    goto :goto_1

    .line 968
    :cond_7
    const/4 v9, -0x1

    goto :goto_2

    .line 974
    .end local v6    # "recordNumbers":[I
    :cond_8
    const/4 v9, 0x0

    return v9
.end method

.method private processTimerManagement(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    .locals 10
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/utk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    const/4 v9, 0x0

    .line 1086
    const-string/jumbo v7, "processTimerManagement"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    const/4 v5, 0x0

    .line 1089
    .local v5, "timerId":I
    const/4 v1, 0x0

    .line 1091
    .local v1, "data":[B
    const/4 v0, 0x0

    .line 1093
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    const/4 v2, 0x0

    .line 1095
    .local v2, "deviceId":Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1096
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 1097
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/ValueParser;->retrieveDeviceIdentities(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;)Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;

    move-result-object v2

    .line 1099
    .end local v2    # "deviceId":Lcom/android/internal/telephony/cdma/utk/DeviceIdentities;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deviceId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TIMER_IDENTIFIER:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1103
    if-eqz v0, :cond_1

    .line 1104
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 1105
    .local v4, "rawValue":[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 1108
    .local v6, "valueIndex":I
    :try_start_0
    aget-byte v7, v4, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v5, v7, 0xff

    .line 1114
    .end local v4    # "rawValue":[B
    .end local v6    # "valueIndex":I
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "timerId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1117
    sget-object v7, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->TIMER_VALUE:Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v0

    .line 1118
    if-eqz v0, :cond_2

    .line 1119
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 1120
    .restart local v4    # "rawValue":[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 1123
    .restart local v6    # "valueIndex":I
    const/4 v7, 0x3

    :try_start_1
    new-array v1, v7, [B

    .line 1124
    .local v1, "data":[B
    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-static {v4, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1131
    .end local v1    # "data":[B
    .end local v4    # "rawValue":[B
    .end local v6    # "valueIndex":I
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "timer value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1133
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;

    invoke-direct {v7, p1, v5, v1}, Lcom/android/internal/telephony/cdma/utk/TimerManagementParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;I[B)V

    iput-object v7, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 1135
    return v9

    .line 1109
    .local v1, "data":[B
    .restart local v4    # "rawValue":[B
    .restart local v6    # "valueIndex":I
    :catch_0
    move-exception v3

    .line 1110
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 1111
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v7

    .line 1125
    .end local v1    # "data":[B
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v3

    .line 1126
    .restart local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v3}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 1127
    new-instance v7, Lcom/android/internal/telephony/cdma/utk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/utk/ResultException;-><init>(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    throw v7
.end method

.method private searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    .locals 3
    .param p1, "tag"    # Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 312
    .local p2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;->value()I

    move-result v1

    .line 313
    .local v1, "tagValue":I
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    .line 315
    .local v0, "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 316
    return-object v0

    .line 319
    .end local v0    # "ctlv":Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private searchForTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;
    .locals 2
    .param p1, "tag"    # Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 294
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 295
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cdma/utk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V
    .locals 2
    .param p1, "resCode"    # Lcom/android/internal/telephony/cdma/utk/ResultCode;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/cdma/utk/RilMessageDecoder;->sendMsgParamsDecoded(Lcom/android/internal/telephony/cdma/utk/ResultCode;Lcom/android/internal/telephony/cdma/utk/CommandParams;)V

    .line 279
    return-void
.end method

.method private setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cdma/utk/ResultCode;
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 258
    const/4 v2, 0x0

    .line 259
    .local v2, "icons":[Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 261
    .local v1, "iconIndex":I
    if-nez p1, :cond_0

    .line 262
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    return-object v3

    .line 264
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    packed-switch v3, :pswitch_data_0

    .line 276
    .end local v2    # "icons":[Landroid/graphics/Bitmap;
    .end local p1    # "data":Ljava/lang/Object;
    :cond_1
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    return-object v3

    .line 266
    .restart local v2    # "icons":[Landroid/graphics/Bitmap;
    .restart local p1    # "data":Ljava/lang/Object;
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    goto :goto_0

    .restart local p1    # "data":Ljava/lang/Object;
    :pswitch_1
    move-object v2, p1

    .line 269
    check-cast v2, [Landroid/graphics/Bitmap;

    .line 271
    .local v2, "icons":[Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 272
    .local v0, "icon":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    .line 271
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 250
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 249
    :goto_0
    return-void

    .line 252
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method make(Lcom/android/internal/telephony/cdma/utk/BerTlv;)V
    .locals 7
    .param p1, "berTlv"    # Lcom/android/internal/telephony/cdma/utk/BerTlv;

    .prologue
    const/4 v5, 0x0

    .line 122
    if-nez p1, :cond_0

    .line 123
    return-void

    .line 126
    :cond_0
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 127
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mIconLoadState:I

    .line 129
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BerTlv;->getTag()I

    move-result v5

    const/16 v6, 0xd0

    if-eq v5, v6, :cond_1

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "berTlv.getTag()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BerTlv;->getTag()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    .line 132
    return-void

    .line 134
    :cond_1
    const/4 v1, 0x0

    .line 135
    .local v1, "cmdPending":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/utk/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    move-result-object v3

    .line 137
    .local v3, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cdma/utk/ComprehensionTlv;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cdma/utk/CommandDetails;

    move-result-object v0

    .line 138
    .local v0, "cmdDet":Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    if-nez v0, :cond_2

    .line 139
    const-string/jumbo v5, "processCommandDetails cmdDet is null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    .line 141
    return-void

    .line 147
    :cond_2
    iget v5, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    .line 146
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;

    move-result-object v2

    .line 148
    .local v2, "cmdType":Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;
    if-nez v2, :cond_3

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AppInterface.CommandType.fromInt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/telephony/cdma/utk/CommandDetails;->typeOfCommand:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 150
    const-string/jumbo v6, " to null cmd type"

    .line 149
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    .line 152
    return-void

    .line 155
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "make cmdType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->-getcom_android_internal_telephony_cdma_utk_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/utk/AppInterface$CommandType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 233
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 234
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    .line 235
    return-void

    .line 159
    :pswitch_0
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 243
    .end local v1    # "cmdPending":Z
    :goto_0
    if-nez v1, :cond_4

    .line 244
    sget-object v5, Lcom/android/internal/telephony/cdma/utk/ResultCode;->OK:Lcom/android/internal/telephony/cdma/utk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    .line 121
    :cond_4
    return-void

    .line 162
    .restart local v1    # "cmdPending":Z
    :pswitch_1
    :try_start_1
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 165
    .local v1, "cmdPending":Z
    :pswitch_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processDisplayText(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 168
    .local v1, "cmdPending":Z
    :pswitch_3
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSetUpIdleModeText(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 171
    .local v1, "cmdPending":Z
    :pswitch_4
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processGetInkey(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 174
    .local v1, "cmdPending":Z
    :pswitch_5
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processGetInput(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 179
    .local v1, "cmdPending":Z
    :pswitch_6
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processEventNotify(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 182
    .local v1, "cmdPending":Z
    :pswitch_7
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSendSms(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 185
    .local v1, "cmdPending":Z
    :pswitch_8
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSetupCall(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 188
    .local v1, "cmdPending":Z
    :pswitch_9
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processRefresh(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    .line 189
    const/4 v1, 0x0

    .line 190
    goto :goto_0

    .line 195
    :pswitch_a
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processPlayTone(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 198
    .local v1, "cmdPending":Z
    :pswitch_b
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processMoreTime(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 201
    .local v1, "cmdPending":Z
    :pswitch_c
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processLocalInformation(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 206
    .local v1, "cmdPending":Z
    :pswitch_d
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processPollInterval(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 209
    .local v1, "cmdPending":Z
    :pswitch_e
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processTimerManagement(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 212
    .local v1, "cmdPending":Z
    :pswitch_f
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSetUpEventList(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 215
    .local v1, "cmdPending":Z
    :pswitch_10
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processOpenChannel(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 218
    .local v1, "cmdPending":Z
    :pswitch_11
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processCloseChannel(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 221
    .local v1, "cmdPending":Z
    :pswitch_12
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processSendData(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 224
    .local v1, "cmdPending":Z
    :pswitch_13
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processReceiveData(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 227
    .local v1, "cmdPending":Z
    :pswitch_14
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->processGetChannelStatus(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Ljava/util/List;)Z
    :try_end_1
    .catch Lcom/android/internal/telephony/cdma/utk/ResultException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .local v1, "cmdPending":Z
    goto :goto_0

    .line 237
    .local v1, "cmdPending":Z
    :catch_0
    move-exception v4

    .line 238
    .local v4, "e":Lcom/android/internal/telephony/cdma/utk/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "make: caught ResultException e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cdma/utk/CommandParams;

    .line 240
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/utk/ResultException;->result()Lcom/android/internal/telephony/cdma/utk/ResultCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/utk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cdma/utk/ResultCode;)V

    .line 241
    return-void

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_2
        :pswitch_14
        :pswitch_4
        :pswitch_5
        :pswitch_c
        :pswitch_b
        :pswitch_10
        :pswitch_a
        :pswitch_d
        :pswitch_13
        :pswitch_9
        :pswitch_1
        :pswitch_12
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_f
        :pswitch_3
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method
