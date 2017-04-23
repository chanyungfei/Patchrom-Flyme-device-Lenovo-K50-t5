.class public Lcom/android/internal/telephony/cat/BipService;
.super Ljava/lang/Object;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BipService$SendDataThread;,
        Lcom/android/internal/telephony/cat/BipService$ConnectivityChangeThread;,
        Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;,
        Lcom/android/internal/telephony/cat/BipService$1;,
        Lcom/android/internal/telephony/cat/BipService$2;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I = null

.field static final ADDITIONAL_INFO_FOR_BIP_CHANNEL_CLOSED:I = 0x2

.field static final ADDITIONAL_INFO_FOR_BIP_CHANNEL_ID_NOT_AVAILABLE:I = 0x3

.field static final ADDITIONAL_INFO_FOR_BIP_NO_CHANNEL_AVAILABLE:I = 0x1

.field static final ADDITIONAL_INFO_FOR_BIP_NO_SPECIFIC_CAUSE:I = 0x0

.field static final ADDITIONAL_INFO_FOR_BIP_REQUESTED_BUFFER_SIZE_NOT_AVAILABLE:I = 0x4

.field static final ADDITIONAL_INFO_FOR_BIP_REQUESTED_INTERFACE_TRANSPORT_LEVEL_NOT_AVAILABLE:I = 0x6

.field static final ADDITIONAL_INFO_FOR_BIP_SECURITY_ERROR:I = 0x5

.field private static final BIP_NAME:Ljava/lang/String; = "__M-BIP__"

.field private static final CONN_DELAY_TIMEOUT:I = 0x1388

.field private static final CONN_MGR_TIMEOUT:I = 0xc350

.field private static final DBG:Z = true

.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field protected static final MSG_ID_BIP_CONN_DELAY_TIMEOUT:I = 0xb

.field protected static final MSG_ID_BIP_CONN_MGR_TIMEOUT:I = 0xa

.field protected static final MSG_ID_BIP_DISCONNECT_TIMEOUT:I = 0xc

.field protected static final MSG_ID_BIP_PROACTIVE_COMMAND:I = 0x12

.field protected static final MSG_ID_CLOSE_CHANNEL_DONE:I = 0x10

.field protected static final MSG_ID_EVENT_NOTIFY:I = 0x13

.field protected static final MSG_ID_GET_CHANNEL_STATUS_DONE:I = 0x11

.field protected static final MSG_ID_OPEN_CHANNEL_DONE:I = 0xd

.field protected static final MSG_ID_RECEIVE_DATA_DONE:I = 0xf

.field protected static final MSG_ID_RIL_MSG_DECODED:I = 0x14

.field protected static final MSG_ID_SEND_DATA_DONE:I = 0xe

.field private static final PROPERTY_IA_APN:Ljava/lang/String; = "persist.radio.ia-apn"

.field private static final PROPERTY_OVERRIDE_APN:Ljava/lang/String; = "ril.pdn.overrideApn"

.field private static final PROPERTY_PDN_REUSE:Ljava/lang/String; = "ril.pdn.reuse"

.field private static mInstance:[Lcom/android/internal/telephony/cat/BipService;

.field private static mSimCount:I


# instance fields
.field final NETWORK_TYPE:I

.field private isConnMgrIntentTimeout:Z

.field private isParamsValid:Z

.field mApn:Ljava/lang/String;

.field mAutoReconnected:Z

.field mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

.field private mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

.field private mBipMsgDecoder:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

.field private mBipSrvHandler:Landroid/os/Handler;

.field mBufferSize:I

.field private mChannel:Lcom/android/internal/telephony/cat/Channel;

.field private mChannelId:I

.field private mChannelStatus:I

.field private mChannelStatusDataObject:Lcom/android/internal/telephony/cat/ChannelStatus;

.field private final mCloseLock:Ljava/lang/Object;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mCmdMessage:Lcom/android/internal/telephony/cat/BipCmdMessage;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

.field protected mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mCurrntCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

.field mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

.field private mHandler:Landroid/os/Handler;

.field private mIsApnInserting:Z

.field private mIsCloseInProgress:Z

.field private mIsListenChannelStatus:Z

.field private mIsListenDataAvailable:Z

.field private mIsNetworkAvailableReceived:Z

.field private mIsOpenInProgress:Z

.field mLinkMode:I

.field mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

.field mLogin:Ljava/lang/String;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkRequest:Landroid/net/NetworkRequest;

.field mPassword:Ljava/lang/String;

.field private mSlotId:I

.field mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/cat/BipService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipChannelManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/internal/telephony/cat/BipService;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/internal/telephony/cat/BipService;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipRilMessageDecoder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mBipMsgDecoder:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/cat/BipService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/telephony/cat/BipService;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/internal/telephony/cat/BipService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mCloseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/telephony/cat/BipService;)Lcom/android/internal/telephony/cat/BipCmdMessage;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/telephony/cat/BipService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipService;->mIsCloseInProgress:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/internal/telephony/cat/BipService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/internal/telephony/cat/BipService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    return v0
.end method

