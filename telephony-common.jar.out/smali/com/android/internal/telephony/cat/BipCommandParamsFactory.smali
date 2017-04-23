.class Lcom/android/internal/telephony/cat/BipCommandParamsFactory;
.super Landroid/os/Handler;
.source "BipCommandParamsFactory.java"


# static fields
.field private static synthetic -com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I = null

.field static final LOAD_MULTI_ICONS:I = 0x2

.field static final LOAD_NO_ICON:I = 0x0

.field static final LOAD_SINGLE_ICON:I = 0x1

.field static final MSG_ID_LOAD_ICON_DONE:I = 0x1

.field private static sInstance:Lcom/android/internal/telephony/cat/BipCommandParamsFactory;


# instance fields
.field private mCaller:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

.field private mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

.field private mIconLoadState:I

.field private mIconLoader:Lcom/android/internal/telephony/cat/BipIconLoader;

.field tlvIndex:I


# direct methods
.method private static synthetic -getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ACTIVATE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_28

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CALLCTRL_RSP_MSG:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_27

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_26

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DECLARE_SERVICE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_25

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_24

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_23

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_22

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_FRAME_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_21

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_20

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1f

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_READER_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1e

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_SERVICE_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1d

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1c

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1b

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->MORE_TIME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1a

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_19

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PERFORM_CARD_APDU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_18

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_17

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POLLING_OFF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_16

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POLL_INTERVAL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_15

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POWER_OFF_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POWER_ON_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_13

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_12

    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_11

    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_10

    :goto_18
    :try_start_19
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RETRIEVE_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_f

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RUN_AT_COMMAND:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_e

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_d

    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_c

    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_b

    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_a

    :goto_1e
    :try_start_1f
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_9

    :goto_1f
    :try_start_20
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_8

    :goto_20
    :try_start_21
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SERVICE_SEARCH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_7

    :goto_21
    :try_start_22
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_FRAME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_6

    :goto_22
    :try_start_23
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_5

    :goto_23
    :try_start_24
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_4

    :goto_24
    :try_start_25
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_3

    :goto_25
    :try_start_26
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_2

    :goto_26
    :try_start_27
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SUBMIT_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_1

    :goto_27
    :try_start_28
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->TIMER_MANAGEMENT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_0

    :goto_28
    sput-object v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_28

    :catch_1
    move-exception v1

    goto :goto_27

    :catch_2
    move-exception v1

    goto :goto_26

    :catch_3
    move-exception v1

    goto :goto_25

    :catch_4
    move-exception v1

    goto :goto_24

    :catch_5
    move-exception v1

    goto :goto_23

    :catch_6
    move-exception v1

    goto :goto_22

    :catch_7
    move-exception v1

    goto :goto_21

    :catch_8
    move-exception v1

    goto :goto_20

    :catch_9
    move-exception v1

    goto :goto_1f

    :catch_a
    move-exception v1

    goto :goto_1e

    :catch_b
    move-exception v1

    goto/16 :goto_1d

    :catch_c
    move-exception v1

    goto/16 :goto_1c

    :catch_d
    move-exception v1

    goto/16 :goto_1b

    :catch_e
    move-exception v1

    goto/16 :goto_1a

    :catch_f
    move-exception v1

    goto/16 :goto_19

    :catch_10
    move-exception v1

    goto/16 :goto_18

    :catch_11
    move-exception v1

    goto/16 :goto_17

    :catch_12
    move-exception v1

    goto/16 :goto_16

    :catch_13
    move-exception v1

    goto/16 :goto_15

    :catch_14
    move-exception v1

    goto/16 :goto_14

    :catch_15
    move-exception v1

    goto/16 :goto_13

    :catch_16
    move-exception v1

    goto/16 :goto_12

    :catch_17
    move-exception v1

    goto/16 :goto_11

    :catch_18
    move-exception v1

    goto/16 :goto_10

    :catch_19
    move-exception v1

    goto/16 :goto_f

    :catch_1a
    move-exception v1

    goto/16 :goto_e

    :catch_1b
    move-exception v1

    goto/16 :goto_d

    :catch_1c
    move-exception v1

    goto/16 :goto_c

    :catch_1d
    move-exception v1

    goto/16 :goto_b

    :catch_1e
    move-exception v1

    goto/16 :goto_a

    :catch_1f
    move-exception v1

    goto/16 :goto_9

    :catch_20
    move-exception v1

    goto/16 :goto_8

    :catch_21
    move-exception v1

    goto/16 :goto_7

    :catch_22
    move-exception v1

    goto/16 :goto_6

    :catch_23
    move-exception v1

    goto/16 :goto_5

    :catch_24
    move-exception v1

    goto/16 :goto_4

    :catch_25
    move-exception v1

    goto/16 :goto_3

    :catch_26
    move-exception v1

    goto/16 :goto_2

    :catch_27
    move-exception v1

    goto/16 :goto_1

    :catch_28
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/BipCommandParamsFactory;

    .line 49
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .param p1, "caller"    # Lcom/android/internal/telephony/cat/BipRilMessageDecoder;
    .param p2, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mIconLoadState:I

    .line 54
    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->getSlotId()I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/android/internal/telephony/cat/BipIconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cat/BipIconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/BipIconLoader;

    .line 77
    return-void
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/BipCommandParamsFactory;
    .locals 3
    .param p0, "caller"    # Lcom/android/internal/telephony/cat/BipRilMessageDecoder;
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v2, 0x0

    const-class v1, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/BipCommandParamsFactory;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/BipCommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 71
    :cond_0
    if-eqz p1, :cond_1

    .line 72
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;-><init>(Lcom/android/internal/telephony/cat/BipRilMessageDecoder;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    monitor-exit v1

    .line 74
    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private processCloseChannel(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 10
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v9, 0x1

    .line 631
    const-string/jumbo v6, "enter: process CloseChannel"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    const/4 v3, 0x0

    .line 635
    .local v3, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    new-instance v5, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 636
    .local v5, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v4, 0x0

    .line 638
    .local v4, "iconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v1, 0x0

    .line 640
    .local v1, "channelId":I
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 641
    .local v3, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v3, :cond_0

    .line 642
    invoke-static {v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 645
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 646
    if-eqz v3, :cond_1

    .line 647
    invoke-static {v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v4

    .line 648
    .local v4, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v6, v4, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 651
    .end local v4    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 652
    if-eqz v3, :cond_2

    .line 653
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v2, v6, v7

    .line 654
    .local v2, "cidByte":B
    and-int/lit8 v1, v2, 0xf

    .line 655
    const-string/jumbo v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "To close channel "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    .end local v2    # "cidByte":B
    :cond_2
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x1

    if-ne v9, v6, :cond_3

    const/4 v0, 0x1

    .line 659
    .local v0, "backToTcpListen":Z
    :goto_0
    new-instance v6, Lcom/android/internal/telephony/cat/CloseChannelParams;

    invoke-direct {v6, p1, v1, v5, v0}, Lcom/android/internal/telephony/cat/CloseChannelParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;ILcom/android/internal/telephony/cat/TextMessage;Z)V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 661
    if-eqz v4, :cond_4

    .line 662
    iput v9, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mIconLoadState:I

    .line 663
    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/BipIconLoader;

    iget v7, v4, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/cat/BipIconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 665
    return v9

    .line 657
    .end local v0    # "backToTcpListen":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "backToTcpListen":Z
    goto :goto_0

    .line 668
    :cond_4
    const/4 v6, 0x0

    return v6
.end method

.method private processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/CommandDetails;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 87
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    if-eqz p1, :cond_0

    .line 90
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    .line 89
    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    .line 91
    .local v1, "ctlvCmdDet":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 93
    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    .end local v0    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    .end local v1    # "ctlvCmdDet":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_0
    return-object v0

    .line 94
    .restart local v0    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    .restart local v1    # "ctlvCmdDet":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Lcom/android/internal/telephony/cat/ResultException;
    const-string/jumbo v3, "Failed to procees command details"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v3, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v3
.end method

.method private processGetChannelStatus(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v6, 0x1

    .line 815
    const-string/jumbo v3, "enter: process GetChannelStatus"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 817
    const/4 v0, 0x0

    .line 819
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    new-instance v2, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 820
    .local v2, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v1, 0x0

    .line 822
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 823
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 824
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 827
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 828
    if-eqz v0, :cond_1

    .line 829
    invoke-static {v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v1

    .line 830
    .local v1, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v3, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 833
    .end local v1    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/cat/GetChannelStatusParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/cat/GetChannelStatusParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 835
    if-eqz v1, :cond_2

    .line 836
    iput v6, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mIconLoadState:I

    .line 837
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/BipIconLoader;

    iget v4, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/cat/BipIconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 839
    return v6

    .line 842
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private processOpenChannel(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 20
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 397
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const-string/jumbo v2, "enter: process OpenChannel"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    const/16 v17, 0x0

    .line 401
    .local v17, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v14, 0x0

    .line 404
    .local v14, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const/4 v4, 0x0

    .line 405
    .local v4, "bearerDesc":Lcom/android/internal/telephony/cat/BearerDesc;
    const/4 v5, 0x0

    .line 406
    .local v5, "bufferSize":I
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 407
    const/16 v18, 0x0

    .line 409
    .local v18, "linkMode":I
    :goto_0
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_8

    const/16 v16, 0x0

    .line 411
    .local v16, "isAutoReconnect":Z
    :goto_1
    const/4 v9, 0x0

    .line 412
    .local v9, "accessPointName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 413
    .local v6, "localAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    const/4 v10, 0x0

    .line 414
    .local v10, "userLogin":Ljava/lang/String;
    const/4 v11, 0x0

    .line 416
    .local v11, "userPwd":Ljava/lang/String;
    const/4 v7, 0x0

    .line 417
    .local v7, "transportProtocol":Lcom/android/internal/telephony/cat/TransportProtocol;
    const/4 v8, 0x0

    .line 419
    .local v8, "dataDestinationAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    new-instance v12, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v12}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 420
    .local v12, "confirmText":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v13, 0x0

    .line 429
    .local v13, "confirmIcon":Lcom/android/internal/telephony/cat/IconId;
    const/4 v15, -0x1

    .line 431
    .local v15, "indexTransportProtocol":I
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 433
    .local v14, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v14, :cond_0

    .line 434
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 437
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 438
    if-eqz v14, :cond_1

    .line 439
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mIconLoadState:I

    .line 440
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v13

    .line 441
    .local v13, "confirmIcon":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v2, v13, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v2, v12, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 445
    .end local v13    # "confirmIcon":Lcom/android/internal/telephony/cat/IconId;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 446
    if-eqz v14, :cond_b

    .line 447
    invoke-static {v14}, Lcom/android/internal/telephony/cat/BipValueParser;->retrieveBearerDesc(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/BearerDesc;

    move-result-object v4

    .line 448
    .local v4, "bearerDesc":Lcom/android/internal/telephony/cat/BearerDesc;
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "bearerDesc bearer type: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v4, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    instance-of v2, v4, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    if-eqz v2, :cond_9

    .line 450
    const-string/jumbo v3, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\nprecedence: "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v2, v4

    check-cast v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v2, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->precedence:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 451
    const-string/jumbo v19, "\ndelay: "

    .line 450
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v2, v4

    .line 451
    check-cast v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v2, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->delay:I

    .line 450
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 452
    const-string/jumbo v19, "\nreliability: "

    .line 450
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v2, v4

    .line 452
    check-cast v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v2, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->reliability:I

    .line 450
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 453
    const-string/jumbo v19, "\npeak: "

    .line 450
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v2, v4

    .line 453
    check-cast v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v2, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->peak:I

    .line 450
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 454
    const-string/jumbo v19, "\nmean: "

    .line 450
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v2, v4

    .line 454
    check-cast v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v2, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->mean:I

    .line 450
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 455
    const-string/jumbo v19, "\npdp type: "

    .line 450
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v2, v4

    .line 455
    check-cast v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;

    iget v2, v2, Lcom/android/internal/telephony/cat/GPRSBearerDesc;->pdpType:I

    .line 450
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .end local v4    # "bearerDesc":Lcom/android/internal/telephony/cat/BearerDesc;
    :cond_2
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 478
    if-eqz v14, :cond_c

    .line 479
    invoke-static {v14}, Lcom/android/internal/telephony/cat/BipValueParser;->retrieveBufferSize(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    move-result v5

    .line 480
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "buffer size: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->NETWORK_ACCESS_NAME:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 488
    if-eqz v14, :cond_3

    .line 489
    invoke-static {v14}, Lcom/android/internal/telephony/cat/BipValueParser;->retrieveNetworkAccessName(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    .line 490
    .local v9, "accessPointName":Ljava/lang/String;
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "access point name: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .end local v9    # "accessPointName":Ljava/lang/String;
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 495
    .local v17, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 496
    if-eqz v14, :cond_4

    .line 497
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v10

    .line 498
    .local v10, "userLogin":Ljava/lang/String;
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "user login: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .end local v10    # "userLogin":Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 501
    if-eqz v14, :cond_5

    .line 502
    invoke-static {v14}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v11

    .line 503
    .local v11, "userPwd":Ljava/lang/String;
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "user password: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    .end local v11    # "userPwd":Ljava/lang/String;
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->SIM_ME_INTERFACE_TRANSPORT_LEVEL:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 508
    if-eqz v14, :cond_d

    .line 509
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    .line 510
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "CPF-processOpenChannel: indexTransportProtocol = "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-static {v14}, Lcom/android/internal/telephony/cat/BipValueParser;->retrieveTransportProtocol(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/TransportProtocol;

    move-result-object v7

    .line 513
    .local v7, "transportProtocol":Lcom/android/internal/telephony/cat/TransportProtocol;
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "CPF-processOpenChannel: transport protocol(type/port): "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 514
    iget v0, v7, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    move/from16 v19, v0

    .line 513
    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 514
    const-string/jumbo v19, "/"

    .line 513
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 514
    iget v0, v7, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    move/from16 v19, v0

    .line 513
    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget v2, v7, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v3, 0x1

    if-eq v3, v2, :cond_6

    .line 516
    iget v2, v7, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v3, 0x2

    if-ne v3, v2, :cond_f

    .line 517
    :cond_6
    if-nez v4, :cond_f

    .line 518
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "Need BearerDescription object"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v2

    .line 408
    .end local v6    # "localAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    .end local v7    # "transportProtocol":Lcom/android/internal/telephony/cat/TransportProtocol;
    .end local v8    # "dataDestinationAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    .end local v12    # "confirmText":Lcom/android/internal/telephony/cat/TextMessage;
    .end local v15    # "indexTransportProtocol":I
    .end local v16    # "isAutoReconnect":Z
    .end local v18    # "linkMode":I
    .local v4, "bearerDesc":Lcom/android/internal/telephony/cat/BearerDesc;
    .local v14, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .local v17, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :cond_7
    const/16 v18, 0x1

    .restart local v18    # "linkMode":I
    goto/16 :goto_0

    .line 409
    :cond_8
    const/16 v16, 0x1

    .restart local v16    # "isAutoReconnect":Z
    goto/16 :goto_1

    .line 456
    .local v4, "bearerDesc":Lcom/android/internal/telephony/cat/BearerDesc;
    .restart local v6    # "localAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    .local v7, "transportProtocol":Lcom/android/internal/telephony/cat/TransportProtocol;
    .restart local v8    # "dataDestinationAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    .local v9, "accessPointName":Ljava/lang/String;
    .local v10, "userLogin":Ljava/lang/String;
    .local v11, "userPwd":Ljava/lang/String;
    .restart local v12    # "confirmText":Lcom/android/internal/telephony/cat/TextMessage;
    .local v14, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .restart local v15    # "indexTransportProtocol":I
    :cond_9
    instance-of v2, v4, Lcom/android/internal/telephony/cat/EUTranBearerDesc;

    if-eqz v2, :cond_a

    .line 457
    const-string/jumbo v3, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\nQCI: "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v2, v4

    check-cast v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->QCI:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 458
    const-string/jumbo v19, "\nmaxBitRateU: "

    .line 457
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v2, v4

    .line 458
    check-cast v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateU:I

    .line 457
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 459
    const-string/jumbo v19, "\nmaxBitRateD: "

    .line 457
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v2, v4

    .line 459
    check-cast v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateD:I

    .line 457
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 460
    const-string/jumbo v19, "\nguarBitRateU: "

    .line 457
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v2, v4

    .line 460
    check-cast v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateU:I

    .line 457
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 461
    const-string/jumbo v19, "\nguarBitRateD: "

    .line 457
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v2, v4

    .line 461
    check-cast v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateD:I

    .line 457
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 462
    const-string/jumbo v19, "\nmaxBitRateUEx: "

    .line 457
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v2, v4

    .line 462
    check-cast v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateUEx:I

    .line 457
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 463
    const-string/jumbo v19, "\nmaxBitRateDEx: "

    .line 457
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v2, v4

    .line 463
    check-cast v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->maxBitRateDEx:I

    .line 457
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 464
    const-string/jumbo v19, "\nguarBitRateUEx: "

    .line 457
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v2, v4

    .line 464
    check-cast v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateUEx:I

    .line 457
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 465
    const-string/jumbo v19, "\nguarBitRateDEx: "

    .line 457
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v2, v4

    .line 465
    check-cast v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->guarBitRateDEx:I

    .line 457
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 466
    const-string/jumbo v19, "\npdn Type: "

    .line 457
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v2, v4

    .line 466
    check-cast v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;

    iget v2, v2, Lcom/android/internal/telephony/cat/EUTranBearerDesc;->pdnType:I

    .line 457
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 467
    :cond_a
    instance-of v2, v4, Lcom/android/internal/telephony/cat/DefaultBearerDesc;

    if-nez v2, :cond_2

    .line 469
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "Not support bearerDesc"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 472
    .local v4, "bearerDesc":Lcom/android/internal/telephony/cat/BearerDesc;
    :cond_b
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "May Need BearerDescription object"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 482
    .end local v4    # "bearerDesc":Lcom/android/internal/telephony/cat/BearerDesc;
    :cond_c
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "Need BufferSize object"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v2

    .line 523
    .end local v9    # "accessPointName":Ljava/lang/String;
    .end local v10    # "userLogin":Ljava/lang/String;
    .end local v11    # "userPwd":Ljava/lang/String;
    .local v17, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    :cond_d
    if-nez v4, :cond_e

    .line 524
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "BearerDescription & transportProtocol object are null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v2

    .line 527
    :cond_e
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "transportProtocol object is null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v2, v3, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;I)V

    throw v2

    .line 533
    .local v7, "transportProtocol":Lcom/android/internal/telephony/cat/TransportProtocol;
    :cond_f
    if-eqz v7, :cond_15

    .line 534
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "CPF-processOpenChannel: transport protocol is existed"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 536
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->resetTlvIndex()V

    .line 537
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->OTHER_ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 538
    if-eqz v14, :cond_14

    .line 539
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    if-ge v2, v15, :cond_12

    .line 541
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "CPF-processOpenChannel: get local address, index is "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 542
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    move/from16 v19, v0

    .line 541
    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-static {v14}, Lcom/android/internal/telephony/cat/BipValueParser;->retrieveOtherAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/OtherAddress;

    move-result-object v6

    .line 547
    .local v6, "localAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->OTHER_ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v14

    .line 548
    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    if-le v2, v15, :cond_11

    .line 549
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "CPF-processOpenChannel: get dest address, index is "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 550
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    move/from16 v19, v0

    .line 549
    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-static {v14}, Lcom/android/internal/telephony/cat/BipValueParser;->retrieveOtherAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/OtherAddress;

    move-result-object v8

    .line 568
    .end local v6    # "localAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    .end local v8    # "dataDestinationAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    :goto_3
    if-nez v8, :cond_16

    .line 569
    iget v2, v7, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v3, 0x2

    if-eq v3, v2, :cond_10

    .line 570
    iget v2, v7, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_16

    .line 571
    :cond_10
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "BM-openChannel: dataDestinationAddress is null."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v2

    .line 553
    .restart local v6    # "localAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    .restart local v8    # "dataDestinationAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    :cond_11
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "CPF-processOpenChannel: missing dest address "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 554
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    move/from16 v19, v0

    .line 553
    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 555
    const-string/jumbo v19, "/"

    .line 553
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v2

    .line 558
    .local v6, "localAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    if-le v2, v15, :cond_13

    .line 559
    const-string/jumbo v2, "[BIP]"

    .line 560
    const-string/jumbo v3, "CPF-processOpenChannel: get dest address, but no local address"

    .line 559
    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-static {v14}, Lcom/android/internal/telephony/cat/BipValueParser;->retrieveOtherAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/OtherAddress;

    move-result-object v8

    .local v8, "dataDestinationAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    goto :goto_3

    .line 563
    .local v8, "dataDestinationAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    :cond_13
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "CPF-processOpenChannel: Incorrect index"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 566
    :cond_14
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "CPF-processOpenChannel: No other address object"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 577
    :cond_15
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "CPF-processOpenChannel: No transport protocol object"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    new-instance v2, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v2, v3, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;I)V

    throw v2

    .line 590
    .end local v6    # "localAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    .end local v8    # "dataDestinationAddress":Lcom/android/internal/telephony/cat/OtherAddress;
    :cond_16
    if-eqz v4, :cond_18

    .line 591
    iget v2, v4, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_17

    .line 592
    iget v2, v4, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_19

    .line 594
    :cond_17
    new-instance v2, Lcom/android/internal/telephony/cat/OpenChannelParams;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v12}, Lcom/android/internal/telephony/cat/OpenChannelParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/BearerDesc;ILcom/android/internal/telephony/cat/OtherAddress;Lcom/android/internal/telephony/cat/TransportProtocol;Lcom/android/internal/telephony/cat/OtherAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/cat/TextMessage;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 602
    :cond_18
    :goto_4
    new-instance v2, Lcom/android/internal/telephony/cat/OpenChannelParams;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v12}, Lcom/android/internal/telephony/cat/OpenChannelParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/BearerDesc;ILcom/android/internal/telephony/cat/OtherAddress;Lcom/android/internal/telephony/cat/TransportProtocol;Lcom/android/internal/telephony/cat/OtherAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/cat/TextMessage;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 606
    if-eqz v13, :cond_1a

    .line 607
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mIconLoadState:I

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/BipIconLoader;

    iget v3, v13, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    .line 609
    const/16 v19, 0x1

    .line 608
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/cat/BipIconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 610
    const/4 v2, 0x1

    return v2

    .line 593
    :cond_19
    iget v2, v4, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_17

    .line 598
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Unsupport bearerType: "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v4, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 613
    :cond_1a
    const/4 v2, 0x0

    return v2
.end method

.method private processReceiveData(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 10
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v9, 0x1

    .line 686
    const-string/jumbo v6, "enter: process ReceiveData"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    const/4 v3, 0x0

    .line 690
    .local v3, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const/4 v0, 0x0

    .line 692
    .local v0, "channelDataLength":I
    new-instance v5, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 693
    .local v5, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v4, 0x0

    .line 694
    .local v4, "iconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v1, 0x0

    .line 696
    .local v1, "channelId":I
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 697
    .local v3, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v3, :cond_0

    .line 698
    invoke-static {v3}, Lcom/android/internal/telephony/cat/BipValueParser;->retrieveChannelDataLength(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I

    move-result v0

    .line 699
    const-string/jumbo v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Channel data length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 706
    if-eqz v3, :cond_1

    .line 707
    invoke-static {v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 710
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 711
    if-eqz v3, :cond_2

    .line 712
    invoke-static {v3}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v4

    .line 713
    .local v4, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v6, v4, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 716
    .end local v4    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v3

    .line 717
    if-eqz v3, :cond_3

    .line 718
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v2, v6, v7

    .line 719
    .local v2, "cidByte":B
    and-int/lit8 v1, v2, 0xf

    .line 720
    const-string/jumbo v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "To Receive data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    .end local v2    # "cidByte":B
    :cond_3
    new-instance v6, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    invoke-direct {v6, p1, v0, v1, v5}, Lcom/android/internal/telephony/cat/ReceiveDataParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;IILcom/android/internal/telephony/cat/TextMessage;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 725
    if-eqz v4, :cond_4

    .line 726
    iput v9, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mIconLoadState:I

    .line 727
    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/BipIconLoader;

    iget v7, v4, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/cat/BipIconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 729
    return v9

    .line 732
    :cond_4
    const/4 v6, 0x0

    return v6
.end method

.method private processSendData(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v10, 0x1

    .line 750
    const-string/jumbo v0, "enter: process SendData"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    const/4 v7, 0x0

    .line 754
    .local v7, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    const/4 v2, 0x0

    .line 756
    .local v2, "channelData":[B
    new-instance v4, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/cat/TextMessage;-><init>()V

    .line 757
    .local v4, "textMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v8, 0x0

    .line 758
    .local v8, "iconId":Lcom/android/internal/telephony/cat/IconId;
    const/4 v3, 0x0

    .line 760
    .local v3, "channelId":I
    iget v0, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v10, :cond_4

    .line 761
    const/4 v5, 0x1

    .line 763
    .local v5, "sendMode":I
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 764
    .local v7, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v7, :cond_0

    .line 765
    invoke-static {v7}, Lcom/android/internal/telephony/cat/BipValueParser;->retrieveChannelData(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B

    move-result-object v2

    .line 770
    .end local v2    # "channelData":[B
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 771
    if-eqz v7, :cond_1

    .line 772
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 775
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 776
    if-eqz v7, :cond_2

    .line 777
    invoke-static {v7}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;

    move-result-object v8

    .line 778
    .local v8, "iconId":Lcom/android/internal/telephony/cat/IconId;
    iget-boolean v0, v8, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    iput-boolean v0, v4, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 781
    .end local v8    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v7

    .line 782
    if-eqz v7, :cond_3

    .line 783
    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v0, v1

    .line 784
    .local v6, "cidByte":B
    and-int/lit8 v3, v6, 0xf

    .line 785
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "To send data: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    .end local v6    # "cidByte":B
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/cat/SendDataParams;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/SendDataParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[BILcom/android/internal/telephony/cat/TextMessage;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 790
    if-eqz v8, :cond_5

    .line 791
    iput v10, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mIconLoadState:I

    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/BipIconLoader;

    iget v1, v8, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/cat/BipIconLoader;->loadIcon(ILandroid/os/Message;)V

    .line 794
    return v10

    .line 761
    .end local v5    # "sendMode":I
    .restart local v2    # "channelData":[B
    .local v7, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .local v8, "iconId":Lcom/android/internal/telephony/cat/IconId;
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "sendMode":I
    goto :goto_0

    .line 797
    .end local v2    # "channelData":[B
    .end local v8    # "iconId":Lcom/android/internal/telephony/cat/IconId;
    .local v7, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    .locals 10
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v9, 0x0

    .line 345
    const-string/jumbo v8, "process SetUpEventList"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v0

    .line 347
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    if-eqz v0, :cond_1

    .line 349
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 350
    .local v5, "rawValue":[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 351
    .local v6, "valueIndex":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v7

    .line 352
    .local v7, "valueLen":I
    new-array v2, v7, [I

    .line 353
    .local v2, "eventList":[I
    const/4 v3, -0x1

    .line 354
    .local v3, "eventValue":I
    const/4 v4, 0x0

    .line 355
    .local v4, "i":I
    :goto_0
    if-lez v7, :cond_0

    .line 356
    aget-byte v8, v5, v6

    and-int/lit16 v3, v8, 0xff

    .line 357
    add-int/lit8 v6, v6, 0x1

    .line 358
    add-int/lit8 v7, v7, -0x1

    .line 360
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 366
    :sswitch_0
    aput v3, v2, v4

    .line 367
    add-int/lit8 v4, v4, 0x1

    .line 368
    goto :goto_0

    .line 374
    :cond_0
    new-instance v8, Lcom/android/internal/telephony/cat/SetEventListParams;

    invoke-direct {v8, p1, v2}, Lcom/android/internal/telephony/cat/SetEventListParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V

    iput-object v8, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v2    # "eventList":[I
    .end local v3    # "eventValue":I
    .end local v4    # "i":I
    .end local v5    # "rawValue":[B
    .end local v6    # "valueIndex":I
    .end local v7    # "valueLen":I
    :cond_1
    :goto_1
    return v9

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v8, " IndexOutofBoundException in processSetUpEventList"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 360
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private resetTlvIndex()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    .line 275
    return-void
.end method

.method private searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 3
    .param p1, "tag"    # Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 263
    .local p2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 264
    .local v1, "tagValue":I
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 266
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 267
    return-object v0

    .line 270
    .end local v0    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 4
    .param p1, "tag"    # Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .local p2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v3, 0x0

    .line 294
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 295
    :cond_0
    const-string/jumbo v2, "CPF-searchForNextTagAndIndex: Invalid params"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    return-object v3

    .line 299
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 301
    .local v1, "tagValue":I
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 302
    iget v2, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->tlvIndex:I

    .line 303
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ComprehensionTlv;

    .line 304
    .local v0, "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 305
    return-object v0

    .line 310
    .end local v0    # "ctlv":Lcom/android/internal/telephony/cat/ComprehensionTlv;
    :cond_3
    return-object v3
.end method

.method private searchForTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 2
    .param p1, "tag"    # Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 245
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 246
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private searchForTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .locals 2
    .param p1, "tag"    # Lcom/android/internal/telephony/cat/ComprehensionTlvTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 325
    .local p2, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->resetTlvIndex()V

    .line 326
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 327
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->searchForNextTagAndIndex(Lcom/android/internal/telephony/cat/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/cat/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 2
    .param p1, "resCode"    # Lcom/android/internal/telephony/cat/ResultCode;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->sendMsgParamsDecoded(Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 230
    return-void
.end method

.method private setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 209
    const/4 v2, 0x0

    .line 210
    .local v2, "icons":[Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 212
    .local v1, "iconIndex":I
    if-nez p1, :cond_0

    .line 213
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    return-object v3

    .line 215
    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mIconLoadState:I

    packed-switch v3, :pswitch_data_0

    .line 227
    .end local v2    # "icons":[Landroid/graphics/Bitmap;
    .end local p1    # "data":Ljava/lang/Object;
    :cond_1
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    return-object v3

    .line 217
    .restart local v2    # "icons":[Landroid/graphics/Bitmap;
    .restart local p1    # "data":Ljava/lang/Object;
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/cat/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    goto :goto_0

    .restart local p1    # "data":Ljava/lang/Object;
    :pswitch_1
    move-object v2, p1

    .line 220
    check-cast v2, [Landroid/graphics/Bitmap;

    .line 222
    .local v2, "icons":[Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 223
    .local v0, "icon":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    .line 222
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 846
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/BipIconLoader;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipIconLoader;->dispose()V

    .line 847
    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/cat/BipIconLoader;

    .line 848
    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 849
    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCaller:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    .line 850
    sput-object v1, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->sInstance:Lcom/android/internal/telephony/cat/BipCommandParamsFactory;

    .line 845
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method make(Lcom/android/internal/telephony/cat/BerTlv;)V
    .locals 7
    .param p1, "berTlv"    # Lcom/android/internal/telephony/cat/BerTlv;

    .prologue
    const/4 v5, 0x0

    .line 104
    if-nez p1, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 109
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mIconLoadState:I

    .line 111
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getTag()I

    move-result v5

    const/16 v6, 0xd0

    if-eq v5, v6, :cond_1

    .line 112
    const-string/jumbo v5, "CPF-make: Ununderstood proactive command tag"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 114
    return-void

    .line 116
    :cond_1
    const/4 v1, 0x0

    .line 117
    .local v1, "cmdPending":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    move-result-object v3

    .line 119
    .local v3, "ctlvs":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 121
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/cat/CommandDetails;
    :try_end_0
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 127
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    if-nez v0, :cond_2

    .line 128
    const-string/jumbo v5, "CPF-make: No CommandDetails object"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 130
    return-void

    .line 122
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    :catch_0
    move-exception v4

    .line 123
    .local v4, "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CPF-make: Except to procees command details : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 125
    return-void

    .line 136
    .end local v4    # "e":Lcom/android/internal/telephony/cat/ResultException;
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    :cond_2
    iget v5, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 135
    invoke-static {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    .line 137
    .local v2, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-nez v2, :cond_3

    .line 138
    const-string/jumbo v5, "CPF-make: Command type can\'t be found"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 144
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 145
    return-void

    .line 149
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/BerTlv;->isLengthValid()Z

    move-result v5

    if-nez v5, :cond_4

    .line 150
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 151
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 152
    return-void

    .line 156
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 182
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 183
    const-string/jumbo v5, "CPF-make: default case"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 186
    return-void

    .line 158
    :pswitch_0
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->processSetUpEventList(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z
    :try_end_1
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 194
    .local v1, "cmdPending":Z
    :goto_0
    if-nez v1, :cond_5

    .line 195
    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 103
    :cond_5
    return-void

    .line 161
    .local v1, "cmdPending":Z
    :pswitch_1
    :try_start_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->processOpenChannel(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 162
    .local v1, "cmdPending":Z
    const-string/jumbo v5, "process OpenChannel"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 188
    .end local v1    # "cmdPending":Z
    :catch_1
    move-exception v4

    .line 189
    .restart local v4    # "e":Lcom/android/internal/telephony/cat/ResultException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "make: caught ResultException e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    new-instance v5, Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/cat/CommandParams;

    .line 191
    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultException;->result()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 192
    return-void

    .line 165
    .end local v4    # "e":Lcom/android/internal/telephony/cat/ResultException;
    .local v1, "cmdPending":Z
    :pswitch_2
    :try_start_3
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->processCloseChannel(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 166
    .local v1, "cmdPending":Z
    const-string/jumbo v5, "process CloseChannel"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .local v1, "cmdPending":Z
    :pswitch_3
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->processSendData(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 170
    .local v1, "cmdPending":Z
    const-string/jumbo v5, "process SendData"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    .local v1, "cmdPending":Z
    :pswitch_4
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->processReceiveData(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 174
    .local v1, "cmdPending":Z
    const-string/jumbo v5, "process ReceiveData"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    .local v1, "cmdPending":Z
    :pswitch_5
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/cat/BipCommandParamsFactory;->processGetChannelStatus(Lcom/android/internal/telephony/cat/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 178
    .local v1, "cmdPending":Z
    const-string/jumbo v5, "process GetChannelStatus"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/android/internal/telephony/cat/ResultException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
