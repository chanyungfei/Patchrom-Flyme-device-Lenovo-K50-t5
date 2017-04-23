.class public Lcom/android/internal/telephony/cat/BipCmdMessage;
.super Ljava/lang/Object;
.source "BipCmdMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;,
        Lcom/android/internal/telephony/cat/BipCmdMessage$1;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/BipCmdMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mApn:Ljava/lang/String;

.field public mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

.field public mBufferSize:I

.field public mChannelData:[B

.field public mChannelDataLength:I

.field public mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

.field public mChannelStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/ChannelStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mCloseBackToTcpListen:Z

.field public mCloseCid:I

.field mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field public mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

.field public mDestAddress:Ljava/lang/String;

.field public mInfoType:I

.field public mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

.field public mLogin:Ljava/lang/String;

.field public mPwd:Ljava/lang/String;

.field public mReceiveDataCid:I

.field public mRemainingDataLength:I

.field public mSendDataCid:I

.field public mSendMode:I

.field private mSetupEventListSettings:Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

.field private mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field public mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

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
    sput-object v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

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
    .line 155
    new-instance v0, Lcom/android/internal/telephony/cat/BipCmdMessage$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BipCmdMessage$1;-><init>()V

    .line 154
    sput-object v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 38
    iput v2, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    .line 39
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 40
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    .line 41
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 43
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    .line 44
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mLogin:Ljava/lang/String;

    .line 45
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mPwd:Ljava/lang/String;

    .line 47
    iput v2, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelDataLength:I

    .line 48
    iput v2, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mRemainingDataLength:I

    .line 49
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelData:[B

    .line 51
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 53
    iput v2, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCloseCid:I

    .line 54
    iput v2, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mSendDataCid:I

    .line 55
    iput v2, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mReceiveDataCid:I

    .line 56
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCloseBackToTcpListen:Z

    .line 57
    iput v2, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mSendMode:I

    .line 58
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusList:Ljava/util/List;

    .line 60
    iput v2, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mInfoType:I

    .line 61
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mDestAddress:Ljava/lang/String;

    .line 62
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    .line 120
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 121
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 122
    invoke-static {}, Lcom/android/internal/telephony/cat/BipCmdMessage;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/BipCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 119
    :goto_0
    :pswitch_0
    return-void

    .line 124
    :pswitch_1
    new-instance v2, Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;-><init>(Lcom/android/internal/telephony/cat/BipCmdMessage;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 126
    .local v1, "length":I
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    new-array v3, v1, [I

    iput-object v3, v2, Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;->eventList:[I

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;->eventList:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/BearerDesc;

    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 2
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 38
    iput v1, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    .line 39
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 40
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mLogin:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mPwd:Ljava/lang/String;

    .line 47
    iput v1, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelDataLength:I

    .line 48
    iput v1, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mRemainingDataLength:I

    .line 49
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelData:[B

    .line 51
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 53
    iput v1, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCloseCid:I

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mSendDataCid:I

    .line 55
    iput v1, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mReceiveDataCid:I

    .line 56
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCloseBackToTcpListen:Z

    .line 57
    iput v1, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mSendMode:I

    .line 58
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusList:Ljava/util/List;

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mInfoType:I

    .line 61
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mDestAddress:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    .line 69
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 70
    invoke-static {}, Lcom/android/internal/telephony/cat/BipCmdMessage;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/BipCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 68
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_0
    check-cast p1, Lcom/android/internal/telephony/cat/GetChannelStatusParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v0, p1, Lcom/android/internal/telephony/cat/GetChannelStatusParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto :goto_0

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_1
    move-object v0, p1

    .line 75
    check-cast v0, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    move-object v0, p1

    .line 76
    check-cast v0, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->bufferSize:I

    iput v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    move-object v0, p1

    .line 77
    check-cast v0, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->localAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    move-object v0, p1

    .line 78
    check-cast v0, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->transportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    move-object v0, p1

    .line 79
    check-cast v0, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->dataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    move-object v0, p1

    .line 80
    check-cast v0, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v0, v0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v0, v0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    :goto_1
    move-object v0, p1

    .line 86
    check-cast v0, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->gprsParams:Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;->accessPointName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    move-object v0, p1

    .line 87
    check-cast v0, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->gprsParams:Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;->userLogin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mLogin:Ljava/lang/String;

    .line 88
    check-cast p1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v0, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->gprsParams:Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams$GprsParams;->userPwd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mPwd:Ljava/lang/String;

    goto :goto_0

    .line 85
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v0, v0, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 91
    :cond_3
    const-string/jumbo v0, "[BIP]"

    const-string/jumbo v1, "Invalid BearerDesc object"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    move-object v0, p1

    .line 95
    check-cast v0, Lcom/android/internal/telephony/cat/CloseChannelParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CloseChannelParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    move-object v0, p1

    .line 96
    check-cast v0, Lcom/android/internal/telephony/cat/CloseChannelParams;

    iget v0, v0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCloseCid:I

    iput v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCloseCid:I

    .line 97
    check-cast p1, Lcom/android/internal/telephony/cat/CloseChannelParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mBackToTcpListen:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCloseBackToTcpListen:Z

    goto/16 :goto_0

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_3
    move-object v0, p1

    .line 100
    check-cast v0, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    move-object v0, p1

    .line 101
    check-cast v0, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    iget v0, v0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->channelDataLength:I

    iput v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelDataLength:I

    .line 102
    check-cast p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget v0, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mReceiveDataCid:I

    iput v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mReceiveDataCid:I

    goto/16 :goto_0

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_4
    move-object v0, p1

    .line 105
    check-cast v0, Lcom/android/internal/telephony/cat/SendDataParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/SendDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    move-object v0, p1

    .line 106
    check-cast v0, Lcom/android/internal/telephony/cat/SendDataParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/SendDataParams;->channelData:[B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelData:[B

    move-object v0, p1

    .line 107
    check-cast v0, Lcom/android/internal/telephony/cat/SendDataParams;

    iget v0, v0, Lcom/android/internal/telephony/cat/SendDataParams;->mSendDataCid:I

    iput v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mSendDataCid:I

    .line 108
    check-cast p1, Lcom/android/internal/telephony/cat/SendDataParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget v0, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mSendMode:I

    iput v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mSendMode:I

    goto/16 :goto_0

    .line 111
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_5
    new-instance v0, Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;-><init>(Lcom/android/internal/telephony/cat/BipCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/SetEventListParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/SetEventListParams;->mEventInfo:[I

    iput-object v1, v0, Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;->eventList:[I

    goto/16 :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public getBearerDesc()Lcom/android/internal/telephony/cat/BearerDesc;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    return-object v0
.end method

.method public getCmdQualifier()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    return v0
.end method

.method public getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 142
    invoke-static {}, Lcom/android/internal/telephony/cat/BipCmdMessage;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/BipCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_0
    :pswitch_0
    return-void

    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/BipCmdMessage$SetupEventListSettings;->eventList:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