.method private static synthetic -getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/cat/BipService;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cat/BipService;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

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

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_28

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CALLCTRL_RSP_MSG:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

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

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_25

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_24

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

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

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_21

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_20

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1f

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_READER_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1e

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_SERVICE_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1d

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1c

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1b

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->MORE_TIME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

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

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_18

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_17

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POLLING_OFF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_16

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POLL_INTERVAL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_15

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POWER_OFF_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->POWER_ON_CARD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_13

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

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

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_10

    :goto_18
    :try_start_19
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RETRIEVE_MULTIMEDIA_MESSAGE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_f

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RUN_AT_COMMAND:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_e

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

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

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_b

    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_a

    :goto_1e
    :try_start_1f
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_9

    :goto_1f
    :try_start_20
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_8

    :goto_20
    :try_start_21
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SERVICE_SEARCH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_7

    :goto_21
    :try_start_22
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_FRAME:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_6

    :goto_22
    :try_start_23
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_5

    :goto_23
    :try_start_24
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x25

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
    sput-object v0, Lcom/android/internal/telephony/cat/BipService;->-com_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues:[I

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

.method static synthetic -set0(Lcom/android/internal/telephony/cat/BipService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/telephony/cat/BipService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/BipService;->mIsCloseInProgress:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/telephony/cat/BipService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/internal/telephony/cat/BipService;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/cat/BipService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->connect()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/cat/BipService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->disconnect()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 0
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/cat/BipService;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipService;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/cat/BipService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->resetLocked()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "includeAdditionalInfo"    # Z
    .param p4, "additionalInfo"    # I
    .param p5, "resp"    # Lcom/android/internal/telephony/cat/ResponseData;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/cat/BipService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    .line 134
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sim_id"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    .line 106
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 107
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCmdMessage:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 109
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    .line 111
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 113
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 114
    iput v3, p0, Lcom/android/internal/telephony/cat/BipService;->mBufferSize:I

    .line 115
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 116
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    .line 117
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 118
    iput v3, p0, Lcom/android/internal/telephony/cat/BipService;->mLinkMode:I

    .line 119
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->mAutoReconnected:Z

    .line 120
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCloseLock:Ljava/lang/Object;

    .line 122
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    .line 123
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    .line 124
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    .line 126
    iput v3, p0, Lcom/android/internal/telephony/cat/BipService;->NETWORK_TYPE:I

    .line 128
    iput v3, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 129
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    .line 130
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    .line 131
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatusDataObject:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 132
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->isParamsValid:Z

    .line 133
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    .line 135
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->mIsApnInserting:Z

    .line 136
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenDataAvailable:Z

    .line 137
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenChannelStatus:Z

    .line 138
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 169
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    .line 170
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    .line 171
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mBipMsgDecoder:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    .line 172
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrntCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 173
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 174
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 175
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->mIsCloseInProgress:Z

    .line 176
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z

    .line 185
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 187
    new-instance v1, Lcom/android/internal/telephony/cat/BipService$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/BipService$1;-><init>(Lcom/android/internal/telephony/cat/BipService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    .line 1854
    new-instance v1, Lcom/android/internal/telephony/cat/BipService$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/BipService$2;-><init>(Lcom/android/internal/telephony/cat/BipService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    .line 336
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "Construct BipService"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    if-nez p1, :cond_0

    .line 339
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "Fail to construct BipService"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    .line 343
    iput p3, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    .line 344
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Construct instance sim id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 346
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    .line 347
    new-instance v1, Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/BipChannelManager;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    .line 349
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 350
    .local v0, "connFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 356
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->deleteApnParams()V

    .line 335
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sim_id"    # I
    .param p4, "cmdIf"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    .line 106
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 107
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mCmdMessage:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 109
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    .line 111
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 113
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 114
    iput v2, p0, Lcom/android/internal/telephony/cat/BipService;->mBufferSize:I

    .line 115
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 116
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    .line 117
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 118
    iput v2, p0, Lcom/android/internal/telephony/cat/BipService;->mLinkMode:I

    .line 119
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipService;->mAutoReconnected:Z

    .line 120
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCloseLock:Ljava/lang/Object;

    .line 122
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    .line 123
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    .line 124
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    .line 126
    iput v2, p0, Lcom/android/internal/telephony/cat/BipService;->NETWORK_TYPE:I

    .line 128
    iput v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 129
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    .line 130
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    .line 131
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatusDataObject:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 132
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipService;->isParamsValid:Z

    .line 133
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    .line 135
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipService;->mIsApnInserting:Z

    .line 136
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenDataAvailable:Z

    .line 137
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenChannelStatus:Z

    .line 138
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 169
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    .line 170
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    .line 171
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mBipMsgDecoder:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    .line 172
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrntCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 173
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 174
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 175
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipService;->mIsCloseInProgress:Z

    .line 176
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z

    .line 185
    iput-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 187
    new-instance v1, Lcom/android/internal/telephony/cat/BipService$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/BipService$1;-><init>(Lcom/android/internal/telephony/cat/BipService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    .line 1854
    new-instance v1, Lcom/android/internal/telephony/cat/BipService$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/BipService$2;-><init>(Lcom/android/internal/telephony/cat/BipService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    .line 361
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Construct BipService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    if-nez p1, :cond_0

    .line 364
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "Fail to construct BipService"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    .line 368
    iput p3, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    .line 369
    iput-object p4, p0, Lcom/android/internal/telephony/cat/BipService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 370
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 371
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    .line 372
    new-instance v1, Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/BipChannelManager;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    .line 373
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v1, p5, v2}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipMsgDecoder:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    .line 374
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipMsgDecoder:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    if-nez v1, :cond_1

    .line 375
    const-string/jumbo v1, "Null BipRilMessageDecoder instance"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    return-void

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipMsgDecoder:Lcom/android/internal/telephony/cat/BipRilMessageDecoder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/BipRilMessageDecoder;->start()V

    .line 380
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v2, 0x12

    invoke-interface {p4, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnBipProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 381
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 382
    .local v0, "connFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 388
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->deleteApnParams()V

    .line 360
    return-void
.end method

.method private checkDataCapability(Lcom/android/internal/telephony/cat/BipCmdMessage;)Z
    .locals 11
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 1693
    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    .line 1694
    const-string/jumbo v7, "phone"

    .line 1693
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1695
    .local v3, "mTelMan":Landroid/telephony/TelephonyManager;
    const/4 v4, 0x0

    .line 1696
    .local v4, "simInsertedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v6, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    if-ge v2, v6, :cond_1

    .line 1697
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1698
    add-int/lit8 v4, v4, 0x1

    .line 1696
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1701
    :cond_1
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 1702
    .local v0, "capabilityPhoneId":I
    iget v6, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    .line 1703
    .local v5, "subId":[I
    aget v6, v5, v9

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1704
    .local v1, "currentPhoneId":I
    const-string/jumbo v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkDataCapability: simInsertedCount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1705
    const-string/jumbo v8, " currentPhoneId:"

    .line 1704
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1705
    const-string/jumbo v8, " capabilityPhoneId:"

    .line 1704
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    if-lt v4, v10, :cond_4

    .line 1708
    iget-object v6, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    if-eqz v6, :cond_4

    .line 1709
    iget-object v6, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v6, v6, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    if-eq v10, v6, :cond_2

    .line 1710
    iget-object v6, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v6, v6, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    const/4 v7, 0x3

    if-ne v7, v6, :cond_3

    .line 1712
    :cond_2
    if-eq v1, v0, :cond_4

    .line 1713
    const-string/jumbo v6, "[BIP]"

    const-string/jumbo v7, "checkDataCapability: return false"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    return v9

    .line 1711
    :cond_3
    iget-object v6, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v6, v6, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    const/16 v7, 0xb

    if-eq v7, v6, :cond_2

    .line 1716
    :cond_4
    const-string/jumbo v6, "[BIP]"

    const-string/jumbo v7, "checkDataCapability: return true"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    const/4 v6, 0x1

    return v6
.end method

.method private checkNetworkInfo(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Z
    .locals 6
    .param p1, "nwInfo"    # Landroid/net/NetworkInfo;
    .param p2, "exState"    # Landroid/net/NetworkInfo$State;

    .prologue
    const/4 v5, 0x0

    .line 1492
    if-nez p1, :cond_0

    .line 1493
    return v5

    .line 1496
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 1497
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 1498
    .local v0, "state":Landroid/net/NetworkInfo$State;
    const-string/jumbo v3, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "network type is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_1

    .line 1499
    const-string/jumbo v2, "MOBILE"

    .line 1498
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "network state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    if-nez v1, :cond_2

    if-ne v0, p2, :cond_2

    .line 1503
    const/4 v2, 0x1

    return v2

    .line 1499
    :cond_1
    const-string/jumbo v2, "WIFI"

    goto :goto_0

    .line 1506
    :cond_2
    return v5
.end method

.method private checkPSEvent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 7
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 494
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenDataAvailable:Z

    .line 495
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenChannelStatus:Z

    .line 496
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 497
    .local v0, "eventVal":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    packed-switch v0, :pswitch_data_0

    .line 496
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    :pswitch_0
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenDataAvailable:Z

    goto :goto_1

    .line 505
    :pswitch_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenChannelStatus:Z

    goto :goto_1

    .line 493
    .end local v0    # "eventVal":I
    :cond_0
    return-void

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private connect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 700
    const/4 v1, 0x0

    .line 701
    .local v1, "ret":I
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "establishConnect"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    .line 710
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "requestNetwork: establish data channel"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->establishLink()I

    move-result v1

    .line 713
    const/4 v0, 0x0

    .line 714
    .local v0, "response":Landroid/os/Message;
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 715
    if-eqz v1, :cond_0

    .line 716
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 717
    :cond_0
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "1 channel is activated"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const/16 v2, 0x80

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/BipService;->updateCurrentChannelStatus(I)V

    .line 723
    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 724
    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z

    .line 725
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    const/16 v4, 0xd

    invoke-virtual {v2, v4, v1, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 726
    .local v0, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 699
    .end local v0    # "response":Landroid/os/Message;
    :cond_1
    return-void

    .line 720
    .local v0, "response":Landroid/os/Message;
    :cond_2
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "2 channel is un-activated"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/BipService;->updateCurrentChannelStatus(I)V

    goto :goto_0
.end method

.method private deleteApnParams()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1603
    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget v6, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/cat/BipService;->getUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    .line 1604
    .local v4, "uri":Landroid/net/Uri;
    iget v5, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 1605
    .local v3, "subId":[I
    const/4 v0, 0x0

    .line 1607
    .local v0, "numeric":Ljava/lang/String;
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-deleteApnParams: enter. "

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    aget v5, v3, v7

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1610
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    aget v6, v3, v7

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 1613
    .end local v0    # "numeric":Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_1

    .line 1614
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-deleteApnParams: Invalid uri"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    return-void

    .line 1617
    :cond_1
    const-string/jumbo v2, "name = \'__M-BIP__\'"

    .line 1618
    .local v2, "selection":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v2, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1619
    .local v1, "rows":I
    const-string/jumbo v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BM-deleteApnParams:["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] end"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    return-void
.end method

.method private disconnect()V
    .locals 14

    .prologue
    const/16 v13, 0xa

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 731
    const/4 v7, 0x0

    .line 732
    .local v7, "ret":I
    const/4 v6, 0x0

    .line 734
    .local v6, "response":Landroid/os/Message;
    const-string/jumbo v8, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "disconnect: opening ? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->deleteApnParams()V

    .line 738
    iget-boolean v8, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    if-eqz v8, :cond_1

    .line 739
    iget v8, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    .line 740
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v9, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v2

    .line 741
    .local v2, "channel":Lcom/android/internal/telephony/cat/Channel;
    const/4 v7, 0x2

    .line 743
    if-eqz v2, :cond_0

    .line 744
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/Channel;->closeChannel()I

    .line 745
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v9, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 750
    :goto_0
    iput v12, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 751
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput v11, v8, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 752
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput-boolean v11, v8, Lcom/android/internal/telephony/cat/ChannelStatus;->isActivated:Z

    .line 753
    iput-boolean v11, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 754
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    const/16 v10, 0xd

    invoke-virtual {v8, v10, v7, v11, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 755
    .local v6, "response":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 730
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/Channel;
    .end local v6    # "response":Landroid/os/Message;
    :goto_1
    return-void

    .line 747
    .restart local v2    # "channel":Lcom/android/internal/telephony/cat/Channel;
    .local v6, "response":Landroid/os/Message;
    :cond_0
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v9, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    iget-object v10, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v10, v10, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    invoke-virtual {v8, v9, v10}, Lcom/android/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    goto :goto_0

    .line 757
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/Channel;
    :cond_1
    const/4 v3, 0x0

    .line 758
    .local v3, "i":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v1, "alByte":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 760
    .local v0, "additionalInfo":[B
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "this is a drop link"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iput v12, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 764
    new-instance v5, Lcom/android/internal/telephony/cat/CatResponseMessage;

    invoke-direct {v5, v13}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(I)V

    .line 766
    .local v5, "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    const/4 v3, 0x1

    :goto_2
    const/4 v8, 0x7

    if-gt v3, v8, :cond_5

    .line 767
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cat/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 769
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v2

    .line 770
    .restart local v2    # "channel":Lcom/android/internal/telephony/cat/Channel;
    const-string/jumbo v8, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "channel protocolType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget v8, v2, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    const/4 v9, 0x1

    if-eq v9, v8, :cond_2

    .line 772
    iget v8, v2, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    if-ne v12, v8, :cond_3

    .line 773
    :cond_2
    const-string/jumbo v8, "ro.mtk_gemini_support"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 777
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cat/BipService;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 778
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->resetLocked()V

    .line 785
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/Channel;->closeChannel()I

    .line 786
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 788
    const/16 v8, -0x48

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    iget v8, v2, Lcom/android/internal/telephony/cat/Channel;->mChannelId:I

    or-int/lit8 v8, v8, 0x0

    int-to-byte v8, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/Channel;
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 782
    .restart local v2    # "channel":Lcom/android/internal/telephony/cat/Channel;
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cat/BipService;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 783
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->resetLocked()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 799
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/Channel;
    :catch_0
    move-exception v4

    .line 800
    .local v4, "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "NPE, channel null."

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4

    .line 805
    .end local v4    # "ne":Ljava/lang/NullPointerException;
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 806
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v0, v8, [B

    .line 807
    .local v0, "additionalInfo":[B
    const/4 v3, 0x0

    :goto_5
    array-length v8, v0

    if-ge v3, v8, :cond_6

    .line 808
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v0, v3

    .line 807
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 810
    :cond_6
    const/16 v8, 0x82

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setSourceId(I)V

    .line 811
    const/16 v8, 0x81

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setDestinationId(I)V

    .line 812
    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo([B)V

    .line 813
    invoke-virtual {v5, v11}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setOneShot(Z)V

    .line 814
    invoke-virtual {v5, v13, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setEventDownload(I[B)V

    .line 815
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "onEventDownload: for channel status"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object v8, p0, Lcom/android/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    check-cast v8, Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/cat/CatService;->onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto/16 :goto_1

    .line 818
    .local v0, "additionalInfo":[B
    :cond_7
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "onEventDownload: No client channels are opened."

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private establishLink()I
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, 0x4

    const/4 v12, 0x7

    const/4 v11, 0x3

    .line 1510
    const/4 v10, 0x0

    .line 1511
    .local v10, "ret":I
    const/4 v0, 0x0

    .line 1513
    .local v0, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v1, v1, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    if-ne v1, v11, :cond_3

    .line 1514
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "BM-establishLink: establish a TCPServer link"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/cat/TcpServerChannel;

    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget v1, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mLinkMode:I

    .line 1517
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    .line 1518
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v4, v4, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    iget v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBufferSize:I

    iget-object v6, p0, Lcom/android/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    check-cast v6, Lcom/android/internal/telephony/cat/CatService;

    move-object v7, p0

    .line 1516
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/cat/TcpServerChannel;-><init>(IIIIILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/BipService;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1524
    .local v0, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cat/Channel;->openChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I

    move-result v10

    .line 1525
    if-eqz v10, :cond_0

    .line 1526
    if-ne v10, v11, :cond_2

    .line 1527
    :cond_0
    iput v13, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 1528
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cat/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/Channel;)I

    .line 1588
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_1
    :goto_0
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BM-establishLink: ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    return v10

    .line 1519
    :catch_0
    move-exception v9

    .line 1520
    .local v9, "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "BM-establishLink: NE,new TCP server channel fail."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1522
    return v14

    .line 1530
    .end local v9    # "ne":Ljava/lang/NullPointerException;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2, v11}, Lcom/android/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    .line 1531
    iput v12, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    goto :goto_0

    .line 1533
    .local v0, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v1, v1, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1534
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "BM-establishLink: establish a TCP link"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/cat/TcpChannel;

    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget v1, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mLinkMode:I

    .line 1537
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    .line 1538
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    iget v6, p0, Lcom/android/internal/telephony/cat/BipService;->mBufferSize:I

    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    check-cast v7, Lcom/android/internal/telephony/cat/CatService;

    move-object v8, p0

    .line 1536
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cat/TcpChannel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/BipService;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1548
    .local v0, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cat/Channel;->openChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I

    move-result v10

    .line 1549
    const/16 v1, 0xa

    if-eq v10, v1, :cond_1

    .line 1550
    if-eqz v10, :cond_4

    .line 1551
    if-ne v10, v11, :cond_6

    .line 1552
    :cond_4
    iput v13, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 1553
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cat/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/Channel;)I

    goto :goto_0

    .line 1539
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :catch_1
    move-exception v9

    .line 1540
    .restart local v9    # "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "BM-establishLink: NE,new TCP client channel fail."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1542
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    if-nez v1, :cond_5

    .line 1543
    const/16 v1, 0x9

    return v1

    .line 1545
    :cond_5
    return v14

    .line 1555
    .end local v9    # "ne":Ljava/lang/NullPointerException;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    .line 1556
    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    const/4 v3, 0x2

    .line 1555
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    .line 1557
    iput v12, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    goto/16 :goto_0

    .line 1560
    .local v0, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v1, v1, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1562
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "BM-establishLink: establish a UDP link"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    :try_start_2
    new-instance v0, Lcom/android/internal/telephony/cat/UdpChannel;

    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget v1, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mLinkMode:I

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v3, v3, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    .line 1565
    iget-object v4, p0, Lcom/android/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    iget v6, p0, Lcom/android/internal/telephony/cat/BipService;->mBufferSize:I

    .line 1566
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipService;->mHandler:Landroid/os/Handler;

    check-cast v7, Lcom/android/internal/telephony/cat/CatService;

    move-object v8, p0

    .line 1564
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cat/UdpChannel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/BipService;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1572
    .local v0, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cat/Channel;->openChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I

    move-result v10

    .line 1573
    if-eqz v10, :cond_8

    .line 1574
    if-ne v10, v11, :cond_9

    .line 1575
    :cond_8
    iput v13, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 1576
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cat/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/Channel;)I

    goto/16 :goto_0

    .line 1567
    .end local v0    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :catch_2
    move-exception v9

    .line 1568
    .restart local v9    # "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "BM-establishLink: NE,new UDP client channel fail."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1570
    return v14

    .line 1578
    .end local v9    # "ne":Ljava/lang/NullPointerException;
    .restart local v0    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    .line 1579
    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    const/4 v3, 0x1

    .line 1578
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    .line 1580
    iput v12, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    goto/16 :goto_0

    .line 1583
    .local v0, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_a
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "BM-establishLink: unsupported channel type"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    const/4 v10, 0x4

    .line 1585
    iput v12, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    goto/16 :goto_0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    .line 394
    const-string/jumbo v1, "connectivity"

    .line 393
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getDataConnectionFromSetting()I
    .locals 4

    .prologue
    .line 690
    const/4 v0, -0x1

    .line 693
    .local v0, "currentDataConnectionSimId":I
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "gprs_connection_setting"

    .line 694
    const/4 v3, -0x4

    .line 692
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 695
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Default Data Setting value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;I)Lcom/android/internal/telephony/cat/BipService;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "simId"    # I

    .prologue
    const/4 v4, 0x0

    .line 400
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInstance sim : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    sget-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    if-nez v1, :cond_0

    .line 402
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    .line 403
    sget v1, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    new-array v1, v1, [Lcom/android/internal/telephony/cat/BipService;

    sput-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    .line 404
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    if-ge v0, v1, :cond_0

    .line 405
    sget-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    aput-object v4, v1, v0

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    .end local v0    # "i":I
    :cond_0
    if-ltz p2, :cond_1

    sget v1, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    if-le p2, v1, :cond_2

    .line 409
    :cond_1
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInstance invalid sim : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-object v4

    .line 412
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    aget-object v1, v1, p2

    if-nez v1, :cond_3

    .line 413
    sget-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    new-instance v2, Lcom/android/internal/telephony/cat/BipService;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/telephony/cat/BipService;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    aput-object v2, v1, p2

    .line 415
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    aget-object v1, v1, p2

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;ILcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/cat/BipService;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "simId"    # I
    .param p3, "cmdIf"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;

    .prologue
    const/4 v3, 0x0

    .line 420
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInstance sim : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    sget-object v0, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    if-nez v0, :cond_0

    .line 422
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    .line 423
    sget v0, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    new-array v0, v0, [Lcom/android/internal/telephony/cat/BipService;

    sput-object v0, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    .line 424
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget v0, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    if-ge v6, v0, :cond_0

    .line 425
    sget-object v0, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    aput-object v3, v0, v6

    .line 424
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 428
    .end local v6    # "i":I
    :cond_0
    if-ltz p2, :cond_1

    sget v0, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    if-le p2, v0, :cond_2

    .line 429
    :cond_1
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInstance invalid sim : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    return-object v3

    .line 432
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    aget-object v0, v0, p2

    if-nez v0, :cond_3

    .line 433
    sget-object v7, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    new-instance v0, Lcom/android/internal/telephony/cat/BipService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/BipService;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    aput-object v0, v7, p2

    .line 435
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    aget-object v0, v0, p2

    return-object v0
.end method

.method private getUri(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "slodId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1593
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1595
    .local v0, "subId":[I
    aget v1, v0, v3

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 1598
    :cond_0
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "BM-getUri: invalid subId."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V
    .locals 11
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;
    .param p2, "isProactiveCmd"    # Z

    .prologue
    const/16 v10, 0xd

    const/4 v9, 0x0

    .line 550
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    new-instance v2, Lcom/android/internal/telephony/cat/BipCmdMessage;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/cat/BipCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 554
    .local v2, "cmdMsg":Lcom/android/internal/telephony/cat/BipCmdMessage;
    const/4 v5, 0x0

    .line 556
    .local v5, "response":Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/cat/BipService;->-getcom_android_internal_telephony_cat_AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 614
    const-string/jumbo v7, "Unsupported command"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    return-void

    .line 558
    :pswitch_0
    const-string/jumbo v7, "SS-handleProactiveCommand: process OPEN_CHANNEL"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 560
    .local v0, "call_state":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    .line 561
    .local v1, "callmgr":Lcom/android/internal/telephony/CallManager;
    iget v7, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    .line 562
    .local v6, "subId":[I
    aget v7, v6, v9

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 563
    .local v4, "phoneId":I
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 564
    .local v3, "myPhone":Lcom/android/internal/telephony/Phone;
    if-nez v3, :cond_0

    .line 565
    const-string/jumbo v7, "myPhone is still null"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    .end local v0    # "call_state":Lcom/android/internal/telephony/PhoneConstants$State;
    .end local v1    # "callmgr":Lcom/android/internal/telephony/CallManager;
    .end local v3    # "myPhone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "phoneId":I
    .end local v5    # "response":Landroid/os/Message;
    .end local v6    # "subId":[I
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrntCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 549
    return-void

    .line 568
    .restart local v0    # "call_state":Lcom/android/internal/telephony/PhoneConstants$State;
    .restart local v1    # "callmgr":Lcom/android/internal/telephony/CallManager;
    .restart local v3    # "myPhone":Lcom/android/internal/telephony/Phone;
    .restart local v4    # "phoneId":I
    .restart local v5    # "response":Landroid/os/Message;
    .restart local v6    # "subId":[I
    :cond_0
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v7

    .line 569
    const/4 v8, 0x2

    .line 568
    if-gt v7, v8, :cond_1

    .line 569
    if-eqz v1, :cond_1

    .line 570
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 571
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "call_state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v7, :cond_2

    .line 573
    const-string/jumbo v7, "SS-handleProactiveCommand: ME is busy on call"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    new-instance v7, Lcom/android/internal/telephony/cat/ChannelStatus;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/BipService;->getFreeChannelId()I

    move-result v8

    invoke-direct {v7, v8, v9, v9}, Lcom/android/internal/telephony/cat/ChannelStatus;-><init>(III)V

    iput-object v7, v2, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 577
    iget-object v7, v2, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput v9, v7, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 579
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 580
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    .line 581
    const/4 v8, 0x6

    .line 580
    invoke-virtual {v7, v10, v8, v9, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 582
    .local v5, "response":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 583
    return-void

    .line 586
    .local v5, "response":Landroid/os/Message;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SS-handleProactiveCommand: type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 587
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v8

    .line 586
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 587
    const-string/jumbo v8, ",or null callmgr"

    .line 586
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 590
    .local v5, "response":Landroid/os/Message;
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/cat/BipService;->openChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    goto :goto_0

    .line 593
    .end local v0    # "call_state":Lcom/android/internal/telephony/PhoneConstants$State;
    .end local v1    # "callmgr":Lcom/android/internal/telephony/CallManager;
    .end local v3    # "myPhone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "phoneId":I
    .end local v6    # "subId":[I
    .local v5, "response":Landroid/os/Message;
    :pswitch_1
    const-string/jumbo v7, "SS-handleProactiveCommand: process CLOSE_CHANNEL"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 595
    .local v5, "response":Landroid/os/Message;
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/cat/BipService;->closeChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 598
    .local v5, "response":Landroid/os/Message;
    :pswitch_2
    const-string/jumbo v7, "SS-handleProactiveCommand: process RECEIVE_DATA"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 600
    .local v5, "response":Landroid/os/Message;
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/cat/BipService;->receiveData(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 603
    .local v5, "response":Landroid/os/Message;
    :pswitch_3
    const-string/jumbo v7, "SS-handleProactiveCommand: process SEND_DATA"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 605
    .local v5, "response":Landroid/os/Message;
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/cat/BipService;->sendData(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 608
    .local v5, "response":Landroid/os/Message;
    :pswitch_4
    const-string/jumbo v7, "SS-handleProactiveCommand: process GET_CHANNEL_STATUS"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCmdMessage:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 610
    iget-object v7, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 611
    .local v5, "response":Landroid/os/Message;
    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/cat/BipService;->getChannelStatus(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 9
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 459
    if-nez p1, :cond_0

    .line 460
    return-void

    .line 464
    :cond_0
    const/4 v7, 0x0

    .line 465
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    packed-switch v1, :pswitch_data_0

    .line 458
    .end local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_1
    :goto_0
    return-void

    .line 468
    .restart local v7    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_0
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v7, :cond_1

    .line 480
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v2, :cond_2

    .line 481
    const/4 v1, 0x1

    invoke-direct {p0, v7, v1}, Lcom/android/internal/telephony/cat/BipService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 469
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :catch_0
    move-exception v8

    .line 471
    .local v8, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v1, "Fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrntCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    if-eqz v1, :cond_1

    .line 474
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrntCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/BipService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 486
    .end local v8    # "e":Ljava/lang/ClassCastException;
    .local v7, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_2
    iget-object v2, v7, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/BipService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method private newRequest()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1276
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 1277
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    new-instance v2, Lcom/android/internal/telephony/cat/BipService$3;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/BipService$3;-><init>(Lcom/android/internal/telephony/cat/BipService;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1330
    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 1331
    .local v1, "subId":[I
    aget v2, v1, v3

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1332
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 1335
    aget v3, v1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1332
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 1350
    :goto_0
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "Start request network timer."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cat/BipService;->sendBipConnTimeOutMsg(Lcom/android/internal/telephony/cat/BipCmdMessage;)V

    .line 1353
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const v4, 0xc350

    .line 1352
    invoke-virtual {v0, v2, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 1275
    return-void

    .line 1338
    :cond_0
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkRequest:Landroid/net/NetworkRequest;

    goto :goto_0
.end method

.method private releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .prologue
    .line 1370
    if-eqz p1, :cond_0

    .line 1371
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "releaseRequest"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 1373
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1369
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 1375
    :cond_0
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "releaseRequest: networkCallback is null."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestRouteToHost()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1474
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "requestRouteToHost"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    const/4 v1, 0x0

    .line 1476
    .local v1, "addressBytes":[B
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    if-eqz v2, :cond_0

    .line 1477
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 1482
    .local v1, "addressBytes":[B
    const/4 v0, 0x0

    .line 1483
    .local v0, "addr":I
    aget-byte v2, v1, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 1484
    const/4 v3, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    .line 1483
    or-int/2addr v2, v3

    .line 1485
    const/4 v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 1483
    or-int/2addr v2, v3

    .line 1486
    aget-byte v3, v1, v4

    and-int/lit16 v3, v3, 0xff

    .line 1483
    or-int v0, v2, v3

    .line 1488
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v5, v0}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v2

    return v2

    .line 1479
    .end local v0    # "addr":I
    .local v1, "addressBytes":[B
    :cond_0
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "mDataDestinationAddress is null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    return v4
.end method

.method private resetLocked()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1360
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1361
    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;

    .line 1359
    return-void
.end method

.method private sendBipConnTimeOutMsg(Lcom/android/internal/telephony/cat/BipCmdMessage;)V
    .locals 4
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;

    .prologue
    .line 1453
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1454
    .local v0, "bipTimerMsg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1455
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xc350

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1452
    return-void
.end method

.method private sendBipDisconnectTimeOutMsg(Lcom/android/internal/telephony/cat/BipCmdMessage;)V
    .locals 4
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;

    .prologue
    .line 1459
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1460
    .local v0, "bipTimerMsg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1461
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1458
    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 8
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "includeAdditionalInfo"    # Z
    .param p4, "additionalInfo"    # I
    .param p5, "resp"    # Lcom/android/internal/telephony/cat/ResponseData;

    .prologue
    const/4 v7, 0x0

    .line 624
    if-nez p1, :cond_0

    .line 625
    const-string/jumbo v5, "SS-sendTR: cmdDet is null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    return-void

    .line 629
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SS-sendTR: command type is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 633
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 634
    .local v4, "tag":I
    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v5, :cond_1

    .line 635
    or-int/lit16 v4, v4, 0x80

    .line 637
    :cond_1
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 638
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 639
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 640
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 641
    iget v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 650
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 651
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 652
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 653
    const/16 v5, 0x82

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 654
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 657
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 658
    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v5, :cond_2

    .line 659
    or-int/lit16 v4, v4, 0x80

    .line 661
    :cond_2
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 662
    if-eqz p3, :cond_4

    const/4 v2, 0x2

    .line 663
    .local v2, "length":I
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 664
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 667
    if-eqz p3, :cond_3

    .line 668
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 672
    :cond_3
    if-eqz p5, :cond_5

    .line 673
    const-string/jumbo v5, "SS-sendTR: write response data into TR"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 680
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 681
    .local v3, "rawData":[B
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, "hexString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "TERMINAL RESPONSE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    .line 622
    return-void

    .line 662
    .end local v1    # "hexString":Ljava/lang/String;
    .end local v2    # "length":I
    .end local v3    # "rawData":[B
    :cond_4
    const/4 v2, 0x1

    .restart local v2    # "length":I
    goto :goto_0

    .line 677
    :cond_5
    const-string/jumbo v5, "SS-sendTR: null resp."

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    .line 1622
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v3, "BM-setApnParams: enter"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    if-nez p1, :cond_0

    .line 1624
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v3, "BM-setApnParams: No apn parameters"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    return-void

    .line 1628
    :cond_0
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget v3, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cat/BipService;->getUri(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 1629
    .local v2, "uri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 1630
    .local v12, "numeric":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1631
    .local v9, "mcc":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1632
    .local v10, "mnc":Ljava/lang/String;
    const-string/jumbo v7, "supl"

    .line 1633
    .local v7, "apnType":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v13

    .line 1639
    .local v13, "subId":[I
    const/4 v1, 0x0

    aget v1, v13, v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1640
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v3, 0x0

    aget v3, v13, v3

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v12

    .line 1642
    .end local v12    # "numeric":Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    .line 1643
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v3, "BM-setApnParams: Invalid uri"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    :cond_2
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_3

    .line 1647
    const/4 v8, 0x0

    .line 1648
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-virtual {v12, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1649
    .local v9, "mcc":Ljava/lang/String;
    const/4 v1, 0x3

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1650
    .local v10, "mnc":Ljava/lang/String;
    const-string/jumbo v1, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BM-setApnParams: apn = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "mcc = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", mnc = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "apn = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1652
    const-string/jumbo v3, " and "

    .line 1651
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1652
    const-string/jumbo v3, "numeric"

    .line 1651
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1652
    const-string/jumbo v3, " = \'"

    .line 1651
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1652
    const-string/jumbo v3, "\'"

    .line 1651
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1653
    const-string/jumbo v3, " and "

    .line 1651
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1653
    const-string/jumbo v3, "sub_id"

    .line 1651
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1653
    const-string/jumbo v3, " = \'"

    .line 1651
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1653
    const/4 v3, 0x0

    aget v3, v13, v3

    .line 1651
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1653
    const-string/jumbo v3, "\'"

    .line 1651
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1655
    .local v4, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1656
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1655
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1658
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 1659
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1660
    .local v14, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "name"

    const-string/jumbo v3, "__M-BIP__"

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    const-string/jumbo v1, "apn"

    move-object/from16 v0, p1

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    const-string/jumbo v1, "user"

    move-object/from16 v0, p2

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    const-string/jumbo v1, "password"

    move-object/from16 v0, p3

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    const-string/jumbo v1, "type"

    invoke-virtual {v14, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    const-string/jumbo v1, "mcc"

    invoke-virtual {v14, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    const-string/jumbo v1, "mnc"

    invoke-virtual {v14, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    const-string/jumbo v1, "numeric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    const-string/jumbo v1, "sub_id"

    const/4 v3, 0x0

    aget v3, v13, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1670
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 1673
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v3, "BM-setApnParams: insert one record"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1675
    .local v11, "newRow":Landroid/net/Uri;
    if-eqz v11, :cond_4

    .line 1676
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v3, "insert a new record into db"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/BipService;->mIsApnInserting:Z

    .line 1685
    .end local v11    # "newRow":Landroid/net/Uri;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1689
    .end local v4    # "selection":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "mcc":Ljava/lang/String;
    .end local v10    # "mnc":Ljava/lang/String;
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_3
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v3, "BM-setApnParams: exit"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    return-void

    .line 1679
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "mcc":Ljava/lang/String;
    .restart local v10    # "mnc":Ljava/lang/String;
    .restart local v11    # "newRow":Landroid/net/Uri;
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v3, "Fail to insert apn params into db"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1682
    .end local v11    # "newRow":Landroid/net/Uri;
    :cond_5
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v3, "BM-setApnParams: do not update one record"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCurrentChannelStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 1466
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/cat/BipChannelManager;->updateChannelStatus(II)V

    .line 1467
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput p1, v1, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1464
    :goto_0
    return-void

    .line 1468
    :catch_0
    move-exception v0

    .line 1469
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCurrentChannelStatus id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public acquireNetwork()V
    .locals 6

    .prologue
    .line 824
    const/4 v1, 0x2

    .line 825
    .local v1, "result":I
    const/4 v2, 0x0

    .line 827
    .local v2, "ret":I
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 828
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_1

    .line 830
    const-string/jumbo v3, "[BIP]"

    const-string/jumbo v4, "acquireNetwork: already available"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v4, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v0

    .line 832
    .local v0, "channel":Lcom/android/internal/telephony/cat/Channel;
    if-nez v0, :cond_0

    .line 833
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->connect()V

    .line 835
    :cond_0
    return-void

    .line 838
    .end local v0    # "channel":Lcom/android/internal/telephony/cat/Channel;
    :cond_1
    const-string/jumbo v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestNetwork: slotId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->newRequest()V

    .line 823
    return-void
.end method

.method public closeChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .locals 11
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x7

    .line 1095
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-closeChannel: enter"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    const/4 v3, 0x0

    .line 1098
    .local v3, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget v1, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCloseCid:I

    .line 1100
    .local v1, "cId":I
    iput v9, p2, Landroid/os/Message;->arg1:I

    .line 1101
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 1102
    if-ltz v1, :cond_0

    if-ge v8, v1, :cond_1

    .line 1103
    :cond_0
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-closeChannel: channel id is wrong"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iput v8, p2, Landroid/os/Message;->arg1:I

    .line 1164
    .end local v3    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :goto_0
    iput-boolean v9, p0, Lcom/android/internal/telephony/cat/BipService;->isParamsValid:Z

    .line 1165
    iget-boolean v5, p0, Lcom/android/internal/telephony/cat/BipService;->mIsCloseInProgress:Z

    if-nez v5, :cond_a

    .line 1166
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1167
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v5, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1171
    :goto_1
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-closeChannel: exit"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    return-void

    .line 1108
    .restart local v3    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/BipChannelManager;->getBipChannelStatus(I)I

    move-result v5

    .line 1107
    if-nez v5, :cond_2

    .line 1109
    const/4 v5, 0x7

    iput v5, p2, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1159
    .end local v3    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :catch_0
    move-exception v2

    .line 1160
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BM-closeChannel: IndexOutOfBoundsException cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iput v8, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 1111
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/BipChannelManager;->getBipChannelStatus(I)I

    move-result v5

    .line 1110
    if-ne v7, v5, :cond_3

    .line 1112
    const/16 v5, 0x8

    iput v5, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 1114
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v3

    .line 1115
    .local v3, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    if-nez v3, :cond_4

    .line 1116
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-closeChannel: channel has already been closed"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    const/4 v5, 0x7

    iput v5, p2, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 1120
    :cond_4
    const/4 v4, 0x0

    .line 1121
    .local v4, "tcpSerCh":Lcom/android/internal/telephony/cat/TcpServerChannel;
    iget v5, v3, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    if-ne v10, v5, :cond_7

    .line 1122
    instance-of v5, v3, Lcom/android/internal/telephony/cat/TcpServerChannel;

    if-eqz v5, :cond_5

    .line 1123
    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object v4, v0

    .line 1124
    .local v4, "tcpSerCh":Lcom/android/internal/telephony/cat/TcpServerChannel;
    iget-boolean v5, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mCloseBackToTcpListen:Z

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cat/TcpServerChannel;->setCloseBackToTcpListen(Z)V

    .line 1145
    .end local v4    # "tcpSerCh":Lcom/android/internal/telephony/cat/TcpServerChannel;
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->deleteApnParams()V

    .line 1146
    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/Channel;->closeChannel()I

    move-result v5

    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 1147
    iget v5, v3, Lcom/android/internal/telephony/cat/Channel;->mProtocolType:I

    if-ne v10, v5, :cond_9

    .line 1148
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/TcpServerChannel;->isCloseBackToTcpListen()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1149
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 1155
    :cond_6
    :goto_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mChannel:Lcom/android/internal/telephony/cat/Channel;

    .line 1156
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    goto/16 :goto_0

    .line 1127
    .local v4, "tcpSerCh":Lcom/android/internal/telephony/cat/TcpServerChannel;
    :cond_7
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "BM-closeChannel: stop data connection"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/cat/BipService;->mIsCloseInProgress:Z

    .line 1129
    const-string/jumbo v5, "ro.mtk_gemini_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1130
    const-string/jumbo v5, "[BIP]"

    .line 1131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopUsingNetworkFeature getDataConnectionFromSetting  =="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1132
    iget v7, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    .line 1131
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1130
    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/BipService;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1137
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->resetLocked()V

    goto :goto_2

    .line 1141
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cat/BipService;->releaseRequest(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1142
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/BipService;->resetLocked()V

    goto :goto_2

    .line 1152
    .end local v4    # "tcpSerCh":Lcom/android/internal/telephony/cat/TcpServerChannel;
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/BipChannelManager;->removeChannel(I)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1169
    .end local v3    # "lChannel":Lcom/android/internal/telephony/cat/Channel;
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipService;->sendBipDisconnectTimeOutMsg(Lcom/android/internal/telephony/cat/BipCmdMessage;)V

    goto/16 :goto_1
.end method

.method public dispose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, "i":I
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispose slotId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    sget-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    if-eqz v1, :cond_0

    .line 442
    sget-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 443
    sget-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    aput-object v4, v1, v2

    .line 447
    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 448
    sget-object v1, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 453
    :cond_1
    sget v1, Lcom/android/internal/telephony/cat/BipService;->mSimCount:I

    if-ne v0, v1, :cond_2

    .line 454
    sput-object v4, Lcom/android/internal/telephony/cat/BipService;->mInstance:[Lcom/android/internal/telephony/cat/BipService;

    .line 438
    :cond_2
    return-void

    .line 447
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getBipChannelManager()Lcom/android/internal/telephony/cat/BipChannelManager;
    .locals 1

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    return-object v0
.end method

.method public getChannelId()I
    .locals 3

    .prologue
    .line 1721
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BM-getChannelId: channel id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    iget v0, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    return v0
.end method

.method public getChannelStatus(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .locals 6
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1431
    const/4 v0, 0x1

    .line 1432
    .local v0, "cId":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1435
    .local v1, "csList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/cat/ChannelStatus;>;"
    :goto_0
    const/4 v3, 0x7

    if-gt v0, v3, :cond_1

    .line 1436
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/cat/BipChannelManager;->isChannelIdOccupied(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1437
    const-string/jumbo v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getChannelStatus: cId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1442
    :catch_0
    move-exception v2

    .line 1443
    .local v2, "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "[BIP]"

    const-string/jumbo v4, "getChannelStatus: NE"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1446
    .end local v2    # "ne":Ljava/lang/NullPointerException;
    :cond_1
    iput-object v1, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusList:Ljava/util/List;

    .line 1430
    const/4 v3, 0x0

    .line 1447
    iput v3, p2, Landroid/os/Message;->arg1:I

    .line 1448
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1449
    iget-object v3, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1429
    return-void
.end method

.method public getFreeChannelId()I
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BipChannelManager;->getFreeChannelId()I

    move-result v0

    return v0
.end method

.method hasPsEvent(I)Z
    .locals 2
    .param p1, "eventId"    # I

    .prologue
    .line 529
    packed-switch p1, :pswitch_data_0

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknow eventId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    const/4 v0, 0x0

    return v0

    .line 531
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsListenDataAvailable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenDataAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenDataAvailable:Z

    return v0

    .line 534
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsListenChannelStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenChannelStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenChannelStatus:Z

    return v0

    .line 529
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isTestSim()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1760
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isTestSim slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    iget v0, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    if-nez v0, :cond_0

    .line 1762
    const-string/jumbo v0, "gsm.sim.ril.testsim"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1763
    const-string/jumbo v1, "1"

    .line 1762
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1764
    return v3

    .line 1765
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    if-ne v3, v0, :cond_1

    .line 1766
    const-string/jumbo v0, "gsm.sim.ril.testsim.2"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1767
    const-string/jumbo v1, "1"

    .line 1766
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1768
    return v3

    .line 1769
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 1770
    const-string/jumbo v0, "gsm.sim.ril.testsim.3"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1771
    const-string/jumbo v1, "1"

    .line 1770
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1772
    return v3

    .line 1773
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_3

    .line 1774
    const-string/jumbo v0, "gsm.sim.ril.testsim.4"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1775
    const-string/jumbo v1, "1"

    .line 1774
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1776
    return v3

    .line 1778
    :cond_3
    return v4
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .locals 16
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 843
    const/4 v8, 0x2

    .line 844
    .local v8, "result":I
    const-string/jumbo v12, "[BIP]"

    const-string/jumbo v13, "BM-openChannel: enter"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const/4 v9, 0x0

    .line 846
    .local v9, "ret":I
    const/4 v2, 0x0

    .line 854
    .local v2, "channel":Lcom/android/internal/telephony/cat/Channel;
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/BipService;->checkDataCapability(Lcom/android/internal/telephony/cat/BipCmdMessage;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 855
    new-instance v12, Lcom/android/internal/telephony/cat/ChannelStatus;

    const/4 v13, 0x0

    .line 856
    const/4 v14, 0x0

    .line 857
    const/4 v15, 0x0

    .line 855
    invoke-direct {v12, v13, v14, v15}, Lcom/android/internal/telephony/cat/ChannelStatus;-><init>(III)V

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 858
    const/4 v12, 0x5

    move-object/from16 v0, p2

    iput v12, v0, Landroid/os/Message;->arg1:I

    .line 859
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 860
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 861
    return-void

    .line 864
    :cond_0
    const-string/jumbo v12, "[BIP]"

    const-string/jumbo v13, "BM-openChannel: init channel status object"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    .line 868
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v13, v13, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/cat/BipChannelManager;->acquireChannelId(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    .line 869
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    if-nez v12, :cond_1

    .line 870
    const-string/jumbo v12, "[BIP]"

    const-string/jumbo v13, "BM-openChannel: acquire channel id = 0"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const/4 v12, 0x5

    move-object/from16 v0, p2

    iput v12, v0, Landroid/os/Message;->arg1:I

    .line 872
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 873
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 874
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 875
    return-void

    .line 877
    :cond_1
    new-instance v12, Lcom/android/internal/telephony/cat/ChannelStatus;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    .line 878
    const/4 v14, 0x0

    .line 879
    const/4 v15, 0x0

    .line 877
    invoke-direct {v12, v13, v14, v15}, Lcom/android/internal/telephony/cat/ChannelStatus;-><init>(III)V

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 880
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 882
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    .line 883
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    if-eqz v12, :cond_4

    .line 884
    const-string/jumbo v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "BM-openChannel: bearer type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v14, v14, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :goto_0
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/telephony/cat/BipService;->mBufferSize:I

    .line 890
    const-string/jumbo v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "BM-openChannel: buffer size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 893
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    if-eqz v12, :cond_5

    .line 894
    const-string/jumbo v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "BM-openChannel: local address "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 895
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mLocalAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v14, v14, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v14}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v14

    .line 894
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :goto_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    .line 901
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    if-eqz v12, :cond_6

    .line 902
    const-string/jumbo v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "BM-openChannel: transport protocol type/port "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 903
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v14, v14, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    .line 902
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 903
    const-string/jumbo v14, "/"

    .line 902
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 904
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v14, v14, Lcom/android/internal/telephony/cat/TransportProtocol;->portNumber:I

    .line 902
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :goto_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    .line 910
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    if-eqz v12, :cond_7

    .line 911
    const-string/jumbo v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "BM-openChannel: dest address "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 912
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/OtherAddress;

    iget-object v14, v14, Lcom/android/internal/telephony/cat/OtherAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v14}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v14

    .line 911
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :goto_3
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    .line 918
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    if-eqz v12, :cond_8

    .line 919
    const-string/jumbo v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "BM-openChannel: apn "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mApn:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    :goto_4
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mLogin:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    .line 925
    const-string/jumbo v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "BM-openChannel: login "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mLogin:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mPwd:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    .line 927
    const-string/jumbo v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "BM-openChannel: password "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mPwd:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/BipCmdMessage;->getCmdQualifier()I

    move-result v12

    and-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    .line 930
    const/4 v12, 0x0

    .line 929
    :goto_5
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/telephony/cat/BipService;->mLinkMode:I

    .line 933
    const-string/jumbo v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "BM-openChannel: mLinkMode "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/BipCmdMessage;->getCmdQualifier()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/BipCmdMessage;->getCmdQualifier()I

    move-result v12

    and-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_a

    const/4 v12, 0x0

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/cat/BipService;->mAutoReconnected:Z

    .line 937
    const-string/jumbo v12, "ril.pdn.reuse"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 938
    .local v5, "isPdnReuse":Ljava/lang/String;
    const-string/jumbo v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "BM-openChannel: isPdnReuse: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    if-eqz v12, :cond_e

    .line 941
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDesc;

    iget v12, v12, Lcom/android/internal/telephony/cat/BearerDesc;->bearerType:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_b

    .line 943
    const-string/jumbo v12, "ril.pdn.reuse"

    const-string/jumbo v13, "2"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    :cond_2
    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/BipService;->mLogin:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/BipService;->mPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/internal/telephony/cat/BipService;->setApnParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-string/jumbo v12, "gsm.stk.bip"

    const-string/jumbo v13, "1"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string/jumbo v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "BM-openChannel: call startUsingNetworkFeature:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string/jumbo v12, "[BIP]"

    const-string/jumbo v13, "MAXCHANNELID :7"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v12, v12, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v13, 0x3

    if-ne v13, v12, :cond_10

    .line 1005
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/BipService;->establishLink()I

    move-result v9

    .line 1007
    if-eqz v9, :cond_3

    .line 1008
    const/4 v12, 0x3

    .line 1007
    if-ne v9, v12, :cond_f

    .line 1009
    :cond_3
    const-string/jumbo v12, "[BIP]"

    const-string/jumbo v13, "BM-openChannel: channel is activated"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v2

    .line 1011
    .local v2, "channel":Lcom/android/internal/telephony/cat/Channel;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 1012
    iget-object v13, v2, Lcom/android/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v13, v13, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 1011
    iput v13, v12, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 1018
    .end local v2    # "channel":Lcom/android/internal/telephony/cat/Channel;
    :goto_8
    move-object/from16 v0, p2

    iput v9, v0, Landroid/os/Message;->arg1:I

    .line 1019
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    move-object/from16 v0, p2

    iput-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1020
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1091
    :goto_9
    const-string/jumbo v12, "[BIP]"

    const-string/jumbo v13, "BM-openChannel: exit"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    return-void

    .line 886
    .end local v5    # "isPdnReuse":Ljava/lang/String;
    .local v2, "channel":Lcom/android/internal/telephony/cat/Channel;
    :cond_4
    const-string/jumbo v12, "[BIP]"

    const-string/jumbo v13, "BM-openChannel: bearer type is null"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 897
    :cond_5
    const-string/jumbo v12, "[BIP]"

    const-string/jumbo v13, "BM-openChannel: local address is null"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 906
    :cond_6
    const-string/jumbo v12, "[BIP]"

    const-string/jumbo v13, "BM-openChannel: transport protocol is null"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 914
    :cond_7
    const-string/jumbo v12, "[BIP]"

    const-string/jumbo v13, "BM-openChannel: dest address is null"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 921
    :cond_8
    const-string/jumbo v12, "[BIP]"

    const-string/jumbo v13, "BM-openChannel: apn is null."

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 931
    :cond_9
    const/4 v12, 0x1

    goto/16 :goto_5

    .line 935
    :cond_a
    const/4 v12, 0x1

    goto/16 :goto_6

    .line 946
    .restart local v5    # "isPdnReuse":Ljava/lang/String;
    :cond_b
    const-string/jumbo v12, "ril.pdn.reuse"

    const-string/jumbo v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 948
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/telephony/cat/BipService;->mSlotId:I

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    .line 949
    .local v10, "subId":[I
    const/4 v12, 0x0

    aget v12, v10, v12

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v7

    .line 950
    .local v7, "phoneId":I
    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 952
    .local v6, "myPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v6, :cond_d

    .line 953
    const/4 v3, 0x0

    .line 954
    .local v3, "dataNetworkType":I
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v3

    .line 955
    const-string/jumbo v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "dataNetworkType: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const/16 v12, 0xd

    if-ne v12, v3, :cond_c

    .line 957
    const-string/jumbo v12, "persist.radio.ia-apn"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 958
    .local v4, "iaApn":Ljava/lang/String;
    const-string/jumbo v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "iaApn: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 962
    const-string/jumbo v12, "ril.pdn.reuse"

    const-string/jumbo v13, "2"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    .end local v3    # "dataNetworkType":I
    .end local v4    # "iaApn":Ljava/lang/String;
    :cond_c
    :goto_a
    const-string/jumbo v12, "[BIP]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "BM-openChannel: override apn: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string/jumbo v12, "ril.pdn.overrideApn"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cat/BipService;->mApn:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 966
    :cond_d
    const-string/jumbo v12, "[BIP]"

    const-string/jumbo v13, "myPhone is null"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 974
    .end local v6    # "myPhone":Lcom/android/internal/telephony/Phone;
    .end local v7    # "phoneId":I
    .end local v10    # "subId":[I
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v12, v12, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v13, 0x3

    if-eq v13, v12, :cond_2

    .line 975
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v12, v12, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v13, 0x4

    if-eq v13, v12, :cond_2

    .line 976
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mTransportProtocol:Lcom/android/internal/telephony/cat/TransportProtocol;

    iget v12, v12, Lcom/android/internal/telephony/cat/TransportProtocol;->protocolType:I

    const/4 v13, 0x5

    if-eq v13, v12, :cond_2

    .line 977
    const-string/jumbo v12, "[BIP]"

    const-string/jumbo v13, "BM-openChannel: miss bearer info."

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const/4 v12, 0x5

    move-object/from16 v0, p2

    iput v12, v0, Landroid/os/Message;->arg1:I

    .line 979
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    move-object/from16 v0, p2

    iput-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 980
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 981
    return-void

    .line 1014
    :cond_f
    const-string/jumbo v12, "[BIP]"

    const-string/jumbo v13, "BM-openChannel: channel is un-activated"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    const/4 v13, 0x0

    iput v13, v12, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    goto/16 :goto_8

    .line 1026
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/cat/BipService;->mIsApnInserting:Z

    if-eqz v12, :cond_11

    .line 1027
    const-string/jumbo v12, "[BIP]"

    const-string/jumbo v13, "BM-openChannel: startUsingNetworkFeature delay trigger."

    invoke-static {v12, v13}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const/16 v13, 0xb

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 1029
    .local v11, "timerMsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1030
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    const-wide/16 v14, 0x1388

    invoke-virtual {v12, v11, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1031
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/cat/BipService;->mIsApnInserting:Z

    goto/16 :goto_9

    .line 1036
    .end local v11    # "timerMsg":Landroid/os/Message;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/BipService;->acquireNetwork()V

    goto/16 :goto_9
.end method

.method public openChannelCompleted(ILcom/android/internal/telephony/cat/Channel;)V
    .locals 6
    .param p1, "ret"    # I
    .param p2, "lChannel"    # Lcom/android/internal/telephony/cat/Channel;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1730
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BM-openChannelCompleted: ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    if-ne p1, v5, :cond_0

    .line 1733
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mBufferSize:I

    iput v2, v1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    .line 1735
    :cond_0
    if-eqz p1, :cond_1

    if-ne p1, v5, :cond_3

    .line 1736
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    .line 1737
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/telephony/cat/BipChannelManager;->addChannel(ILcom/android/internal/telephony/cat/Channel;)I

    .line 1742
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iget-object v2, p2, Lcom/android/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput-object v2, v1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    .line 1744
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    if-nez v1, :cond_2

    .line 1745
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 1746
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/BipService;->mIsNetworkAvailableReceived:Z

    .line 1747
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    .line 1748
    iget-object v2, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    .line 1747
    const/16 v3, 0xd

    invoke-virtual {v1, v3, p1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1749
    .local v0, "response":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1750
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentCmd:Lcom/android/internal/telephony/cat/BipCmdMessage;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1751
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1729
    .end local v0    # "response":Landroid/os/Message;
    :cond_2
    return-void

    .line 1739
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cat/BipChannelManager;->releaseChannelId(II)V

    .line 1740
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    goto :goto_0
.end method

.method public receiveData(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .locals 9
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x5

    .line 1175
    iget v2, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelDataLength:I

    .line 1176
    .local v2, "requestCount":I
    new-instance v3, Lcom/android/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 1177
    .local v3, "result":Lcom/android/internal/telephony/cat/ReceiveDataResult;
    const/4 v7, 0x0

    .line 1178
    .local v7, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    iget v6, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mReceiveDataCid:I

    .line 1180
    .local v6, "cId":I
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cat/BipChannelManager;->getChannel(I)Lcom/android/internal/telephony/cat/Channel;

    move-result-object v7

    .line 1181
    .local v7, "lChannel":Lcom/android/internal/telephony/cat/Channel;
    const-string/jumbo v0, "[BIP]"

    const-string/jumbo v1, "BM-receiveData: receiveData enter"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    if-nez v7, :cond_0

    .line 1184
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lChannel is null cid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 1186
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1187
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1188
    return-void

    .line 1190
    :cond_0
    iget v0, v7, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 1191
    iget v0, v7, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1192
    :cond_1
    const/16 v0, 0xed

    if-le v2, v0, :cond_2

    .line 1193
    const-string/jumbo v0, "[BIP]"

    const-string/jumbo v1, "BM-receiveData: Modify channel data length to MAX_APDU_SIZE"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    const/16 v2, 0xed

    .line 1196
    :cond_2
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/BipService$RecvDataRunnable;-><init>(Lcom/android/internal/telephony/cat/BipService;ILcom/android/internal/telephony/cat/ReceiveDataResult;Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1198
    .local v8, "recvThread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1174
    .end local v8    # "recvThread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 1201
    :cond_3
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BM-receiveData: Channel status is invalid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/telephony/cat/BipService;->mChannelStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    iput v5, p2, Landroid/os/Message;->arg1:I

    .line 1203
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1204
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipService;->mBipSrvHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public sendData(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1210
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "sendData: Enter"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/cat/BipService$SendDataThread;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/cat/BipService$SendDataThread;-><init>(Lcom/android/internal/telephony/cat/BipService;Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/os/Message;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1268
    .local v0, "rt":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1269
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "sendData: Leave"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    return-void
.end method

.method setBipEventList(I)V
    .locals 1
    .param p1, "eventId"    # I

    .prologue
    const/4 v0, 0x1

    .line 517
    packed-switch p1, :pswitch_data_0

    .line 516
    :goto_0
    return-void

    .line 519
    :pswitch_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenDataAvailable:Z

    goto :goto_0

    .line 522
    :pswitch_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BipService;->mIsListenChannelStatus:Z

    goto :goto_0

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setConnMgrTimeoutFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1875
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/BipService;->isConnMgrIntentTimeout:Z

    .line 1874
    return-void
.end method

.method public setOpenInProgressFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1878
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/BipService;->mIsOpenInProgress:Z

    .line 1877
    return-void
.end method

.method setSetupEventList(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 0
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipService;->mCurrentSetupEventCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 514
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BipService;->checkPSEvent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 512
    return-void
.end method
